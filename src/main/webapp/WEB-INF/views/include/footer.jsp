<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- Footer Section Begin -->
<div class="spad-footer"></div>

<footer class="footer fixed-bottom">
    <div class="page-up">
        <a href="#" id="scrollToTopButton"><span class="arrow_carrot-up"></span></a>
    </div>
    <div class="container-md">
        <div class="row">
            <div class="col-md-3">
                <div class="footer__logo">
                    <a href="${path}/">
                    <img style="height: 40px" src="${path}/resources/img/logo/betty2.png" alt="main">
                    </a>
                </div>
            </div>
            <div class="col-md-6">
                <div class="footer__nav">
                    <ul>
                        <li class="active"><a href="${path}/">Homepage</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-md-3" style="margin-bottom:0.3rem">
                <p style="font-size:0.8rem; line-height:15px"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved <br/> 
                  This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
                  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>

            </div>
        </div>
    </div>
  </footer>
  <!-- Footer Section End -->

  <!-- Search model Begin -->
  <div class="search-model">
    <div class="h-100 d-flex align-items-center justify-content-center">
        <div class="search-close-switch"><i class="icon_close"></i></div>
        <form class="search-model-form">
            <input type="text" id="search-input" placeholder="Search here.....">
        </form>
    </div>
</div>
<!-- Search model end -->

<!-- Js Plugins -->
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="${path}/resources/js/bootstrap.min.js"></script>
<script src="${path}/resources/js/player.js"></script>
<script src="${path}/resources/js/mixitup.min.js"></script>
<script src="${path}/resources/js/jquery.slicknav.js"></script>
<script src="${path}/resources/js/owl.carousel.min.js"></script>
<script src="${path}/resources/js/main.js"></script>

<script src="${path}/resources/js/modal.js"></script>
<script src="${path}/resources/js/sidebar.js"></script>

<script>
	$(document).ready(function() {
		$('#example').DataTable();
	});
</script>

<!-- fullcalendar CDN -->
<script src='https://cdn.jsdelivr.net/npm/fullcalendar@5.11.2/main.min.js'></script>  
<!-- fullcalendar 언어 CDN -->  
<script src='https://cdn.jsdelivr.net/npm/fullcalendar@5.11.2/locales-all.min.js'></script>

</body>

