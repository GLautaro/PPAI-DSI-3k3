--Conjunto de datos para pruebas
--Comienza desde las tablas hoja a las raiz
USE db_poloc
Set dateformat 'dmy';
GO
--Tabla roles ID=[1..5]
INSERT INTO rol (Nombre) VALUES('Analista'),('Arquitecto de Software'),('Arquitecto'),('Desarrollador'),('Tester');

--Tabla tarea ID=[1..24]
insert into tarea (Descripcion, Nombre, ValorPorHora, rolEjecutor_Id) values ('nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo', 'Zontrax', 354.95, 4);
insert into tarea (Descripcion, Nombre, ValorPorHora, rolEjecutor_Id) values ('ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id', 'Solarbreeze', 103.27, 2);
insert into tarea (Descripcion, Nombre, ValorPorHora, rolEjecutor_Id) values ('in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl', 'Home Ing', 472.87, 4);
insert into tarea (Descripcion, Nombre, ValorPorHora, rolEjecutor_Id) values ('porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque', 'Zamit', 416.21, 2);
insert into tarea (Descripcion, Nombre, ValorPorHora, rolEjecutor_Id) values ('amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci', 'Y-find', 229.47, 5);
insert into tarea (Descripcion, Nombre, ValorPorHora, rolEjecutor_Id) values ('sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor', 'Sub-Ex', 147.86, 3);
insert into tarea (Descripcion, Nombre, ValorPorHora, rolEjecutor_Id) values ('nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel', 'Zathin', 492.66, 3);
insert into tarea (Descripcion, Nombre, ValorPorHora, rolEjecutor_Id) values ('varius ut blandit non interdum in ante vestibulum ante ipsum primis in', 'Fixflex', 187.97, 1);
insert into tarea (Descripcion, Nombre, ValorPorHora, rolEjecutor_Id) values ('augue vel accumsan tellus nisi eu orci mauris lacinia sapien', 'Alphazap', 410.13, 3);
insert into tarea (Descripcion, Nombre, ValorPorHora, rolEjecutor_Id) values ('justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae', 'Aerified', 280.61, 4);
insert into tarea (Descripcion, Nombre, ValorPorHora, rolEjecutor_Id) values ('ultricies eu nibh quisque id justo sit amet sapien dignissim', 'Overhold', 266.97, 2);
insert into tarea (Descripcion, Nombre, ValorPorHora, rolEjecutor_Id) values ('enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis', 'Solarbreeze', 416.36, 5);
insert into tarea (Descripcion, Nombre, ValorPorHora, rolEjecutor_Id) values ('mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non', 'Sonsing', 302.57, 5);
insert into tarea (Descripcion, Nombre, ValorPorHora, rolEjecutor_Id) values ('quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae', 'Lotstring', 160.6, 2);
insert into tarea (Descripcion, Nombre, ValorPorHora, rolEjecutor_Id) values ('etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit', 'Alpha', 478.28, 3);
insert into tarea (Descripcion, Nombre, ValorPorHora, rolEjecutor_Id) values ('lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque', 'Keylex', 428.83, 4);
insert into tarea (Descripcion, Nombre, ValorPorHora, rolEjecutor_Id) values ('vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet', 'Prodder', 381.6, 2);
insert into tarea (Descripcion, Nombre, ValorPorHora, rolEjecutor_Id) values ('eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget', 'Opela', 302.79, 4);
insert into tarea (Descripcion, Nombre, ValorPorHora, rolEjecutor_Id) values ('nulla nisl nunc nisl duis bibendum felis sed interdum venenatis', 'Y-find', 127.37, 3);
insert into tarea (Descripcion, Nombre, ValorPorHora, rolEjecutor_Id) values ('tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci', 'Rank', 338.55, 2);
insert into tarea (Descripcion, Nombre, ValorPorHora, rolEjecutor_Id) values ('ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan', 'Vagram', 218.09, 1);
insert into tarea (Descripcion, Nombre, ValorPorHora, rolEjecutor_Id) values ('commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer', 'Domainer', 325.6, 4);
insert into tarea (Descripcion, Nombre, ValorPorHora, rolEjecutor_Id) values ('placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt', 'Tempsoft', 122.61, 1);
insert into tarea (Descripcion, Nombre, ValorPorHora, rolEjecutor_Id) values ('convallis eget eleifend luctus ultricies eu nibh quisque id justo', 'Regrant', 297.48, 4);
insert into tarea (Descripcion, Nombre, ValorPorHora, rolEjecutor_Id) values ('pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla', 'Subin', 419.29, 4);

--Tabla plan ID=[1..10]

INSERT INTO [plan] (FechaCreacion, FechaFinResolucion, FechaInicioResolucion) values ('04/06/2019', '17/03/2019', '24/09/2019');

INSERT INTO [plan] (FechaCreacion, FechaFinResolucion, FechaInicioResolucion) values ('06/11/2019', '21/10/2019', '23/02/2019');
INSERT INTO [plan] (FechaCreacion, FechaFinResolucion, FechaInicioResolucion) values ('02/04/2019', '24/04/2019', '30/11/2018');
INSERT INTO [plan] (FechaCreacion, FechaFinResolucion, FechaInicioResolucion) values ('24/12/2018', '23/07/2019', '05/11/2019');
INSERT INTO [plan] (FechaCreacion, FechaFinResolucion, FechaInicioResolucion) values ('19/11/2018', '06/02/2019', '28/04/2019');
INSERT INTO [plan] (FechaCreacion, FechaFinResolucion, FechaInicioResolucion) values ('03/07/2019', '02/10/2019', '05/03/2019');
INSERT INTO [plan] (FechaCreacion, FechaFinResolucion, FechaInicioResolucion) values ('27/08/2019', '29/04/2019', '21/08/2019');
INSERT INTO [plan] (FechaCreacion, FechaFinResolucion, FechaInicioResolucion) values ('15/10/2019', '06/09/2019', '25/06/2019');
INSERT INTO [plan] (FechaCreacion, FechaFinResolucion, FechaInicioResolucion) values ('30/01/2019', '05/12/2018', '08/03/2019');
INSERT INTO [plan] (FechaCreacion, FechaFinResolucion, FechaInicioResolucion) values ('26/11/2018', '17/10/2019', '10/05/2019');

--Tabla usuario ID=[1..20]
insert into usuario (NombreUsuario, Password) values ('kmadle0', 'YfX2kTIfZM');
insert into usuario (NombreUsuario, Password) values ('clangfat1', 'rBhk3HapRU');
insert into usuario (NombreUsuario, Password) values ('sclimpson2', 'cb58O64Cv');
insert into usuario (NombreUsuario, Password) values ('agodsafe3', 'v6RM1Y3u94n');
insert into usuario (NombreUsuario, Password) values ('pwahner4', 'Z4qWbZaBcHp');
insert into usuario (NombreUsuario, Password) values ('jjoseff5', '8dCfGp2xS');
insert into usuario (NombreUsuario, Password) values ('bwohlers6', 'mSWwfXmgN9k');
insert into usuario (NombreUsuario, Password) values ('gsetterthwait7', 'PRVFSnhOE');
insert into usuario (NombreUsuario, Password) values ('cstokes8', 'xcMOoctLPx');
insert into usuario (NombreUsuario, Password) values ('dscrane9', 'eQGEG2BSVL');
insert into usuario (NombreUsuario, Password) values ('asaundersa', 'YUkhQdMD173V');
insert into usuario (NombreUsuario, Password) values ('dhentzerb', '98Lu7o7JoJY');
insert into usuario (NombreUsuario, Password) values ('gryburnc', 'Ts78dv9pof');
insert into usuario (NombreUsuario, Password) values ('ilebretondelavieuvilled', '9rCRuIr3fPQ');
insert into usuario (NombreUsuario, Password) values ('bdemanchee', 'a6Ijgb1rHdE');
insert into usuario (NombreUsuario, Password) values ('ulenevef', 'dPzMAbOy');
insert into usuario (NombreUsuario, Password) values ('hgeaterg', 'xRIQgJ3em');
insert into usuario (NombreUsuario, Password) values ('ddewerkh', 'Gxgr0CzTHIdw');
insert into usuario (NombreUsuario, Password) values ('srainyi', 'DqmZZGFkmFG8');
insert into usuario (NombreUsuario, Password) values ('dduddyj', 'CzAVaQAOx3');

