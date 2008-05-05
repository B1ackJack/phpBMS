INSERT INTO `tablesearchablefields` (`tabledefid`, `field`, `name`, `displayorder`, `type`) VALUES ('2', '(clients.lastname like \"{{value}}%\" or clients.firstname like \"{{value}}%\" or clients.company like \"{{value}}%\")', ' name', '0', 'whereclause');
INSERT INTO `tablesearchablefields` (`tabledefid`, `field`, `name`, `displayorder`, `type`) VALUES ('2', 'clients.id', 'id', '7', 'field');
INSERT INTO `tablesearchablefields` (`tabledefid`, `field`, `name`, `displayorder`, `type`) VALUES ('2', 'clients.leadsource', 'lead source', '6', 'field');
INSERT INTO `tablesearchablefields` (`tabledefid`, `field`, `name`, `displayorder`, `type`) VALUES ('2', 'clients.email', 'e-mail', '5', 'field');
INSERT INTO `tablesearchablefields` (`tabledefid`, `field`, `name`, `displayorder`, `type`) VALUES ('2', 'addresses.postalcode', 'postal code', '4', 'field');
INSERT INTO `tablesearchablefields` (`tabledefid`, `field`, `name`, `displayorder`, `type`) VALUES ('2', 'addresses.state', 'state/province', '3', 'field');
INSERT INTO `tablesearchablefields` (`tabledefid`, `field`, `name`, `displayorder`, `type`) VALUES ('2', 'addresses.city', 'city', '2', 'field');
INSERT INTO `tablesearchablefields` (`tabledefid`, `field`, `name`, `displayorder`, `type`) VALUES ('2', '(clients.homephone like \"{{value}}%\" or clients.workphone like \"{{value}}%\" or clients.mobilephone like \"{{value}}%\" or clients.otherphone like \"{{value}}%\" or clients.fax like \"{{value}}%\")', 'phone', '1', 'whereclause');
INSERT INTO `tablesearchablefields` (`tabledefid`, `field`, `name`, `displayorder`, `type`) VALUES (3,'invoices.orderdate','order date',2,'field');
INSERT INTO `tablesearchablefields` (`tabledefid`, `field`, `name`, `displayorder`, `type`) VALUES (3,'invoices.invoicedate','invoice date',3,'field');
INSERT INTO `tablesearchablefields` (`tabledefid`, `field`, `name`, `displayorder`, `type`) VALUES (3,'(clients.lastname like \"{{value}}%\" or clients.firstname like \"{{value}}%\" or clients.company like \"{{value}}%\")','company / name',1,'whereclause');
INSERT INTO `tablesearchablefields` (`tabledefid`, `field`, `name`, `displayorder`, `type`) VALUES (3,'invoices.id','id',0,'field');
INSERT INTO `tablesearchablefields` (`tabledefid`, `field`, `name`, `displayorder`, `type`) VALUES (4,'products.partnumber','part number',0,'field');
INSERT INTO `tablesearchablefields` (`tabledefid`, `field`, `name`, `displayorder`, `type`) VALUES (4,'products.partname','part name',1,'field');
INSERT INTO `tablesearchablefields` (`tabledefid`, `field`, `name`, `displayorder`, `type`) VALUES (4,'products.unitprice','unit price',2,'field');
INSERT INTO `tablesearchablefields` (`tabledefid`, `field`, `name`, `displayorder`, `type`) VALUES (4,'products.id','id',3,'field');
INSERT INTO `tablesearchablefields` (`tabledefid`, `field`, `name`, `displayorder`, `type`) VALUES (5,'products.partnumber','part number',0,'field');
INSERT INTO `tablesearchablefields` (`tabledefid`, `field`, `name`, `displayorder`, `type`) VALUES (5,'lineitems.invoiceid','invoice id',2,'field');
INSERT INTO `tablesearchablefields` (`tabledefid`, `field`, `name`, `displayorder`, `type`) VALUES (5,'lineitems.id','id',8,'field');
INSERT INTO `tablesearchablefields` (`tabledefid`, `field`, `name`, `displayorder`, `type`) VALUES (5,'invoices.orderdate','order date',3,'field');
INSERT INTO `tablesearchablefields` (`tabledefid`, `field`, `name`, `displayorder`, `type`) VALUES (5,'invoices.invoicedate','invoice date',4,'field');
INSERT INTO `tablesearchablefields` (`tabledefid`, `field`, `name`, `displayorder`, `type`) VALUES (5,'products.partname','part name',1,'field');
INSERT INTO `tablesearchablefields` (`tabledefid`, `field`, `name`, `displayorder`, `type`) VALUES (6,'tax.name','name',0,'field');
INSERT INTO `tablesearchablefields` (`tabledefid`, `field`, `name`, `displayorder`, `type`) VALUES (6,'tax.id','id',1,'field');
INSERT INTO `tablesearchablefields` (`tabledefid`, `field`, `name`, `displayorder`, `type`) VALUES (7,'productcategories.name','name',0,'field');
INSERT INTO `tablesearchablefields` (`tabledefid`, `field`, `name`, `displayorder`, `type`) VALUES (7,'productcategories.id','id',1,'field');
INSERT INTO `tablesearchablefields` (`tabledefid`, `field`, `name`, `displayorder`, `type`) VALUES (8,'products.partnumber','part number',0,'field');
INSERT INTO `tablesearchablefields` (`tabledefid`, `field`, `name`, `displayorder`, `type`) VALUES (8,'products.partname','part name',1,'field');
INSERT INTO `tablesearchablefields` (`tabledefid`, `field`, `name`, `displayorder`, `type`) VALUES (8,'childproducts.partnumber','dependent part number',2,'field');
INSERT INTO `tablesearchablefields` (`tabledefid`, `field`, `name`, `displayorder`, `type`) VALUES (8,'childproducts.partname','dependent name',3,'field');
INSERT INTO `tablesearchablefields` (`tabledefid`, `field`, `name`, `displayorder`, `type`) VALUES (8,'prerequisites.id','id',4,'field');
INSERT INTO `tablesearchablefields` (`tabledefid`, `field`, `name`, `displayorder`, `type`) VALUES ('18', '(clients.lastname like \"{{value}}%\" or clients.firstname like \"{{value}}%\" or clients.company like \"{{value}}%\")', 'name', '0', 'whereclause');
INSERT INTO `tablesearchablefields` (`tabledefid`, `field`, `name`, `displayorder`, `type`) VALUES ('18', '(clients.homephone like \"{{value}}%\" or clients.workphone like \"{{value}}%\" or clients.mobilephone like \"{{value}}%\" or clients.otherphone like \"{{value}}%\" or clients.fax like \"{{value}}%\")', 'phone', '1', 'whereclause');
INSERT INTO `tablesearchablefields` (`tabledefid`, `field`, `name`, `displayorder`, `type`) VALUES ('18', 'clients.email', 'e-mail', '5', 'field');
INSERT INTO `tablesearchablefields` (`tabledefid`, `field`, `name`, `displayorder`, `type`) VALUES ('18', 'clients.id', 'id', '6', 'field');
INSERT INTO `tablesearchablefields` (`tabledefid`, `field`, `name`, `displayorder`, `type`) VALUES (22,'clientemailprojects.name','name',0,'field');
INSERT INTO `tablesearchablefields` (`tabledefid`, `field`, `name`, `displayorder`, `type`) VALUES (22,'users.firstname like \"{{value}}%\" or users.lastname like \"{{value}}%\"','user',1,'whereclause');
INSERT INTO `tablesearchablefields` (`tabledefid`, `field`, `name`, `displayorder`, `type`) VALUES (25,'discounts.name','name',0,'field');
INSERT INTO `tablesearchablefields` (`tabledefid`, `field`, `name`, `displayorder`, `type`) VALUES (300,'shippingmethods.name','name',0,'field');
INSERT INTO `tablesearchablefields` (`tabledefid`, `field`, `name`, `displayorder`, `type`) VALUES (301,'paymentmethods.name','name',0,'field');
INSERT INTO `tablesearchablefields` (`tabledefid`, `field`, `name`, `displayorder`, `type`) VALUES (302,'invoicestatuses.name','name',0,'field');
INSERT INTO `tablesearchablefields` (`tabledefid`, `field`, `name`, `displayorder`, `type`) VALUES (303,'aritems.id','id',4,'field');
INSERT INTO `tablesearchablefields` (`tabledefid`, `field`, `name`, `displayorder`, `type`) VALUES (303,'aritems.relatedid','invoice id',2,'field');
INSERT INTO `tablesearchablefields` (`tabledefid`, `field`, `name`, `displayorder`, `type`) VALUES (303,'aritems.amount','amount',3,'field');
INSERT INTO `tablesearchablefields` (`tabledefid`, `field`, `name`, `displayorder`, `type`) VALUES (303,'(clients.lastname like \"{{value}}%\" or clients.firstname like \"{{value}}%\" or clients.company like \"{{value}}%\")','client',1,'whereclause');
INSERT INTO `tablesearchablefields` (`tabledefid`, `field`, `name`, `displayorder`, `type`) VALUES (304,'receipts.id','id',2,'field');
INSERT INTO `tablesearchablefields` (`tabledefid`, `field`, `name`, `displayorder`, `type`) VALUES (304,'(clients.lastname like \"{{value}}%\" or clients.firstname like \"{{value}}%\" or clients.company like \"{{value}}%\")','client',1,'whereclause');
INSERT INTO `tablesearchablefields` (`tabledefid`, `field`, `name`, `displayorder`, `type`) VALUES (304,'paymentmethods.name','payment',3,'field');
INSERT INTO `tablesearchablefields` (`tabledefid`, `field`, `name`, `displayorder`, `type`) VALUES (304,'receipts.amount','amount',4,'field');
INSERT INTO `tablesearchablefields` (`tabledefid`, `field`, `name`, `displayorder`, `type`) VALUES ('305', 'addresstorecord.id', 'id', '1', 'field');
INSERT INTO `tablesearchablefields` (`tabledefid`, `field`, `name`, `displayorder`, `type`) VALUES ('306', 'addresses.id', 'id', '1', 'field');