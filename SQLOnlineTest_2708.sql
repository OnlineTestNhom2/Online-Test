/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2008                    */
/* Created on:     8/27/2018 10:21:01 AM                        */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('BAITHI') and o.name = 'FK_BAITHI_CO1_KY_THI')
alter table BAITHI
   drop constraint FK_BAITHI_CO1_KY_THI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CT_CAUHOI') and o.name = 'FK_CT_CAUHO_SOHUU_DS_CH')
alter table CT_CAUHOI
   drop constraint FK_CT_CAUHO_SOHUU_DS_CH
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CT_DETHI') and o.name = 'FK_CT_DETHI_SOHUUDETH_DS_DETHI')
alter table CT_DETHI
   drop constraint FK_CT_DETHI_SOHUUDETH_DS_DETHI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CT_DETHI') and o.name = 'FK_CT_DETHI_TRONG_DS_CH')
alter table CT_DETHI
   drop constraint FK_CT_DETHI_TRONG_DS_CH
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DEMUC') and o.name = 'FK_DEMUC_CO_DS_CH')
alter table DEMUC
   drop constraint FK_DEMUC_CO_DS_CH
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DEMUC') and o.name = 'FK_DEMUC_CODEMUC_MONHOC')
alter table DEMUC
   drop constraint FK_DEMUC_CODEMUC_MONHOC
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DS_DETHI') and o.name = 'FK_DS_DETHI_CODSDETHI_MONHOC')
alter table DS_DETHI
   drop constraint FK_DS_DETHI_CODSDETHI_MONHOC
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('GV_MH') and o.name = 'FK_GV_MH_DAY_GIAOVIEN')
alter table GV_MH
   drop constraint FK_GV_MH_DAY_GIAOVIEN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('GV_MH') and o.name = 'FK_GV_MH_DUOCNHANB_MONHOC')
alter table GV_MH
   drop constraint FK_GV_MH_DUOCNHANB_MONHOC
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('KY_THI') and o.name = 'FK_KY_THI_RELATIONS_MH_TS')
alter table KY_THI
   drop constraint FK_KY_THI_RELATIONS_MH_TS
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('KY_THI') and o.name = 'FK_KY_THI_THUOC_CT_DETHI')
alter table KY_THI
   drop constraint FK_KY_THI_THUOC_CT_DETHI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('MH_TS') and o.name = 'FK_MH_TS_DANGKY_THISINH')
alter table MH_TS
   drop constraint FK_MH_TS_DANGKY_THISINH
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('MH_TS') and o.name = 'FK_MH_TS_MH_MT_MONHOC')
alter table MH_TS
   drop constraint FK_MH_TS_MH_MT_MONHOC
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('BAITHI')
            and   name  = 'RELATIONSHIP_16_FK'
            and   indid > 0
            and   indid < 255)
   drop index BAITHI.RELATIONSHIP_16_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('BAITHI')
            and   type = 'U')
   drop table BAITHI
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CT_CAUHOI')
            and   name  = 'SOHUU_FK'
            and   indid > 0
            and   indid < 255)
   drop index CT_CAUHOI.SOHUU_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CT_CAUHOI')
            and   type = 'U')
   drop table CT_CAUHOI
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CT_DETHI')
            and   name  = 'TRONG_FK'
            and   indid > 0
            and   indid < 255)
   drop index CT_DETHI.TRONG_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CT_DETHI')
            and   name  = 'SOHUUDETHI_FK'
            and   indid > 0
            and   indid < 255)
   drop index CT_DETHI.SOHUUDETHI_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CT_DETHI')
            and   type = 'U')
   drop table CT_DETHI
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('DEMUC')
            and   name  = 'CODEMUC_FK'
            and   indid > 0
            and   indid < 255)
   drop index DEMUC.CODEMUC_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('DEMUC')
            and   name  = 'CO_FK'
            and   indid > 0
            and   indid < 255)
   drop index DEMUC.CO_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DEMUC')
            and   type = 'U')
   drop table DEMUC
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DS_CH')
            and   type = 'U')
   drop table DS_CH
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('DS_DETHI')
            and   name  = 'CODSDETHI_FK'
            and   indid > 0
            and   indid < 255)
   drop index DS_DETHI.CODSDETHI_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DS_DETHI')
            and   type = 'U')
   drop table DS_DETHI
