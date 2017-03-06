<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String id = request.getParameter("id");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="google" value="notranslate">
<title>試着画面</title>
<link href="css/reset.css" rel="stylesheet" type="text/css">
<link href="css/try_on.css" rel="stylesheet" type="text/css">
<link href="css/header_footer.css" rel="stylesheet" type="text/css">

<style type="text/css">
  /*three.jsで生成されたcanvas要素に対して左右反転をかける*/
  canvas {
    transform: scaleX(-1);
  }
</style>

<script src="js/lib/three.min.js"></script>
<script src="js/lib/MTLLoader.js"></script>
<script src="js/lib/OBJLoader.js"></script>


</head>
<body>
  <!-- 全体ラッパー -->
  <div class="wrapper">
    <!-- ヘッダー -->
<%@ include file="header.jsp" %>

  <!-- メインコンテンツ -->
  <article class="try_on_wrapper">

    <!-- 左カラム -->

      <section class="left_column_wrapper">
        <div class="try_on_content" id="output">
          	<video style="display:none;" id="inputVideo" autoplay></video>
      			<canvas style="display:none;" id="canvas"></canvas>
        </div>
      </section>
    <!-- 右カラム -->
      <section class="right_column_wrapper">
        <ul class="tab_wrapper">
          <li class="tab1" onclick="tab1();">レンズ</li>
          <li class="tab2" onclick="tab2();">フロント</li>
          <li class="tab3" onclick="tab3();">ツル</li>
          <li class="tab4" onclick="tab4();">モダン</li>
        </ul>
          <div class="tab_contents_wrapper">
            <div id="tab1" class="tab_content">
              <div class="color_module_wrapper">
                <p class="cherry_pink"></p>
                <p class="sunny_orange"></p>
                <p class="shadow_orange"></p>
                <p class="rose_wine"></p>
                <p class="camel_black"></p>
                <p class="leaf_green"></p>
                <p class="cocoa_brown"></p>
                <p class="mirror"></p>
                <p class="colorless"></p>
              </div>
              <div class="lens_module_wrapper">
                <p class="lens_module"></p>
                <p class="lens_module"></p>
                <p class="lens_module"></p>
                <p class="lens_module"></p>
              </div>
            </div>
            <div id="tab2" class="tab_content">
              <div class="color_module_wrapper">
                <p class="cherry_pink"></p>
                <p class="sunny_orange"></p>
                <p class="shadow_orange"></p>
                <p class="rose_wine"></p>
                <p class="camel_black"></p>
                <p class="leaf_green"></p>
                <p class="cocoa_brown"></p>
                <p class="mirror"></p>
                <p class="colorless"></p>
              </div>
              <div class="lens_module_wrapper">
                <p class="lens_module"></p>
                <p class="lens_module"></p>
                <p class="lens_module"></p>
                <p class="lens_module"></p>
              </div>
            </div>
            <div id="tab3" class="tab_content">
              <div class="color_module_wrapper">
                <p class="cherry_pink"></p>
                <p class="sunny_orange"></p>
                <p class="shadow_orange"></p>
                <p class="rose_wine"></p>
                <p class="camel_black"></p>
                <p class="leaf_green"></p>
                <p class="cocoa_brown"></p>
                <p class="mirror"></p>
                <p class="colorless"></p>
              </div>
              <div class="lens_module_wrapper">
                <p class="lens_module"></p>
                <p class="lens_module"></p>
                <p class="lens_module"></p>
                <p class="lens_module"></p>
              </div>
            </div>
            <div id="tab4" class="tab_content">
              <div class="color_module_wrapper">
                <p class="cherry_pink"></p>
                <p class="sunny_orange"></p>
                <p class="shadow_orange"></p>
                <p class="rose_wine"></p>
                <p class="camel_black"></p>
                <p class="leaf_green"></p>
                <p class="cocoa_brown"></p>
                <p class="mirror"></p>
                <p class="colorless"></p>
              </div>
              <div class="lens_module_wrapper">
                <p class="lens_module"></p>
                <p class="lens_module"></p>
                <p class="lens_module"></p>
                <p class="lens_module"></p>
              </div>
            </div>
          </div>
      </section> <!--右カラム終了-->


  <!-- 戻るボタン -->
    <section class="return_btn_wrapper">
      <p class="return_btn"><a href="ProductDtail?id=<%= id %>"><img src="btn/modoru.png" alt="戻るボタン" /></a></p>
    </section>

  </article>

    <!--フッター-->
<%@ include file="footer.jsp" %>
  </div>

  <script type="text/javascript">

    document.getElementById('tab1').style.backgroundColor = '#bbf';
    document.getElementById('tab1').style.borderColor = '#66e';
    document.getElementById('tab2').style.display='none';
    document.getElementById('tab3').style.display='none';
    document.getElementById('tab4').style.display='none';
    function tab1(){
	    document.getElementById('tab1').style.display='flex';
			document.getElementById('tab2').style.display='none';
      document.getElementById('tab3').style.display='none';
      document.getElementById('tab4').style.display='none';
		}
    function tab2(){
	    document.getElementById('tab1').style.display='none';
			document.getElementById('tab2').style.display='flex';
      document.getElementById('tab2').style.backgroundColor = '#fbb';
      document.getElementById('tab2').style.borderColor = '#e66';
      document.getElementById('tab3').style.display='none';
      document.getElementById('tab4').style.display='none';
		}
    function tab3(){
	    document.getElementById('tab1').style.display='none';
			document.getElementById('tab2').style.display='none';
      document.getElementById('tab3').style.display='flex';
      document.getElementById('tab3').style.backgroundColor = '#bfb';
      document.getElementById('tab3').style.borderColor = '#6e6';
      document.getElementById('tab4').style.display='none';
		}
    function tab4(){
	    document.getElementById('tab1').style.display='none';
			document.getElementById('tab2').style.display='none';
      document.getElementById('tab3').style.display='none';
      document.getElementById('tab4').style.display='flex';
      document.getElementById('tab4').style.backgroundColor = '#fd8';
      document.getElementById('tab4').style.borderColor = '#f96';
		}
  </script>
<script src="js/glasses.js"></script>
</body>
</html>
