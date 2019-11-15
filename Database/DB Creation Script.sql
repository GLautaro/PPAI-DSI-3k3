USE [db_poloc]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 15.11.2019 10:18:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aplicacion]    Script Date: 15.11.2019 10:18:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aplicacion](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.aplicacion] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cliente]    Script Date: 15.11.2019 10:18:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cliente](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Domicilio] [nvarchar](max) NULL,
	[FechaAlta] [datetime] NOT NULL,
	[Nombre] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.cliente] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[comentario]    Script Date: 15.11.2019 10:18:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[comentario](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Texto] [nvarchar](max) NULL,
	[FechaHora] [datetime] NOT NULL,
	[Ticket_Id] [int] NULL,
 CONSTRAINT [PK_dbo.comentario] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[criticidad_solicitud_mantenimiento]    Script Date: 15.11.2019 10:18:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[criticidad_solicitud_mantenimiento](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [nvarchar](max) NULL,
	[Nombre] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.criticidad_solicitud_mantenimiento] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[estado_solicitud_mantenimiento]    Script Date: 15.11.2019 10:18:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[estado_solicitud_mantenimiento](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](max) NULL,
	[Discriminator] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.estado_solicitud_mantenimiento] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[estado_ticket]    Script Date: 15.11.2019 10:18:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[estado_ticket](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.estado_ticket] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[historial_estado_solicitud]    Script Date: 15.11.2019 10:18:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[historial_estado_solicitud](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FechaHoraDesde] [datetime] NOT NULL,
	[FechaHoraHasta] [datetime] NULL,
	[Estado_Id] [int] NULL,
	[SolicitudMantenimiento_Id] [int] NULL,
 CONSTRAINT [PK_dbo.historial_estado_solicitud] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[historial_estado_ticket]    Script Date: 15.11.2019 10:18:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[historial_estado_ticket](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FechaHoraDesde] [datetime] NOT NULL,
	[FechaHoraHasta] [datetime] NULL,
	[Comentario_Id] [int] NULL,
	[Estado_Id] [int] NULL,
	[Ticket_Id] [int] NULL,
 CONSTRAINT [PK_dbo.historial_estado_ticket] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[jefe_proyecto]    Script Date: 15.11.2019 10:18:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[jefe_proyecto](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Apellido] [nvarchar](max) NULL,
	[CorreoElectronico] [nvarchar](max) NULL,
	[Nombre] [nvarchar](max) NULL,
	[Usuario_Id] [int] NULL,
 CONSTRAINT [PK_dbo.jefe_proyecto] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lider_proyecto]    Script Date: 15.11.2019 10:18:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lider_proyecto](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Apellido] [nvarchar](max) NULL,
	[CorreoElectrónico] [nvarchar](max) NULL,
	[Nombre] [nvarchar](max) NULL,
	[Usuario_Id] [int] NULL,
 CONSTRAINT [PK_dbo.lider_proyecto] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[miembro_equipo]    Script Date: 15.11.2019 10:18:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[miembro_equipo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Apellido] [nvarchar](max) NULL,
	[CorreoElectronico] [nvarchar](max) NULL,
	[Nombre] [nvarchar](max) NULL,
	[Rol_Id] [int] NULL,
	[Usuario_Id] [int] NULL,
 CONSTRAINT [PK_dbo.miembro_equipo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[plan]    Script Date: 15.11.2019 10:18:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[plan](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[FechaFinResolucion] [datetime] NOT NULL,
	[FechaInicioResolucion] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.plan] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[proyecto]    Script Date: 15.11.2019 10:18:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[proyecto](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[Nombre] [nvarchar](max) NULL,
	[NombreClave] [nvarchar](max) NULL,
	[Aplicacion_Id] [int] NULL,
	[Cliente_Id] [int] NULL,
	[Solicitante_Id] [int] NULL,
	[JefeDeProyecto_Id] [int] NULL,
	[LiderProyecto_Id] [int] NULL,
 CONSTRAINT [PK_dbo.proyecto] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rol]    Script Date: 15.11.2019 10:18:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rol](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.rol] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sesion]    Script Date: 15.11.2019 10:18:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sesion](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FechaHoraFin] [datetime] NOT NULL,
	[FechaHoraInicio] [datetime] NOT NULL,
	[Usuario_Id] [int] NULL,
 CONSTRAINT [PK_dbo.sesion] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[solicitante]    Script Date: 15.11.2019 10:18:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[solicitante](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Apellido] [nvarchar](max) NULL,
	[AreaOGerencia] [nvarchar](max) NULL,
	[CorreoElectronicoInstitucional] [nvarchar](max) NULL,
	[CorreoElectronicoPersonal] [nvarchar](max) NULL,
	[Direccion] [nvarchar](max) NULL,
	[Nombre] [nvarchar](max) NULL,
	[NumeroDoc] [nvarchar](max) NULL,
	[RolEnArea] [nvarchar](max) NULL,
	[TelefonoContacto] [nvarchar](max) NULL,
	[TipoDoc_Id] [int] NULL,
	[Usuario_Id] [int] NULL,
 CONSTRAINT [PK_dbo.solicitante] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[solicitud_mantenimiento]    Script Date: 15.11.2019 10:18:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[solicitud_mantenimiento](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [nvarchar](max) NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[FechaNecesidad] [datetime] NOT NULL,
	[Nombre] [nvarchar](max) NULL,
	[Creador_Id] [int] NULL,
	[Criticidad_Id] [int] NULL,
	[EstadoActual_Id] [int] NULL,
	[Plan_Id] [int] NULL,
	[Tipo_Id] [int] NULL,
	[Proyecto_Id] [int] NULL,
 CONSTRAINT [PK_dbo.solicitud_mantenimiento] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tarea]    Script Date: 15.11.2019 10:18:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tarea](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [nvarchar](max) NULL,
	[Nombre] [nvarchar](max) NULL,
	[ValorPorHora] [float] NOT NULL,
	[RolEjecutor_Id] [int] NULL,
 CONSTRAINT [PK_dbo.tarea] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ticket]    Script Date: 15.11.2019 10:18:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ticket](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DetalleTicket] [nvarchar](max) NULL,
	[FechaFinPrevista] [datetime] NOT NULL,
	[FechaInicioPrevista] [datetime] NOT NULL,
	[FechaInicioReal] [datetime] NOT NULL,
	[HorasEstimadas] [float] NOT NULL,
	[InformacionAnalisis] [nvarchar](max) NULL,
	[ValorHoraReal] [float] NOT NULL,
	[MiembroEquipo_Id] [int] NULL,
	[Tarea_Id] [int] NULL,
	[Plan_Id] [int] NULL,
 CONSTRAINT [PK_dbo.ticket] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tipo_documento]    Script Date: 15.11.2019 10:18:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tipo_documento](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](max) NULL,
	[Descripcion] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.tipo_documento] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tipo_solicitud]    Script Date: 15.11.2019 10:18:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tipo_solicitud](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [nvarchar](max) NULL,
	[Nombre] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.tipo_solicitud] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuario]    Script Date: 15.11.2019 10:18:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuario](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NombreUsuario] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.usuario] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[version]    Script Date: 15.11.2019 10:18:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[version](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FechaLiberacion] [datetime] NOT NULL,
	[Nombre] [nvarchar](max) NULL,
	[NumeroVersion] [nvarchar](max) NULL,
	[Aplicacion_Id] [int] NULL,
 CONSTRAINT [PK_dbo.version] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[comentario]  WITH CHECK ADD  CONSTRAINT [FK_dbo.comentario_dbo.ticket_Ticket_Id] FOREIGN KEY([Ticket_Id])