--Tabla miembro_equipo ID=[1..10]
insert into miembro_equipo (Apellido, CorreoElectronico, Nombre, Rol_Id) values ('Riccioppo', 'driccioppo0@hibu.com', 'Devin', 2);
insert into miembro_equipo (Apellido, CorreoElectronico, Nombre, Rol_Id) values ('Lymbourne', 'flymbourne1@amazon.co.uk', 'Ferrel', 2);
insert into miembro_equipo (Apellido, CorreoElectronico, Nombre, Rol_Id) values ('Cavet', 'mcavet2@bluehost.com', 'Mufinella', 1);
insert into miembro_equipo (Apellido, CorreoElectronico, Nombre, Rol_Id) values ('Kimbury', 'bkimbury3@sogou.com', 'Bernardina', 1);
insert into miembro_equipo (Apellido, CorreoElectronico, Nombre, Rol_Id) values ('Sinclaire', 'asinclaire4@tinyurl.com', 'Audi', 3);
insert into miembro_equipo (Apellido, CorreoElectronico, Nombre, Rol_Id) values ('Lillistone', 'elillistone5@bloomberg.com', 'Ethel', 1);
insert into miembro_equipo (Apellido, CorreoElectronico, Nombre, Rol_Id) values ('La Torre', 'mlatorre6@hibu.com', 'Merrie', 2);
insert into miembro_equipo (Apellido, CorreoElectronico, Nombre, Rol_Id) values ('Butterfield', 'lbutterfield7@indiegogo.com', 'Lee', 5);
insert into miembro_equipo (Apellido, CorreoElectronico, Nombre, Rol_Id) values ('Speechly', 'tspeechly8@princeton.edu', 'Taryn', 3);
insert into miembro_equipo (Apellido, CorreoElectronico, Nombre, Rol_Id) values ('Delcastel', 'ldelcastel9@woothemes.com', 'Laraine', 4);

--Tabla cliente ID=[1..10]
insert into cliente (Domicilio, FechaAlta, Nombre) values ('39732 Shoshone Court', '16/06/2019', 'Daugherty-Walsh');
insert into cliente (Domicilio, FechaAlta, Nombre) values ('5471 Fisk Plaza', '26/12/2018', 'Labadie Inc');
insert into cliente (Domicilio, FechaAlta, Nombre) values ('417 Jenna Pass', '24/02/2019', 'Thiel Inc');
insert into cliente (Domicilio, FechaAlta, Nombre) values ('92524 Londonderry Hill', '23/09/2019', 'Tillman, Gerlach and Bins');
insert into cliente (Domicilio, FechaAlta, Nombre) values ('2 Carpenter Road', '10/10/2019', 'Romaguera, Simonis and Baumbach');
insert into cliente (Domicilio, FechaAlta, Nombre) values ('09640 Delladonna Trail', '07/03/2019', 'Greenfelder-McCullough');
insert into cliente (Domicilio, FechaAlta, Nombre) values ('059 Northview Point', '10/10/2019', 'Veum-Jerde');
insert into cliente (Domicilio, FechaAlta, Nombre) values ('596 Bunker Hill Circle', '11/04/2019', 'Bernhard, Hermann and Wintheiser');
insert into cliente (Domicilio, FechaAlta, Nombre) values ('6 Mccormick Plaza', '18/12/2018', 'Mayer, Hamill and Osinski');
insert into cliente (Domicilio, FechaAlta, Nombre) values ('30647 School Center', '04/01/2019', 'Beatty Group');

--Tabla criticidad ID=[1..5]
INSERT INTO criticidad_solicitud_mantenimiento([Descripcion],[Nombre]) VALUES ('','Baja'),('','Media'),('','Alta'),('','Muy Alta'),('','Extrema')

--Tabla tipo_solicitud ID=[1..5]
insert into tipo_solicitud (Descripcion, Nombre) values ('pellentesque viverra', 'Echo');
insert into tipo_solicitud (Descripcion, Nombre) values ('ipsum dolor sit amet', 'Tango');
insert into tipo_solicitud (Descripcion, Nombre) values ('amet sapien dignissim vestibulum', 'Alfa');
insert into tipo_solicitud (Descripcion, Nombre) values ('lacus at turpis', 'November');
insert into tipo_solicitud (Descripcion, Nombre) values ('aliquam convallis nunc', 'Juliett');

--Tabla aplicacion ID=[1..10]
insert into aplicacion (Nombre) values ('Rank');
insert into aplicacion (Nombre) values ('Flexidy');
insert into aplicacion (Nombre) values ('Transcof');
insert into aplicacion (Nombre) values ('Subin');
insert into aplicacion (Nombre) values ('Stringtough');
insert into aplicacion (Nombre) values ('Regrant');
insert into aplicacion (Nombre) values ('Alphazap');
insert into aplicacion (Nombre) values ('Hatity');
insert into aplicacion (Nombre) values ('Cardguard');
insert into aplicacion (Nombre) values ('Opela');

--Tabla tipo_documento ID=[1.3]
INSERT INTO tipo_documento([Nombre],[Descripcion])VALUES('DNI',''),('Libreta De Enrolamiento',''),('Pasaporte','');

--Tabla estado_solicitud ID=[1..11]
INSERT INTO estado_solicitud_mantenimiento([Nombre],[Discriminator])VALUES('En Ejecucion','EnEjecucion'),('Resuelta','Resuelta'),('Notificada','Notificada'),('Cerrada','Cerrada'),('Reclamada','Reclamada'),('Anulada','Anulada'),('Planificada','Planificada'),('Confirmada','Confirmada'),('Cancelada','Cancelada'),('Estimada','Estimada'),('Generada','Generada')

