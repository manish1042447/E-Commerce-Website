<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<spring:url var="css" value="/resources/css" />
<spring:url var="fonts" value="/resources/fonts" />
<spring:url var="images" value="/resources/images" />
<spring:url var="js" value="/resources/js" />
<spring:url var="vendor" value="/resources/vendor" />
<!DOCTYPE html>
<html lang="en">


<!-- Header -->
<header class="header-v4">
	<!-- Header desktop -->
	<%@include file="templates/navbar.jsp"%>
	<!-- Title page -->
	<section class="bg-img1 txt-center p-lr-15 p-tb-92" style="background-image: url('${images}/bg-01.jpg');">
		<h2 class="ltext-105 cl0 txt-center">
		 Product list
		</h2>
	</section>
	<div class="flex-w flex-sb-m p-b-52">
		<div class="flex-w flex-l-m filter-tope-group m-tb-10">
			<a href="${contextPath}/product"><button
					class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5 how-active1"
					data-filter="*">All Products</button></a> <a
				href="${contextPath}/product/103"><button
					class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5"
					data-filter=".women">Women</button></a> <a
				href="${contextPath}/product/102"><button
					class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5"
					data-filter=".men">Men</button></a> <a href="${contextPath}/asc"><button
					class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5"
					data-filter=".men">PRICE HIGH TO LOW</button></a> <a href="${contextPath}/desc"><button
					class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5"
					data-filter=".men">PRICE LOW TO HIGH</button></a>


		</div>





		<!-- Filter -->

	</div>

	<!-- Header Mobile -->






</header>




