<?php
	if(isset($_GET['dangxuat'])&&$_GET['dangxuat']==1){
		unset($_SESSION['dangky']);
	} 
?>
<div class="menu">
			<ul class="list_menu">
				<li><a href="index.php">TRANG CHỦ</a></li>
				
				<li><a href="index.php?quanly=giohang">GIỎ HÀNG</a></li>
						
				<li><a href="index.php?quanly=lienhe">LIÊN HỆ</a></li>
				<li><a href="index.php?quanly=tintuc">TIN TỨC</a></li>
				
				<?php
				if(isset($_SESSION['dangky'])){ 

				?>
					<li><a href="index.php?quanly=thaydoimatkhau">CÀI ĐẶT TÀI KHOẢN</a></li>
					<li><a href="index.php?dangxuat=1">ĐĂNG XUẤT</a></li>
				<?php
				}else{ 
				?>
					<li><a href="index.php?quanly=dangky">ĐĂNG KÝ | ĐĂNG NHẬP</a></li>
				<?php
				} 
				?>
			</ul>
			<div> 
				<form style="padding:14px " action="index.php?quanly=timkiem" method="POST">
					<input  type="text" placeholder="Nhập tên sản phẩm..." name="tukhoa">
					<input 	 type="submit" name="timkiem" value="Tìm kiếm">
				</form>
			</div>
			<!-- <h3>
				<a href="http://localhost/banhangphukien/admincp/login.php" style="float:right;"> Đăng nhập Admin</a>
			</h3> -->
			
		</div>