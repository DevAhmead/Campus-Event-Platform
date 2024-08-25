  <?php
require_once("include/initialize.php");

 ?>
 <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>EVENTS</title>

    <!-- core CSS -->
    <link href="<?php echo web_root; ?>css/css/bootstrap.min.css" rel="stylesheet">
    <link href="<?php echo web_root; ?>css/css/font-awesome.min.css" rel="stylesheet">
    <link href="<?php echo web_root; ?>css/css/animate.min.css" rel="stylesheet">
    <link href="<?php echo web_root; ?>css/css/prettyPhoto.css" rel="stylesheet">
    <link href="<?php echo web_root; ?>css/css/main.css" rel="stylesheet">
    <link href="<?php echo web_root; ?>css/css/responsive.css" rel="stylesheet">
	<link href="<?php echo web_root; ?>font-awesome/css/font-awesome.min.css" rel="stylesheet">
	<link href="<?php echo web_root; ?>css/dataTables.bootstrap.css" rel="stylesheet">
	<!-- datetime picker CSS -->
	<link rel="stylesheet" href="<?php echo web_root; ?>select2/select2.min.css">

 	<div class="col-lg-4 row" style="float-left"><img src="../img/sclogo.png"></div>
 	<style>
	fieldset
		{
			text-align:center; width: 500px;
			background-color:white;
			height: auto;
			margin-left:30%;
			margin-top:85px;
			border-radius: 10px;
			box-shadow: 2px 4px 10px rgba(0,0,0,.6)
		}
	form INPUT
		{
			padding: 10px;
		}
	body
		{
			
    }
	.button
		{
			width:110px;
			height:50px;

			background-size: 110px 50px;
			background-repeat: no-repeat;
			border:none;
			cursor:pointer;
		}
		a:hover{
			color:#fff;
		}
</style>
</head><!--/head-->

<body class="homepage" >
        <div class="container-fluid">
            <div class="row-fluid">
                <div class="span12" id="content">
                     <div class="row-fluid">
                        <!-- block -->
                        <div id="block_bg" class="block">
                        <div class="navbar navbar-inner block-header">
									<div class="container">
									<div id="" class="muted pull-right">
									 <a id="return" data-placement="left" title="Click to Return" href="index.php"><i class="icon-arrow-left"></i> Back</a>
									</div>
									</div>
								</div>

                            <div class="block-content collapse in">
                                <div class="span12">

										<?php
											// $history_query = mysql_query("select * from content where title  = 'History' ")or die(mysql_error());
											// $history_row = mysql_fetch_array($history_query);
											// echo $history_row['content'];
										?>

                                </div>
                            </div>
                        </div>
                        <!-- /block -->
                    </div>
                </div>
            </div>
</div>
</div>
</body>
</html>



      <section id="feature" class="transparent-bg">
        <div class="container">
           <div class="center wow fadeInDown">
                 <h2 class="page-header">List of Events </h2>
             </div>

            <div class="row">
                <div class="features">
				   			 <form class=" wow fadeInDown" action="controller.php?action=delete" Method="POST">
								<table id="dash-table" class="table table-striped table-bordered table-hover " style="font-size:12px" cellspacing="0">

								  <thead>
								  	<tr>
								  		<!-- <th> <input type="checkbox" name="chkall" id="chkall" onclick="return checkall('selector[]');"> ID</th> -->
								  		<th>
								  		<!-- <input type="checkbox" name="chkall" id="chkall" onclick="return checkall('selector[]');">  -->
								  		 Events</th>
								  		<th>Description</th>
								  		<th>Date</th>
								  		<th>Time</th>
								  		<th>Incharge</th>


								  	</tr>
								  </thead>
								  <tbody>
								  	<?php

								  		$mydb->setQuery("SELECT * FROM `tblevents` e, tbldepartment d WHERE e.Incharge=d.DepartmentID");
// $mydb->setQuery("SELECT * FROM `tblevents` ");
								  		$cur = $mydb->loadResultList();

										foreach ($cur as $result) {

								  		echo '<tr>';
								  		// echo '<td  ><input type="checkbox" name="selector[]" id="selector[]" value="'.$result->IDNO. '"/>' .$result->IDNO .'</td>';
								  		// echo '<td width="5%" align="center"></td>';
								  		// echo '<td><input type="checkbox" name="selector[]" id="selector[]" value="'.$result->EventID. '"/>' . $result->EventID.'</a></td>';
								  		// echo '<td> <input type="checkbox" name="selector[]" id="selector[]" value="'.$result->EventID. '"/> '. $result->Event.'</td>';
								  		echo '<td> '. $result->Event.'</td>';
								  		echo '<td>'. $result->Description.'</td>';
								  		// echo '<td>' .$age.'</td>';
								  		echo '<td>'. date_format(date_create($result->EventDate),'M d, Y') .'</td>';
								  		echo '<td>'. $result->EventTime.'</td>';
								  		echo '<td>'. $result->Department.'</td>';

								  	}
								  	?>
								  </tbody>

								</table>

								<div class="btn-group">

								 <!--  <button type="submit" class="btn btn-default" name="delete"><i class="fa fa-trash"></i> Delete Selected</button> -->

							</div>
						</form>
                </div><!--/.services-->
            </div><!--/.row-->
        </div><!--/.container-->
    </section><!--/#feature-->


    <!-- <section id="bottom">
        <div class="container wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">

            </div>
        </div>
    </section> --><!--/#bottom-->
