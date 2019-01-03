<!doctype html>
<html lang="">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="description" content="HMVC Admin">
  <meta content="width=device-width, initial-scale=1, user-scalable=no" name="viewport">
  <title>HMVC | <?php echo $title;?></title>
  <meta name="description" content="Admin is a material design and bootstrap based responsive dashboard template created mainly for admin and backend applications."/>
  <link rel="shortcut icon" type="image/x-icon" href="<?=ADMIN_ASSETS_PATH?>themes/images/favicon.ico">
  <!-- Google icon -->
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <!-- Bootstrap css -->
  <link rel="stylesheet" type="text/css" href="<?=ADMIN_ASSETS_PATH?>css/bootstrap.min.css">
  <!-- Propeller css -->
  <!-- build:[href] assets/css/ -->
  <link rel="stylesheet" type="text/css" href="<?=ADMIN_ASSETS_PATH?>css/propeller.min.css">
  <!-- /build -->
  <!-- Propeller date time picker css-->
   <!-- Propeller theme css-->
  <link rel="stylesheet" type="text/css" href="<?=ADMIN_ASSETS_PATH?>themes/css/propeller-theme.css" />
  <!-- Propeller admin theme css-->
  <link rel="stylesheet" type="text/css" href="<?=ADMIN_ASSETS_PATH?>themes/css/propeller-admin.css">
  <script src="<?=ADMIN_ASSETS_PATH?>js/jquery-1.12.2.min.js"></script>
  <script src="<?=ADMIN_ASSETS_PATH?>js/bootstrap.min.js"></script>
</head>
<body>
<!-- Header Starts -->
<!--Start Nav bar -->
<nav class="navbar navbar-inverse navbar-fixed-top pmd-navbar pmd-z-depth">

  <div class="container-fluid">
    <div class="pmd-navbar-right-icon pull-right navigation">
      <!-- Notifications -->
      <div class="dropdown notification icons pmd-dropdown">

        <a href="javascript:void(0)" title="Notification" class="dropdown-toggle pmd-ripple-effect"  data-toggle="dropdown" role="button" aria-expanded="true">
          <div data-badge="3" class="material-icons md-light pmd-sm pmd-badge  pmd-badge-overlap">notifications_none</div>
        </a>

        <div class="dropdown-menu dropdown-menu-right pmd-card pmd-card-default pmd-z-depth" role="menu">
          <!-- Card header -->
          <div class="pmd-card-title">
            <div class="media-body media-middle">
              <a href="notifications.html" class="pull-right">3 new notifications</a>
              <h3 class="pmd-card-title-text">Notifications</h3>
            </div>
          </div>

          <!-- Notifications list -->
          <ul class="list-group pmd-list-avatar pmd-card-list">
            <li class="list-group-item" style="display:none">
              <p class="notification-blank">
                <span class="dic dic-notifications-none"></span>
                <span>You don´t have any notifications</span>
              </p>
            </li>
            <li class="list-group-item unread">
              <a href="javascript:void(0)">
                <div class="media-left">
									<span class="avatar-list-img40x40">
										<img alt="40x40" data-src="holder.js/40x40" class="img-responsive" src="<?=ADMIN_ASSETS_PATH?>themes/images/profile-1.png" data-holder-rendered="true">
									</span>
                </div>
                <div class="media-body">
                  <span class="list-group-item-heading"><span>Prathit</span> posted a new challanegs</span>
                  <span class="list-group-item-text">5 Minutes ago</span>
                </div>
              </a>
            </li>
            <li class="list-group-item">
              <a href="javascript:void(0)">
                <div class="media-left">
									<span class="avatar-list-img40x40">
										<img alt="40x40" data-src="holder.js/40x40" class="img-responsive" src="<?=ADMIN_ASSETS_PATH?>themes/images/profile-2.png" data-holder-rendered="true">
									</span>
                </div>
                <div class="media-body">
                  <span class="list-group-item-heading"><span>Keel</span> Cloned 2 challenges.</span>
                  <span class="list-group-item-text">15 Minutes ago</span>
                </div>
              </a>
            </li>
            <li class="list-group-item unread">
              <a href="javascript:void(0)">
                <div class="media-left">
									<span class="avatar-list-img40x40">
										<img alt="40x40" data-src="holder.js/40x40" class="img-responsive" src="<?=ADMIN_ASSETS_PATH?>themes/images/profile-3.png" data-holder-rendered="true">
									</span>
                </div>

                <div class="media-body">
                  <span class="list-group-item-heading"><span>John</span> posted new collection.</span>
                  <span class="list-group-item-text">25 Minutes ago</span>
                </div>
              </a>
            </li>
            <li class="list-group-item unread">
              <a href="javascript:void(0)">
                <div class="media-left">
									<span class="avatar-list-img40x40">
										<img alt="40x40" data-src="holder.js/40x40" class="img-responsive" src="<?=ADMIN_ASSETS_PATH?>themes/images/profile-4.png" data-holder-rendered="true">
									</span>
                </div>
                <div class="media-body">
                  <span class="list-group-item-heading"><span>Valerii</span> Shared 5 collection.</span>
                  <span class="list-group-item-text">30 Minutes ago</span>
                </div>
              </a>
            </li>
          </ul><!-- End notifications list -->

        </div>


      </div> <!-- End notifications -->
    </div>
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <a href="javascript:void(0);" data-target="basicSidebar" data-placement="left" data-position="slidepush" is-open="true" is-open-width="1200" class="btn btn-sm pmd-btn-fab pmd-btn-flat pmd-ripple-effect pull-left margin-r8 pmd-sidebar-toggle"><i class="material-icons md-light">menu</i></a>
      <a href="index.html" class="navbar-brand">LOGO
      </a>
    </div>
  </div>

</nav><!--End Nav bar -->
<!-- Header Ends -->

<!-- Sidebar Starts -->
<div class="pmd-sidebar-overlay"></div>