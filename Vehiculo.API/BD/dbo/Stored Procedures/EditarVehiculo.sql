-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE EditarVehiculo
	(
    @Id UNIQUEIDENTIFIER,
    @IdModelo UNIQUEIDENTIFIER,
    @Placa VARCHAR(50),
    @Color VARCHAR(50),
    @Año INT,
    @Precio DECIMAL(18,2),
    @CorreoPropietario VARCHAR(100),
    @TelefonoPropietario VARCHAR(20)
)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    BEGIN TRANSACTION
	Update [dbo].[Vehiculo]
    SET
        [IdModelo] = @IdModelo,
        [Placa] = @Placa,
        [Color] = @Color,
        [Año] = @Año,
        [Precio] = @Precio,
        [CorreoPropietario] = @CorreoPropietario,
        [TelefonoPropietario] = @TelefonoPropietario
    WHERE [Id] = @Id;
    SELECT @Id
    COMMIT TRANSACTION
END