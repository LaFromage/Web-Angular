<?php
	if(isset($_GET['trang'])){
		$page = $_GET['trang'];
	}else{
		$page = 1;
	}
	if($page == '' || $page == 1){
		$begin = 0;
	}else{
		$begin = ($page*12)-12;
	}
	$sql_pro = "SELECT * FROM tbl_sanpham,tbl_danhmuc WHERE tbl_sanpham.id_danhmuc=tbl_danhmuc.id_danhmuc ORDER BY tbl_sanpham.id_sanpham DESC LIMIT $begin,12";
	$query_pro = mysqli_query($mysqli,$sql_pro);
	
?>
<span class="danhmuc">Sản phẩm mơí nhất</span>
				<ul class="product_list">
					<?php
					while($row = mysqli_fetch_array($query_pro)){ 
					?>
					<li>
						<a href="index.php?quanly=sanpham&id=<?php echo $row['id_sanpham'] ?>">
							<img src="admin/modules/quanlysp/uploads/<?php echo $row['hinhanh'] ?>">
							<p class="title_product"> <?php echo $row['tensanpham'] ?></p>
							<p class="price_product"><?php echo number_format($row['giasp'],0,',','.').'vnđ' ?></p>
						</a>
					</li>
					<?php
					} 
					?>
				</ul>
				<div style="clear:both;"></div>
				<style type="text/css">
					ul.list_trang {
					    padding: 0;
					    margin-top: 50px;
						margin-bottom: 30px;
						display: flex;
						justify-content: center;
						align-items: center;
					    list-style: none;
					}
					ul.list_trang li {
					    float: left;
					    padding: 5px 13px;
					    margin: 5px;
					    /* border:1px solid #747272; */
					    display: block;
					}
					ul.list_trang li a {
					    color:#8a8985;
						font-size: 24px;
						height: 30px;line-height: 30px;
						min-width: 40px;
					    text-align: center;
					    text-decoration: none;
						border-radius: 2px;
						font-weight: 300;
						display: block;
					}
				</style>
				<?php
				$sql_trang = mysqli_query($mysqli,"SELECT * FROM tbl_sanpham");
				$row_count = mysqli_num_rows($sql_trang); 
				// echo $row_count;
				//Số trang
				$trang = ceil($row_count/12);
				?>
				<!-- <span style="font-weight: bold;margin-left: 4px;font-size: 21px;margin-top: 31px;margin-bottom: 1px;">Trang hiện tại: <?php echo $page ?>/<?php echo $trang ?> </p> -->
				
				<ul class="list_trang">
					<?php
					for($i=1;$i<=$trang;$i++){ 
					?>
						<li <?php if($i==$page){echo 'style="background: #F6Da6a;font-size: 26px;width: 40px;text-align: center;color: #8a8985;"';}else{ echo ''; }  ?>><a href="index.php?trang=<?php echo $i ?>"><?php echo $i ?></a></li>
					<?php
					}
					?>
					
				</ul>