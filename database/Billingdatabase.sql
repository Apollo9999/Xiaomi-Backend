CREATE TABLE `user schema` (
`user schema` INT             NOT NULL  AUTO_INCREMENT,
`password`    VARCHAR(10)     NOT NULL,
`address`     VARCHAR(1000)   NOT NULL,   
`mobile_number`VARCHAR(10)   NOT NULL, 
`account Type' VARCHAR(100)   NOT NULL,
ADD PRIMARY KEY  (`mi_id`)
) ENGINE=MyISAM;

CREATE TABLE `vendor schema` (
`vendor schema`   INT                NOT NULL  AUTO_INCREMENT,
`Vendor_ID`      VARCHAR(20)       NOT NULL,
`Manager_ID`     VARCHAR(20)       NOT NULL,   
`Sales / Operator_ID`VARCHAR(20)   NOT NULL, 
`Inventory Manager' VARCHAR(20)    NOT NULL,
'Address details attribute' VARCHAR(100)   NOT NULL,
ADD PRIMARY KEY  (`vendor_id`)
) ENGINE=MyISAM;


CREATE TABLE `Inventory Schema` (
`Inventory schema` INT                NOT NULL  AUTO_INCREMENT,
`product set_id`      VARCHAR(20)       NOT NULL,
`availability`     VARCHAR(2000)       NOT NULL,   
`inventory manager_id(20)   NOT NULL, 
'inventory adder_id' VARCHAR(20)   NOT NULL,
ADD PRIMARY KEY  (`product set_id`)
Foreign Key  ('POS_ID  REFERENCES Vendor Schema')
) ENGINE=MyISAM;

CREATE TABLE `Product Schema` (
`product schema` INT                NOT NULL  AUTO_INCREMENT,
`serial_no`      VARCHAR(10)       NOT NULL,
`product_name`     VARCHAR(20)       NOT NULL,   
`model_no`VARCHAR(20)   NOT NULL, 
`color' VARCHAR(6)    NOT NULL,
ADD PRIMARY KEY  (`product set_id`)
Foreign Key  ('POS_ID  REFERENCES Vendor Schema')
) ENGINE=MyISAM;

CREATE TABLE `Order Schema` (
`order schema` INT                NOT NULL  AUTO_INCREMENT,
`order_id`      VARCHAR(10)       NOT NULL,
`pos_id`     VARCHAR(10)       NOT NULL,   
`customer mi_id`(10) VARCHAR(10)  NOT NULL, 
`status_goods` VARCHAR(10)  NOT NULL,
`delivery_mode` VARCHAR(10)  NOT NULL,
`delivery details attribute` VARCHAR(10)  NOT NULL,
`deliveryagent_id` VARCHAR(10)  NOT NULL,
`invoice no`VARCHAR(10)  NOT NULL,
`salesagent_id'VARCHAR(10)  NOT NULL,
) ENGINE=MyISAM;