REFERENCES [dbo].[ticket] ([Id])
GO
ALTER TABLE [dbo].[comentario] CHECK CONSTRAINT [FK_dbo.comentario_dbo.ticket_Ticket_Id]
GO
ALTER TABLE [dbo].[historial_estado_solicitud]  WITH CHECK ADD  CONSTRAINT [FK_dbo.historial_estado_solicitud_dbo.estado_solicitud_mantenimiento_Estado_Id] FOREIGN KEY([Estado_Id])
REFERENCES [dbo].[estado_solicitud_mantenimiento] ([Id])
GO
ALTER TABLE [dbo].[historial_estado_solicitud] CHECK CONSTRAINT [FK_dbo.historial_estado_solicitud_dbo.estado_solicitud_mantenimiento_Estado_Id]
GO
ALTER TABLE [dbo].[historial_estado_solicitud]  WITH CHECK ADD  CONSTRAINT [FK_dbo.historial_estado_solicitud_dbo.solicitud_mantenimiento_SolicitudMantenimiento_Id] FOREIGN KEY([SolicitudMantenimiento_Id])
REFERENCES [dbo].[solicitud_mantenimiento] ([Id])
GO
ALTER TABLE [dbo].[historial_estado_solicitud] CHECK CONSTRAINT [FK_dbo.historial_estado_solicitud_dbo.solicitud_mantenimiento_SolicitudMantenimiento_Id]
GO
ALTER TABLE [dbo].[historial_estado_ticket]  WITH CHECK ADD  CONSTRAINT [FK_dbo.historial_estado_ticket_dbo.comentario_Comentario_Id] FOREIGN KEY([Comentario_Id])
REFERENCES [dbo].[comentario] ([Id])
GO
ALTER TABLE [dbo].[historial_estado_ticket] CHECK CONSTRAINT [FK_dbo.historial_estado_ticket_dbo.comentario_Comentario_Id]
GO
ALTER TABLE [dbo].[historial_estado_ticket]  WITH CHECK ADD  CONSTRAINT [FK_dbo.historial_estado_ticket_dbo.estado_ticket_Estado_Id] FOREIGN KEY([Estado_Id])
REFERENCES [dbo].[estado_ticket] ([Id])
GO
ALTER TABLE [dbo].[historial_estado_ticket] CHECK CONSTRAINT [FK_dbo.historial_estado_ticket_dbo.estado_ticket_Estado_Id]
GO
ALTER TABLE [dbo].[historial_estado_ticket]  WITH CHECK ADD  CONSTRAINT [FK_dbo.historial_estado_ticket_dbo.ticket_Ticket_Id] FOREIGN KEY([Ticket_Id])
REFERENCES [dbo].[ticket] ([Id])
GO
ALTER TABLE [dbo].[historial_estado_ticket] CHECK CONSTRAINT [FK_dbo.historial_estado_ticket_dbo.ticket_Ticket_Id]
GO
ALTER TABLE [dbo].[jefe_proyecto]  WITH CHECK ADD  CONSTRAINT [FK_dbo.jefe_proyecto_dbo.usuario_Usuario_Id] FOREIGN KEY([Usuario_Id])
REFERENCES [dbo].[usuario] ([Id])
GO
ALTER TABLE [dbo].[jefe_proyecto] CHECK CONSTRAINT [FK_dbo.jefe_proyecto_dbo.usuario_Usuario_Id]
GO
ALTER TABLE [dbo].[lider_proyecto]  WITH CHECK ADD  CONSTRAINT [FK_dbo.lider_proyecto_dbo.usuario_Usuario_Id] FOREIGN KEY([Usuario_Id])
REFERENCES [dbo].[usuario] ([Id])
GO
ALTER TABLE [dbo].[lider_proyecto] CHECK CONSTRAINT [FK_dbo.lider_proyecto_dbo.usuario_Usuario_Id]
GO
ALTER TABLE [dbo].[miembro_equipo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.miembro_equipo_dbo.rol_Rol_Id] FOREIGN KEY([Rol_Id])
REFERENCES [dbo].[rol] ([Id])
GO
ALTER TABLE [dbo].[miembro_equipo] CHECK CONSTRAINT [FK_dbo.miembro_equipo_dbo.rol_Rol_Id]
GO
ALTER TABLE [dbo].[miembro_equipo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.miembro_equipo_dbo.usuario_Usuario_Id] FOREIGN KEY([Usuario_Id])
REFERENCES [dbo].[usuario] ([Id])
GO
ALTER TABLE [dbo].[miembro_equipo] CHECK CONSTRAINT [FK_dbo.miembro_equipo_dbo.usuario_Usuario_Id]
GO
ALTER TABLE [dbo].[proyecto]  WITH CHECK ADD  CONSTRAINT [FK_dbo.proyecto_dbo.cliente_Cliente_Id] FOREIGN KEY([Cliente_Id])
REFERENCES [dbo].[cliente] ([Id])
GO
ALTER TABLE [dbo].[proyecto] CHECK CONSTRAINT [FK_dbo.proyecto_dbo.cliente_Cliente_Id]
GO
ALTER TABLE [dbo].[proyecto]  WITH CHECK ADD  CONSTRAINT [FK_dbo.proyecto_dbo.jefe_proyecto_JefeDeProyecto_Id] FOREIGN KEY([JefeDeProyecto_Id])
REFERENCES [dbo].[jefe_proyecto] ([Id])
GO
ALTER TABLE [dbo].[proyecto] CHECK CONSTRAINT [FK_dbo.proyecto_dbo.jefe_proyecto_JefeDeProyecto_Id]
GO
ALTER TABLE [dbo].[proyecto]  WITH CHECK ADD  CONSTRAINT [FK_dbo.proyecto_dbo.lider_proyecto_LiderProyecto_Id] FOREIGN KEY([LiderProyecto_Id])
REFERENCES [dbo].[lider_proyecto] ([Id])
GO
ALTER TABLE [dbo].[proyecto] CHECK CONSTRAINT [FK_dbo.proyecto_dbo.lider_proyecto_LiderProyecto_Id]
GO
ALTER TABLE [dbo].[proyecto]  WITH CHECK ADD  CONSTRAINT [FK_dbo.proyecto_dbo.solicitante_Solicitante_Id] FOREIGN KEY([Solicitante_Id])
REFERENCES [dbo].[solicitante] ([Id])
GO
ALTER TABLE [dbo].[proyecto] CHECK CONSTRAINT [FK_dbo.proyecto_dbo.solicitante_Solicitante_Id]
GO
ALTER TABLE [dbo].[proyecto]  WITH CHECK ADD  CONSTRAINT [FK_dbo.proyecto_dbo.version_Aplicacion_Id] FOREIGN KEY([Aplicacion_Id])
REFERENCES [dbo].[version] ([Id])
GO
ALTER TABLE [dbo].[proyecto] CHECK CONSTRAINT [FK_dbo.proyecto_dbo.version_Aplicacion_Id]
GO
ALTER TABLE [dbo].[sesion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.sesion_dbo.usuario_Usuario_Id] FOREIGN KEY([Usuario_Id])
REFERENCES [dbo].[usuario] ([Id])
GO
ALTER TABLE [dbo].[sesion] CHECK CONSTRAINT [FK_dbo.sesion_dbo.usuario_Usuario_Id]
GO
ALTER TABLE [dbo].[solicitante]  WITH CHECK ADD  CONSTRAINT [FK_dbo.solicitante_dbo.tipo_documento_TipoDoc_Id] FOREIGN KEY([TipoDoc_Id])
REFERENCES [dbo].[tipo_documento] ([Id])
GO
ALTER TABLE [dbo].[solicitante] CHECK CONSTRAINT [FK_dbo.solicitante_dbo.tipo_documento_TipoDoc_Id]
GO
ALTER TABLE [dbo].[solicitante]  WITH CHECK ADD  CONSTRAINT [FK_dbo.solicitante_dbo.usuario_Usuario_Id] FOREIGN KEY([Usuario_Id])
REFERENCES [dbo].[usuario] ([Id])
GO
ALTER TABLE [dbo].[solicitante] CHECK CONSTRAINT [FK_dbo.solicitante_dbo.usuario_Usuario_Id]
GO
ALTER TABLE [dbo].[solicitud_mantenimiento]  WITH CHECK ADD  CONSTRAINT [FK_dbo.solicitud_mantenimiento_dbo.criticidad_solicitud_mantenimiento_Criticidad_Id] FOREIGN KEY([Criticidad_Id])
REFERENCES [dbo].[criticidad_solicitud_mantenimiento] ([Id])
GO
ALTER TABLE [dbo].[solicitud_mantenimiento] CHECK CONSTRAINT [FK_dbo.solicitud_mantenimiento_dbo.criticidad_solicitud_mantenimiento_Criticidad_Id]
GO
ALTER TABLE [dbo].[solicitud_mantenimiento]  WITH CHECK ADD  CONSTRAINT [FK_dbo.solicitud_mantenimiento_dbo.estado_solicitud_mantenimiento_EstadoActual_Id] FOREIGN KEY([EstadoActual_Id])
REFERENCES [dbo].[estado_solicitud_mantenimiento] ([Id])
GO
ALTER TABLE [dbo].[solicitud_mantenimiento] CHECK CONSTRAINT [FK_dbo.solicitud_mantenimiento_dbo.estado_solicitud_mantenimiento_EstadoActual_Id]
GO
ALTER TABLE [dbo].[solicitud_mantenimiento]  WITH CHECK ADD  CONSTRAINT [FK_dbo.solicitud_mantenimiento_dbo.plan_Plan_Id] FOREIGN KEY([Plan_Id])
REFERENCES [dbo].[plan] ([Id])
GO
ALTER TABLE [dbo].[solicitud_mantenimiento] CHECK CONSTRAINT [FK_dbo.solicitud_mantenimiento_dbo.plan_Plan_Id]
GO
ALTER TABLE [dbo].[solicitud_mantenimiento]  WITH CHECK ADD  CONSTRAINT [FK_dbo.solicitud_mantenimiento_dbo.proyecto_Proyecto_Id] FOREIGN KEY([Proyecto_Id])
REFERENCES [dbo].[proyecto] ([Id])
GO
ALTER TABLE [dbo].[solicitud_mantenimiento] CHECK CONSTRAINT [FK_dbo.solicitud_mantenimiento_dbo.proyecto_Proyecto_Id]
GO
ALTER TABLE [dbo].[solicitud_mantenimiento]  WITH CHECK ADD  CONSTRAINT [FK_dbo.solicitud_mantenimiento_dbo.solicitante_Creador_Id] FOREIGN KEY([Creador_Id])
REFERENCES [dbo].[solicitante] ([Id])
GO
ALTER TABLE [dbo].[solicitud_mantenimiento] CHECK CONSTRAINT [FK_dbo.solicitud_mantenimiento_dbo.solicitante_Creador_Id]
GO
ALTER TABLE [dbo].[solicitud_mantenimiento]  WITH CHECK ADD  CONSTRAINT [FK_dbo.solicitud_mantenimiento_dbo.tipo_solicitud_Tipo_Id] FOREIGN KEY([Tipo_Id])
REFERENCES [dbo].[tipo_solicitud] ([Id])
GO
ALTER TABLE [dbo].[solicitud_mantenimiento] CHECK CONSTRAINT [FK_dbo.solicitud_mantenimiento_dbo.tipo_solicitud_Tipo_Id]
GO
ALTER TABLE [dbo].[tarea]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tarea_dbo.rol_RolEjecutor_Id] FOREIGN KEY([RolEjecutor_Id])
REFERENCES [dbo].[rol] ([Id])
GO
ALTER TABLE [dbo].[tarea] CHECK CONSTRAINT [FK_dbo.tarea_dbo.rol_RolEjecutor_Id]
GO
ALTER TABLE [dbo].[ticket]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ticket_dbo.miembro_equipo_MiembroEquipo_Id] FOREIGN KEY([MiembroEquipo_Id])
REFERENCES [dbo].[miembro_equipo] ([Id])
GO
ALTER TABLE [dbo].[ticket] CHECK CONSTRAINT [FK_dbo.ticket_dbo.miembro_equipo_MiembroEquipo_Id]
GO
ALTER TABLE [dbo].[ticket]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ticket_dbo.plan_Plan_Id] FOREIGN KEY([Plan_Id])
REFERENCES [dbo].[plan] ([Id])
GO
ALTER TABLE [dbo].[ticket] CHECK CONSTRAINT [FK_dbo.ticket_dbo.plan_Plan_Id]
GO
ALTER TABLE [dbo].[ticket]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ticket_dbo.tarea_Tarea_Id] FOREIGN KEY([Tarea_Id])
REFERENCES [dbo].[tarea] ([Id])
GO
ALTER TABLE [dbo].[ticket] CHECK CONSTRAINT [FK_dbo.ticket_dbo.tarea_Tarea_Id]
GO
ALTER TABLE [dbo].[version]  WITH CHECK ADD  CONSTRAINT [FK_dbo.version_dbo.aplicacion_Aplicacion_Id] FOREIGN KEY([Aplicacion_Id])
REFERENCES [dbo].[aplicacion] ([Id])
GO
ALTER TABLE [dbo].[version] CHECK CONSTRAINT [FK_dbo.version_dbo.aplicacion_Aplicacion_Id]
GO