<!-- Product -->
<div class="bg0 m-t-23 p-b-140">
	<div class="container">
		<div class="flex-w flex-sb-m p-b-52">



			<!-- Filter -->

		</div>

		<div class="">
			<div class="">
				<!-- Block2 -->
				<table class="table table-hover">
					<tbody>
						<c:forEach items="${prodlist}" var="pro">
							<tr>
								<td><img
									src="${pageContext.request.contextPath}/resources/images/${pro.code}/1.jpg"
									height="200px" width="200px" /></td>
								<td><a
									href="${pageContext.request.contextPath}/product-detail/${pro.prodid}"
									class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">${pro.name}</a><br>
									Rs.${pro.price} <br> Description:${pro.description}<br>
									<br> <br>
									
										<a href="addcart/${pro.prodid}?qty=1"><button id="button3id" name="button3id" type="submit"
										class="btn btn-success">add to cart</td></a>

							</tr>

						</c:forEach>
					</tbody>
				</table>
				
				


				<!-- Load more -->
				
			</div>
		</div>

		<%@include file="templates/footer.jsp"%>



		<!-- Back to top -->
		<div class="btn-back-to-top" id="myBtn">
			<span class="symbol-btn-back-to-top"> <i
				class="zmdi zmdi-chevron-up"></i>
			</span>
		</div>

		<!-- Modal1 -->
		<div class="wrap-modal1 js-modal1 p-t-60 p-b-20">
			<div class="overlay-modal1 js-hide-modal1"></div>

			<div class="container">
				<div class="bg0 p-t-60 p-b-30 p-lr-15-lg how-pos3-parent">
					<button class="how-pos3 hov3 trans-04 js-hide-modal1">
						<img src="${images}/icons/icon-close.png" alt="CLOSE">
					</button>

					<div class="row">
						<div class="col-md-6 col-lg-7 p-b-30">
							<div class="p-l-25 p-r-30 p-lr-0-lg">
								<div class="wrap-slick3 flex-sb flex-w">
									<div class="wrap-slick3-dots"></div>
									<div class="wrap-slick3-arrows flex-sb-m flex-w"></div>

									<div class="slick3 gallery-lb">
										<div class="item-slick3"
											data-thumb="${images}/product-detail-01.jpg">
											<div class="wrap-pic-w pos-relative">
												<img src="${images}/product-detail-01.jpg" alt="IMG-PRODUCT">

												<a
													class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04"
													href="${images}/product-detail-01.jpg"> <i
													class="fa fa-expand"></i>
												</a>
											</div>
										</div>

										<div class="item-slick3"
											data-thumb="${images}/product-detail-02.jpg">
											<div class="wrap-pic-w pos-relative">
												<img src="${images}/product-detail-02.jpg" alt="IMG-PRODUCT">

												<a
													class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04"
													href="${images}/product-detail-02.jpg"> <i
													class="fa fa-expand"></i>
												</a>
											</div>
										</div>

										<div class="item-slick3"
											data-thumb="${images}/product-detail-03.jpg">
											<div class="wrap-pic-w pos-relative">
												<img src="${images}/product-detail-03.jpg" alt="IMG-PRODUCT">

												<a
													class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04"
													href="${images}/product-detail-03.jpg"> <i
													class="fa fa-expand"></i>
												</a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>

						<div class="col-md-6 col-lg-5 p-b-30">
							<div class="p-r-50 p-t-5 p-lr-0-lg">
								<h4 class="mtext-105 cl2 js-name-detail p-b-14">
									Lightweight Jacket</h4>

								<span class="mtext-106 cl2"> $58.79 </span>

								<p class="stext-102 cl3 p-t-23">Nulla eget sem vitae eros
									pharetra viverra. Nam vitae luctus ligula. Mauris consequat
									ornare feugiat.</p>

								<!--  -->
								<div class="p-t-33">
									<div class="flex-w flex-r-m p-b-10">
										<div class="size-203 flex-c-m respon6">Size</div>

										<div class="size-204 respon6-next">
											<div class="rs1-select2 bor8 bg0">
												<select class="js-select2" name="time">
													<option>Choose an option</option>
													<option>Size S</option>
													<option>Size M</option>
													<option>Size L</option>
													<option>Size XL</option>
												</select>
												<div class="dropDownSelect2"></div>
											</div>
										</div>
									</div>

									<div class="flex-w flex-r-m p-b-10">
										<div class="size-203 flex-c-m respon6">Color</div>

										<div class="size-204 respon6-next">
											<div class="rs1-select2 bor8 bg0">
												<select class="js-select2" name="time">
													<option>Choose an option</option>
													<option>Red</option>
													<option>Blue</option>
													<option>White</option>
													<option>Grey</option>
												</select>
												<div class="dropDownSelect2"></div>
											</div>
										</div>
									</div>

									<div class="flex-w flex-r-m p-b-10">
										<div class="size-204 flex-w flex-m respon6-next">
											<div class="wrap-num-product flex-w m-r-20 m-tb-10">
												<div
													class="btn-num-product-down cl8 hov-btn3 trans-04 flex-c-m">
													<i class="fs-16 zmdi zmdi-minus"></i>
												</div>

												<input class="mtext-104 cl3 txt-center num-product"
													type="number" name="num-product" value="1">

												<div
													class="btn-num-product-up cl8 hov-btn3 trans-04 flex-c-m">
													<i class="fs-16 zmdi zmdi-plus"></i>
												</div>
											</div>

											<button
												class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04 js-addcart-detail">
												Add to cart</button>
										</div>
									</div>
								</div>

								<!--  -->
								<div class="flex-w flex-m p-l-100 p-t-40 respon7">
									<div class="flex-m bor9 p-r-10 m-r-11">
										<a href="#"
											class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 js-addwish-detail tooltip100"
											data-tooltip="Add to Wishlist"> <i
											class="zmdi zmdi-favorite"></i>
										</a>
									</div>

									<a href="#"
										class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100"
										data-tooltip="Facebook"> <i class="fa fa-facebook"></i>
									</a> <a href="#"
										class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100"
										data-tooltip="Twitter"> <i class="fa fa-twitter"></i>
									</a> <a href="#"
										class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100"
										data-tooltip="Google Plus"> <i class="fa fa-google-plus"></i>
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!--===============================================================================================-->
		<script src="${vendor}/jquery/jquery-3.2.1.min.js"></script>
		<!--===============================================================================================-->
		<script src="${vendor}/animsition/${js}/animsition.min.js"></script>
		<!--===============================================================================================-->
		<script src="${vendor}/bootstrap/${js}/popper.js"></script>
		<script src="${vendor}/bootstrap/${js}/bootstrap.min.js"></script>
		<!--===============================================================================================-->
		<script src="${vendor}/select2/select2.min.js"></script>
		<script>
			$(".js-select2").each(function() {
				$(this).select2({
					minimumResultsForSearch : 20,
					dropdownParent : $(this).next('.dropDownSelect2')
				});
			})
		</script>
		<!--===============================================================================================-->
		<script src="${vendor}/daterangepicker/moment.min.js"></script>
		<script src="${vendor}/daterangepicker/daterangepicker.js"></script>
		<!--===============================================================================================-->
		<script src="${vendor}/slick/slick.min.js"></script>
		<script src="${js}/slick-custom.js"></script>
		<!--===============================================================================================-->
		<script src="${vendor}/parallax100/parallax100.js"></script>
		<script>
			$('.parallax100').parallax100();
		</script>
		<!--===============================================================================================-->
		<script src="${vendor}/MagnificPopup/jquery.magnific-popup.min.js"></script>
		<script>
			$('.gallery-lb').each(function() { // the containers for all your galleries
				$(this).magnificPopup({
					delegate : 'a', // the selector for gallery item
					type : 'image',
					gallery : {
						enabled : true
					},
					mainClass : 'mfp-fade'
				});
			});
		</script>
		<!--===============================================================================================-->
		<script src="${vendor}/isotope/isotope.pkgd.min.js"></script>
		<!--===============================================================================================-->
		<script src="${vendor}/sweetalert/sweetalert.min.js"></script>
		<script>
			$('.js-addwish-b2, .js-addwish-detail').on('click', function(e) {
				e.preventDefault();
			});

			$('.js-addwish-b2').each(
					function() {
						var nameProduct = $(this).parent().parent().find(
								'.js-name-b2')();
						$(this).on(
								'click',
								function() {
									swal(nameProduct, "is added to wishlist !",
											"success");

									$(this).addClass('js-addedwish-b2');
									$(this).off('click');
								});
					});

			$('.js-addwish-detail').each(
					function() {
						var nameProduct = $(this).parent().parent().parent()
								.find('.js-name-detail')();

						$(this).on(
								'click',
								function() {
									swal(nameProduct, "is added to wishlist !",
											"success");

									$(this).addClass('js-addedwish-detail');
									$(this).off('click');
								});
					});

			/*---------------------------------------------*/

			$('.js-addcart-detail').each(
					function() {
						var nameProduct = $(this).parent().parent().parent()
								.parent().find('.js-name-detail')();
						$(this).on('click', function() {
							swal(nameProduct, "is added to cart !", "success");
						});
					});
		</script>
		<!--===============================================================================================-->
		<script src="${vendor}/perfect-scrollbar/perfect-scrollbar.min.js"></script>
		<script>
			$('.js-pscroll').each(function() {
				$(this).css('position', 'relative');
				$(this).css('overflow', 'hidden');
				var ps = new PerfectScrollbar(this, {
					wheelSpeed : 1,
					scrollingThreshold : 1000,
					wheelPropagation : false,
				});

				$(window).on('resize', function() {
					ps.update();
				})
			});
		</script>
		<!--===============================================================================================-->
		<script src="${js}/main.js"></script>

		</body>
</html>