go

if exists (select 1
            from  sysobjects
           where  id = object_id('GIAOVIEN')
            and   type = 'U')
   drop table GIAOVIEN
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('GV_MH')
            and   name  = 'DUOCNHANBOI_FK'
            and   indid > 0
            and   indid < 255)
   drop index GV_MH.DUOCNHANBOI_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('GV_MH')
            and   name  = 'DAY_FK'
            and   indid > 0
            and   indid < 255)
   drop index GV_MH.DAY_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('GV_MH')
            and   type = 'U')
   drop table GV_MH
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('KY_THI')
            and   name  = 'RELATIONSHIP_13_FK'
            and   indid > 0
            and   indid < 255)
   drop index KY_THI.RELATIONSHIP_13_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('KY_THI')
            and   name  = 'RELATIONSHIP_14_FK'
            and   indid > 0
            and   indid < 255)
   drop index KY_THI.RELATIONSHIP_14_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('KY_THI')
            and   type = 'U')
   drop table KY_THI
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('MH_TS')
            and   name  = 'MH_MT_FK'
            and   indid > 0
            and   indid < 255)
   drop index MH_TS.MH_MT_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('MH_TS')
            and   name  = 'DANGKY_FK'
            and   indid > 0
            and   indid < 255)
   drop index MH_TS.DANGKY_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('MH_TS')
            and   type = 'U')
   drop table MH_TS
go

if exists (select 1
            from  sysobjects
           where  id = object_id('MONHOC')
            and   type = 'U')
   drop table MONHOC
go

if exists (select 1
            from  sysobjects
           where  id = object_id('THISINH')
            and   type = 'U')
   drop table THISINH
go

