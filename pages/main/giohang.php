<h3>Giỏ hàng 
  <?php
  if(isset($_SESSION['dangky'])){
    echo 'xin chào: '.'<span style="color:red">'.$_SESSION['dangky'].'</span>';
   
  } 
  ?>
</h3>
<?php
	if(isset($_SESSION['cart'])){
		
	}
?>
<table style="width:100%;text-align: center;border-collapse: collapse;" border="1">
  <tr>
    <th>STT</th>
    <th>Hãng</th>
    <th>Tên sản phẩm</th>
    <th>Hình ảnh</th>
    <th>Số lượng</th>
    <th>Giá sản phẩm</th>
    <th>Thành tiền</th>
    <th>Quản lý</th>
   
  </tr>
  <?php
  if(isset($_SESSION['cart'])){
  	$i = 0;
  	$tongtien = 0;
  	foreach($_SESSION['cart'] as $cart_item){
  		$thanhtien = $cart_item['soluong']*$cart_item['giasp'];
  		$tongtien+=$thanhtien;
  		$i++;
  ?>
  <tr>
    <td><?php echo $i; ?></td>
    <td><?php echo $cart_item['masp']; ?></td>
    <td><?php echo $cart_item['tensanpham']; ?></td>
    <td><img src="admin/modules/quanlysp/uploads/<?php echo $cart_item['hinhanh']; ?>" width="150px"></td>
    <td>
    	<a href="pages/main/themgiohang.php?cong=<?php echo $cart_item['id'] ?>"><i class="fa fa-plus fa-style" aria-hidden="true"></i></a>
    	<?php echo $cart_item['soluong']; ?>
    	<a href="pages/main/themgiohang.php?tru=<?php echo $cart_item['id'] ?>"><i class="fa fa-minus fa-style" aria-hidden="true"></i></a>

    </td>
    <td><?php echo number_format($cart_item['giasp'],0,',','.').'vnđ'; ?></td>
    <td><?php echo number_format($thanhtien,0,',','.').'vnđ' ?></td>
    <td><a href="pages/main/themgiohang.php?xoa=<?php echo $cart_item['id'] ?>">Xoá</a></td>
  </tr>
  <?php
  	}
  ?>
   <tr>
    <td colspan="8">
    	<h3 style="float: left;">Tổng tiền: <?php echo number_format($tongtien,0,',','.').'vnđ' ?></h3><br/>
    	<!-- <p style="float: right;"><a href="pages/main/themgiohang.php?xoatatca=1">Xoá tất cả</a></p> -->
      <div style="clear: both;"></div>
      <?php
        if(isset($_SESSION['dangky'])){
          ?>
           <div class="giohang__back">
              <center><tablewidth="800" border="0" style="margin-bottom:50px">
                <tr>
                  <td>
                  <p><a href="pages/main/thanhtoan.php" style="text-decoration: none;font-size: 20px;">Đặt hàng</a></p>
                  </td>
                  <td>
                  <p><a href="index.php" style="text-decoration: none;font-size: 20px;">Quay lại mua hàng</a></p>
                  </td>
                </tr>
          </tablewidth=></center>
           </div>
      <?php
        }else{
      ?>
      <center><table width="800" border="0" style="margin-bottom:50px">
        <tr>
          <td>
          <p><a href="index.php?quanly=dangky" style="text-decoration: none;font-size: 20px;">Đăng ký đặt hàng</a></p>
          </td>
          <td>
          <p><a href="index.php" style="text-decoration: none;font-size: 20px;">Quay lại mua hàng</a></p>
          </td>
        </tr>
      </table></center>
        <!-- <p><a href="index.php?quanly=dangky" style="text-decoration: none;font-size: 20px;">Đăng ký đặt hàng</a></p>
        <p><a href="index.php" style="text-decoration: none;font-size: 20px;">Quay lại mua hàng</a></p> -->
      <?php
        }
      ?>
      
    </td>

   
  </tr>
  <?php	
  }else{ 
  ?>
   <tr>
    <td colspan="8"><p>Hiện tại giỏ hàng trống</p></td>
   
  </tr>
  <?php
  } 
  ?>
 
</table>