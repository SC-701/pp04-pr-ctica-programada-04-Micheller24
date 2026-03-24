-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ObtenerVehiculos]
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

SELECT Vehiculo.id, Vehiculo.idModelo, Vehiculo.Color, Vehiculo.Placa, Vehiculo.Año, Vehiculo.Precio, Vehiculo.CorreoPropietario, Vehiculo.TelefonoPropietario, Modelos.Nombre, Marcas.Nombre AS Expr1
FROM     Vehiculo INNER JOIN
                  Modelos ON Vehiculo.idModelo = Modelos.id INNER JOIN
				  Marcas ON Modelos.idMarca = Marcas.id


END