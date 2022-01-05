<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>layout 后台大布局 - Layui</title>
    <link rel="stylesheet" type="text/css" href="../static/test/css/layui.css">
    <script type="text/javascript" src="../static/test/js/jquery-2.1.0.js"></script>
    <script type="text/javascript" src="../static/test/js/layui.js"></script>
    <link rel="stylesheet" type="text/css" href="../static/test/css/common.css">
</head>
<body class="layui-layout-body" style="background-color: #F2F2F2;">
<div class="layui-layout layui-layout-admin">
    <div class="layui-header" style="background-color:#327889">
        <div class="layui-logo">学生选课系统</div>
        <!-- 头部区域（可配合layui已有的水平导航） -->
        <ul class="layui-nav layui-layout-left" lay-filter="left_top_nav">
            <!--          <li class="layui-nav-item"><a href="javascript:;" onload="changeurl(this)" data-id="nav_usercounter" src="usercounter.html">可预约会议室</a></li>-->
            <!--          <li class="layui-nav-item"><a href="">申请预约</a></li>-->
            <!--          <li class="layui-nav-item"><a href="javascript:;" data-id="nav_usercounter" src="useradmin.html">我的预约</a></li>-->
        </ul>
        <ul class="layui-nav layui-layout-right" lay-filter="right_top_nav">
            <li class="layui-nav-item">
                <a href="javascript:">
                    <img src="../static/test/picture/0.gif" class="layui-nav-img">
                    用户名
                </a>
                <dl class="layui-nav-child">
                    <dd><a href="">基本资料</a></dd>
                    <dd><a href="">安全设置</a></dd>
                </dl>
            </li>
            <li class="layui-nav-item"><a href="javascript:" data-id="logout">注销</a></li>
        </ul>
    </div>

    <div class="layui-body">
        <!-- 内容主体区域 -->
        <div id="iframepage">
            <iframe src="../jsp/test/home.jsp" style="width: 100%;height: 100%;" scrolling="auto" onload="setframehieght(this);" frameborder="0"  ></iframe>
        </div>
    </div>

    <div class="layui-footer">
        <!-- 底部固定区域 -->
        @xxxx有限公司
    </div>
</div>


<script type="text/javascript">
    layui.use('element', function(){
        var element = layui.element;
        //监听左侧导航点击
        element.on('nav(left_top_nav)', function(elem){
            var src=elem.attr("src");
            if(src){
                $('iframe').attr('src',src);
            }
        });
    });
    设置iframe高度
    function setframehieght(obj){
        var windowheight = $(window).height();
        $(obj).css("height",windowheight+120);
    }
    function changurl(obj){
        var src=$(obj).src;
        if(src){
            $('iframe').attr('src',src);
        }
    }

    function SetWinHeight(obj)
    {
        var win=obj;
        if (document.getElementById("iframepage"))
        {
            if (win && !window.opera)
            {
                if (win.contentDocument && win.contentDocument.body.offsetHeight) {
                    win.height = win.contentDocument.body.offsetHeight + 25;
                }
                else if(win.Document && win.Document.body.scrollHeight) {
                    win.height = win.Document.body.scrollHeight + 25;
                }

            }
        }
    }

    function IFrameReSizeWidth(obj) {
        var win=obj;
        if (document.getElementById("iframepage"))
        {
            if (win && !window.opera)
            {
                if (win.contentDocument && win.contentDocument.body.offsetWidth) {
                    win.width = win.contentDocument.body.offsetWidth;
                } else if(win.Document && win.Document.body.scrollWidth) {
                    win.width = win.Document.body.scrollWidth;
                }

            }
        }

    }
</script>
</body>

</html>
