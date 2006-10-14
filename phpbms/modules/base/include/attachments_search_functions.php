<?php
/*
 +-------------------------------------------------------------------------+
 | Copyright (c) 2005, Kreotek LLC                                         |
 | All rights reserved.                                                    |
 +-------------------------------------------------------------------------+
 |                                                                         |
 | Redistribution and use in source and binary forms, with or without      |
 | modification, are permitted provided that the following conditions are  |
 | met:                                                                    |
 |                                                                         |
 | - Redistributions of source code must retain the above copyright        |
 |   notice, this list of conditions and the following disclaimer.         |
 |                                                                         |
 | - Redistributions in binary form must reproduce the above copyright     |
 |   notice, this list of conditions and the following disclaimer in the   |
 |   documentation and/or other materials provided with the distribution.  |
 |                                                                         |
 | - Neither the name of Kreotek LLC nor the names of its contributore may |
 |   be used to endorse or promote products derived from this software     |
 |   without specific prior written permission.                            |
 |                                                                         |
 | THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS     |
 | "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT       |
 | LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A |
 | PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT      |
 | OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,   |
 | SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT        |
 | LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,   |
 | DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY   |
 | THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT     |
 | (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE   |
 | OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.    |
 |                                                                         |
 +-------------------------------------------------------------------------+
*/

include("modules/base/include/admin_functions.php");

//=============================================
//functions
//=============================================

//delete
function delete_record($theids){
	global $dblink;
	
	$whereclause=buildWhereClause($theids,"attachments.id");
	
	$rowsdeleted=0;
	foreach($theids as $id){
		$querystatement = "SELECT fileid FROM attachments WHERE id=".$id;
		$queryresult = mysql_query($querystatement,$dblink);
		if (!$queryresult) reportError(300,"Couldn't retrieve file info: ".mysql_error($dblink)." -- ".$querystatement);		
		$therecord=mysql_fetch_array($queryresult);
		
		$querystatement = "DELETE FROM attachments WHERE id=".$id.";";
		$queryresult = mysql_query($querystatement,$dblink);
		if (!$queryresult) reportError(300,"Couldn't Delete Attachment: ".mysql_error($dblink)." -- ".$querystatement);		
		$rowsdeleted++;
		
		$querystatement = "SELECT id FROM attachments WHERE fileid=".$therecord["fileid"].";";
		$queryresult = mysql_query($querystatement,$dblink);
		if (!$queryresult) reportError(300,"Couldn't retrieve file info: ".mysql_error($dblink)." -- ".$querystatement);		
		if(!mysql_num_rows($queryresult)){
			$querystatement = "DELETE FROM files WHERE id=".$therecord["fileid"].";";
			$queryresult = mysql_query($querystatement,$dblink);
			if (!$queryresult) reportError(300,"Couldn't Delete File: ".mysql_error($dblink)." -- ".$querystatement);		
		}
		
	}

	$querystatement = "DELETE FROM attachments WHERE ".$whereclause.";";
	$queryresult = mysql_query($querystatement,$dblink);
	if (!$queryresult) reportError(300,"Couldn't Delete: ".mysql_error($dblink)." -- ".$querystatement);		
	
	$message=buildStatusMessage($rowsdeleted,count($theids));
	$message.=" deleted.";
	return $message;
}
?>