/*==============================================================*/
/* Table: BAITHI                                                */
/*==============================================================*/
create table BAITHI (
   ID_BAITHI            bigint               not null identity,
   ID_KYTHI             bigint               not null,
   TSLUACHON            nvarchar(350)         not null,
   HTBT                 tinyint              not null default(1),
   constraint PK_BAITHI primary key nonclustered (ID_BAITHI)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_16_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_16_FK on BAITHI (
ID_KYTHI ASC
)
go

/*==============================================================*/
/* Table: CT_CAUHOI                                             */
/*==============================================================*/
create table CT_CAUHOI (
   ID_CTCH              bigint               not null identity,
   ID_CH                bigint               not null,
   ND_LUACHON           nvarchar(350)         not null,
   DAPAN                tinyint              not null,
   KHAC_CTCH            nvarchar(250)         null,
   HTCTCH               tinyint              not null default(1),
   constraint PK_CT_CAUHOI primary key nonclustered (ID_CTCH)
)
go

/*==============================================================*/
/* Index: SOHUU_FK                                              */
/*==============================================================*/
create index SOHUU_FK on CT_CAUHOI (
ID_CH ASC
)
go

/*==============================================================*/
/* Table: CT_DETHI                                              */
/*==============================================================*/
create table CT_DETHI (
   ID_CTDT              bigint               not null identity,
   ID_DE                bigint               not null,
   ID_CH                bigint               not null,
   THOIGIANLAMBAI       int                  not null,
   KHAC_CTDT            nvarchar(250)         null,
   TRANGTHAI            tinyint              null,
   constraint PK_CT_DETHI primary key nonclustered (ID_CTDT)
)
go

/*==============================================================*/
/* Index: SOHUUDETHI_FK                                         */
/*==============================================================*/
create index SOHUUDETHI_FK on CT_DETHI (
ID_DE ASC
)
go

/*==============================================================*/
/* Index: TRONG_FK                                              */
/*==============================================================*/
create index TRONG_FK on CT_DETHI (
ID_CH ASC
)
go

/*==============================================================*/
/* Table: DEMUC                                                 */
/*==============================================================*/
create table DEMUC (
   ID_DEMUC             bigint               not null identity,
   ID_CH                bigint               not null,
   ID_MH                bigint               not null,
   TENDEMUC             nvarchar(100)         not null,
   HTDM                 tinyint              not null default(1,
   constraint PK_DEMUC primary key nonclustered (ID_DEMUC)
)
go

/*==============================================================*/
/* Index: CO_FK                                                 */
/*==============================================================*/
create index CO_FK on DEMUC (
ID_CH ASC
)
go

/*==============================================================*/
/* Index: CODEMUC_FK                                            */
/*==============================================================*/
create index CODEMUC_FK on DEMUC (
ID_MH ASC
)
go

/*==============================================================*/
/* Table: DS_CH                                                 */
/*==============================================================*/
create table DS_CH (
   ID_CH                bigint               not null identity,
   NOIDUNG_CH           nvarchar(200)         not null,
   CAPDO                char(50)             not null,
   TT_TRON_CH           tinyint              not null,
   KHAC_CH              nvarchar(250)         null,
   HTCH                 tinyint              not null default(1),
   SODIEMCH             float                not null,
   constraint PK_DS_CH primary key nonclustered (ID_CH)
)
go

/*==============================================================*/
/* Table: DS_DETHI                                              */
/*==============================================================*/
create table DS_DETHI (
   ID_DE                bigint               not null identity,
   ID_MH                bigint               not null,
   TENDE                nvarchar(50)          not null,
   TT_DE                tinyint              not null,
   TT_TRON_DE           tinyint              not null,
   KHAC_DSDT            nvarchar(300)         null,
   HTDT                 tinyint              not null default(1),
   constraint PK_DS_DETHI primary key nonclustered (ID_DE)
)
go

/*==============================================================*/
/* Index: CODSDETHI_FK                                          */
/*==============================================================*/
create index CODSDETHI_FK on DS_DETHI (
ID_MH ASC
)
go

/*==============================================================*/
/* Table: GIAOVIEN                                              */
/*==============================================================*/
create table GIAOVIEN (
   ID_GV                bigint               not null identity,
   HO_GV                nvarchar(250)         not null,
   TEN_GV               nvarchar(250)         not null,
   ATTRIBUTE_36         nvarchar(250)         not null,
   EMAIL_GV             nvarchar(250)         not null,
   DT_GV                nvarchar(20)          not null,
   DIACHI_GV            nvarchar(200)         not null,
   NGAYSINH_GV          datetime             not null,
   NGAYTAO_GV           datetime             not null default(getdate()),
   GIOITINH_GV          nvarchar(10)          not null,
   KHAC_GV              nvarchar(300)         null,
   HTGV                 tinyint              not null default(1),
   constraint PK_GIAOVIEN primary key nonclustered (ID_GV)
)
go

/*==============================================================*/
/* Table: GV_MH                                                 */
/*==============================================================*/
create table GV_MH (
   ID_PHANCONG          bigint               not null identity,
   ID_GV                bigint               not null,
   ID_MH                bigint               not null,
   NGAYBDPC             datetime             not null default(getdate()),
   NGAYKTPC             datetime             null,
   constraint PK_GV_MH primary key nonclustered (ID_PHANCONG)
)
go

/*==============================================================*/
/* Index: DAY_FK                                                */
/*==============================================================*/
create index DAY_FK on GV_MH (
ID_GV ASC
)
go

/*==============================================================*/
/* Index: DUOCNHANBOI_FK                                        */
/*==============================================================*/
create index DUOCNHANBOI_FK on GV_MH (
ID_MH ASC
)
go

/*==============================================================*/
/* Table: KY_THI                                                */
/*==============================================================*/
create table KY_THI (
   ID_KYTHI             bigint               not null identity,
   ID_CTDT              bigint               not null,
   ID_MHTS              bigint               not null,
   NGAYTHI              datetime             not null,
   constraint PK_KY_THI primary key nonclustered (ID_KYTHI)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_14_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_14_FK on KY_THI (
ID_CTDT ASC
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_13_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_13_FK on KY_THI (
ID_MHTS ASC
)
go

/*==============================================================*/
/* Table: MH_TS                                                 */
/*==============================================================*/
create table MH_TS (
   ID_MHTS              bigint               not null identity,
   ID_TK                bigint               not null,
   ID_MH                bigint               not null,
   NGAYDK               datetime             not null default(getdate()),
   CAMTHI               tinyint              not null default(1),
   constraint PK_MH_TS primary key nonclustered (ID_MHTS)
)
go

/*==============================================================*/
/* Index: DANGKY_FK                                             */
/*==============================================================*/
create index DANGKY_FK on MH_TS (
ID_TK ASC
)
go

/*==============================================================*/
/* Index: MH_MT_FK                                              */
/*==============================================================*/
create index MH_MT_FK on MH_TS (
ID_MH ASC
)
go

/*==============================================================*/
/* Table: MONHOC                                                */
/*==============================================================*/
create table MONHOC (
   ID_MH                bigint               not null identity,
   TENMH                nvarchar(100)         not null,
   HTMH                 tinyint              not null default(1),
   constraint PK_MONHOC primary key nonclustered (ID_MH)
)
go

/*==============================================================*/
/* Table: THISINH                                               */
/*==============================================================*/
create table THISINH (
   ID_TK                bigint               not null identity,
   HO                   nvarchar(250)         not null,
   TEN                  nvarchar(250)         not null,
   MATKHAU              nvarchar(200)         not null,
   GT_TS                nvarchar(10)          not null,
   EMAIL                nvarchar(250)         not null,
   DIENTHOAI            nvarchar(20)          not null,
   DIACHI               nvarchar(300)         not null,
   NGAYSINH             datetime             not null,
   NGAYTAO              datetime             null default(getdate()),
   KHACTS               nvarchar(300)         null,
   HTTS                 tinyint              not null default(1),
   constraint PK_THISINH primary key nonclustered (ID_TK)
)
go

alter table BAITHI
   add constraint FK_BAITHI_CO1_KY_THI foreign key (ID_KYTHI)
      references KY_THI (ID_KYTHI)
go

alter table CT_CAUHOI
   add constraint FK_CT_CAUHO_SOHUU_DS_CH foreign key (ID_CH)
      references DS_CH (ID_CH)
go

alter table CT_DETHI
   add constraint FK_CT_DETHI_SOHUUDETH_DS_DETHI foreign key (ID_DE)
      references DS_DETHI (ID_DE)
go

alter table CT_DETHI
   add constraint FK_CT_DETHI_TRONG_DS_CH foreign key (ID_CH)
      references DS_CH (ID_CH)
go

alter table DEMUC
   add constraint FK_DEMUC_CO_DS_CH foreign key (ID_CH)
      references DS_CH (ID_CH)
go

alter table DEMUC
   add constraint FK_DEMUC_CODEMUC_MONHOC foreign key (ID_MH)
      references MONHOC (ID_MH)
go

alter table DS_DETHI
   add constraint FK_DS_DETHI_CODSDETHI_MONHOC foreign key (ID_MH)
      references MONHOC (ID_MH)
go

alter table GV_MH
   add constraint FK_GV_MH_DAY_GIAOVIEN foreign key (ID_GV)
      references GIAOVIEN (ID_GV)
go

alter table GV_MH
   add constraint FK_GV_MH_DUOCNHANB_MONHOC foreign key (ID_MH)
      references MONHOC (ID_MH)
go

alter table KY_THI
   add constraint FK_KY_THI_RELATIONS_MH_TS foreign key (ID_MHTS)
      references MH_TS (ID_MHTS)
go

alter table KY_THI
   add constraint FK_KY_THI_THUOC_CT_DETHI foreign key (ID_CTDT)
      references CT_DETHI (ID_CTDT)
go

alter table MH_TS
   add constraint FK_MH_TS_DANGKY_THISINH foreign key (ID_TK)
      references THISINH (ID_TK)
go

alter table MH_TS
   add constraint FK_MH_TS_MH_MT_MONHOC foreign key (ID_MH)
      references MONHOC (ID_MH)
go