--Tabla ticket ID=[1..50]
insert into ticket (DetalleTicket, FechaFinPrevista, FechaInicioPrevista, FechaInicioReal, HorasEstimadas, InformacionAnalisis, ValorHoraReal, MiembroEquipo_Id, Tarea_Id, Plan_Id) values ('dapibus dolor vel', '03/03/2019', '12/09/2019', '02/05/2019', 7.52, 'lorem integer tincidunt ante vel ipsum', 187.89, 10, 15, 6);
insert into ticket (DetalleTicket, FechaFinPrevista, FechaInicioPrevista, FechaInicioReal, HorasEstimadas, InformacionAnalisis, ValorHoraReal, MiembroEquipo_Id, Tarea_Id, Plan_Id) values ('non interdum', '23/09/2019', '27/01/2019', '25/05/2019', 9.45, 'sit amet turpis elementum ligula vehicula consequat', 375.64, 2, 3, 6);
insert into ticket (DetalleTicket, FechaFinPrevista, FechaInicioPrevista, FechaInicioReal, HorasEstimadas, InformacionAnalisis, ValorHoraReal, MiembroEquipo_Id, Tarea_Id, Plan_Id) values ('magna bibendum', '21/06/2019', '26/12/2018', '04/07/2019', 7.49, 'aenean auctor gravida sem praesent id massa id nisl venenatis', 298.35, 5, 21, 10);
insert into ticket (DetalleTicket, FechaFinPrevista, FechaInicioPrevista, FechaInicioReal, HorasEstimadas, InformacionAnalisis, ValorHoraReal, MiembroEquipo_Id, Tarea_Id, Plan_Id) values ('est et', '19/09/2019', '22/03/2019', '13/09/2019', 7.7, 'pede venenatis non sodales sed', 103.89, 7, 10, 2);
insert into ticket (DetalleTicket, FechaFinPrevista, FechaInicioPrevista, FechaInicioReal, HorasEstimadas, InformacionAnalisis, ValorHoraReal, MiembroEquipo_Id, Tarea_Id, Plan_Id) values ('vulputate nonummy', '12/09/2019', '24/01/2019', '04/08/2019', 9.24, 'sit amet consectetuer adipiscing elit proin risus praesent lectus vestibulum', 313.82, 8, 14, 4);
insert into ticket (DetalleTicket, FechaFinPrevista, FechaInicioPrevista, FechaInicioReal, HorasEstimadas, InformacionAnalisis, ValorHoraReal, MiembroEquipo_Id, Tarea_Id, Plan_Id) values ('in eleifend', '29/08/2019', '28/02/2019', '07/06/2019', 9.37, 'volutpat erat quisque erat eros viverra eget congue', 335.18, 3, 14, 9);
insert into ticket (DetalleTicket, FechaFinPrevista, FechaInicioPrevista, FechaInicioReal, HorasEstimadas, InformacionAnalisis, ValorHoraReal, MiembroEquipo_Id, Tarea_Id, Plan_Id) values ('sapien', '02/09/2019', '31/01/2019', '22/12/2018', 9.14, 'bibendum morbi non quam nec dui luctus rutrum nulla tellus', 382.8, 4, 6, 4);
insert into ticket (DetalleTicket, FechaFinPrevista, FechaInicioPrevista, FechaInicioReal, HorasEstimadas, InformacionAnalisis, ValorHoraReal, MiembroEquipo_Id, Tarea_Id, Plan_Id) values ('posuere', '10/05/2019', '28/01/2019', '20/01/2019', 8.56, 'felis donec semper sapien a', 205.63, 4, 13, 5);
insert into ticket (DetalleTicket, FechaFinPrevista, FechaInicioPrevista, FechaInicioReal, HorasEstimadas, InformacionAnalisis, ValorHoraReal, MiembroEquipo_Id, Tarea_Id, Plan_Id) values ('justo etiam pretium', '09/02/2019', '19/01/2019', '01/04/2019', 5.41, 'pede posuere nonummy integer non velit donec diam neque', 263.75, 3, 12, 10);
insert into ticket (DetalleTicket, FechaFinPrevista, FechaInicioPrevista, FechaInicioReal, HorasEstimadas, InformacionAnalisis, ValorHoraReal, MiembroEquipo_Id, Tarea_Id, Plan_Id) values ('risus auctor', '23/04/2019', '06/03/2019', '03/07/2019', 4.7, 'dictumst maecenas ut massa quis augue luctus tincidunt', 271.33, 2, 24, 1);
insert into ticket (DetalleTicket, FechaFinPrevista, FechaInicioPrevista, FechaInicioReal, HorasEstimadas, InformacionAnalisis, ValorHoraReal, MiembroEquipo_Id, Tarea_Id, Plan_Id) values ('non', '03/08/2019', '26/10/2019', '03/12/2018', 1.87, 'maecenas tincidunt lacus at velit vivamus vel nulla', 466.77, 2, 18, 9);
insert into ticket (DetalleTicket, FechaFinPrevista, FechaInicioPrevista, FechaInicioReal, HorasEstimadas, InformacionAnalisis, ValorHoraReal, MiembroEquipo_Id, Tarea_Id, Plan_Id) values ('amet', '04/04/2019', '14/10/2019', '10/09/2019', 1.18, 'sapien placerat ante nulla justo aliquam quis turpis eget elit', 280.52, 5, 13, 4);
insert into ticket (DetalleTicket, FechaFinPrevista, FechaInicioPrevista, FechaInicioReal, HorasEstimadas, InformacionAnalisis, ValorHoraReal, MiembroEquipo_Id, Tarea_Id, Plan_Id) values ('arcu libero', '25/08/2019', '24/02/2019', '04/05/2019', 4.93, 'cubilia curae duis faucibus accumsan odio curabitur', 452.51, 6, 7, 6);
insert into ticket (DetalleTicket, FechaFinPrevista, FechaInicioPrevista, FechaInicioReal, HorasEstimadas, InformacionAnalisis, ValorHoraReal, MiembroEquipo_Id, Tarea_Id, Plan_Id) values ('risus praesent', '11/01/2019', '07/11/2019', '23/12/2018', 7.62, 'eget eros elementum pellentesque quisque', 465.99, 3, 3, 2);
insert into ticket (DetalleTicket, FechaFinPrevista, FechaInicioPrevista, FechaInicioReal, HorasEstimadas, InformacionAnalisis, ValorHoraReal, MiembroEquipo_Id, Tarea_Id, Plan_Id) values ('rhoncus', '14/01/2019', '10/11/2019', '22/08/2019', 8.58, 'eget tincidunt eget tempus vel', 472.99, 4, 7, 2);
insert into ticket (DetalleTicket, FechaFinPrevista, FechaInicioPrevista, FechaInicioReal, HorasEstimadas, InformacionAnalisis, ValorHoraReal, MiembroEquipo_Id, Tarea_Id, Plan_Id) values ('a', '17/07/2019', '07/11/2019', '06/10/2019', 1.76, 'tincidunt lacus at velit vivamus vel nulla eget eros elementum', 428.3, 10, 11, 1);
insert into ticket (DetalleTicket, FechaFinPrevista, FechaInicioPrevista, FechaInicioReal, HorasEstimadas, InformacionAnalisis, ValorHoraReal, MiembroEquipo_Id, Tarea_Id, Plan_Id) values ('ligula nec sem', '11/01/2019', '23/05/2019', '04/12/2018', 8.94, 'placerat ante nulla justo aliquam quis turpis eget elit', 364.36, 5, 16, 1);
insert into ticket (DetalleTicket, FechaFinPrevista, FechaInicioPrevista, FechaInicioReal, HorasEstimadas, InformacionAnalisis, ValorHoraReal, MiembroEquipo_Id, Tarea_Id, Plan_Id) values ('donec', '24/02/2019', '21/05/2019', '28/02/2019', 4.91, 'rhoncus mauris enim leo rhoncus sed vestibulum sit amet', 470.82, 3, 18, 6);
insert into ticket (DetalleTicket, FechaFinPrevista, FechaInicioPrevista, FechaInicioReal, HorasEstimadas, InformacionAnalisis, ValorHoraReal, MiembroEquipo_Id, Tarea_Id, Plan_Id) values ('sed vestibulum', '30/10/2019', '15/03/2019', '24/05/2019', 4.15, 'ultricies eu nibh quisque id justo sit amet', 204.0, 3, 16, 10);
insert into ticket (DetalleTicket, FechaFinPrevista, FechaInicioPrevista, FechaInicioReal, HorasEstimadas, InformacionAnalisis, ValorHoraReal, MiembroEquipo_Id, Tarea_Id, Plan_Id) values ('elit', '27/01/2019', '06/07/2019', '02/10/2019', 8.77, 'lectus in est risus auctor sed', 195.84, 2, 8, 5);
insert into ticket (DetalleTicket, FechaFinPrevista, FechaInicioPrevista, FechaInicioReal, HorasEstimadas, InformacionAnalisis, ValorHoraReal, MiembroEquipo_Id, Tarea_Id, Plan_Id) values ('donec', '08/03/2019', '05/08/2019', '17/07/2019', 4.57, 'lectus in est risus auctor sed tristique in tempus', 315.77, 10, 8, 10);
insert into ticket (DetalleTicket, FechaFinPrevista, FechaInicioPrevista, FechaInicioReal, HorasEstimadas, InformacionAnalisis, ValorHoraReal, MiembroEquipo_Id, Tarea_Id, Plan_Id) values ('nunc proin', '20/08/2019', '12/08/2019', '04/06/2019', 3.29, 'et tempus semper est quam', 278.0, 6, 11, 4);
insert into ticket (DetalleTicket, FechaFinPrevista, FechaInicioPrevista, FechaInicioReal, HorasEstimadas, InformacionAnalisis, ValorHoraReal, MiembroEquipo_Id, Tarea_Id, Plan_Id) values ('ipsum dolor sit', '24/10/2019', '22/08/2019', '11/05/2019', 8.84, 'sed justo pellentesque viverra pede ac diam', 115.55, 2, 2, 10);
insert into ticket (DetalleTicket, FechaFinPrevista, FechaInicioPrevista, FechaInicioReal, HorasEstimadas, InformacionAnalisis, ValorHoraReal, MiembroEquipo_Id, Tarea_Id, Plan_Id) values ('pharetra magna ac', '01/09/2019', '20/08/2019', '18/03/2019', 6.85, 'in magna bibendum imperdiet nullam orci pede venenatis non', 199.19, 3, 1, 2);
insert into ticket (DetalleTicket, FechaFinPrevista, FechaInicioPrevista, FechaInicioReal, HorasEstimadas, InformacionAnalisis, ValorHoraReal, MiembroEquipo_Id, Tarea_Id, Plan_Id) values ('libero nullam', '22/12/2018', '14/03/2019', '04/12/2018', 1.33, 'imperdiet nullam orci pede venenatis non sodales sed', 269.94, 1, 8, 7);
insert into ticket (DetalleTicket, FechaFinPrevista, FechaInicioPrevista, FechaInicioReal, HorasEstimadas, InformacionAnalisis, ValorHoraReal, MiembroEquipo_Id, Tarea_Id, Plan_Id) values ('ligula pellentesque ultrices', '13/07/2019', '28/08/2019', '07/06/2019', 3.74, 'aliquam convallis nunc proin at turpis a pede posuere', 117.04, 2, 1, 2);
insert into ticket (DetalleTicket, FechaFinPrevista, FechaInicioPrevista, FechaInicioReal, HorasEstimadas, InformacionAnalisis, ValorHoraReal, MiembroEquipo_Id, Tarea_Id, Plan_Id) values ('sed', '27/06/2019', '20/09/2019', '01/01/2019', 6.01, 'leo rhoncus sed vestibulum sit amet cursus id', 285.35, 6, 4, 10);
insert into ticket (DetalleTicket, FechaFinPrevista, FechaInicioPrevista, FechaInicioReal, HorasEstimadas, InformacionAnalisis, ValorHoraReal, MiembroEquipo_Id, Tarea_Id, Plan_Id) values ('eros suspendisse', '21/07/2019', '02/04/2019', '10/03/2019', 5.62, 'sit amet nulla quisque arcu', 164.25, 4, 8, 2);
insert into ticket (DetalleTicket, FechaFinPrevista, FechaInicioPrevista, FechaInicioReal, HorasEstimadas, InformacionAnalisis, ValorHoraReal, MiembroEquipo_Id, Tarea_Id, Plan_Id) values ('nonummy integer non', '21/11/2018', '29/07/2019', '19/04/2019', 7.16, 'sapien a libero nam dui proin leo odio', 184.54, 9, 8, 2);
insert into ticket (DetalleTicket, FechaFinPrevista, FechaInicioPrevista, FechaInicioReal, HorasEstimadas, InformacionAnalisis, ValorHoraReal, MiembroEquipo_Id, Tarea_Id, Plan_Id) values ('tristique', '11/11/2019', '26/05/2019', '11/06/2019', 6.66, 'cras non velit nec nisi vulputate', 422.9, 4, 16, 5);
insert into ticket (DetalleTicket, FechaFinPrevista, FechaInicioPrevista, FechaInicioReal, HorasEstimadas, InformacionAnalisis, ValorHoraReal, MiembroEquipo_Id, Tarea_Id, Plan_Id) values ('nisi', '16/06/2019', '03/11/2019', '27/09/2019', 1.9, 'pede justo lacinia eget tincidunt eget tempus vel', 341.25, 4, 17, 7);
insert into ticket (DetalleTicket, FechaFinPrevista, FechaInicioPrevista, FechaInicioReal, HorasEstimadas, InformacionAnalisis, ValorHoraReal, MiembroEquipo_Id, Tarea_Id, Plan_Id) values ('vestibulum', '15/07/2019', '29/01/2019', '05/05/2019', 7.61, 'nisi at nibh in hac habitasse platea dictumst aliquam augue', 397.02, 10, 1, 1);
insert into ticket (DetalleTicket, FechaFinPrevista, FechaInicioPrevista, FechaInicioReal, HorasEstimadas, InformacionAnalisis, ValorHoraReal, MiembroEquipo_Id, Tarea_Id, Plan_Id) values ('in felis eu', '01/09/2019', '15/12/2018', '05/10/2019', 1.62, 'rutrum rutrum neque aenean auctor gravida sem praesent id massa', 174.4, 6, 8, 9);
insert into ticket (DetalleTicket, FechaFinPrevista, FechaInicioPrevista, FechaInicioReal, HorasEstimadas, InformacionAnalisis, ValorHoraReal, MiembroEquipo_Id, Tarea_Id, Plan_Id) values ('pretium', '01/05/2019', '21/06/2019', '22/01/2019', 1.89, 'convallis eget eleifend luctus ultricies eu nibh', 427.77, 7, 7, 6);
insert into ticket (DetalleTicket, FechaFinPrevista, FechaInicioPrevista, FechaInicioReal, HorasEstimadas, InformacionAnalisis, ValorHoraReal, MiembroEquipo_Id, Tarea_Id, Plan_Id) values ('amet', '08/02/2019', '12/07/2019', '01/05/2019', 2.07, 'pretium quis lectus suspendisse potenti', 110.98, 3, 20, 5);
insert into ticket (DetalleTicket, FechaFinPrevista, FechaInicioPrevista, FechaInicioReal, HorasEstimadas, InformacionAnalisis, ValorHoraReal, MiembroEquipo_Id, Tarea_Id, Plan_Id) values ('odio consequat varius', '27/01/2019', '14/01/2019', '30/06/2019', 7.39, 'nam dui proin leo odio porttitor id consequat in', 292.89, 5, 22, 3);
insert into ticket (DetalleTicket, FechaFinPrevista, FechaInicioPrevista, FechaInicioReal, HorasEstimadas, InformacionAnalisis, ValorHoraReal, MiembroEquipo_Id, Tarea_Id, Plan_Id) values ('suspendisse potenti', '09/10/2019', '19/01/2019', '05/08/2019', 5.78, 'venenatis non sodales sed tincidunt eu felis fusce posuere', 426.6, 9, 11, 2);
insert into ticket (DetalleTicket, FechaFinPrevista, FechaInicioPrevista, FechaInicioReal, HorasEstimadas, InformacionAnalisis, ValorHoraReal, MiembroEquipo_Id, Tarea_Id, Plan_Id) values ('hac habitasse', '13/03/2019', '30/01/2019', '25/10/2019', 3.1, 'consectetuer adipiscing elit proin risus praesent lectus vestibulum', 207.42, 4, 22, 10);
insert into ticket (DetalleTicket, FechaFinPrevista, FechaInicioPrevista, FechaInicioReal, HorasEstimadas, InformacionAnalisis, ValorHoraReal, MiembroEquipo_Id, Tarea_Id, Plan_Id) values ('ut', '12/04/2019', '09/07/2019', '23/07/2019', 3.55, 'fusce posuere felis sed lacus', 323.9, 2, 10, 2);
insert into ticket (DetalleTicket, FechaFinPrevista, FechaInicioPrevista, FechaInicioReal, HorasEstimadas, InformacionAnalisis, ValorHoraReal, MiembroEquipo_Id, Tarea_Id, Plan_Id) values ('fusce congue', '24/04/2019', '27/07/2019', '18/08/2019', 1.09, 'amet cursus id turpis integer aliquet massa id lobortis convallis', 429.54, 2, 2, 8);
insert into ticket (DetalleTicket, FechaFinPrevista, FechaInicioPrevista, FechaInicioReal, HorasEstimadas, InformacionAnalisis, ValorHoraReal, MiembroEquipo_Id, Tarea_Id, Plan_Id) values ('nisl nunc', '26/02/2019', '04/08/2019', '03/03/2019', 6.93, 'libero non mattis pulvinar nulla pede ullamcorper augue', 366.64, 2, 12, 10);
insert into ticket (DetalleTicket, FechaFinPrevista, FechaInicioPrevista, FechaInicioReal, HorasEstimadas, InformacionAnalisis, ValorHoraReal, MiembroEquipo_Id, Tarea_Id, Plan_Id) values ('primis in faucibus', '25/06/2019', '16/01/2019', '05/06/2019', 9.16, 'id mauris vulputate elementum nullam varius nulla facilisi cras', 307.27, 6, 12, 3);
insert into ticket (DetalleTicket, FechaFinPrevista, FechaInicioPrevista, FechaInicioReal, HorasEstimadas, InformacionAnalisis, ValorHoraReal, MiembroEquipo_Id, Tarea_Id, Plan_Id) values ('sed augue aliquam', '08/08/2019', '18/08/2019', '09/06/2019', 1.92, 'nulla sed vel enim sit amet nunc viverra dapibus nulla', 403.88, 2, 16, 7);
insert into ticket (DetalleTicket, FechaFinPrevista, FechaInicioPrevista, FechaInicioReal, HorasEstimadas, InformacionAnalisis, ValorHoraReal, MiembroEquipo_Id, Tarea_Id, Plan_Id) values ('lacus', '12/11/2019', '05/02/2019', '30/09/2019', 8.97, 'elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor', 446.14, 2, 15, 1);
insert into ticket (DetalleTicket, FechaFinPrevista, FechaInicioPrevista, FechaInicioReal, HorasEstimadas, InformacionAnalisis, ValorHoraReal, MiembroEquipo_Id, Tarea_Id, Plan_Id) values ('vestibulum ac est', '30/08/2019', '11/11/2019', '05/12/2018', 6.09, 'aliquam quis turpis eget elit', 405.12, 2, 5, 3);
insert into ticket (DetalleTicket, FechaFinPrevista, FechaInicioPrevista, FechaInicioReal, HorasEstimadas, InformacionAnalisis, ValorHoraReal, MiembroEquipo_Id, Tarea_Id, Plan_Id) values ('in est', '14/08/2019', '12/12/2018', '28/05/2019', 3.56, 'sed augue aliquam erat volutpat in', 337.12, 5, 7, 9);

