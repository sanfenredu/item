$(function() {
    var id = location.search.split('=')[1];
    $.ajax({
        type: "get",
        url: "./libs/getItem.php",
        data: {
            "id": id
        },
        dataType: "json",
        success: function(response) {
            // console.log(response)
            var elm = response;
            var prolist = $('#danpinBox');
            var str = '';
            var pic = JSON.parse(elm.pic);
            str = `
                <div class="breadNav">
                <a href="./fanke.html">首页</a>
                <span>></span>
                <a href="javascript:;">男装</a>
                <span>></span>
                <a href="javascript:;">T恤</a>
                <span>></span>
                <a href="javascript:;">短T恤</a>
                <span>></span>
                <span class="title">
                ${elm.title}</span>
            </div>
            <div class="danpinArea">
                <div class="product-show">
                    <h2>${elm.title}
                        <span style="margin-left: 10px; font-size: 14px; font-weight: bold; color: #a10000;">
                            此商品一个账户限购一件</span>
                    </h2>
                    <ul class="ProductSubnav ">
                        <li>
                            <a href="javascript:;">产品描述</a>|
                        </li>
                        <li>
                            <a href="javascript:;">评论</a>|
                        </li>
                        <li>
                            <a href="javascript:;">提问</a>|
                        </li>
                    </ul>
                </div>
                <div class="danpin_colLef">
                    <div class="danpinColCenter">
                        <div class="small">
                            <img src="..${pic[2].src}" alt="">
                            <div class="move"></div>
                        </div>
                    </div>
                </div>
                <div class="big">
                    <img src="..${pic[2].src}" alt="" class="bigpic">
                </div>
                <div class="content">
                    <div class="pricearea">
                        <div style="float: left">
                            <span style="line-height: 26px;">
                                    特惠价：
                                    <span style="font-family: '微软雅黑';">￥</span>
                            <span class="price">${elm.price}</span>
                            </span>
                        </div>
                        <a href="javascript:;">充100返100，点击充值</a>
                    </div>
                    <div class="selectArea">
                        <div class="danpinColor_Select">
                            <div class="danpinColorTitle">
                                <p>颜色：</p>
                            </div>
                            <div class="selColor">
                                <ul>
                                    <li>
                                        <div class="colorBlock">
                                            <span class="SpriteColors" style="background-position: 0px -0px"></span>
                                            <p>黑色</p>
                                        </div>
                                    </li>
                                    <li class="onclick">
                                        <div class="colorBlock">
                                            <span class="SpriteColors" style="background-position: 0px -36px"></span>
                                            <p>白色</p>
                                        </div>
                                        <b class="b1"></b>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="selSizeArea">
                            <div class="danpinColorTitle">
                                <p>尺寸：</p>
                            </div>
                            <div class="selSize">
                                <ul>
                                    <li>
                                        <p>S</p>
                                    </li>
                                    <li>
                                        <p>${elm.size}</p>
                                    </li> 
                                    <li>
                                        <p>L</p>
                                    </li>
                                    <li>
                                        <p>XL</p>
                                    </li> 
                                </ul>
                            </div>
                        </div>
                        <div class="goodsNum">
                            <div class="danpinColorTitle">
                                <p> 数量:</p>
                            </div>
                            <div class="selnum">
                                <input type="number" value="1" min="1" max="${elm.num}" id="num">
                            </div>
                        </div>
                        <div class="shoppingNews">
                            <a href="./shopcar.html" class="btnnowbuy">
                                <span>立即购买</span>
                            </a>
                            <a href="javascrirpt:;" class="btnaddtocart">
                                <span></span>
                            </a>
                        </div>
                        <div id="promotion">
                            <div class="danpin_YhTsBox ">
                                <h4><span>优惠提示</span></h4>
                                <ul>
                                    <li> <span style="display: block; float: left;
                                            width: auto; height: 16px; background: #b81c22; margin: 4px 5px 0  0; color: #fff;
                                            line-height: 16px; text-align: center; padding: 0 5px;">免邮</span> 全场购物满199元免运费</li>
                                </ul>
                            </div>
                        </div>

                    </div>
                </div>
            </div>   
            `
            prolist.append(str);
            var li = prolist.find('.selColor>ul>li'),
                li1 = prolist.find('.selSize>ul>li'),
                span = $('<span></span>'),
                b = $('<b></b>'),
                b1 = $('.b1');
            li.on('click', function() {
                var span1 = $('.selSize span')
                b1.addClass('hide');
                $(this).addClass('onclick').siblings().removeClass('onclick ');
                li1.removeClass('onclick');
                span1.addClass('hide');
                console.log(span1)
                if (li.has(b)) {
                    b.css("display:none")
                }
                $(this).append(b)
            })
            li1.on('click', function() {
                    if (span.hasClass('hide')) {
                        span.removeClass('hide')
                    }
                    $(this).addClass('onclick').siblings().removeClass('onclick ');
                    if (li1.has(span)) {
                        span.css("display:none")
                    }
                    $(this).append(span)
                })
                // 放大镜
            var small = prolist.find('.small'),
                move = prolist.find('.move'),
                big = prolist.find('.big'),
                bigpic = prolist.find('.bigpic'),
                box = prolist.find('.danpinColCenter');
            small.on({
                'mouseover': function() {
                    move.removeClass('hide').addClass('show');
                    big.removeClass('hide').addClass('show');
                    //计算盒子大小
                    move.css({
                        "width": small.width() * big.width() / bigpic.width() + 'px',
                        "height": small.height() * big.height() / bigpic.height() + 'px'
                    })
                },
                'mousemove': function(ev) {
                    var left = ev.pageX - box.offset().left - (move.width() / 2);
                    var top = ev.pageY - box.offset().top - (move.height() / 2);

                    // 判断边界
                    if (left < 0) {
                        left = 0
                    } else if (left > small.width() - move.width()) {
                        left = small.width() - move.width() - 2;
                    }
                    if (top < 0) {
                        top = 0
                    } else if (top > small.height() - move.height()) {
                        top = small.height() - move.height() - 2;
                    }
                    // 比例
                    var rat = bigpic.width() / small.width();
                    move.css({
                        'left': left + 'px',
                        'top': top + 'px'
                    })
                    bigpic.css({
                        'left': -rat * left + 'px',
                        'top': -rat * top + 'px',
                    })

                },
                'mouseout': function(ev) {
                    move.removeClass('show').addClass('hide');
                    big.removeClass('show').addClass('hide');
                }
            })
            var add = prolist.find('.btnaddtocart'),
                num = prolist.find('#num');
            add.on('click', function() {
                addShopCar(elm.id, elm.price, num.val())
            })
        }
    })

    function addShopCar(id, price, num) {
        var shop = cookie.get('shop');
        var product = {
            "id": id,
            "price": price,
            "num": num
        };
        if (shop) {
            shop = JSON.parse(shop);
            if (shop.some(elm => elm.id == id)) {
                shop.forEach(function(elm, i) {
                    elm.id == id ? elm.num = num : null;
                })
            } else {
                shop.push(product);
            }
            cookie.set('shop', JSON.stringify(shop), 2);
        } else {
            shop = [];
            shop.push(product);
            cookie.set('shop', JSON.stringify(shop), 2)
        }
    }
})