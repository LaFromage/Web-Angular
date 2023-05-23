<?php
include('connect.php');
if(!isset($_SESSION)){
	session_start();
}else{
	session_destroy();
	session_start();
}
if(isset($_SESSION['username'])){
	header('location: index.php');
	$thongbao="";
}else{
if(isset($_POST["dangnhap"])){
	if($_POST["tk"]=="" || $_POST["mk"]==""){
			$thongbao="<center>Nhập thông tin đầy đủ</center>";
		}else{
			$user=$_POST["tk"];
			$pass=$_POST["mk"];
			$sqllogin="SELECT * from member where username='$user'";
			$querylogin=mysqli_query($connect,$sqllogin);
			if(mysqli_num_rows($querylogin)<1){
				//Kiem tra xem user
				$thongbao="<center>User không tồn tại</center>";
			}else{
				$_SESSION['username']=$user;
				header('location: index.php');
			}
		}
}else{
	$thongbao="";
}
}


?>







<div id="formdangnhap">
	<form action="" method="post">
            <table width="330" border="0">
              <tr>
                <td colspan="2" align="center"><table width="5" border="0" align="right">
                  <tr>
                    
                  </tr>
                </table>
                  <strong><font size="6">Đăng Nhập</font></strong></td>
              </tr>
              <tr>
                <td width="138" height="21">Tài khoản</td>
                <td width="182"><input type="text" name="tk" /></td>
              </tr>
              <tr>
                <td height="21">Mật khẩu</td>
                <td><input type="password" name="mk" /></td>
              </tr>
			  <tr>
				 <td height="21"colspan="2" align="center"><?php echo $thongbao;?></td>
			  </tr>
              <tr>
                <td height="23" align="center"> </td>
                <td> <input type="submit" value="Đăng Nhập" name="dangnhap" /></td>
              </tr>
            </table>
          </form>
        
</div>