--Tabla jefe_proyecto ID=[1..5]
insert into jefe_proyecto (Apellido, CorreoElectronico, Nombre, Usuario_Id) values ('Lilleman', 'alilleman0@youtu.be', 'Arden', 13);
insert into jefe_proyecto (Apellido, CorreoElectronico, Nombre, Usuario_Id) values ('Grainger', 'mgrainger1@zimbio.com', 'Michal', 19);
insert into jefe_proyecto (Apellido, CorreoElectronico, Nombre, Usuario_Id) values ('Gebhard', 'fgebhard2@github.com', 'Faythe', 18);
insert into jefe_proyecto (Apellido, CorreoElectronico, Nombre, Usuario_Id) values ('Zellick', 'vzellick3@reuters.com', 'Valaria', 14);
insert into jefe_proyecto (Apellido, CorreoElectronico, Nombre, Usuario_Id) values ('Cleeton', 'pcleeton4@shutterfly.com', 'Paige', 2);

--Tabla lider_proyecto ID=[1..5]
insert into lider_proyecto (Apellido, CorreoElectrónico, Nombre, Usuario_Id) values ('Poynton', 'apoynton0@discovery.com', 'Alley', 16);
insert into lider_proyecto (Apellido, CorreoElectrónico, Nombre, Usuario_Id) values ('Mansfield', 'mmansfield1@paginegialle.it', 'Mano', 15);
insert into lider_proyecto (Apellido, CorreoElectrónico, Nombre, Usuario_Id) values ('Larkins', 'mlarkins2@statcounter.com', 'Marlow', 4);
insert into lider_proyecto (Apellido, CorreoElectrónico, Nombre, Usuario_Id) values ('Shearme', 'rshearme3@tumblr.com', 'Reginauld', 3);
insert into lider_proyecto (Apellido, CorreoElectrónico, Nombre, Usuario_Id) values ('Clampton', 'eclampton4@dropbox.com', 'Elmore', 15);

