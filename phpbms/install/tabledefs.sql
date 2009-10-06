INSERT INTO `tabledefs` (`uuid`, `displayname`, `prefix`, `type`, `moduleid`, `maintable`, `querytable`, `editfile`, `editroleid`, `addfile`, `addroleid`, `importfile`, `importroleid`, `searchroleid`, `advsearchroleid`, `viewsqlroleid`, `deletebutton`, `canpost`, `hascustomfields`, `defaultwhereclause`, `defaultsortorder`, `defaultsearchtype`, `defaultcriteriafindoptions`, `defaultcriteriaselection`, `createdby`, `creationdate`, `modifiedby`, `modifieddate`) VALUES ('tbld:afe6d297-b484-4f0b-57d4-1c39412e9dfb', 'Users', 'usr', 'system', 'mod:29873ee8-c12a-e3f6-9010-4cd24174ffd7', 'users', 'users', 'modules/base/users_addedit.php', '', 'modules/base/users_addedit.php', '', NULL, 'Admin', '', 'Admin', 'Admin', 'revoke', '0', '1', 'users.id !=0', 'users.id', '', '', '', 1, NOW(), 1, NOW());
INSERT INTO `tabledefs` (`uuid`, `displayname`, `prefix`, `type`, `moduleid`, `maintable`, `querytable`, `editfile`, `editroleid`, `addfile`, `addroleid`, `importfile`, `importroleid`, `searchroleid`, `advsearchroleid`, `viewsqlroleid`, `deletebutton`, `canpost`, `hascustomfields`, `defaultwhereclause`, `defaultsortorder`, `defaultsearchtype`, `defaultcriteriafindoptions`, `defaultcriteriaselection`, `createdby`, `creationdate`, `modifiedby`, `modifieddate`) VALUES ('tbld:8d19c73c-42fb-d829-3681-d20b4dbe43b9', 'Relationships', 'rln', 'system', 'mod:29873ee8-c12a-e3f6-9010-4cd24174ffd7', 'relationships', '(`relationships` INNER JOIN `tabledefs` AS `fromtable` ON `relationships`.`fromtableid`=`fromtable`.`uuid`) INNER JOIN `tabledefs` AS `totable` ON `relationships`.`totableid`=`totable`.`uuid`', 'modules/base/relationships_addedit.php', '', 'modules/base/relationships_addedit.php', '', NULL, 'Admin', '', 'Admin', 'Admin', 'delete', '0', '0', 'relationships.id != 0', 'fromtable.displayname, name', '', '', '', 1, NOW(), 1, NOW());
INSERT INTO `tabledefs` (`uuid`, `displayname`, `prefix`, `type`, `moduleid`, `maintable`, `querytable`, `editfile`, `editroleid`, `addfile`, `addroleid`, `importfile`, `importroleid`, `searchroleid`, `advsearchroleid`, `viewsqlroleid`, `deletebutton`, `canpost`, `hascustomfields`, `defaultwhereclause`, `defaultsortorder`, `defaultsearchtype`, `defaultcriteriafindoptions`, `defaultcriteriaselection`, `createdby`, `creationdate`, `modifiedby`, `modifieddate`) VALUES ('tbld:5c9d645f-26ab-5003-b98e-89e9049f8ac3', 'Table Definitions', 'tbld', 'system', 'mod:29873ee8-c12a-e3f6-9010-4cd24174ffd7', 'tabledefs', '`tabledefs` LEFT JOIN `modules` ON `tabledefs`.`moduleid` = `modules`.`uuid`', 'modules/base/tabledefs_addedit.php', 'Admin', 'modules/base/tabledefs_addedit.php', 'Admin', NULL, 'Admin', 'Admin', 'Admin', 'Admin', 'delete', '0', '0', 'tabledefs.id != 0', 'modules.name, tabledefs.displayname', '', '', '', 1, NOW(), 1, NOW());
INSERT INTO `tabledefs` (`uuid`, `displayname`, `prefix`, `type`, `moduleid`, `maintable`, `querytable`, `editfile`, `editroleid`, `addfile`, `addroleid`, `importfile`, `importroleid`, `searchroleid`, `advsearchroleid`, `viewsqlroleid`, `deletebutton`, `canpost`, `hascustomfields`, `defaultwhereclause`, `defaultsortorder`, `defaultsearchtype`, `defaultcriteriafindoptions`, `defaultcriteriaselection`, `createdby`, `creationdate`, `modifiedby`, `modifieddate`) VALUES ('tbld:a4cdd991-cf0a-916f-1240-49428ea1bdd1', 'Notes', 'note', 'table', 'mod:29873ee8-c12a-e3f6-9010-4cd24174ffd7', 'notes', 'notes', 'modules/base/notes_addedit.php', '', 'modules/base/notes_addedit.php', '', NULL, 'Admin', '', 'Admin', 'Admin', 'delete', '0', '1', 'notes.type=\'NT\' AND notes.createdby = {{$_SESSION[\'userinfo\'][\'id\']}} AND completed=0', 'notes.category,notes.type,notes.importance DESC,notes.creationdate', 'search', 'My Unread Notes', 'new', 1, NOW(), 1, NOW());
INSERT INTO `tabledefs` (`uuid`, `displayname`, `prefix`, `type`, `moduleid`, `maintable`, `querytable`, `editfile`, `editroleid`, `addfile`, `addroleid`, `importfile`, `importroleid`, `searchroleid`, `advsearchroleid`, `viewsqlroleid`, `deletebutton`, `canpost`, `hascustomfields`, `defaultwhereclause`, `defaultsortorder`, `defaultsearchtype`, `defaultcriteriafindoptions`, `defaultcriteriaselection`, `createdby`, `creationdate`, `modifiedby`, `modifieddate`) VALUES ('tbld:d595ef42-db9d-2233-1b9b-11dfd0db9cbb', 'Reports', 'rpt', 'system', 'mod:29873ee8-c12a-e3f6-9010-4cd24174ffd7', 'reports', '`reports` LEFT JOIN `tabledefs` ON `reports`.`tabledefid` = `tabledefs`.`uuid`', 'modules/base/reports_addedit.php', '', 'modules/base/reports_addedit.php', '', NULL, 'Admin', '', 'Admin', 'Admin', 'delete', '0', '0', 'reports.id != 0', 'tabledefid,displayorder DESC, reports.name', '', '', '', 1, NOW(), 1, NOW());
INSERT INTO `tabledefs` (`uuid`, `displayname`, `prefix`, `type`, `moduleid`, `maintable`, `querytable`, `editfile`, `editroleid`, `addfile`, `addroleid`, `importfile`, `importroleid`, `searchroleid`, `advsearchroleid`, `viewsqlroleid`, `deletebutton`, `canpost`, `hascustomfields`, `defaultwhereclause`, `defaultsortorder`, `defaultsearchtype`, `defaultcriteriafindoptions`, `defaultcriteriaselection`, `createdby`, `creationdate`, `modifiedby`, `modifieddate`) VALUES ('tbld:e251524a-2da4-a0c9-8725-d3d0412d8f4a', 'Saved Searches/Sorts', 'sss', 'system', 'mod:29873ee8-c12a-e3f6-9010-4cd24174ffd7', 'usersearches', '(`usersearches` LEFT JOIN `users` ON `usersearches`.`userid` = `users`.`uuid`) INNER JOIN `tabledefs` ON `usersearches`.`tabledefid`=`tabledefs`.`uuid`', 'modules/base/usersearches_edit.php', '', 'N/A', '', NULL, 'Admin', '', 'Admin', 'Admin', 'delete', '0', '0', 'usersearches.id != 0', 'usersearches.name', '', '', '', 1, NOW(), 1, NOW());
INSERT INTO `tabledefs` (`uuid`, `displayname`, `prefix`, `type`, `moduleid`, `maintable`, `querytable`, `editfile`, `editroleid`, `addfile`, `addroleid`, `importfile`, `importroleid`, `searchroleid`, `advsearchroleid`, `viewsqlroleid`, `deletebutton`, `canpost`, `hascustomfields`, `defaultwhereclause`, `defaultsortorder`, `defaultsearchtype`, `defaultcriteriafindoptions`, `defaultcriteriaselection`, `createdby`, `creationdate`, `modifiedby`, `modifieddate`) VALUES ('tbld:83187e3d-101e-a8a5-037f-31e9800fed2d', 'Menu', 'menu', 'system', 'mod:29873ee8-c12a-e3f6-9010-4cd24174ffd7', 'menu', '((menu LEFT JOIN menu as parentmenu on menu.parentid=parentmenu.uuid) LEFT JOIN roles on menu.roleid=roles.uuid)', 'modules/base/menu_addedit.php', 'Admin', 'modules/base/menu_addedit.php', 'Admin', NULL, 'Admin', 'Admin', 'Admin', 'Admin', 'delete', '0', '0', 'menu.id!=0', 'if(parentmenu.name is null,menu.displayorder,parentmenu.displayorder+(menu.displayorder+1)/10000)', '', '', '', 1, NOW(), 1, NOW());
INSERT INTO `tabledefs` (`uuid`, `displayname`, `prefix`, `type`, `moduleid`, `maintable`, `querytable`, `editfile`, `editroleid`, `addfile`, `addroleid`, `importfile`, `importroleid`, `searchroleid`, `advsearchroleid`, `viewsqlroleid`, `deletebutton`, `canpost`, `hascustomfields`, `defaultwhereclause`, `defaultsortorder`, `defaultsearchtype`, `defaultcriteriafindoptions`, `defaultcriteriaselection`, `createdby`, `creationdate`, `modifiedby`, `modifieddate`) VALUES ('tbld:ea159d67-5e89-5b7f-f5a0-c740e147cd73', 'Installed Modules', 'mod', 'system', 'mod:29873ee8-c12a-e3f6-9010-4cd24174ffd7', 'modules', 'modules', 'modules/base/modules_view.php', '', 'modules/base/modules_view.php', '', NULL, 'Admin', '', 'Admin', 'Admin', 'NA', '0', '0', 'modules.id!=0', 'modules.name', '', '', '', 1, NOW(), 1, NOW());
INSERT INTO `tabledefs` (`uuid`, `displayname`, `prefix`, `type`, `moduleid`, `maintable`, `querytable`, `editfile`, `editroleid`, `addfile`, `addroleid`, `importfile`, `importroleid`, `searchroleid`, `advsearchroleid`, `viewsqlroleid`, `deletebutton`, `canpost`, `hascustomfields`, `defaultwhereclause`, `defaultsortorder`, `defaultsearchtype`, `defaultcriteriafindoptions`, `defaultcriteriaselection`, `createdby`, `creationdate`, `modifiedby`, `modifieddate`) VALUES ('tbld:2bc3e683-81f9-694a-9550-a0c7263057de', 'Tasks', NULL, 'view', 'mod:29873ee8-c12a-e3f6-9010-4cd24174ffd7', 'notes', '((`notes` LEFT JOIN `users` AS `assignedto` ON `assignedto`.`uuid` = `notes`.`assignedtoid`)  LEFT JOIN `users` as `assignedby` ON `assignedby`.`uuid`=`notes`.`assignedbyid`)', 'modules/base/notes_addedit.php?backurl=../../search.php?id=23', '', 'modules/base/notes_addedit.php?ty=TS&backurl=../../search.php?id=23', '', NULL, 'Admin', '', 'Admin', 'Admin', 'delete', '0', '0', 'notes.type=\'TS\' AND notes.createdby = {{$_SESSION[\'userinfo\'][\'id\']}} AND completed=0', 'notes.category,notes.enddate,notes.endtime,notes.startdate,notes.starttime,notes.importance DESC,notes.subject', 'search', 'My Uncompleted Tasks', '', 1, NOW(), 1, NOW());
INSERT INTO `tabledefs` (`uuid`, `displayname`, `prefix`, `type`, `moduleid`, `maintable`, `querytable`, `editfile`, `editroleid`, `addfile`, `addroleid`, `importfile`, `importroleid`, `searchroleid`, `advsearchroleid`, `viewsqlroleid`, `deletebutton`, `canpost`, `hascustomfields`, `defaultwhereclause`, `defaultsortorder`, `defaultsearchtype`, `defaultcriteriafindoptions`, `defaultcriteriaselection`, `createdby`, `creationdate`, `modifiedby`, `modifieddate`) VALUES ('tbld:0fcca651-6c34-c74d-ac04-2d88f602dd71', 'Events', NULL, 'view', 'mod:29873ee8-c12a-e3f6-9010-4cd24174ffd7', 'notes', '((`notes` LEFT JOIN `users` AS `assignedto` ON `assignedto`.`uuid` = `notes`.`assignedtoid`)  LEFT JOIN `users` as `assignedby` ON `assignedby`.`uuid`=`notes`.`assignedbyid`)', 'modules/base/notes_addedit.php?backurl=../../search.php?id=24', '', 'modules/base/notes_addedit.php?ty=EV&backurl=../../search.php?id=24', '', NULL, 'Admin', '', 'Admin', 'Admin', 'delete', '0', '0', 'notes.type=\'EV\' AND notes.createdby = {{$_SESSION[\'userinfo\'][\'id\']}} AND ((notes.startdate = year(notes.startdate)=year(curdate()) and week(notes.startdate)=week(curdate())))', 'notes.startdate DESC,notes.starttime DESC,notes.enddate DESC,notes.endtime DESC,notes.importance', 'search', NULL, NULL, 1, NOW(), 1, NOW());
INSERT INTO `tabledefs` (`uuid`, `displayname`, `prefix`, `type`, `moduleid`, `maintable`, `querytable`, `editfile`, `editroleid`, `addfile`, `addroleid`, `importfile`, `importroleid`, `searchroleid`, `advsearchroleid`, `viewsqlroleid`, `deletebutton`, `canpost`, `hascustomfields`, `defaultwhereclause`, `defaultsortorder`, `defaultsearchtype`, `defaultcriteriafindoptions`, `defaultcriteriaselection`, `createdby`, `creationdate`, `modifiedby`, `modifieddate`) VALUES ('tbld:80b4f38d-b957-bced-c0a0-ed08a0db6475', 'Files', 'file', 'table', 'mod:29873ee8-c12a-e3f6-9010-4cd24174ffd7', 'files', 'files', 'modules/base/files_addedit.php', '', 'modules/base/files_addedit.php', '', NULL, 'Admin', 'Admin', 'Admin', 'Admin', 'delete', '0', '1', 'files.id=-1', 'files.name', 'search', '', '', 1, NOW(), 1, NOW());
INSERT INTO `tabledefs` (`uuid`, `displayname`, `prefix`, `type`, `moduleid`, `maintable`, `querytable`, `editfile`, `editroleid`, `addfile`, `addroleid`, `importfile`, `importroleid`, `searchroleid`, `advsearchroleid`, `viewsqlroleid`, `deletebutton`, `canpost`, `hascustomfields`, `defaultwhereclause`, `defaultsortorder`, `defaultsearchtype`, `defaultcriteriafindoptions`, `defaultcriteriaselection`, `createdby`, `creationdate`, `modifiedby`, `modifieddate`) VALUES ('tbld:edb8c896-7ce3-cafe-1d58-5aefbcd5f3d7', 'Attachments', NULL, 'table', 'mod:29873ee8-c12a-e3f6-9010-4cd24174ffd7', 'attachments', '(`attachments` INNER JOIN `files` ON `attachments`.`fileid`=`files`.`uuid`)', 'modules/base/files_addedit.php', '', 'modules/base/files_addedit.php', '', NULL, 'Admin', '', 'Admin', 'Admin', 'delete', '0', '0', 'attachments.id!=0', 'attachments.creationdate DESC', 'search', '', '', 1, NOW(), 1, NOW());
INSERT INTO `tabledefs` (`uuid`, `displayname`, `prefix`, `type`, `moduleid`, `maintable`, `querytable`, `editfile`, `editroleid`, `addfile`, `addroleid`, `importfile`, `importroleid`, `searchroleid`, `advsearchroleid`, `viewsqlroleid`, `deletebutton`, `canpost`, `hascustomfields`, `defaultwhereclause`, `defaultsortorder`, `defaultsearchtype`, `defaultcriteriafindoptions`, `defaultcriteriaselection`, `createdby`, `creationdate`, `modifiedby`, `modifieddate`) VALUES ('tbld:87b9fe06-afe5-d9c6-0fa0-4a0f2ec4ee8a', 'Roles', 'role', 'table', 'mod:29873ee8-c12a-e3f6-9010-4cd24174ffd7', 'roles', 'roles', 'modules/base/roles_addedit.php', 'Admin', 'modules/base/roles_addedit.php', 'Admin', NULL, 'Admin', 'Admin', 'Admin', 'Admin', 'inactivate', '0', '1', 'roles.id!=-1', 'name', 'search', '', '', 1, NOW(), 1, NOW());
INSERT INTO `tabledefs` (`uuid`, `displayname`, `prefix`, `type`, `moduleid`, `maintable`, `querytable`, `editfile`, `editroleid`, `addfile`, `addroleid`, `importfile`, `importroleid`, `searchroleid`, `advsearchroleid`, `viewsqlroleid`, `deletebutton`, `canpost`, `hascustomfields`, `defaultwhereclause`, `defaultsortorder`, `defaultsearchtype`, `defaultcriteriafindoptions`, `defaultcriteriaselection`, `createdby`, `creationdate`, `modifiedby`, `modifieddate`) VALUES ('tbld:83de284b-ef79-3567-145c-30ca38b40796', 'Scheduler', 'schd', 'system', 'mod:29873ee8-c12a-e3f6-9010-4cd24174ffd7', 'scheduler', 'scheduler', 'modules/base/scheduler_addedit.php', 'Admin', 'modules/base/scheduler_addedit.php', 'Admin', NULL, 'Admin', 'Admin', 'Admin', 'Admin', 'delete', '0', '0', 'scheduler.id!=0', 'scheduler.name', '', '', '', 1, NOW(), 1, NOW());
INSERT INTO `tabledefs` (`uuid`, `displayname`, `prefix`, `type`, `moduleid`, `maintable`, `querytable`, `editfile`, `editroleid`, `addfile`, `addroleid`, `importfile`, `importroleid`, `searchroleid`, `advsearchroleid`, `viewsqlroleid`, `deletebutton`, `canpost`, `hascustomfields`, `defaultwhereclause`, `defaultsortorder`, `defaultsearchtype`, `defaultcriteriafindoptions`, `defaultcriteriaselection`, `createdby`, `creationdate`, `modifiedby`, `modifieddate`) VALUES ('tbld:3f71ab66-1f84-d68b-e2a3-3ee3bb0ec667', 'System Log', NULL, 'system', 'mod:29873ee8-c12a-e3f6-9010-4cd24174ffd7', 'log', 'log LEFT JOIN users ON log.userid=users.uuid', 'N/A', 'Admin', 'N/A', 'Admin', NULL, 'Admin', 'Admin', 'Admin', 'Admin', 'delete', '0', '0', 'log.stamp> DATE_SUB(CURDATE(),INTERVAL 1 DAY)', 'log.stamp', '', '', '', 1, NOW(), 1, NOW());
INSERT INTO `tabledefs` (`uuid`, `displayname`, `prefix`, `type`, `moduleid`, `maintable`, `querytable`, `editfile`, `editroleid`, `addfile`, `addroleid`, `importfile`, `importroleid`, `searchroleid`, `advsearchroleid`, `viewsqlroleid`, `deletebutton`, `canpost`, `hascustomfields`, `defaultwhereclause`, `defaultsortorder`, `defaultsearchtype`, `defaultcriteriafindoptions`, `defaultcriteriaselection`, `createdby`, `creationdate`, `modifiedby`, `modifieddate`) VALUES ('tbld:7e75af48-6f70-d157-f440-69a8e7f59d38', 'Tabs', 'tab', 'system', 'mod:29873ee8-c12a-e3f6-9010-4cd24174ffd7', 'tabs', '`tabs` LEFT JOIN `roles` ON `tabs`.`roleid`=`roles`.`uuid`', 'modules/base/tabs_addedit.php', 'Admin', 'modules/base/tabs_addedit.php', 'Admin', NULL, 'Admin', 'Admin', 'Admin', 'Admin', 'delete', '0', '0', 'tabs.id!=0', 'tabs.tabgroup,tabs.displayorder', '', '', '', 1, NOW(), 1, NOW());
INSERT INTO `tabledefs` (`uuid`, `displayname`, `prefix`, `type`, `moduleid`, `maintable`, `querytable`, `editfile`, `editroleid`, `addfile`, `addroleid`, `importfile`, `importroleid`, `searchroleid`, `advsearchroleid`, `viewsqlroleid`, `deletebutton`, `canpost`, `hascustomfields`, `defaultwhereclause`, `defaultsortorder`, `defaultsearchtype`, `defaultcriteriafindoptions`, `defaultcriteriaselection`, `createdby`, `creationdate`, `modifiedby`, `modifieddate`) VALUES ('tbld:29925e0a-c825-0067-8882-db4b57866a96', 'Smart Searches', 'smsr', 'table', 'mod:29873ee8-c12a-e3f6-9010-4cd24174ffd7', 'smartsearches', '(`smartsearches` INNER JOIN `tabledefs` ON `smartsearches`.`tabledefid` = `tabledefs`.`uuid`) INNER JOIN `modules` ON `smartsearches`.`moduleid` = `modules`.`uuid`', 'modules/base/smartsearches_addedit.php', 'Admin', 'modules/base/smartsearches_addedit.php', 'Admin', NULL, 'Admin', 'Admin', 'Admin', 'Admin', 'delete', '0', '0', 'smartsearches.id != -1', 'smartsearches.name', NULL, NULL, NULL, 1, NOW(), 1, NOW());
INSERT INTO `tabledefs` (`uuid`, `displayname`, `prefix`, `type`, `moduleid`, `maintable`, `querytable`, `editfile`, `editroleid`, `addfile`, `addroleid`, `importfile`, `importroleid`, `searchroleid`, `advsearchroleid`, `viewsqlroleid`, `deletebutton`, `canpost`, `hascustomfields`, `defaultwhereclause`, `defaultsortorder`, `defaultsearchtype`, `defaultcriteriafindoptions`, `defaultcriteriaselection`, `createdby`, `creationdate`, `modifiedby`, `modifieddate`) VALUES ('tbld:2ad5146c-d4c0-db8e-592a-c0cc2f3c2c21', 'Snapshot Widgets', 'wdgt', 'system', 'mod:29873ee8-c12a-e3f6-9010-4cd24174ffd7', 'widgets', '((`widgets` INNER JOIN `modules` ON `widgets`.`moduleid` = `modules`.`uuid`) LEFT JOIN `roles` ON `widgets`.`roleid` = `roles`.`uuid`)', 'modules/base/widgets_addedit.php', 'Admin', 'modules/base/widgets_addedit.php', 'Admin', NULL, 'Admin', 'Admin', 'Admin', 'Admin', 'delete', '0', '0', 'widgets.id != -1', 'widgets.title', NULL, NULL, NULL, 1, NOW(), 1, NOW());