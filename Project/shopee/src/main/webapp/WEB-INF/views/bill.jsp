<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<spring:url var="css" value="/resources/css"/>
<spring:url var="fonts" value="/resources/fonts"/>
<spring:url var="images" value="/resources/images"/>
<spring:url var="js" value="/resources/js"/>
<spring:url var="vendor" value="/resources/vendor"/>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Shoping Cart</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<%@include file="templates/navbar.jsp" %>
<!-- Title page -->
	<section class="bg-img1 txt-center p-lr-15 p-tb-92" style="background-image: url('${images}/bg-01.jpg');">
		<h2 class="ltext-105 cl0 txt-center">
			Bill
		</h2>
	</section>

		
	</header>




	<!-- breadcrumb -->
	<div class="container">
		<div class="bread-crumb flex-w p-l-25 p-r-15 p-t-30 p-lr-0-lg">
			<a href="index" class="stext-109 cl8 hov-cl1 trans-04">
				Home
				<i class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
			</a>

			<span class="stext-109 cl4">
				bill
			</span>
		</div>
	</div>
		

	<!-- Shoping Cart -->
	<form class="bg0 p-t-75 p-b-85">
		<div class="container">
			<div class="row">
				<div class="col-lg-10 col-xl-7 m-lr-auto m-b-50">
					<div class="m-l-25 m-r--38 m-lr-0-xl">
						<div class="wrap-table-shopping-cart">
							<table class="table-shopping-cart">
								<tr class="table_head">
									<th class="column-1">Product</th>
									<th class="column-2"></th>
									<th class="column-3">Price</th>
									<th class="column-4">Quantity</th>
									<th class="column-5">Total</th>
								</tr>
							<c:forEach items="${cartList}" var="cart">
								<tr class="table_row">
									<td class="column-1">
										<div class="how-itemcart1">
											<img src="${images}/${cart.product.code}/1.jpg" alt="IMG">
										</div>
									</td>
									<td class="column-2">${cart.product.name}</td>
									<td class="column-3">Rs.${cart.product.price}</td>
									<td class="column-4">
											${cart.productCount}
									</td>
									<td class="column-5">Rs.${cart.total}</td>
								</tr>
								</c:forEach>
							</table>
						</div>

						<div class="flex-w flex-sb-m bor15 p-t-18 p-b-15 p-lr-40 p-lr-15-sm">
							

							<div class="flex-c-m stext-101 cl2 size-119 bg8 bor13 hov-btn3 p-lr-15 trans-04 pointer m-tb-10">
								Update Cart
							</div>
						</div>
					</div>
				</div>

				<div class="col-sm-10 col-lg-7 col-xl-5 m-lr-auto m-b-50">
					<div class="bor10 p-lr-40 p-t-30 p-b-40 m-l-63 m-r-40 m-lr-0-xl p-lr-15-sm">
						<h4 class="mtext-109 cl2 p-b-30">
							Details
						</h4>
						<div class="flex-w flex-t bor12 p-b-13">
							<div class="size-208">
								<span class="stext-110 cl2">
									Name:
								</span>
							</div>

							<div class="size-209">
								<span class="mtext-110 cl2">
									${user.name}
								</span>
							</div>
						</div>
						
						<div class="flex-w flex-t bor12 p-b-13">
							<div class="size-208">
								<span class="stext-110 cl2">
									Address:
								</span>
							</div>

							<div class="size-209">
								<span class="mtext-110 cl2">
									${user.address}
								</span>
							</div>
						</div>
						<div class="flex-w flex-t bor12 p-b-13">
							<div class="size-208">
								<span class="stext-110 cl2">
									Mobile:
								</span>
							</div>

							<div class="size-209">
								<span class="mtext-110 cl2">
									${user.mobile}
								</span>
							</div>
						</div>

						

						<div class="flex-w flex-t p-t-27 p-b-33">
							<div class="size-208">
								<span class="mtext-101 cl2">
									Total:
								</span>
							</div>

							<div class="size-209 p-t-1">
								<span class="mtext-110 cl2">
									Rs.${total}
								</span>
							</div>
						</div>

						<a href="${contextPath}/checkout" class="flex-c-m stext-101 cl0 size-116 bg3 bor14 hov-btn3 p-lr-15 trans-04 pointer">
							Proceed to Checkout
						</a>
					</div>
				</div>
			</div>
		</div>
	</form>
		
	
		

	<%@include file="templates/footer.jsp" %>


	<!-- Back to top -->
	<div class="btn-back-to-top" id="myBtn">
		<span class="symbol-btn-back-to-top">
			<i class="zmdi zmdi-chevron-up"></i>
		</span>
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
		$(".js-select2").each(function(){
			$(this).select2({
				minimumResultsForSearch: 20,
				dropdownParent: $(this).next('.dropDownSelect2')
			});
		})
	</script>
<!--===============================================================================================-->
	<script src="${vendor}/MagnificPopup/jquery.magnific-popup.min.js"></script>
<!--===============================================================================================-->
	<script src="${vendor}/perfect-scrollbar/perfect-scrollbar.min.js"></script>
	<script>
		$('.js-pscroll').each(function(){
			$(this).css('position','relative');
			$(this).css('overflow','hidden');
			var ps = new PerfectScrollbar(this, {
				wheelSpeed: 1,
				scrollingThreshold: 1000,
				wheelPropagation: false,
			});

			$(window).on('resize', function(){
				ps.update();
			})
		});
	</script>
<!--===============================================================================================-->
	<script src="${js}/main.js"></script>

</body>
</html>