--Tabla version
insert into version (FechaLiberacion, Nombre, NumeroVersion, Aplicacion_Id) values ('09/10/2019', 'justo', '0.23', 6);
insert into version (FechaLiberacion, Nombre, NumeroVersion, Aplicacion_Id) values ('27/02/2019', 'ultrices', '0.34', 9);
insert into version (FechaLiberacion, Nombre, NumeroVersion, Aplicacion_Id) values ('28/07/2019', 'pulvinar', '0.50', 7);
insert into version (FechaLiberacion, Nombre, NumeroVersion, Aplicacion_Id) values ('01/01/2019', 'faucibus', '0.2.9', 7);
insert into version (FechaLiberacion, Nombre, NumeroVersion, Aplicacion_Id) values ('22/02/2019', 'porta', '0.9.4', 2);
insert into version (FechaLiberacion, Nombre, NumeroVersion, Aplicacion_Id) values ('24/10/2019', 'cubilia', '9.8', 7);
insert into version (FechaLiberacion, Nombre, NumeroVersion, Aplicacion_Id) values ('10/08/2019', 'luctus', '1.00', 8);
insert into version (FechaLiberacion, Nombre, NumeroVersion, Aplicacion_Id) values ('23/03/2019', 'montes', '5.2', 9);
insert into version (FechaLiberacion, Nombre, NumeroVersion, Aplicacion_Id) values ('27/03/2019', 'cubilia', '2.3.3', 8);
insert into version (FechaLiberacion, Nombre, NumeroVersion, Aplicacion_Id) values ('24/06/2019', 'donec', '0.54', 6);
insert into version (FechaLiberacion, Nombre, NumeroVersion, Aplicacion_Id) values ('20/06/2019', 'habitasse', '0.3.4', 5);
insert into version (FechaLiberacion, Nombre, NumeroVersion, Aplicacion_Id) values ('24/01/2019', 'commodo', '6.4.2', 1);
insert into version (FechaLiberacion, Nombre, NumeroVersion, Aplicacion_Id) values ('08/05/2019', 'sapien', '9.3', 3);
insert into version (FechaLiberacion, Nombre, NumeroVersion, Aplicacion_Id) values ('24/10/2019', 'nec', '8.5.0', 6);
insert into version (FechaLiberacion, Nombre, NumeroVersion, Aplicacion_Id) values ('26/10/2019', 'proin', '3.9', 4);
insert into version (FechaLiberacion, Nombre, NumeroVersion, Aplicacion_Id) values ('23/06/2019', 'sed', '2.2', 4);
insert into version (FechaLiberacion, Nombre, NumeroVersion, Aplicacion_Id) values ('17/06/2019', 'natoque', '0.9.3', 2);
insert into version (FechaLiberacion, Nombre, NumeroVersion, Aplicacion_Id) values ('29/09/2019', 'eros', '8.36', 2);
insert into version (FechaLiberacion, Nombre, NumeroVersion, Aplicacion_Id) values ('11/12/2018', 'eu', '0.62', 7);
insert into version (FechaLiberacion, Nombre, NumeroVersion, Aplicacion_Id) values ('17/12/2018', 'habitasse', '4.42', 1);
insert into version (FechaLiberacion, Nombre, NumeroVersion, Aplicacion_Id) values ('10/07/2019', 'quis', '0.86', 10);
insert into version (FechaLiberacion, Nombre, NumeroVersion, Aplicacion_Id) values ('08/01/2019', 'praesent', '5.1.3', 3);
insert into version (FechaLiberacion, Nombre, NumeroVersion, Aplicacion_Id) values ('15/05/2019', 'ultrices', '8.7', 8);
insert into version (FechaLiberacion, Nombre, NumeroVersion, Aplicacion_Id) values ('07/03/2019', 'nisi', '0.6.4', 3);
insert into version (FechaLiberacion, Nombre, NumeroVersion, Aplicacion_Id) values ('06/01/2019', 'id', '3.2.4', 10);
insert into version (FechaLiberacion, Nombre, NumeroVersion, Aplicacion_Id) values ('08/03/2019', 'bibendum', '2.2', 7);
insert into version (FechaLiberacion, Nombre, NumeroVersion, Aplicacion_Id) values ('30/07/2019', 'purus', '3.62', 8);
insert into version (FechaLiberacion, Nombre, NumeroVersion, Aplicacion_Id) values ('25/07/2019', 'sagittis', '3.48', 3);
insert into version (FechaLiberacion, Nombre, NumeroVersion, Aplicacion_Id) values ('08/06/2019', 'mauris', '0.50', 4);
insert into version (FechaLiberacion, Nombre, NumeroVersion, Aplicacion_Id) values ('16/10/2019', 'et', '0.7.7', 5);

