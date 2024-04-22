<?php
  session_start();
  error_reporting(1);
  include '../config/koneksi.php';
  if (trim($_SESSION['leveluser'])=='')
  {
    echo "<script>document.location='../';</script>";
  }
?>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <?php $r=mysqli_fetch_array(mysqli_query($koneksi, "SELECT * FROM identitas WHERE id = '1'")); ?>
  <link rel="shortcut icon" href="../img/<?php echo "$r[gambar]";?>">
  <title style="text-transform: uppercase;"><?php echo "$r[title]";?></title>
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
  <link rel="stylesheet" href="../dist/css/AdminLTE.min.css">
  <link rel="stylesheet" href="../dist/css/skins/_all-skins.min.css">
  <link rel="stylesheet" href="../plugins/iCheck/flat/blue.css">
  <link rel="stylesheet" href="../plugins/morris/morris.css">
  <link rel="stylesheet" href="../plugins/jvectormap/jquery-jvectormap-1.2.2.css">
  <link rel="stylesheet" href="../plugins/datepicker/datepicker3.css">
  <link rel="stylesheet" href="../plugins/daterangepicker/daterangepicker.css">
  <link rel="stylesheet" href="../plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
</head>
<body class="hold-transition skin-blue layout-boxed sidebar-mini" data-spy="scroll" data-target="#scrollspy">
<div class="wrapper">
  <?php include "menu.php";?>
  <div class='content-wrapper'>
    <section class='content-header'>
      <h1>
        Pengaturan
        <small>Control panel</small>
      </h1>
      <ol class='breadcrumb'>
        <li><a href='home'><i class='fa fa-dashboard'></i> Home</a></li>
        <li class='active'>Menu Cetak Kartu</li>
      </ol>
    </section>
    <section class='content'>
      <div class='row'>
        <div class='col-md-12'>
          <div class='box box-info'>
            <div class='box-header with-border'>
              <h3 class='box-title'><i class='fa fa-edit'></i> Form Status Menu Cetak Kartu</h3>
            </div>
            <?php
              $x=mysqli_fetch_array(mysqli_query($koneksi, "SELECT * FROM menu where id='1' "));
            ?>
            <form class='form-horizontal' role='form' method=POST action='aksi/menu/menu1.php' enctype='multipart/form-data'><br>
              <input type='hidden' name='id' value='<?php echo "$x[id]";?>'>
              <div class='form-group'>
                <label class='col-sm-3 control-label'>Menu Cetak Kartu Pelajar : </label>
                <div class='col-sm-4'>
                  <select name="a" class="form-control">
                    <option value="<?php echo "$x[link]";?>">
                      <?php
                        if ($x[link]=='printkartupelajar')
                          { echo "Aktif"; }
                        else if ($x[link]=='blokmenucetakkapel')
                          { echo "Blokir"; };
                      ?>
                    </option>
                    <option></option>
                    <option value="printkartupelajar">Aktif</option>
                    <option value="blokmenucetakkapel">Blokir</option>
                  </select>
                </div>
              </div>
              <div class='form-group'>
                <label class='col-sm-3 control-label'></label>
                <div class='col-sm-6'>
                  <button style="width: 100px" type="submit" name="simpan" class="btn btn-flat btn-primary">SIMPAN</button>
                      <a href="home"><button style="width: 100px" type="button" class="btn btn-flat btn-danger">BATAL</button></a>
                </div>
              </div><br>
            </form>
          </div>
        </div>
      </div>
    </section>
  </div>





  <!-- Start footer -->
  <?php include "footer.php";?>
  <!-- End footer -->
  <!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->
  <div class="control-sidebar-bg"></div>
</div>
<!-- ./wrapper -->

<!-- jQuery 2.2.3 -->
<script src="../plugins/jQuery/jquery-2.2.3.min.js"></script>
<!-- jQuery UI 1.11.4 -->
<script src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
  $.widget.bridge('uibutton', $.ui.button);
</script>
<!-- Bootstrap 3.3.6 -->
<script src="../bootstrap/js/bootstrap.min.js"></script>
<script src="../bootstrap/js/docs.js"></script>
<!-- Morris.js charts -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
<script src="../plugins/morris/morris.min.js"></script>
<!-- Sparkline -->
<script src="../plugins/sparkline/jquery.sparkline.min.js"></script>
<!-- jvectormap -->
<script src="../plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script src="../plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<!-- jQuery Knob Chart -->
<script src="../plugins/knob/jquery.knob.js"></script>
<!-- daterangepicker -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.11.2/moment.min.js"></script>
<script src="../plugins/daterangepicker/daterangepicker.js"></script>
<!-- datepicker -->
<script src="../plugins/datepicker/bootstrap-datepicker.js"></script>
<!-- Bootstrap WYSIHTML5 -->
<script src="../plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<!-- Slimscroll -->
<script src="../plugins/slimScroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="../plugins/fastclick/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="../dist/js/app.min.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="../dist/js/pages/dashboard.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="../dist/js/demo.js"></script>
</body>
</html>
