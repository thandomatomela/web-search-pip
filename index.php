<?php 
    if($_GET['q'] == 'please enter FQDN'){
        header('Location: index.php');
    }
	if($_GET['q'] !== ''){
		$host = "database";
                $user = "root";
                $pass = "password";
                $db = "web-search-db";
		$con = mysqli_connect($host,$user,$pass,$db);
		
?>	
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>Search | Hostings' Websites</title>
    <link rel="icon" href="sita_logo.png" type="image/gif" sizes="128x128">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="author" content="colorlib.com">
    <link href="https://fonts.googleapis.com/css?family=Poppins" rel="stylesheet" />
    <link href="css/main.css" rel="stylesheet" />

    <script type="text/javascript">
function active(){
	var sb = document.getElementById('searchBox');
	if(sb.value == 'please enter FQDN'){
		sb.value = ''
		sb.placeholder = 'please enter FQDN'
	}
}
function inactive(){
	var sb = document.getElementById('searchBox');
	if(sb.value == ''){
		sb.placeholder = ''
		sb.value = 'please enter FQDN'
	}
}
</script>
  </head>
  <body>
    <div class="s130">
      <form action="index.php" method="GET" id="searchForm" />
        <h1>Hostings Website Search</h1>
        <div class="inner-form">
          <div class="input-field first-wrap">
            <div class="svg-wrapper">
              <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
                <path d="M15.5 14h-.79l-.28-.27C15.41 12.59 16 11.11 16 9.5 16 5.91 13.09 3 9.5 3S3 5.91 3 9.5 5.91 16 9.5 16c1.61 0 3.09-.59 4.23-1.57l.27.28v.79l5 4.99L20.49 19l-4.99-5zm-6 0C7.01 14 5 11.99 5 9.5S7.01 5 9.5 5 14 7.01 14 9.5 11.99 14 9.5 14z"></path>
              </svg>
            </div>
            <input name="q" id="searchBox" type="text" placeholder="" value="please enter FQDN" maxlength="100" autocomplete="off" onmousedown="active();" onblur="inactive();" />
          </div> 
          <div class="input-field second-wrap">
            <button class="btn-search" value="Search!" type="submit">Search!!</button>
          </div>
        </div>
        <span class="info">Example. www.sita.co.za</span>
        
        <br /> <br />
           <?php
    
	    $q = $_GET['q'];
	    if(!isset($q)){
	        echo '';
	    }else {
		$query = mysqli_query($con, "SELECT * FROM websites WHERE department LIKE '%$q%' OR domain LIKE '%$q%'");
		$num_rows = mysqli_num_rows($query);
		?>
		<P><strong><?php echo $num_rows; ?></strong> Result(s) For '<?php echo $q; ?>'</P>
		<?php
	
		while($row = mysqli_fetch_array($query)){
			$id = $row['id'];
			$department = $row['department'];
			$domain = $row['domain'];
			$pagename = $row['pagename'];
			$servername = $row['servername'];
			$ip_address = $row['ip_address'];
			$teams = $row['teams'];
			$link = $row['link'];
			
 //            echo '<h3><a href="' . $pagename . '.php">' . $department . '</a></h3><p>' . $domain . ' is a website hosted by SITA Hostings <strong>Linux Team</strong></p><br />';
               echo '<h3><a href="' . $link . '" target="_blank">' . $department . '</a></h3><p>' . $domain . ' is a website hosted by SITA Hostings <strong>' . $teams . ' Team</strong></p><br />';
        
		}
	   }
	?>
      </form>
        
    </div>
      
    <script src="js/extention/choices.js"></script>
    
	
  </body>
</html>
<?php 
	}else {
	    header('Location: index.php');
	}
?>

