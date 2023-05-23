<p>Tin tức mới nhất</p>
<?php
	$sql_bv = "SELECT * FROM tbl_baiviet where tinhtrang=1 ORDER BY id DESC";
	$query_bv = mysqli_query($mysqli,$sql_bv);
	
?>

	<ul class="product_list">
		<?php
			while($row_bv = mysqli_fetch_array($query_bv)){ 
		?>
				<li>
					<a href="index.php?quanly=baiviet&id=<?php echo $row_bv['id'] ?>">
						<img src="admin/modules/quanlybaiviet/uploads/<?php echo $row_bv['hinhanh'] ?>">
						<br>
							<p class="title_product"> <?php echo $row_bv['tenbaiviet'] ?></p>
							
					</a>
                    <!-- <p style="margin:10px" class="title_product"><?php echo $row_bv['tomtat']?></p> -->
				</li>
			<?php
			} 
			?>
						
	</ul>