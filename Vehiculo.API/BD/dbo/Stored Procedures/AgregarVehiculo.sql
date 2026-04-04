
CREATE PROCEDURE AgregarVehiculo
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
    SET NOCOUNT ON;

    BEGIN TRANSACTION

    INSERT INTO [dbo].[Vehiculo]
    (
        [Id],
        [IdModelo],
        [Placa],
        [Color],
        [Año],
        [Precio],
        [CorreoPropietario],
        [TelefonoPropietario]
    )
    VALUES
    (
        @Id,
        @IdModelo,
        @Placa,
        @Color,
        @Año,
        @Precio,
        @CorreoPropietario,
        @TelefonoPropietario
    );

    Select @Id
    COMMIT TRANSACTION
END