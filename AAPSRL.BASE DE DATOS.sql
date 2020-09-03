/****** NOMBRE: WILBERT REYES MATRICULA: 19-EIIN-1-012 SECCION: 0541******/
/****** NOMBRE: ERIKA CABRERA MATRICULA: 19-EIIN-1-047 SECCION: 0541******/
/****** NOMBRE: NALLELY BRAVO MATRICULA: 19-EIIT-1-028 SECCION: 0541******/
USE [master]
GO
/****** Object:  Database [AAPSRL]    Script Date: 8/16/2020 12:02:05 PM ******/
CREATE DATABASE [AAPSRL]
GO
USE [AAPSRL]
GO
/****** Object:  Table [dbo].[CLIENTE_]    Script Date: 8/16/2020 12:02:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CLIENTE_](
	[ID_CLIENTE] [int] IDENTITY(1,1) NOT NULL,
	[NOMBRE_CLIENTE] [varchar](50) NOT NULL,
	[TIPO_CLIENTE] [varchar](50) NOT NULL,
	[DIRECCION] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_CLIENTE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CUENTAS_PORCOBRAR]    Script Date: 8/16/2020 12:02:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CUENTAS_PORCOBRAR](
	[NO_CUENTA] [int] IDENTITY(1,1) NOT NULL,
	[TIPO_CREDITO] [varchar](50) NOT NULL,
	[ID_CLIENTE] [int] NOT NULL,
	[MONTO_ADEUDADO] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[NO_CUENTA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FACTURA_]    Script Date: 8/16/2020 12:02:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FACTURA_](
	[ID_FACTURA] [int] IDENTITY(1,1) NOT NULL,
	[NOMBRE_CLIENTE] [varchar](50) NOT NULL,
	[ID_PRODUCTO] [int] NOT NULL,
	[CANTIDAD] [varchar](50) NOT NULL,
	[MONTO] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_FACTURA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PAGOS_]    Script Date: 8/16/2020 12:02:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PAGOS_](
	[ID_PAGOS] [int] IDENTITY(1,1) NOT NULL,
	[TIPO_PAGO] [varchar](50) NOT NULL,
	[ID_FACTURA] [int] NOT NULL,
	[MONTO_RECIBIDO] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_PAGOS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PRODUCTO_]    Script Date: 8/16/2020 12:02:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRODUCTO_](
	[ID_PRODUCTO] [int] IDENTITY(1,1) NOT NULL,
	[NOMBRE_PRODUCTO] [varchar](50) NOT NULL,
	[TIPO_PRODUCTO] [varchar](50) NOT NULL,
	[CANTIDAD] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_PRODUCTO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CLIENTE_] ON 

INSERT [dbo].[CLIENTE_] ([ID_CLIENTE], [NOMBRE_CLIENTE], [TIPO_CLIENTE], [DIRECCION]) VALUES (1, N'JUANA PEREZ', N'PERSONAL', N'1')
INSERT [dbo].[CLIENTE_] ([ID_CLIENTE], [NOMBRE_CLIENTE], [TIPO_CLIENTE], [DIRECCION]) VALUES (2, N'MARIDANIA ROJAS', N'PERSONAL', N'1')
INSERT [dbo].[CLIENTE_] ([ID_CLIENTE], [NOMBRE_CLIENTE], [TIPO_CLIENTE], [DIRECCION]) VALUES (3, N'ERIKA CABRERA', N'PERSONAL', N'1')
INSERT [dbo].[CLIENTE_] ([ID_CLIENTE], [NOMBRE_CLIENTE], [TIPO_CLIENTE], [DIRECCION]) VALUES (4, N'CLARO RD', N'EMPRESARIAL', N'0')
INSERT [dbo].[CLIENTE_] ([ID_CLIENTE], [NOMBRE_CLIENTE], [TIPO_CLIENTE], [DIRECCION]) VALUES (5, N'PEDRO REYES', N'PERSONAL', N'0')
INSERT [dbo].[CLIENTE_] ([ID_CLIENTE], [NOMBRE_CLIENTE], [TIPO_CLIENTE], [DIRECCION]) VALUES (6, N'ALBERT CONTRERAS', N'PERSONAL', N'00')
INSERT [dbo].[CLIENTE_] ([ID_CLIENTE], [NOMBRE_CLIENTE], [TIPO_CLIENTE], [DIRECCION]) VALUES (7, N'ALTICE', N'EMRESARIAL', N'1')
INSERT [dbo].[CLIENTE_] ([ID_CLIENTE], [NOMBRE_CLIENTE], [TIPO_CLIENTE], [DIRECCION]) VALUES (8, N'ABEL PEREZ', N'PERSONAL', N'00')
INSERT [dbo].[CLIENTE_] ([ID_CLIENTE], [NOMBRE_CLIENTE], [TIPO_CLIENTE], [DIRECCION]) VALUES (9, N'MARIA CRUZ', N'PERSONAL', N'1')
INSERT [dbo].[CLIENTE_] ([ID_CLIENTE], [NOMBRE_CLIENTE], [TIPO_CLIENTE], [DIRECCION]) VALUES (10, N'LUIS YA', N'PERSONAL', N'0')
SET IDENTITY_INSERT [dbo].[CLIENTE_] OFF
GO
SET IDENTITY_INSERT [dbo].[CUENTAS_PORCOBRAR] ON 

INSERT [dbo].[CUENTAS_PORCOBRAR] ([NO_CUENTA], [TIPO_CREDITO], [ID_CLIENTE], [MONTO_ADEUDADO]) VALUES (1, N'CONTADO', 1, N'15000')
INSERT [dbo].[CUENTAS_PORCOBRAR] ([NO_CUENTA], [TIPO_CREDITO], [ID_CLIENTE], [MONTO_ADEUDADO]) VALUES (2, N'CONTADO', 2, N'15000')
INSERT [dbo].[CUENTAS_PORCOBRAR] ([NO_CUENTA], [TIPO_CREDITO], [ID_CLIENTE], [MONTO_ADEUDADO]) VALUES (3, N'CONTADO', 3, N'15000')
INSERT [dbo].[CUENTAS_PORCOBRAR] ([NO_CUENTA], [TIPO_CREDITO], [ID_CLIENTE], [MONTO_ADEUDADO]) VALUES (4, N'CONTADO', 4, N'15000')
INSERT [dbo].[CUENTAS_PORCOBRAR] ([NO_CUENTA], [TIPO_CREDITO], [ID_CLIENTE], [MONTO_ADEUDADO]) VALUES (5, N'CONTADO', 5, N'15000')
INSERT [dbo].[CUENTAS_PORCOBRAR] ([NO_CUENTA], [TIPO_CREDITO], [ID_CLIENTE], [MONTO_ADEUDADO]) VALUES (6, N'CONTADO', 6, N'15000')
INSERT [dbo].[CUENTAS_PORCOBRAR] ([NO_CUENTA], [TIPO_CREDITO], [ID_CLIENTE], [MONTO_ADEUDADO]) VALUES (7, N'CONTADO', 7, N'15000')
INSERT [dbo].[CUENTAS_PORCOBRAR] ([NO_CUENTA], [TIPO_CREDITO], [ID_CLIENTE], [MONTO_ADEUDADO]) VALUES (8, N'CONTADO', 8, N'15000')
INSERT [dbo].[CUENTAS_PORCOBRAR] ([NO_CUENTA], [TIPO_CREDITO], [ID_CLIENTE], [MONTO_ADEUDADO]) VALUES (9, N'CONTADO', 9, N'15000')
INSERT [dbo].[CUENTAS_PORCOBRAR] ([NO_CUENTA], [TIPO_CREDITO], [ID_CLIENTE], [MONTO_ADEUDADO]) VALUES (10, N'CONTADO', 10, N'15000')
SET IDENTITY_INSERT [dbo].[CUENTAS_PORCOBRAR] OFF
GO
SET IDENTITY_INSERT [dbo].[FACTURA_] ON 

INSERT [dbo].[FACTURA_] ([ID_FACTURA], [NOMBRE_CLIENTE], [ID_PRODUCTO], [CANTIDAD], [MONTO]) VALUES (1, N'JUANA PEREZ', 1, N'1', 15000)
INSERT [dbo].[FACTURA_] ([ID_FACTURA], [NOMBRE_CLIENTE], [ID_PRODUCTO], [CANTIDAD], [MONTO]) VALUES (2, N'MARIDANIA ROJAS', 1, N'1', 15000)
INSERT [dbo].[FACTURA_] ([ID_FACTURA], [NOMBRE_CLIENTE], [ID_PRODUCTO], [CANTIDAD], [MONTO]) VALUES (3, N'ERIKA CABRERA', 1, N'1', 15000)
INSERT [dbo].[FACTURA_] ([ID_FACTURA], [NOMBRE_CLIENTE], [ID_PRODUCTO], [CANTIDAD], [MONTO]) VALUES (4, N'CLARO RD', 1, N'1', 15000)
INSERT [dbo].[FACTURA_] ([ID_FACTURA], [NOMBRE_CLIENTE], [ID_PRODUCTO], [CANTIDAD], [MONTO]) VALUES (5, N'PEDRO REYES', 1, N'1', 15000)
INSERT [dbo].[FACTURA_] ([ID_FACTURA], [NOMBRE_CLIENTE], [ID_PRODUCTO], [CANTIDAD], [MONTO]) VALUES (6, N'ALBERT CONTRERAS', 1, N'1', 15000)
INSERT [dbo].[FACTURA_] ([ID_FACTURA], [NOMBRE_CLIENTE], [ID_PRODUCTO], [CANTIDAD], [MONTO]) VALUES (7, N'ALTICE', 1, N'1', 15000)
INSERT [dbo].[FACTURA_] ([ID_FACTURA], [NOMBRE_CLIENTE], [ID_PRODUCTO], [CANTIDAD], [MONTO]) VALUES (8, N'ABEL PEREZ', 1, N'1', 15000)
INSERT [dbo].[FACTURA_] ([ID_FACTURA], [NOMBRE_CLIENTE], [ID_PRODUCTO], [CANTIDAD], [MONTO]) VALUES (9, N'MARIA CRUZ', 1, N'1', 15000)
INSERT [dbo].[FACTURA_] ([ID_FACTURA], [NOMBRE_CLIENTE], [ID_PRODUCTO], [CANTIDAD], [MONTO]) VALUES (10, N'LUIS YA', 1, N'1', 15000)
SET IDENTITY_INSERT [dbo].[FACTURA_] OFF
GO
SET IDENTITY_INSERT [dbo].[PAGOS_] ON 

INSERT [dbo].[PAGOS_] ([ID_PAGOS], [TIPO_PAGO], [ID_FACTURA], [MONTO_RECIBIDO]) VALUES (1, N'TRANSFERENCIA', 1, N'15000')
INSERT [dbo].[PAGOS_] ([ID_PAGOS], [TIPO_PAGO], [ID_FACTURA], [MONTO_RECIBIDO]) VALUES (2, N'TRANSFERENCIA', 2, N'15000')
INSERT [dbo].[PAGOS_] ([ID_PAGOS], [TIPO_PAGO], [ID_FACTURA], [MONTO_RECIBIDO]) VALUES (3, N'TRANSFERENCIA', 3, N'15000')
INSERT [dbo].[PAGOS_] ([ID_PAGOS], [TIPO_PAGO], [ID_FACTURA], [MONTO_RECIBIDO]) VALUES (4, N'TRANSFERENCIA', 4, N'15000')
INSERT [dbo].[PAGOS_] ([ID_PAGOS], [TIPO_PAGO], [ID_FACTURA], [MONTO_RECIBIDO]) VALUES (5, N'TRANSFERENCIA', 5, N'15000')
INSERT [dbo].[PAGOS_] ([ID_PAGOS], [TIPO_PAGO], [ID_FACTURA], [MONTO_RECIBIDO]) VALUES (6, N'TRANSFERENCIA', 6, N'15000')
INSERT [dbo].[PAGOS_] ([ID_PAGOS], [TIPO_PAGO], [ID_FACTURA], [MONTO_RECIBIDO]) VALUES (7, N'TRANSFERENCIA', 7, N'15000')
INSERT [dbo].[PAGOS_] ([ID_PAGOS], [TIPO_PAGO], [ID_FACTURA], [MONTO_RECIBIDO]) VALUES (8, N'TRANSFERENCIA', 8, N'15000')
INSERT [dbo].[PAGOS_] ([ID_PAGOS], [TIPO_PAGO], [ID_FACTURA], [MONTO_RECIBIDO]) VALUES (9, N'TRANSFERENCIA', 9, N'15000')
INSERT [dbo].[PAGOS_] ([ID_PAGOS], [TIPO_PAGO], [ID_FACTURA], [MONTO_RECIBIDO]) VALUES (10, N'TRANSFERENCIA', 10, N'15000')
SET IDENTITY_INSERT [dbo].[PAGOS_] OFF
GO
SET IDENTITY_INSERT [dbo].[PRODUCTO_] ON 

INSERT [dbo].[PRODUCTO_] ([ID_PRODUCTO], [NOMBRE_PRODUCTO], [TIPO_PRODUCTO], [CANTIDAD]) VALUES (1, N'SISTEMA', N'SERVICIO', N'1')
INSERT [dbo].[PRODUCTO_] ([ID_PRODUCTO], [NOMBRE_PRODUCTO], [TIPO_PRODUCTO], [CANTIDAD]) VALUES (2, N'SISTEMA', N'SERVICIO', N'1')
INSERT [dbo].[PRODUCTO_] ([ID_PRODUCTO], [NOMBRE_PRODUCTO], [TIPO_PRODUCTO], [CANTIDAD]) VALUES (3, N'SOFTWARE', N'OUTSOURCING', N'0')
INSERT [dbo].[PRODUCTO_] ([ID_PRODUCTO], [NOMBRE_PRODUCTO], [TIPO_PRODUCTO], [CANTIDAD]) VALUES (4, N'SOFTWARE', N'OUTSOURCING', N'1')
INSERT [dbo].[PRODUCTO_] ([ID_PRODUCTO], [NOMBRE_PRODUCTO], [TIPO_PRODUCTO], [CANTIDAD]) VALUES (5, N'SOFTWARE', N'OUTSOURCING', N'2')
INSERT [dbo].[PRODUCTO_] ([ID_PRODUCTO], [NOMBRE_PRODUCTO], [TIPO_PRODUCTO], [CANTIDAD]) VALUES (6, N'SOFTWARE', N'OUTSOURCING', N'1')
INSERT [dbo].[PRODUCTO_] ([ID_PRODUCTO], [NOMBRE_PRODUCTO], [TIPO_PRODUCTO], [CANTIDAD]) VALUES (7, N'SOFTWARE', N'OUTSOURCING', N'7')
INSERT [dbo].[PRODUCTO_] ([ID_PRODUCTO], [NOMBRE_PRODUCTO], [TIPO_PRODUCTO], [CANTIDAD]) VALUES (8, N'SOFTWARE', N'OUTSOURCING', N'1')
INSERT [dbo].[PRODUCTO_] ([ID_PRODUCTO], [NOMBRE_PRODUCTO], [TIPO_PRODUCTO], [CANTIDAD]) VALUES (9, N'SOFTWARE', N'OUTSOURCING', N'8')
INSERT [dbo].[PRODUCTO_] ([ID_PRODUCTO], [NOMBRE_PRODUCTO], [TIPO_PRODUCTO], [CANTIDAD]) VALUES (10, N'SOFTWARE', N'OUTSOURCING', N'1')
SET IDENTITY_INSERT [dbo].[PRODUCTO_] OFF
GO
ALTER TABLE [dbo].[CUENTAS_PORCOBRAR]  WITH CHECK ADD FOREIGN KEY([ID_CLIENTE])
REFERENCES [dbo].[CLIENTE_] ([ID_CLIENTE])
GO
ALTER TABLE [dbo].[FACTURA_]  WITH CHECK ADD FOREIGN KEY([ID_PRODUCTO])
REFERENCES [dbo].[PRODUCTO_] ([ID_PRODUCTO])
GO
ALTER TABLE [dbo].[PAGOS_]  WITH CHECK ADD FOREIGN KEY([ID_FACTURA])
REFERENCES [dbo].[FACTURA_] ([ID_FACTURA])
GO
USE [master]
GO
ALTER DATABASE [AAPSRL] SET  READ_WRITE 
GO
