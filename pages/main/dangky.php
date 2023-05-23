<?php
	if(isset($_POST['dangky'])) {
		$tenkhachhang = $_POST['hovaten'];
		$email = $_POST['email'];
		$dienthoai = $_POST['dienthoai'];
		$matkhau = md5($_POST['matkhau']);
		$diachi = $_POST['diachi'];
		$sql_dangky = mysqli_query($mysqli,"INSERT INTO tbl_dangky(tenkhachhang,email,diachi,matkhau,dienthoai) VALUE('".$tenkhachhang."','".$email."','".$diachi."','".$matkhau."','".$dienthoai."')");
		if($sql_dangky){
			echo '<p style="color:green">Bạn đã đăng ký thành công</p>';
			$_SESSION['dangky'] = $tenkhachhang;
			$_SESSION['id_khachhang'] = mysqli_insert_id($mysqli);
			header('Location:index.php?quanly=giohang');
		}
	}
?>
<span style="font-size: 30px;"> Đăng ký thành viên</span>
<style type="text/css">
	table.dangky tr td {
	    padding: 5px;
	}
</style>
<form action="" method="POST">
<table class="dangky" border="1" width="70%" style="border-collapse: collapse;">
	<tr>
		<td><span style="font-size: 24px;">Họ và tên</span></td>
		<td><input type="text" size="80" name="hovaten"></td>
	</tr>
	<tr>
		<td style="font-size: 24px;"><span>Email</span></td>
		<td><input type="text" size="80" name="email"></td>
	</tr>
	<tr>
		<td style="font-size: 24px;"><span>Điện thoại</span></td>
		<td><input type="text" size="80" name="dienthoai"></td>
	</tr>
	<tr>
		<td style="font-size: 24px;"><span>Địa chỉ</span></td>
		<td><input type="text" size="80" name="diachi"></td>
	</tr>
	<tr>
		<td style="font-size: 24px;"><span>Mật khẩu</span></td>
		<td><input type="password" size="80" name="matkhau"></td>
	</tr>
	<tr>
		
		<td><input style="font-size: 26px;" type="submit" name="dangky" value="Đăng ký"></td>
		<td><a href="index.php?quanly=dangnhap" style="font-size: 26px;">Đăng nhập nếu có tài khoản</a></td>
	</tr>
</table>

</form>
