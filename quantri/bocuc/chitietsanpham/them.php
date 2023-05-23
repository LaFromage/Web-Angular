<form action="bocuc/chitietsanpham/xuly.php" method="post" enctype="multipart/form-data">
<table border="1" width="100%">
  <tr>
    <td colspan="2"><div align="center">Thêm loại sản phẩm</div></td>
  </tr>
  <tr>
    <td width="90">Tên loại sản phẩm</td>
    <td><input type="text" name="tensanpham"></td>
  </tr>
  <tr>
    <td>Giá</td>
    <td><input type="text" name="giasanpham"></td>
  </tr>
    <tr>
    <td>Hình Ảnh</td>
    <td><input type="file" name="hinhanh"></td>
  </tr>
    <tr>
    <td>Khuyến Mãi</td>
    <td><input type="text" name="khuyenmai"></td>
	</tr>
	<tr>
    <td>Mô tả</td>
    <td><textarea cols="30" rows="5" name="mota"></textarea></td>
	</tr>
	<tr>
    <td>Loại Sản Phẩm</td>
    <td><select name="loaisanpham">
	<?php 
	$sql="select*from loaisanpham";
	$query_sql=mysqli_query($conn,$sql);
	while($row_sql=mysqli_fetch_assoc($query_sql)){
		?>
	<option value="<?php echo $row_sql['id_loaisanpham']?>"><?php echo $row_sql['tenloaisanpham']?></option>
	<?php }?>
	</select>
	</td>
	</tr>
  <tr>
    <td colspan="2" align="center"><form id="form1" name="form1" method="post" action="">
      <input type="submit" name="themsp" id="them" value="Thêm Sản Phẩm" />
    </form></td>
  </tr>
</table>
</form>

