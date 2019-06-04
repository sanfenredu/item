$(function() {
    var shop = cookie.get('shop');
    if (shop) {
        shop = JSON.parse(shop);
        var idList = shop.map(elm => elm.id).join();
        $.ajax({
            type: "get",
            url: "./libs/shop.php",
            data: {
                "idList": idList
            },
            dataType: "json",
            success: function(response) {
                var str = "";
                response.forEach(function(elm, i) {
                        var pic = JSON.parse(elm.pic);
                        // console.log(elm)
                        var arr = shop.filter((val, i) => {
                                return val.id == elm.id
                            })
                            // console.log(arr)
                        str = `
                    <tr class="selected" data-id="${elm.id}">
                        <td class="white bd-left">&nbsp;</td>
                        <td class="bar" rowspan="1">
                             <input type="checkbox" name="check" id="p-item" class="track ckb">
                        </td>
                        <td class="image">
                            <a href="http://127.0.0.1:8080/1903/ietm/src/html/product.html?id=${elm.id}" target="_bank" style="display:block">
                            <img src="..${pic[0].src}" alt="">
                            </a>
                        </td>
                        <td class="name">
                            <a href="http://127.0.0.1:8080/1903/ietm/src/html/product.html?id=${elm.id}" target="_bank" title="${elm.title}">
                               ${elm.title}
                            </a>
                        </td>
                        <td class="size">
                            <a target="_bank" title="s"><s> ${elm.size}</s></a>
                        </td>
                        <td class="price">￥<span class="pri">${elm.price}</span></td>
                        <td class="qty">
                        <div>
                       <input type="number" value="${arr[0].num}" min="1" max="${elm.num}" class="td-qty">
                       </div>
                       </td>
                        <td class="sum">￥<span class="allsum">${(arr[0].num*elm.price).toFixed(2)}</span></td>
                        <td class="operate">
                            <a href="javascript:;" class="del">删除</a>
                        </td>
                        <td class="white bd-right">&nbsp;</td>
                    </tr>
                    `

                        $('tbody').append(str);
                        var qty = $('.td-qty');
                        qty.css({
                            'margin': '0 20px',
                            'height': '18px',
                            'width': '50px',
                            'border': '1px solid #D8D8D8',
                            'text-align': 'center',
                        })
                    })
                    //删除
                $('body').on('click', '.del', function(ev) {
                        var data = $(ev.target.parentNode.parentNode).attr('data-id');
                        shop.forEach(function(elm, i) {
                            var arr1 = shop.filter((val, i) => {
                                return val.id != data
                            })
                            shop = arr1;
                            cookie.set('shop', JSON.stringify(shop), 2)
                            location.reload();
                        })

                    })
                    // 全选
                $('input[type="checkbox"]:first').on('click', function() {
                    if ($(this).prop('checked')) {
                        $('input[type="checkbox"]:not(:first)').attr('checked', 'checked')
                    } else {
                        $('input[type="checkbox"]:not(:first)').removeAttr('checked')
                    }

                })
                $('body').on('change', '.td-qty', function() {
                    var pri = parseInt($(this).parent().parent().siblings('.price').children('.pri').html());
                    var sum = parseInt($(this).val())
                    $(this).parent().parent().siblings('.sum').children('.allsum').html(pri * sum);
                })
            }
        })
    }
})