
<?php
$id=$_GET['id'];
$sql="select*from chitietsanpham where id_sp='$id'";
$query_sql=mysqli_query($conn,$sql);
$row_sql=mysqli_fetch_assoc($query_sql);
?>

<form action="bocuc/chitietsanpham/xuly.php?ac=suasp&id=<?php echo $row_sql['id_sp']?>" method="post" enctype="multipart/form-data">
<table width="100%" border="1">
  <tr>
    <td colspan="2"><div align="center">Thêm loại sản phẩm</div></td>
  </tr>
  <tr>
    <td>Tên loại sản phẩm</td>
    <td><input type="text" name="tensanpham" value="<?php echo $row_sql['tensanpham'];?>"></td>
  </tr>
  <tr>
    <td>Giá</td>
    <td><input type="text" name="giasanpham" value="<?php echo $row_sql['gia'];?>"></td>
  </tr>
    <tr>
    <td>Hình Ảnh</td>
    <td><img src="./bocuc/chitietsanpham/upload/<?php echo $row_sql['hinhanh']?>" width="80" height="100"><br><input type="file" name="hinhanh"value="<?php echo $row_sql['hinhanh'];?>"></td>
  </tr>
    <tr>
    <td>Khuyến Mãi</td>
    <td><input type="text" name="khuyenmai"value="<?php echo $row_sql['khuyenmai'];?>"></td>
	</tr>
	<tr>
    <td>Mô tả</td>
    <td><textarea cols="30" rows="5" name="mota" ><?php echo $row_sql['mota'];?></textarea></td>
	</tr>
	<tr>
    <td>Loại Sản Phẩm</td>
    <td><select name="loaisanpham">
	<?php 
	$sqllsp="select*from loaisanpham";
	$query_sqllsp=mysqli_query($conn,$sqllsp);
	while($row_sqllsp=mysqli_fetch_assoc($query_sqllsp)){
		if($row_sql['id_loaisanpham']==$row_sqllsp['id_loaisanpham']){
		?>
		<option selected value="<?php echo $row_sqllsp['id_loaisanpham']?>"><?php echo $row_sqllsp['tenloaisanpham']?></option>
		<?php } else {?>
	<option value="<?php echo $row_sqllsp['id_loaisanpham']?>"><?php echo $row_sqllsp['tenloaisanpham']?></option>
	<?php }}?>
	</select>
	</td>
	</tr>
	<tr>
    <td colspan="2" align="center"><form id="form1" name="form1" method="post" action="">
      <input type="submit" name="suasp" id="them" value="Sửa Sản Phẩm" />
    </form></td>
  </tr>
</table>
</form>

