$(function() {
    $('.slider').slider();
    $.ajax({
        type: "get",
        url: "./libs/getproduct.php",
        dataType: "json",
        success: function(response) {
            console.log(response);
            var products = $('.products');
            var template = "";
            var prolist = $('.tupian');
            var str = "";
            response.forEach(function(elm, i) {
                var pic = JSON.parse(elm.pic);
                if (elm.tab == 0) {
                    template = `
                                <li>
                                <a href="./product.html?id=${elm.id}" target="_bank" class="track">
                                    <img src="..${pic[1].src}" alt="${pic[1].title}">
                                    <div class="new-productname">
                                        <span>${elm.title}</span>
                                    </div>
                                    <div class="new-price">
                                        <span class="old-price">
                                        ￥
                                        <em>599</em>
                                    </span>
                                        <span class="sale-price">
                                        ￥
                                        <em>499</em>
                                    </span>
                                        <span class="after-price">
                                            充值后
                                            <em>${elm.price}</em>
                                            元
                                    </span>
                                    </div>
                                </a>
                            </li>
                        `
                    products.append(template);
                } else if (elm.tab == 1) {
                    str = `
                    <li>
                        <a href="./product.html?id=${elm.id}">
                                <img src="..${pic[1].src}">
                                <b></b>
                        </a>
                    </li>
                `
                    prolist.append(str)
                }
            })
        }
    });
});