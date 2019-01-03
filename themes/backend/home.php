<?php 
	include'admin/header.php';
	include'admin/sidebar.php';
?>
<div id="content" class="pmd-content content-area dashboard">
	<div class="container-fluid">
		<div class="row" id="card-masonry">
		<?php echo $contents;?>
		</div>
	</div>
</div>
<?php include'admin/footer.php';?>