--Tabla solicitante ID=[1..10]
insert into solicitante (Apellido, AreaOGerencia, CorreoElectronicoInstitucional, CorreoElectronicoPersonal, Direccion, Nombre, NumeroDoc, RolEnArea, TelefonoContacto, TipoDoc_Id, Usuario_Id) values ('Scone', 'Spragg', 'tspragg0@hc360.com', 'tspragg0@rediff.com', '7 Glendale Point', 'Tedmund', 'velit', 'natoque', '691-906-1115', 1, 6);
insert into solicitante (Apellido, AreaOGerencia, CorreoElectronicoInstitucional, CorreoElectronicoPersonal, Direccion, Nombre, NumeroDoc, RolEnArea, TelefonoContacto, TipoDoc_Id, Usuario_Id) values ('Haselhurst', 'Lumber', 'rlumber1@digg.com', 'rlumber1@newyorker.com', '934 Sundown Trail', 'Robyn', 'lorem', 'nulla', '214-849-2600', 2, 5);
insert into solicitante (Apellido, AreaOGerencia, CorreoElectronicoInstitucional, CorreoElectronicoPersonal, Direccion, Nombre, NumeroDoc, RolEnArea, TelefonoContacto, TipoDoc_Id, Usuario_Id) values ('Jephcote', 'Callf', 'zcallf2@joomla.org', 'zcallf2@goo.gl', '799 Dorton Pass', 'Zoe', 'cras', 'in', '891-751-3402', 3, 9);
insert into solicitante (Apellido, AreaOGerencia, CorreoElectronicoInstitucional, CorreoElectronicoPersonal, Direccion, Nombre, NumeroDoc, RolEnArea, TelefonoContacto, TipoDoc_Id, Usuario_Id) values ('Dunnico', 'Peckitt', 'apeckitt3@cdbaby.com', 'apeckitt3@hugedomains.com', '5317 Graedel Trail', 'Auria', 'eu', 'lorem', '644-675-9373', 1, 9);
insert into solicitante (Apellido, AreaOGerencia, CorreoElectronicoInstitucional, CorreoElectronicoPersonal, Direccion, Nombre, NumeroDoc, RolEnArea, TelefonoContacto, TipoDoc_Id, Usuario_Id) values ('Brunner', 'Cansdall', 'mcansdall4@google.co.uk', 'mcansdall4@mashable.com', '740 Steensland Hill', 'Mose', 'in', 'metus', '266-632-0987', 2, 10);
insert into solicitante (Apellido, AreaOGerencia, CorreoElectronicoInstitucional, CorreoElectronicoPersonal, Direccion, Nombre, NumeroDoc, RolEnArea, TelefonoContacto, TipoDoc_Id, Usuario_Id) values ('Burbudge', 'MacTrusty', 'tmactrusty5@unc.edu', 'tmactrusty5@newsvine.com', '8006 Bonner Junction', 'Tildie', 'habitasse', 'ipsum', '628-507-8466', 2, 9);
insert into solicitante (Apellido, AreaOGerencia, CorreoElectronicoInstitucional, CorreoElectronicoPersonal, Direccion, Nombre, NumeroDoc, RolEnArea, TelefonoContacto, TipoDoc_Id, Usuario_Id) values ('Patterfield', 'Smallthwaite', 'gsmallthwaite6@gizmodo.com', 'gsmallthwaite6@wix.com', '2128 Delaware Plaza', 'Gayle', 'pellentesque', 'lobortis', '194-587-1809', 2, 9);
insert into solicitante (Apellido, AreaOGerencia, CorreoElectronicoInstitucional, CorreoElectronicoPersonal, Direccion, Nombre, NumeroDoc, RolEnArea, TelefonoContacto, TipoDoc_Id, Usuario_Id) values ('Hackin', 'Hourston', 'ehourston7@angelfire.com', 'ehourston7@amazon.de', '99082 Lawn Place', 'Ellene', 'scelerisque', 'lobortis', '487-809-2009', 1, 6);
insert into solicitante (Apellido, AreaOGerencia, CorreoElectronicoInstitucional, CorreoElectronicoPersonal, Direccion, Nombre, NumeroDoc, RolEnArea, TelefonoContacto, TipoDoc_Id, Usuario_Id) values ('Burge', 'Rarity', 'krarity8@bing.com', 'krarity8@businessweek.com', '3793 Del Sol Avenue', 'Korrie', 'enim', 'eget', '136-353-0329', 2, 6);
insert into solicitante (Apellido, AreaOGerencia, CorreoElectronicoInstitucional, CorreoElectronicoPersonal, Direccion, Nombre, NumeroDoc, RolEnArea, TelefonoContacto, TipoDoc_Id, Usuario_Id) values ('Renackowna', 'Law', 'hlaw9@usgs.gov', 'hlaw9@macromedia.com', '3125 Roxbury Parkway', 'Hazel', 'ut', 'ante', '495-236-6164', 1, 8);

--Tabla proyecto ID=[1..5]
insert into proyecto (FechaAlta, Nombre, NombreClave, Aplicacion_Id, Cliente_Id, Solicitante_Id, JefeDeProyecto_Id, LiderProyecto_Id) values ('25/01/2019', 'in', 'Yankee', 9, 6, 10, 1, 4);
insert into proyecto (FechaAlta, Nombre, NombreClave, Aplicacion_Id, Cliente_Id, Solicitante_Id, JefeDeProyecto_Id, LiderProyecto_Id) values ('10/10/2019', 'placerat', 'Mike', 7, 5, 4, 3, 5);
insert into proyecto (FechaAlta, Nombre, NombreClave, Aplicacion_Id, Cliente_Id, Solicitante_Id, JefeDeProyecto_Id, LiderProyecto_Id) values ('14/12/2018', 'fermentum', 'Kilo', 9, 4, 1, 2, 4);
insert into proyecto (FechaAlta, Nombre, NombreClave, Aplicacion_Id, Cliente_Id, Solicitante_Id, JefeDeProyecto_Id, LiderProyecto_Id) values ('30/09/2019', 'dictumst', 'India', 2, 9, 1, 1, 1);
insert into proyecto (FechaAlta, Nombre, NombreClave, Aplicacion_Id, Cliente_Id, Solicitante_Id, JefeDeProyecto_Id, LiderProyecto_Id) values ('01/11/2019', 'vitae', 'Mike', 7, 6, 9, 5, 1);

