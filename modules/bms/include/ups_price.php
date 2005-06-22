<?PHP
function UPSprice ($service,$frompostal,$topostal,$weight,$oversized="0",$tocountry="US",$calltag="none",$cod="0",$handling="0",$hazard="0",$height="",$length="",$width="",$response="NONE",$satdeliv="0",$satpickup="0",$shipnot1="NONE",$shipnot2="NONE",$value="",$verbconf="0") {
/*
ATTRIBUTES:
CALLTAG   - (optional) Electronic or basic call tag issued, valid options
                       are NONE BASIC or ELECTRONIC, defaults to NONE.
COD       - (optional) Package is being sent C.O.D., valid options are YES
                       and NO, defaults to NO.
FROM      - (required) Source (ship from) postal code.
HANDLING  - (optional) Requires special handling (eg. - any article that
                       is not fully encased in an outside shipping container,
					   or any package that exceeds 60 inches in length).
HAZARD    - (optional) Package contains hazardous material, valid options are YES
                       and NO, defaults to NO.
HEIGHT    - (optional) Height (in inches) of oversized package.
LENGTH    - (optional) Length (in inches) of oversized package.
OVERSIZED - (optional) Package is oversized, valid options are YES and NO,
                       defaults to NO.
RESPONSE  - (optional) Delivery confirmation service, valid options are
                       NONE BASIC SIGNATURE ALTERNATE or ALL, defaults to
					   NONE.
SATDELIV  - (optional) Saturday delivery, valid options are YES and NO,
                       defaults to NO.
SATPICKUP - (optional) Saturday pickup, valid options are YES and NO,
                       defaults to NO.
SERVICE   - (required) UPS Service ID, valid service IDs are:
                       1DM    - Next Day Air Early AM
                       1DML   - Next Day Air Early AM Letter
                       1DA    - Next Day Air
                       1DAL   - Next Day Air Letter
                       1DP    - Next Day Air Saver
                       1DPL   - Next Day Air Saver Letter
                       2DM    - 2nd Day Air A.M.
                       2DA    - 2nd Day Air
                       2DML   - 2nd Day Air A.M. Letter
                       2DAL   - 2nd Day Air Letter
                       3DS    - 3 Day Select
                       GNDCOM - Ground Commercial
                       GNDRES - Ground Residential
SHIPNOT1  - (optional) First ship notification, valid options are NONE
                       DOMESTIC or INTERNATIONAL, defaults to NONE.
SHIPNOT2  - (optional) Second ship notification, valid options are NONE
                       DOMESTIC or INTERNATIONAL, defaults to NONE.
TOCOUNTRY - (optional) Destination country code, defaults to US if not
                       specified. Visit the UPS site for a complete list of
					   valid two letter country codes.
TO        - (required) Destination (ship to) postal code.
VALUE     - (optional) Declared value for carrier liability, carrier assumes
                       $100 by default.
VERBCONF  - (optional) Verbal confirmation of delivery, valid options are YES
                       and NO, defaults to NO.
WEIGHT    - (required) Weight (in pounds) of package, fractions may be used.
WIDTH     - (optional) Width (in inches) of oversized package.
*/
	$calltag=strtolower($calltag);
	switch($calltag){
		case "none":
			$calltag=0;
		break;
		case "basic":
			$calltag=1;
		break;
		case "electronic":
			$calltag=2;
		break;
	}
	
	$response=strtolower($response);
	switch($response){
		case "none":
			$calltag=0;
		break;
		case "basic":
			$response=1;
		break;
		case "signature":
			$response=2;
		break;
		case "alternate":
			$response=2;
		break;
		case "all":
			$response=4;
		break;
	}
	
	
	$shipnot1=strtolower($shipnot1);
	switch($shipnot1){
		case "none":
			$shipnot1=0;
		break;
		case "domestic":
			$shipnot1=1;
		break;
		case "international":
			$shipnot1=2;
		break;
	}
	
	$shipnot2=strtolower($shipnot2);
	switch($shipnot2){
		case "none":
			$shipnot2=0;
		break;
		case "domestic":
			$shipnot2=1;
		break;
		case "international":
			$shipnot2=2;
		break;
	}

	// build passed post paramaters
	$passedparams="accept_UPS_license_agreement=yes";
	$passedparams.="&10_action=3";
	$passedparams.="&13_product=".$service;
	$passedparams.="&15_origPostal=".substr($frompostal, 0, 5);
	$passedparams.="&19_destPostal=".substr($topostal, 0, 5);
	$passedparams.="&22_destCountry=".$tocountry;
	$passedparams.="&23_weight=".$weight;
	if($value) $passedparams.="&24_value=".$value;
	if($length) $passedparams.="&25_length=".$length;
	if($width) $passedparams.="&26_width=".$width;
	if($height) $passedparams.="&27_height=".$height;
	$passedparams.="&29_oversized=".$oversized;

	$passedparams.="&30_cod=".$cod;
	$passedparams.="&33_hazard=".$hazard;
	$passedparams.="&34_handling=".$handling;
	$passedparams.="&35_calltag=".$calltag;
	$passedparams.="&37_saturdaydelivery=".$satdeliv;
	$passedparams.="&38_saturdaypickup=".$satpickup;
	$passedparams.="&39_response=".$response;
	$passedparams.="&43_vcd=".$verbconf;
	$passedparams.="&44_firstshipnotify=".$shipnot1;
	$passedparams.="&45_secondshipnotify=".$shipnot2;
			
	$request = "POST /using/services/rave/qcostcgi.cgi HTTP/1.0\nContent-type: application/x-www-form-urlencoded\nContent-length: " .
		strlen($passedparams) . "\n\n" . $passedparams;
				
	$this->socket = fsockopen("www.ups.com", 80);
	fputs($this->socket, $request);	
	$output=fread ($this->socket, 8192);
	fclose($this->socket);

	strtok($output, "%");
	if(strpos($output,"UPSOnLine3")){
		$thereturn["success"]=true;
		$thereturn["service"]=strtok("%");
		$thereturn["frompostal"]=strtok("%");
		$thereturn["fromcountry"]=strtok("%");
		$thereturn["topostal"]=strtok("%");
		$thereturn["tocountry"]=strtok("%");
		$thereturn["tozone"]=strtok("%");
		$thereturn["weight"]=strtok("%");
		$thereturn["basecharge"]=strtok("%");
		$thereturn["optionalcharge"]=strtok("%");
		$thereturn["charge"]=strtok("%");
		$thereturn["guarenteedby"]=strtok("%");
	} else {
		$thereturn["success"]=false;
		$thereturn["error"]=strtok("%");
		$thereturn["errorcode"]=strtok("%");		
	}

	return($thereturn);
}
?>