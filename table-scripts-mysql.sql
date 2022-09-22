/*==============================================================*/
/* SQLServer to MySQL: nvarchar converted to varchar
   identity converted to auto_increment
   go was removed and semi-colon was added at the end of scripts
   getdate to curdate - you cant have a function after default in mysql - it has to be a constant
   so getdate becomes current_timestamp. Also datetime and timestamp in mysql are essentially the same data type, the only difference is that timestamp starts in 1970 to 2038 while datetime start in 1000 to 9999*/
/*==============================================================*//*==============================================================*/
/* Table: Customer                                              */
/*==============================================================*/
create table Customer (
   CustId               int                 auto_increment,
   FirstName            varchar(40)         not null,
   LastName             varchar(40)         not null,
   City                 varchar(40)         null,
   Country              varchar(40)         null,
   CellPhone            varchar(20)         null,
   constraint PK_CUSTOMER primary key (CustId)
);

/*==============================================================*/
/* Index: IndexCustomerName                                     */
/*==============================================================*/
create index IndexCustomerName on Customer (
LastName ASC,
FirstName ASC
);

/*==============================================================*/
/* Table: Supplier                                              */
/*==============================================================*/
create table Supplier (
   SupplierId           int                 auto_increment,
   CompanyName          varchar(40)         not null,
   ContactName          varchar(50)         null,
   ContactTitle         varchar(40)         null,
   City                 varchar(40)         null,
   Country              varchar(40)         null,
   Phone                varchar(30)         null,
   Fax                  varchar(30)         null,
   constraint PK_SUPPLIER primary key (SupplierId)
);

/*==============================================================*/
/* Index: IndexSupplierName                                     */
/*==============================================================*/
create index IndexSupplierName on Supplier (
CompanyName ASC
);

/*==============================================================*/
/* Index: IndexSupplierCountry                                  */
/*==============================================================*/

create index IndexSupplierCountry on Supplier (
Country ASC
);

/*==============================================================*/
/* Table: Product                                               */
/*==============================================================*/
create table Product (
   ProductId                   int          auto_increment,
   ProductName          varchar(50)         not null,
   SupplierId           int                 not null,
   UnitPrice            decimal(12,2)        null default 0,
   Package              varchar(30)         null,
   IsDiscontinued       bit                  not null default 0,
   constraint PK_PRODUCT primary key (ProductId)
);

/*==============================================================*/
/* Index: IndexProductSupplierId                                */
/*==============================================================*/
create index IndexProductSupplierId on Product (
SupplierId ASC
);

/*==============================================================*/
/* Index: IndexProductName                                      */
/*==============================================================*/
create index IndexProductName on Product (
ProductName ASC
);

/*==============================================================*/
/* Table: CustomerOrder                                            */
/*==============================================================*/
create table CustomerOrder (
   OrderId              int                  auto_increment,
   OrderDate            datetime             not null default current_timestamp,
   CustomerId           int                  not null,
   TotalAmount          decimal(12,2)        null default 0,
   InvoiceNumber        varchar(10)       null,
   constraint PK_ORDER primary key (OrderId)
);


/*==============================================================*/
/* Index: IndexOrderCustomerId                                  */
/*==============================================================*/
create index IndexOrderCustomerId on CustomerOrder (
CustomerId ASC
);

/*==============================================================*/
/* Index: IndexOrderOrderDate                                   */
/*==============================================================*/
create index IndexOrderOrderDate on CustomerOrder (
OrderDate ASC
);


/*==============================================================*/
/* Table: OrderItem                                             */
/*==============================================================*/
create table OrderItem (
   OrderItemId          int                  auto_increment,
   OrderId              int                  not null,
   ProductId            int                  not null,
   UnitPrice            decimal(12,2)        not null default 0,
   Quantity             int                  not null default 1,
   constraint PK_ORDERITEM primary key (OrderItemId)
);

/*==============================================================*/
/* Index: IndexOrderItemOrderId                                 */
/*==============================================================*/
create index IndexOrderItemOrderId on OrderItem (
OrderId ASC
);

/*==============================================================*/
/* Index: IndexOrderItemProductId                               */
/*==============================================================*/
create index IndexOrderItemProductId on OrderItem (
ProductId ASC
);




/*==============================================================*/
/* Constraints: Foreign Keys                                    */
/*==============================================================*/
alter table CustomerOrder
   add constraint FK_ORDER_REFERENCE_CUSTOMER foreign key (CustomerId)
      references Customer (CustId);

alter table OrderItem
   add constraint FK_ORDERITE_REFERENCE_ORDER foreign key (OrderId)
      references CustomerOrder (OrderId);

alter table OrderItem
   add constraint FK_ORDERITE_REFERENCE_PRODUCT foreign key (ProductId)
      references Product (ProductId);

alter table Product
   add constraint FK_PRODUCT_REFERENCE_SUPPLIER foreign key (SupplierId)
      references Supplier (SupplierId);

