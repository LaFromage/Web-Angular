<div class="sidebar">
				<ul class="list_sidebar">
				<span class="danhmuc">DANH MỤC SẢN PHẨM</span>
					<?php
	
						$sql_danhmuc = "SELECT * FROM tbl_danhmuc ORDER BY id_danhmuc DESC";
						$query_danhmuc = mysqli_query($mysqli,$sql_danhmuc);
						while($row = mysqli_fetch_array($query_danhmuc)){
						    		
					?>
					<li style="text-transform: uppercase;"><a href="index.php?quanly=danhmucsanpham&id=<?php echo $row['id_danhmuc'] ?>"><?php echo $row['tendanhmuc'] ?></a></li>
					<?php

					} 
					?>
					
				</ul>

				<ul class="list_sidebar">
				<h1 class="danhmuc">DANH MỤC BÀI VIẾT</h1>
					<?php
	
						$sql_danhmuc_bv = "SELECT * FROM tbl_danhmucbaiviet ORDER BY id_baiviet DESC";
						$query_danhmuc_bv = mysqli_query($mysqli,$sql_danhmuc_bv);
						while($row = mysqli_fetch_array($query_danhmuc_bv)){
						    		
					?>
					<li style="text-transform: uppercase;"><a href="index.php?quanly=danhmucbaiviet&id=<?php echo $row['id_baiviet'] ?>"><?php echo $row['tendanhmuc_baiviet'] ?></a></li>
					<?php

					} 
					?>
					
				</ul>
</div>