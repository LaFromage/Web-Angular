<div class="content">
<div class="right">
<?php
if(isset($_GET['xem'])){
	$tam=$_GET['xem'];
} else
	{
	$tam='';
	} 
	if($tam=='chitietloaisanpham'){
		include('modun/right/chitietloaisanpham.php');}
	elseif ($tam=='chitietsanpham'){
		include('modun/right/chitietsanpham.php');
		} 
	elseif ($tam=='khuyenmai'){
		include('modun/right/khuyenmai.php');
			}
	elseif ($tam=='login'){
		include('login.php');
		}
	elseif ($tam=='tintucsukien'){
		include('modun/right/tintucsukien.php');
		}
	elseif ($tam=='huongdanmuahang'){
		include('modun/right/huongdanmuahang.php');
		}
	elseif ($tam=='hotrokhachhang'){
		include('modun/right/hotrokhachhang.php');
		}
	elseif ($tam=='hethongcuahang'){
		include('modun/right/hethongcuahang.php');
		}
	elseif ($tam=='dangky'){
		include('dangky.php');
	}
	elseif(isset($_POST['bt_timkiem'])|| $tam=="timkiem"){
		include('modun/right/timkiem.php');
	}
	elseif ($tam=='giohang'){
		include('modun/right/giohang.php');
	}
	elseif ($tam=='dathang'){
		include('modun/right/dathang.php');
	}
	else {
		include('modun/right/tatcasanpham.php');
		}
	
?>
</div>
<div class="left">
<?php
	include('modun/left/danhsachsanpham.php');
?>
</div>
</div>