--Tabla solicitud_mantenimiento ID=[1..20]
insert into solicitud_mantenimiento (Descripcion, FechaCreacion, FechaNecesidad, Nombre, Creador_Id, Criticidad_Id, EstadoActual_Id, Plan_Id, Tipo_Id, Proyecto_Id) values ('amet', '26/11/2018', '12/08/2019', 'dui', 6, 4, 2, 6, 5, 3);
insert into solicitud_mantenimiento (Descripcion, FechaCreacion, FechaNecesidad, Nombre, Creador_Id, Criticidad_Id, EstadoActual_Id, Plan_Id, Tipo_Id, Proyecto_Id) values ('vitae', '28/05/2019', '16/09/2019', 'non', 6, 3, 2, 10, 5, 5);
insert into solicitud_mantenimiento (Descripcion, FechaCreacion, FechaNecesidad, Nombre, Creador_Id, Criticidad_Id, EstadoActual_Id, Plan_Id, Tipo_Id, Proyecto_Id) values ('nunc', '06/09/2019', '22/02/2019', 'in', 5, 5, 5, 4, 3, 4);
insert into solicitud_mantenimiento (Descripcion, FechaCreacion, FechaNecesidad, Nombre, Creador_Id, Criticidad_Id, EstadoActual_Id, Plan_Id, Tipo_Id, Proyecto_Id) values ('tempus', '22/01/2019', '27/09/2019', 'justo', 2, 4, 2, 8, 4, 2);
insert into solicitud_mantenimiento (Descripcion, FechaCreacion, FechaNecesidad, Nombre, Creador_Id, Criticidad_Id, EstadoActual_Id, Plan_Id, Tipo_Id, Proyecto_Id) values ('ut', '19/12/2018', '10/04/2019', 'vitae', 10, 3, 4, 6, 4, 1);
insert into solicitud_mantenimiento (Descripcion, FechaCreacion, FechaNecesidad, Nombre, Creador_Id, Criticidad_Id, EstadoActual_Id, Plan_Id, Tipo_Id, Proyecto_Id) values ('vestibulum', '31/08/2019', '30/03/2019', 'convallis', 3, 5, 4, 9, 1, 5);
insert into solicitud_mantenimiento (Descripcion, FechaCreacion, FechaNecesidad, Nombre, Creador_Id, Criticidad_Id, EstadoActual_Id, Plan_Id, Tipo_Id, Proyecto_Id) values ('dui', '05/09/2019', '28/03/2019', 'etiam', 2, 5, 4, 9, 2, 3);
insert into solicitud_mantenimiento (Descripcion, FechaCreacion, FechaNecesidad, Nombre, Creador_Id, Criticidad_Id, EstadoActual_Id, Plan_Id, Tipo_Id, Proyecto_Id) values ('proin', '09/05/2019', '23/03/2019', 'praesent', 10, 2, 7, 1, 2, 2);
insert into solicitud_mantenimiento (Descripcion, FechaCreacion, FechaNecesidad, Nombre, Creador_Id, Criticidad_Id, EstadoActual_Id, Plan_Id, Tipo_Id, Proyecto_Id) values ('venenatis', '03/02/2019', '04/08/2019', 'mi', 2, 4, 6, 7, 4, 3);
insert into solicitud_mantenimiento (Descripcion, FechaCreacion, FechaNecesidad, Nombre, Creador_Id, Criticidad_Id, EstadoActual_Id, Plan_Id, Tipo_Id, Proyecto_Id) values ('semper', '14/04/2019', '12/02/2019', 'sed', 6, 5, 10, 2, 2, 3);
insert into solicitud_mantenimiento (Descripcion, FechaCreacion, FechaNecesidad, Nombre, Creador_Id, Criticidad_Id, EstadoActual_Id, Plan_Id, Tipo_Id, Proyecto_Id) values ('at', '22/05/2019', '29/12/2018', 'odio', 8, 2, 11, 7, 2, 3);
insert into solicitud_mantenimiento (Descripcion, FechaCreacion, FechaNecesidad, Nombre, Creador_Id, Criticidad_Id, EstadoActual_Id, Plan_Id, Tipo_Id, Proyecto_Id) values ('suscipit', '17/05/2019', '23/11/2018', 'et', 10, 5, 7, 5, 4, 4);
insert into solicitud_mantenimiento (Descripcion, FechaCreacion, FechaNecesidad, Nombre, Creador_Id, Criticidad_Id, EstadoActual_Id, Plan_Id, Tipo_Id, Proyecto_Id) values ('mattis', '17/05/2019', '22/12/2018', 'tellus', 6, 3, 4, 7, 1, 4);
insert into solicitud_mantenimiento (Descripcion, FechaCreacion, FechaNecesidad, Nombre, Creador_Id, Criticidad_Id, EstadoActual_Id, Plan_Id, Tipo_Id, Proyecto_Id) values ('vestibulum', '16/09/2019', '03/04/2019', 'et', 4, 5, 6, 1, 1, 3);
insert into solicitud_mantenimiento (Descripcion, FechaCreacion, FechaNecesidad, Nombre, Creador_Id, Criticidad_Id, EstadoActual_Id, Plan_Id, Tipo_Id, Proyecto_Id) values ('lacinia', '24/12/2018', '02/09/2019', 'a', 10, 5, 4, 5, 2, 3);
insert into solicitud_mantenimiento (Descripcion, FechaCreacion, FechaNecesidad, Nombre, Creador_Id, Criticidad_Id, EstadoActual_Id, Plan_Id, Tipo_Id, Proyecto_Id) values ('tristique', '20/04/2019', '04/11/2019', 'id', 7, 3, 4, 5, 5, 5);
insert into solicitud_mantenimiento (Descripcion, FechaCreacion, FechaNecesidad, Nombre, Creador_Id, Criticidad_Id, EstadoActual_Id, Plan_Id, Tipo_Id, Proyecto_Id) values ('cum', '15/05/2019', '26/12/2018', 'elementum', 2, 5, 11, 3, 4, 1);
insert into solicitud_mantenimiento (Descripcion, FechaCreacion, FechaNecesidad, Nombre, Creador_Id, Criticidad_Id, EstadoActual_Id, Plan_Id, Tipo_Id, Proyecto_Id) values ('vel', '04/02/2019', '21/11/2018', 'hac', 9, 5, 3, 10, 3, 4);
insert into solicitud_mantenimiento (Descripcion, FechaCreacion, FechaNecesidad, Nombre, Creador_Id, Criticidad_Id, EstadoActual_Id, Plan_Id, Tipo_Id, Proyecto_Id) values ('blandit', '18/05/2019', '30/12/2018', 'non', 2, 2, 6, 8, 3, 4);
insert into solicitud_mantenimiento (Descripcion, FechaCreacion, FechaNecesidad, Nombre, Creador_Id, Criticidad_Id, EstadoActual_Id, Plan_Id, Tipo_Id, Proyecto_Id) values ('curabitur', '22/07/2019', '08/04/2019', 'quam', 4, 3, 5, 8, 4, 3);


