<?php
	include('connect.php');
	if(isset($_GET["xem"])){
			$bien=$_GET["xem"];
				}else{
					$bien="";
				}
	if($bien=="dangky"){
	}else{
		header('location: index.php');}
		if(isset($_SESSION['username'])){
		header('location: index.php');
		$thongbao="";
	}else{
		if(isset($_POST["btdangky"]))
		{
			if($_POST["user"]=="" || $_POST["pass"]=="" || $_POST["email"]==""){
				$thongbao="<center>Nhập đầy đủ</center>";
			}else{
				$user=$_POST["user"];
				$pass=$_POST["pass"];
				$email=$_POST["email"];
				$sql="SELECT * from member where username='$user'";
				$query=mysqli_query($connect,$sql);
				if(mysqli_num_rows($query)>0){
					//Kiem tra email
					$thongbao="<center>Username hoặc Email<br> đã tồn tại</center>";
				}else{
					//Save database
					$sql="InSERT INTO member (username,password,email) value ('$user','$pass','$email')";
					mysqli_query($connect,$sql);
					$thongbao="Đăng Ký Thành Công";
				}
			}
		}else{
			$thongbao="";
		}
		
		}
?>
				<div id="formdangnhap">
					<div id="formdangnhap1">
						<form action="index.php?xem=dangky" method="post">
						<table class="tbdn">
						<tr>
							<td><h1>Đăng Kí</h1></td>
							</tr>
							<tr>
							<td><input type="text" name="user" placeholder="Tên Đăng Nhập"/></td>
							</tr>
							<tr>
							<td><input type="password" name="pass" placeholder="Mật Khẩu"></td>
							</tr>
							<tr>
							<td><input type="text" name="email" placeholder="Email@domain"></td>
							</tr>
							<tr>
							<td><?php echo $thongbao?></td>
							</tr>
							<tr>
							<td><input type="submit" name="btdangky" Value="Đăng Ký"/>
							</td>
							</tr>
							</table>
						</form>
					</div>
				</div>