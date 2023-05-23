<table width="100%" border="1" cellspacing="1" cellpadding="1">
  <tr>
    <td>ID</td>
    <td> Tên sản phẩm</td>
	<td> Giá</td>
	<td> Hình Ảnh</td>
	<td>Khuyến Mãi</td>
	<td>Loại Sản Phẩm</td>
    <td colspan="2">Quản lý</td>
  </tr>
  <?php 
  if(isset($_GET["trang"])){
	  $trang=$_GET["trang"];
  }else{
	   $trang=1;
  }
  $sosangpham1trang=5;
  $limit=($trang*$sosangpham1trang)-$sosangpham1trang;
  $sql="select*from chitietsanpham,loaisanpham where chitietsanpham.id_loaisanpham=loaisanpham.id_loaisanpham limit $limit,$sosangpham1trang";
  $query_sql=mysqli_query($conn,$sql);
  while($row_loaisanpham=mysqli_fetch_assoc($query_sql)){
  ?>
  <tr>
    <td><?php echo $row_loaisanpham['id_sp']?></td>
    <td><?php echo $row_loaisanpham['tensanpham']?></td>
	<td><?php echo $row_loaisanpham['gia']?></td>
	<td width="80"><img src="./bocuc/chitietsanpham/upload/<?php echo $row_loaisanpham['hinhanh']?>" width="80"></td>
	<td><?php echo $row_loaisanpham['khuyenmai']?></td>
	<td><?php echo $row_loaisanpham['tenloaisanpham']?></td>
    <td><a href="?quanly=chitietsanpham&ac=suasp&id=<?php echo $row_loaisanpham['id_sp']?>">Sửa</a></td>
    <td><a href="bocuc/chitietsanpham/xuly.php?ac=xoasp&id=<?php echo $row_loaisanpham['id_sp']?>">Xóa</td>
  </tr>
  <?php } ?>
</table>
  <?php
  $sql_trang="select*from chitietsanpham";
  $query_trang=mysqli_query($conn,$sql_trang);
  $row_trang=mysqli_num_rows($query_trang);
  $sotrang=ceil($row_trang/$sosangpham1trang);
  ?>
  <div>
  <?php
  echo "Trang :";
  for($i=1;$i<=$sotrang;$i++){
	  echo "<a href='admincp.php?quanly=chitietsanpham&ac=themsp&trang={$i}'>"." ".$i." "."</a>";
  }
  ?>
  </div>
