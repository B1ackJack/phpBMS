<?PHP
if($_SESSION["userinfo"]["accesslevel"]<90) header("Location: ".$_SESSION["app_path"]."noaccess.html");

// These following functions and processing are similar for all pages
//========================================================================================
//========================================================================================

//set table id
$tableid=9;

function getRecords($id){
//========================================================================================
	global $dblink;
	
	$querystatement="select id, login, firstname, lastname, accesslevel, 
				date_Format(lastlogin,\"%c/%e/%Y %T\") as lastlogin, revoked,
				email,phone,department,employeenumber,

				createdby, creationdate, 
				modifiedby, modifieddate
				from users
				where id=".$id;		
	$thequery = mysql_query($querystatement,$dblink);
	$therecord = mysql_fetch_array($thequery);
	return $therecord;
}//end function


function setRecordDefaults(){
//========================================================================================
	$therecord["id"]=NULL;
	
	$therecord["lastname"]="";
	$therecord["firstname"]="";
	$therecord["login"]="";
	
	$therecord["email"]="";
	$therecord["phone"]="";
	$therecord["department"]="";
	$therecord["employeenumber"]="";

	$therecord["revoked"]=0;
	$therecord["accesslevel"]=10;
	$therecord["lastlogin"]=NULL;
	
	$therecord["createdby"]=$_SESSION["userinfo"]["id"];
	$therecord["modifiedby"]=NULL;

	$therecord["creationdate"]=NULL;
	$therecord["modifieddate"]=NULL;
	
	return $therecord;	
}//end function


function updateRecord($variables,$userid){
//========================================================================================
	global $dblink;
	
	$querystatement="UPDATE users SET ";
	
	$querystatement.="firstname=\"".$variables["firstname"]."\", "; 
	$querystatement.="lastname=\"".$variables["lastname"]."\", "; 
	$querystatement.="login=\"".$variables["login"]."\", "; 

	$querystatement.="email=\"".$variables["email"]."\", "; 
	$querystatement.="phone=\"".$variables["phone"]."\", "; 
	$querystatement.="department=\"".$variables["department"]."\", "; 
	$querystatement.="employeenumber=\"".$variables["employeenumber"]."\", "; 

	$querystatement.="accesslevel=".$variables["accesslevel"].", "; 
	if(isset($variables["revoked"])) $querystatement.="revoked=1, "; else $querystatement.="revoked=0, ";

	if($variables["password"]) $querystatement.="password=encode(\"".$variables["password"]."\",\"".$_SESSION["encryption_seed"]."\"), "; 

	//==== Almost all records should have this =========
	$querystatement.="modifiedby=\"".$userid."\" "; 
	$querystatement.="WHERE id=".$variables["id"];
		
	$thequery = mysql_query($querystatement,$dblink);
	if(!$thequery) reportError(300,"Update Failed: ".mysql_error($dblink)." -- ".$querystatement);
}// end function


function insertRecord($variables,$userid){
//========================================================================================
	global $dblink;

	$querystatement="INSERT INTO users ";
	
	$querystatement.="(login,lastname,firstname,email,phone,department,employeenumber,
						password,accesslevel,revoked,
	createdby,creationdate,modifiedby) VALUES (";
	
	$querystatement.="\"".$variables["login"]."\", ";
	$querystatement.="\"".$variables["lastname"]."\", ";
	$querystatement.="\"".$variables["firstname"]."\", ";
	
	$querystatement.="\"".$variables["email"]."\", "; 
	$querystatement.="\"".$variables["phone"]."\", "; 
	$querystatement.="\"".$variables["department"]."\", "; 
	$querystatement.="\"".$variables["employeenumber"]."\", "; 	
	
	$querystatement.="encode(\"".$variables["password"]."\",\"".$_SESSION["encryption_seed"]."\"), "; 
	$querystatement.=$variables["accesslevel"].", ";
	if(isset($variables["revoked"])) $querystatement.="1, "; else $querystatement.="0, ";
	
	//==== Almost all records should have this =========
	$querystatement.=$userid.", "; 
	$querystatement.="Now(), ";
	$querystatement.=$userid.")"; 
	
	$thequery = mysql_query($querystatement,$dblink);
	if(!$thequery) die ("Insert Failed: ".mysql_error($dblink)." -- ".$querystatement);
	return mysql_insert_id($dblink);
}



//==================================================================
// Process adding, editing, creating new, canceling or updating
//==================================================================
if(!isset($_POST["command"])){
	if(isset($_GET["id"]))
		$therecord=getRecords($_GET["id"]);
	else
		$therecord=setRecordDefaults();
	$createdby=getUserName($therecord["createdby"]);
	$modifiedby=getUserName($therecord["modifiedby"]);
}
else
{
	switch($_POST["command"]){
		case "cancel":
			// if we needed to do any clean up (deleteing temp line items)
			if(!isset($_POST["id"])) $_POST["id"]=0;
			$theid=$_POST["id"];
			header("Location: ../../search.php?id=".$tableid."#".$theid);
		break;
		case "save":
			if($_POST["id"]) {
				updateRecord(addSlashesToArray($_POST),$_SESSION["userinfo"]["id"]);
				$theid=$_POST["id"];
				//get record
				$therecord=getRecords($theid);
				$createdby=getUserName($therecord["createdby"]);
				$modifiedby=getUserName($therecord["modifiedby"]);
				$statusmessage="Record Updated";
			}
			else {
				$theid=insertRecord(addSlashesToArray($_POST),$_SESSION["userinfo"]["id"]);
				//get record
				$therecord=getRecords($theid);
				$createdby=getUserName($therecord["createdby"]);
				$modifiedby=getUserName($therecord["modifiedby"]);
				$statusmessage="Record Created";
			}
		break;
	}
	
}
?>