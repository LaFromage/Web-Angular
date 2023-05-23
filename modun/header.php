<div class="fromtim" style="text-align: end;">
				  <form action="./" method="POST" style="text-align: center;"><input type="submit" name="bt_timkiem" value="Search" />
				    <input type="text" name="tim" placeholder="Tìm kiếm" style="width: 40%;" /></form>
					<div class="header">
    				<img src="img\nicebanner.jpg" width="100%" height="150" />
					</div>
					<div id="dangnhapdangky">
					<a href="./?xem=giohang"><input type="submit" name="" id="button" value="Giỏ Hàng" /></a>
						<?php 
						session_start();
						include('connect.php');
						if(isset($_SESSION['username'])){
							$user=$_SESSION['username'];
							$sqlhear="SELECT * from member where username='$user'";
							$queryhear=mysqli_query($connect,$sqlhear);
							$row=mysqli_fetch_assoc($queryhear);
							if(isset($_POST["dangxuat"])){
								session_destroy();
								header('location: index.php');}
							?>
							
							<form action="" method="POST">
							<p>Xin chào : <?php echo $_SESSION['username'];?>(<?php echo $row['quyen'];?>)
							</a><input type="submit" name="dangxuat" id="button2" value="Đăng Xuất" /></p>
							</form>
							<?php
						}else{?>
				   <a href="?xem=login" ><input type="submit" name="dangnhap" id="button" value="Đăng Nhập" /></a>
			      or 
			      <a href="?xem=dangky" > <input type="submit" name="dangki" id="button2" value="Đăng Ký" /></a>

				 <?php
						}?>
</div>
</div> 

  




