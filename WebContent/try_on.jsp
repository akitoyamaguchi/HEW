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

</style>
</head>
<body>
  <!-- 全体ラッパー -->
  <div class="wrapper">
    <!-- ヘッダー -->
    <header>
      <div class="header_logo">
        <h1><img src="logo/try-on3.png" onclick="location.href='index.jsp'"/></h1>
      </div>
      <div class="header_nav_wrapper">
        <nav class="hdr_navigation_wrapper_first">
          <div class="header_navigation">
            <button onclick="location.href='mypage.jsp'">MYPAGE</button>
            <button onclick="location.href='sitemap.jsp'">SITEMAP</button>
            <button onclick="location.href='inquiry.jsp'">SUPPORT</button>
          </div>
        </nav>
        <nav class="hdr_navigation_wrapper_second">
          <button class="header_button_serch" onclick="location.href='search.jsp'"><img src="submit_btn/search.png" /></button>
          <button class="header_button_useradd" onclick="location.href='member_register.jsp'"><img src="submit_btn/shinki.png" /></button>
          <button class="header_button_login" onclick="location.href='login.jsp'"><img src="submit_btn/login.png" /></button>
        </nav>
      </div>
    </header>

  <!-- メインコンテンツ -->
  <article class="try_on_wrapper">

    <!-- 左カラム -->

      <section class="left_column_wrapper">
        <div class="try_on_content">
          <h2>試着画面</h2>
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
      <p class="return_btn"><a href="#"><img src="btn/modoru.png" alt="戻るボタン" /></a></p>
    </section>

  </article>

    <!--フッター-->
    <footer>
      <nav class="ftr_navigation_wrapper_first">
        <h2 class="ftr_title_first">取扱商品</h2>
        <ul class="footer_navigation">
          <li><a href="#">メガネ</a></li>
          <li><a href="#">サングラス</a></li>
          <li><a href="#">アイウェア</a></li>
        </ul>
      </nav>
      <nav class="ftr_navigation_wrapper_second">
        <h2 class="ftr_title_second">登録・ログイン</h2>
        <ul class="footer_navigation">
          <li><a href="#">ログイン</a></li>
          <li><a href="#">新規登録</a></li>
        </ul>
      </nav>
      <nav class="ftr_navigation_wrapper_third">
        <h2 class="ftr_title_third">サイトのご利用について</h2>
        <ul class="footer_navigation">
          <li><a href="#">サイトマップ</a></li>
          <li><a href="#">お問合せ</a></li>
        </ul>
      </nav>
      <small class="cpr">Copyright(C)</small>
    </footer>
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

</body>
</html>
