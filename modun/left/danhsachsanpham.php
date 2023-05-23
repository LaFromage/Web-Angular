
    
    
    <div class="danhsachsanpham">
    <p> <strong>ÁO NAM</strong></p>
    <ul>
	<?php 
	$sql_quan="select*from loaisanpham where id_loailoaisanpham='1'";
	$query_quan=mysqli_query($conn,$sql_quan);
	while($row_quan=mysqli_fetch_assoc($query_quan)){
	?>
   
      <a href="index.php?xem=chitietloaisanpham&id=<?php echo $row_quan['id_loaisanpham'];?>"> <li><div align="center"><strong><?php echo $row_quan['tenloaisanpham'];?></strong></div> </li></a>
   
	<?php }?>
    </ul>
    <p><strong> QUẦN NAM</strong></p>
    <ul>
	<?php 
	$sql_quan="select*from loaisanpham where id_loailoaisanpham='0'";
	$query_quan=mysqli_query($conn,$sql_quan);
	while($row_quan=mysqli_fetch_assoc($query_quan)){
	?>
    
      <a href="index.php?xem=chitietloaisanpham&id=<?php echo $row_quan['id_loaisanpham'];?>"><li><div align="center"><strong><?php echo $row_quan['tenloaisanpham'];?></strong></div></li></a>
   
	<?php }?>
	</ul>
	<p><strong> GIÀY</strong></p>
    <ul>
	<?php 
	$sql_quan="select*from loaisanpham where id_loailoaisanpham='2'";
	$query_quan=mysqli_query($conn,$sql_quan);
	while($row_quan=mysqli_fetch_assoc($query_quan)){
	?>
    
      <a href="index.php?xem=chitietloaisanpham&id=<?php echo $row_quan['id_loaisanpham'];?>"><li><div align="center"><strong><?php echo $row_quan['tenloaisanpham'];?></strong></div></li></a>
   
	<?php }?>
	</ul>
	<p><strong> Đồ Bộ</strong></p>
    <ul>
	<?php 
	$sql_quan="select*from loaisanpham where id_loailoaisanpham='3'";
	$query_quan=mysqli_query($conn,$sql_quan);
	while($row_quan=mysqli_fetch_assoc($query_quan)){
	?>
    
      <a href="index.php?xem=chitietloaisanpham&id=<?php echo $row_quan['id_loaisanpham'];?>"><li><div align="center"><strong><?php echo $row_quan['tenloaisanpham'];?></strong></div></li></a>
   
	<?php }?>
	</ul>
    </div>
    
