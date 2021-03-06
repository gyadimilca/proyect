/*yadimilca Gomez 19-eiin-1-101 seccion:0541*/

USE [master]
GO
/****** Object:  Database [plan de empresa marbell]    Script Date: 29/08/2020 23:14:24 ******/
CREATE DATABASE [plan de empresa marbell]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'plan de empresa marbell', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQL2019\MSSQL\DATA\plan de empresa marbell.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'plan de empresa marbell_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQL2019\MSSQL\DATA\plan de empresa marbell_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [plan de empresa marbell] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [plan de empresa marbell].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [plan de empresa marbell] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [plan de empresa marbell] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [plan de empresa marbell] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [plan de empresa marbell] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [plan de empresa marbell] SET ARITHABORT OFF 
GO
ALTER DATABASE [plan de empresa marbell] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [plan de empresa marbell] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [plan de empresa marbell] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [plan de empresa marbell] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [plan de empresa marbell] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [plan de empresa marbell] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [plan de empresa marbell] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [plan de empresa marbell] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [plan de empresa marbell] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [plan de empresa marbell] SET  DISABLE_BROKER 
GO
ALTER DATABASE [plan de empresa marbell] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [plan de empresa marbell] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [plan de empresa marbell] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [plan de empresa marbell] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [plan de empresa marbell] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [plan de empresa marbell] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [plan de empresa marbell] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [plan de empresa marbell] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [plan de empresa marbell] SET  MULTI_USER 
GO
ALTER DATABASE [plan de empresa marbell] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [plan de empresa marbell] SET DB_CHAINING OFF 
GO
ALTER DATABASE [plan de empresa marbell] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [plan de empresa marbell] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [plan de empresa marbell] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [plan de empresa marbell] SET QUERY_STORE = OFF
GO
USE [plan de empresa marbell]
GO
/****** Object:  Table [dbo].[competencia]    Script Date: 29/08/2020 23:14:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[competencia](
	[competenciaID] [int] NOT NULL,
	[brindamosunmejorcervicio] [int] NULL,
	[disponibilidad24/7] [int] NULL,
	[Ungrangrupodeapollo] [int] NULL,
 CONSTRAINT [PK_competencia] PRIMARY KEY CLUSTERED 
(
	[competenciaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[costo]    Script Date: 29/08/2020 23:14:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[costo](
	[costoID] [int] NOT NULL,
	[costoA] [varchar](12) NULL,
	[CostoB] [varchar](10) NULL,
	[costoC] [varchar](7) NULL,
 CONSTRAINT [PK_costo] PRIMARY KEY CLUSTERED 
(
	[costoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[desarroyo]    Script Date: 29/08/2020 23:14:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[desarroyo](
	[desarroyoID] [int] NOT NULL,
	[tecnologiaavanza] [int] NULL,
	[segurridadtota] [int] NULL,
 CONSTRAINT [PK_desarroyo] PRIMARY KEY CLUSTERED 
(
	[desarroyoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[plan de empresa]    Script Date: 29/08/2020 23:14:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[plan de empresa](
	[plandeempresaID] [int] NOT NULL,
	[empresamarbell] [int] NULL,
	[dequetratalaventa] [varchar](60) NULL,
	[veneficios] [varchar](50) NULL,
 CONSTRAINT [PK_plan de empresa] PRIMARY KEY CLUSTERED 
(
	[plandeempresaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ventajas del producto]    Script Date: 29/08/2020 23:14:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ventajas del producto](
	[ventajasdelproductoID] [int] NOT NULL,
	[buenatecnologia] [int] NULL,
	[buendesarrollo] [int] NULL,
	[buenaseguridad] [int] NULL,
 CONSTRAINT [PK_ventajas del producto] PRIMARY KEY CLUSTERED 
(
	[ventajasdelproductoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vienes especiales]    Script Date: 29/08/2020 23:14:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vienes especiales](
	[vienesespecialesID] [int] NOT NULL,
	[sitiene5anosconnosotroslesdamosunanodeun15%dedescuento] [int] NULL,
	[siadquiereelproductoenelmesdeeneroalanolesdamosunbono] [int] NULL,
 CONSTRAINT [PK_vienes especiales] PRIMARY KEY CLUSTERED 
(
	[vienesespecialesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[competencia] ([competenciaID], [brindamosunmejorcervicio], [disponibilidad24/7], [Ungrangrupodeapollo]) VALUES (1, 100, 100, 100)
INSERT [dbo].[competencia] ([competenciaID], [brindamosunmejorcervicio], [disponibilidad24/7], [Ungrangrupodeapollo]) VALUES (2, 100, 100, 100)
INSERT [dbo].[competencia] ([competenciaID], [brindamosunmejorcervicio], [disponibilidad24/7], [Ungrangrupodeapollo]) VALUES (3, 100, 100, 100)
INSERT [dbo].[competencia] ([competenciaID], [brindamosunmejorcervicio], [disponibilidad24/7], [Ungrangrupodeapollo]) VALUES (4, 100, 100, 100)
INSERT [dbo].[competencia] ([competenciaID], [brindamosunmejorcervicio], [disponibilidad24/7], [Ungrangrupodeapollo]) VALUES (5, 100, 100, 100)
INSERT [dbo].[competencia] ([competenciaID], [brindamosunmejorcervicio], [disponibilidad24/7], [Ungrangrupodeapollo]) VALUES (6, 100, 100, 100)
INSERT [dbo].[competencia] ([competenciaID], [brindamosunmejorcervicio], [disponibilidad24/7], [Ungrangrupodeapollo]) VALUES (7, 100, 100, 100)
INSERT [dbo].[competencia] ([competenciaID], [brindamosunmejorcervicio], [disponibilidad24/7], [Ungrangrupodeapollo]) VALUES (8, 100, 100, 100)
INSERT [dbo].[competencia] ([competenciaID], [brindamosunmejorcervicio], [disponibilidad24/7], [Ungrangrupodeapollo]) VALUES (9, 100, 100, 100)
GO
INSERT [dbo].[costo] ([costoID], [costoA], [CostoB], [costoC]) VALUES (1, N'$300000', N'$200000', N'$100000')
INSERT [dbo].[costo] ([costoID], [costoA], [CostoB], [costoC]) VALUES (2, N'$250000', N'$240000', N'$230000')
INSERT [dbo].[costo] ([costoID], [costoA], [CostoB], [costoC]) VALUES (3, N'$220000', N'$210000', N'$190000')
INSERT [dbo].[costo] ([costoID], [costoA], [CostoB], [costoC]) VALUES (4, N'$180000', N'$175000', N'$170000')
INSERT [dbo].[costo] ([costoID], [costoA], [CostoB], [costoC]) VALUES (5, N'$165000', N'$160000', N'$155000')
INSERT [dbo].[costo] ([costoID], [costoA], [CostoB], [costoC]) VALUES (6, N'$150000', N'$145000', N'$140000')
INSERT [dbo].[costo] ([costoID], [costoA], [CostoB], [costoC]) VALUES (7, N'$135000', N'$130000', N'$125000')
INSERT [dbo].[costo] ([costoID], [costoA], [CostoB], [costoC]) VALUES (8, N'$120000', N'$115000', N'$110000')
INSERT [dbo].[costo] ([costoID], [costoA], [CostoB], [costoC]) VALUES (9, N'$105000', N'$100000', N'$95000')
GO
INSERT [dbo].[plan de empresa] ([plandeempresaID], [empresamarbell], [dequetratalaventa], [veneficios]) VALUES (1, 1, N'dispositivos de almacenamientos de datos', N'les damos una seguridad a nuestros clientes')
INSERT [dbo].[plan de empresa] ([plandeempresaID], [empresamarbell], [dequetratalaventa], [veneficios]) VALUES (2, 2, N'nos encargamos de cuidar los documentos de nuestros clientes', N'siempre les ofrecemos la mayor segudad posible')
INSERT [dbo].[plan de empresa] ([plandeempresaID], [empresamarbell], [dequetratalaventa], [veneficios]) VALUES (3, 1, N'de seguridad de documentos', N'prioridad a nuestros clientes')
INSERT [dbo].[plan de empresa] ([plandeempresaID], [empresamarbell], [dequetratalaventa], [veneficios]) VALUES (4, 7, N'de que las empresas no tengan danos con sus documentos', N'tendras tus documentos estables')
INSERT [dbo].[plan de empresa] ([plandeempresaID], [empresamarbell], [dequetratalaventa], [veneficios]) VALUES (7, 6, N'mantener seguros sus documentos', N'calidad cien por ciento')
INSERT [dbo].[plan de empresa] ([plandeempresaID], [empresamarbell], [dequetratalaventa], [veneficios]) VALUES (9, 8, N'de que tus documentos estaran seguros sin frufri danos', N'cuando  procures tus documentos estaran estables')
INSERT [dbo].[plan de empresa] ([plandeempresaID], [empresamarbell], [dequetratalaventa], [veneficios]) VALUES (11, 9, N'seguridad', N'todo estara bien')
INSERT [dbo].[plan de empresa] ([plandeempresaID], [empresamarbell], [dequetratalaventa], [veneficios]) VALUES (13, 14, N'calidad al maximo', N'mucha proteccion')
INSERT [dbo].[plan de empresa] ([plandeempresaID], [empresamarbell], [dequetratalaventa], [veneficios]) VALUES (15, 15, N'de que todo este en orden', N'tendras prioridad')
INSERT [dbo].[plan de empresa] ([plandeempresaID], [empresamarbell], [dequetratalaventa], [veneficios]) VALUES (16, 18, N'de la seguridad de sus documentos', N'infromaciones continuas de sus documentos')
GO
INSERT [dbo].[ventajas del producto] ([ventajasdelproductoID], [buenatecnologia], [buendesarrollo], [buenaseguridad]) VALUES (1, 1, 1, 1)
INSERT [dbo].[ventajas del producto] ([ventajasdelproductoID], [buenatecnologia], [buendesarrollo], [buenaseguridad]) VALUES (2, 2, 2, 2)
INSERT [dbo].[ventajas del producto] ([ventajasdelproductoID], [buenatecnologia], [buendesarrollo], [buenaseguridad]) VALUES (3, 3, 3, 3)
INSERT [dbo].[ventajas del producto] ([ventajasdelproductoID], [buenatecnologia], [buendesarrollo], [buenaseguridad]) VALUES (4, 4, 4, 4)
INSERT [dbo].[ventajas del producto] ([ventajasdelproductoID], [buenatecnologia], [buendesarrollo], [buenaseguridad]) VALUES (5, 5, 5, 5)
INSERT [dbo].[ventajas del producto] ([ventajasdelproductoID], [buenatecnologia], [buendesarrollo], [buenaseguridad]) VALUES (6, 6, 6, 6)
INSERT [dbo].[ventajas del producto] ([ventajasdelproductoID], [buenatecnologia], [buendesarrollo], [buenaseguridad]) VALUES (7, 7, 7, 7)
INSERT [dbo].[ventajas del producto] ([ventajasdelproductoID], [buenatecnologia], [buendesarrollo], [buenaseguridad]) VALUES (8, 8, 8, 8)
INSERT [dbo].[ventajas del producto] ([ventajasdelproductoID], [buenatecnologia], [buendesarrollo], [buenaseguridad]) VALUES (9, 9, 9, 9)
INSERT [dbo].[ventajas del producto] ([ventajasdelproductoID], [buenatecnologia], [buendesarrollo], [buenaseguridad]) VALUES (10, 10, 10, 10)
GO
INSERT [dbo].[vienes especiales] ([vienesespecialesID], [sitiene5anosconnosotroslesdamosunanodeun15%dedescuento], [siadquiereelproductoenelmesdeeneroalanolesdamosunbono]) VALUES (1, 2, 4)
INSERT [dbo].[vienes especiales] ([vienesespecialesID], [sitiene5anosconnosotroslesdamosunanodeun15%dedescuento], [siadquiereelproductoenelmesdeeneroalanolesdamosunbono]) VALUES (2, 4, 5)
INSERT [dbo].[vienes especiales] ([vienesespecialesID], [sitiene5anosconnosotroslesdamosunanodeun15%dedescuento], [siadquiereelproductoenelmesdeeneroalanolesdamosunbono]) VALUES (3, 3, 3)
INSERT [dbo].[vienes especiales] ([vienesespecialesID], [sitiene5anosconnosotroslesdamosunanodeun15%dedescuento], [siadquiereelproductoenelmesdeeneroalanolesdamosunbono]) VALUES (4, 7, 7)
INSERT [dbo].[vienes especiales] ([vienesespecialesID], [sitiene5anosconnosotroslesdamosunanodeun15%dedescuento], [siadquiereelproductoenelmesdeeneroalanolesdamosunbono]) VALUES (7, 6, 6)
INSERT [dbo].[vienes especiales] ([vienesespecialesID], [sitiene5anosconnosotroslesdamosunanodeun15%dedescuento], [siadquiereelproductoenelmesdeeneroalanolesdamosunbono]) VALUES (9, 8, 8)
INSERT [dbo].[vienes especiales] ([vienesespecialesID], [sitiene5anosconnosotroslesdamosunanodeun15%dedescuento], [siadquiereelproductoenelmesdeeneroalanolesdamosunbono]) VALUES (11, 9, 3)
INSERT [dbo].[vienes especiales] ([vienesespecialesID], [sitiene5anosconnosotroslesdamosunanodeun15%dedescuento], [siadquiereelproductoenelmesdeeneroalanolesdamosunbono]) VALUES (13, 14, 8)
INSERT [dbo].[vienes especiales] ([vienesespecialesID], [sitiene5anosconnosotroslesdamosunanodeun15%dedescuento], [siadquiereelproductoenelmesdeeneroalanolesdamosunbono]) VALUES (15, 15, 15)
INSERT [dbo].[vienes especiales] ([vienesespecialesID], [sitiene5anosconnosotroslesdamosunanodeun15%dedescuento], [siadquiereelproductoenelmesdeeneroalanolesdamosunbono]) VALUES (16, 16, 16)
GO
ALTER TABLE [dbo].[vienes especiales]  WITH CHECK ADD  CONSTRAINT [FK_vienes especiales_plan de empresa] FOREIGN KEY([vienesespecialesID])
REFERENCES [dbo].[plan de empresa] ([plandeempresaID])
GO
ALTER TABLE [dbo].[vienes especiales] CHECK CONSTRAINT [FK_vienes especiales_plan de empresa]
GO
USE [master]
GO
ALTER DATABASE [plan de empresa marbell] SET  READ_WRITE 
GO