--Tabla historial_estado_solicitud ID=[1..20]
insert into historial_estado_solicitud (FechaHoraDesde, FechaHoraHasta, Estado_Id, SolicitudMantenimiento_Id) values ('06/05/2019', '19/01/2019', 3, 15);
insert into historial_estado_solicitud (FechaHoraDesde, FechaHoraHasta, Estado_Id, SolicitudMantenimiento_Id) values ('14/10/2019', '10/12/2018', 6, 10);
insert into historial_estado_solicitud (FechaHoraDesde, FechaHoraHasta, Estado_Id, SolicitudMantenimiento_Id) values ('13/04/2019', '21/05/2019', 8, 14);
insert into historial_estado_solicitud (FechaHoraDesde, FechaHoraHasta, Estado_Id, SolicitudMantenimiento_Id) values ('10/01/2019', '17/02/2019', 8, 3);
insert into historial_estado_solicitud (FechaHoraDesde, FechaHoraHasta, Estado_Id, SolicitudMantenimiento_Id) values ('25/05/2019', '29/04/2019', 11, 11);
insert into historial_estado_solicitud (FechaHoraDesde, FechaHoraHasta, Estado_Id, SolicitudMantenimiento_Id) values ('01/05/2019', '04/05/2019', 9, 18);
insert into historial_estado_solicitud (FechaHoraDesde, FechaHoraHasta, Estado_Id, SolicitudMantenimiento_Id) values ('07/03/2019', '24/04/2019', 9, 3);
insert into historial_estado_solicitud (FechaHoraDesde, FechaHoraHasta, Estado_Id, SolicitudMantenimiento_Id) values ('17/09/2019', '27/11/2018', 5, 13);
insert into historial_estado_solicitud (FechaHoraDesde, FechaHoraHasta, Estado_Id, SolicitudMantenimiento_Id) values ('18/07/2019', '16/09/2019', 7, 9);
insert into historial_estado_solicitud (FechaHoraDesde, FechaHoraHasta, Estado_Id, SolicitudMantenimiento_Id) values ('06/01/2019', '01/12/2018', 7, 9);
insert into historial_estado_solicitud (FechaHoraDesde, FechaHoraHasta, Estado_Id, SolicitudMantenimiento_Id) values ('17/01/2019', '26/04/2019', 11, 11);
insert into historial_estado_solicitud (FechaHoraDesde, FechaHoraHasta, Estado_Id, SolicitudMantenimiento_Id) values ('19/01/2019', '23/06/2019', 10, 20);
insert into historial_estado_solicitud (FechaHoraDesde, FechaHoraHasta, Estado_Id, SolicitudMantenimiento_Id) values ('30/09/2019', '20/09/2019', 6, 14);
insert into historial_estado_solicitud (FechaHoraDesde, FechaHoraHasta, Estado_Id, SolicitudMantenimiento_Id) values ('14/01/2019', '11/02/2019', 5, 13);
insert into historial_estado_solicitud (FechaHoraDesde, FechaHoraHasta, Estado_Id, SolicitudMantenimiento_Id) values ('30/11/2018', '09/08/2019', 9, 8);
insert into historial_estado_solicitud (FechaHoraDesde, FechaHoraHasta, Estado_Id, SolicitudMantenimiento_Id) values ('24/12/2018', '09/11/2019', 8, 15);
insert into historial_estado_solicitud (FechaHoraDesde, FechaHoraHasta, Estado_Id, SolicitudMantenimiento_Id) values ('03/03/2019', '01/12/2018', 11, 4);
insert into historial_estado_solicitud (FechaHoraDesde, FechaHoraHasta, Estado_Id, SolicitudMantenimiento_Id) values ('24/08/2019', '28/01/2019', 10, 20);
insert into historial_estado_solicitud (FechaHoraDesde, FechaHoraHasta, Estado_Id, SolicitudMantenimiento_Id) values ('04/05/2019', '22/04/2019', 2, 9);
insert into historial_estado_solicitud (FechaHoraDesde, FechaHoraHasta, Estado_Id, SolicitudMantenimiento_Id) values ('19/12/2018', '05/11/2019', 3, 11);
insert into historial_estado_solicitud (FechaHoraDesde, FechaHoraHasta, Estado_Id, SolicitudMantenimiento_Id) values ('11/07/2019', '15/04/2019', 2, 13);
insert into historial_estado_solicitud (FechaHoraDesde, FechaHoraHasta, Estado_Id, SolicitudMantenimiento_Id) values ('28/12/2018', '24/05/2019', 8, 13);
insert into historial_estado_solicitud (FechaHoraDesde, FechaHoraHasta, Estado_Id, SolicitudMantenimiento_Id) values ('12/06/2019', '06/07/2019', 10, 2);
insert into historial_estado_solicitud (FechaHoraDesde, FechaHoraHasta, Estado_Id, SolicitudMantenimiento_Id) values ('14/10/2019', '21/01/2019', 4, 7);
insert into historial_estado_solicitud (FechaHoraDesde, FechaHoraHasta, Estado_Id, SolicitudMantenimiento_Id) values ('03/08/2019', '16/11/2018', 4, 1);
insert into historial_estado_solicitud (FechaHoraDesde, FechaHoraHasta, Estado_Id, SolicitudMantenimiento_Id) values ('20/02/2019', '24/08/2019', 3, 4);
insert into historial_estado_solicitud (FechaHoraDesde, FechaHoraHasta, Estado_Id, SolicitudMantenimiento_Id) values ('03/06/2019', '13/03/2019', 6, 18);
insert into historial_estado_solicitud (FechaHoraDesde, FechaHoraHasta, Estado_Id, SolicitudMantenimiento_Id) values ('27/10/2019', '04/09/2019', 8, 7);
insert into historial_estado_solicitud (FechaHoraDesde, FechaHoraHasta, Estado_Id, SolicitudMantenimiento_Id) values ('20/12/2018', '02/07/2019', 5, 11);
insert into historial_estado_solicitud (FechaHoraDesde, FechaHoraHasta, Estado_Id, SolicitudMantenimiento_Id) values ('11/08/2019', '08/06/2019', 10, 10);
insert into historial_estado_solicitud (FechaHoraDesde, FechaHoraHasta, Estado_Id, SolicitudMantenimiento_Id) values ('08/04/2019', '03/11/2019', 11, 20);
insert into historial_estado_solicitud (FechaHoraDesde, FechaHoraHasta, Estado_Id, SolicitudMantenimiento_Id) values ('13/11/2019', '08/12/2018', 2, 10);
insert into historial_estado_solicitud (FechaHoraDesde, FechaHoraHasta, Estado_Id, SolicitudMantenimiento_Id) values ('19/03/2019', '08/07/2019', 2, 16);
insert into historial_estado_solicitud (FechaHoraDesde, FechaHoraHasta, Estado_Id, SolicitudMantenimiento_Id) values ('05/06/2019', '30/01/2019', 4, 10);
insert into historial_estado_solicitud (FechaHoraDesde, FechaHoraHasta, Estado_Id, SolicitudMantenimiento_Id) values ('06/09/2019', '10/08/2019', 8, 6);
insert into historial_estado_solicitud (FechaHoraDesde, FechaHoraHasta, Estado_Id, SolicitudMantenimiento_Id) values ('23/04/2019', '07/05/2019', 9, 8);
insert into historial_estado_solicitud (FechaHoraDesde, FechaHoraHasta, Estado_Id, SolicitudMantenimiento_Id) values ('07/06/2019', '27/12/2018', 2, 8);
insert into historial_estado_solicitud (FechaHoraDesde, FechaHoraHasta, Estado_Id, SolicitudMantenimiento_Id) values ('17/08/2019', '11/05/2019', 2, 1);
insert into historial_estado_solicitud (FechaHoraDesde, FechaHoraHasta, Estado_Id, SolicitudMantenimiento_Id) values ('04/04/2019', '25/03/2019', 3, 10);
insert into historial_estado_solicitud (FechaHoraDesde, FechaHoraHasta, Estado_Id, SolicitudMantenimiento_Id) values ('28/01/2019', '08/07/2019', 10, 19);