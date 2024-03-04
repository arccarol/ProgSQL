USE master 
DROP DATABASE ProgSql
CREATE DATABASE ProgSql
GO 
USE ProgSql

DECLARE @fat INT
DECLARE @cont INT
SET @fat = 1
SET @cont = 1
WHILE (@cont < 13)
BEGIN
    SET @fat = @fat * @cont 
	PRINT @fat
	SET @cont = @cont + 1
END

DECLARE @A FLOAT, @B FLOAT, @C FLOAT
DECLARE @delta FLOAT, @raizDelta FLOAT
DECLARE @x1 FLOAT 
DECLARE @x2 FLOAT
SET @A = 1
SET @B = -3
SET @C = 2
SET @delta = @B * @B - 4 * @A * @C
IF @delta > 0
BEGIN
    SET @raizDelta = SQRT(@delta)
    SET @x1 = (-@B + @raizDelta) / (2 * @A)
    SET @x2 = (-@B - @raizDelta) / (2 * @A)
    PRINT 'Existem duas raízes reais:'
    PRINT 'x1 = ' + CAST(@x1 AS VARCHAR(50))
    PRINT 'x2 = ' + CAST(@x2 AS VARCHAR(50))
END
ELSE IF @delta = 0
BEGIN
    SET @x1 = -@B / (2 * @A)
    PRINT 'Existe uma raiz real:'
    PRINT 'x = ' + CAST(@x1 AS VARCHAR(50))
END
ELSE
BEGIN
    PRINT 'Não existem raízes reais.'
END

DECLARE @ana DECIMAL(5,2)
DECLARE @maria DECIMAL(5,2)
DECLARE @ano INT
SET @ana = 1.10
SET @maria = 1.50
SET @ano = 0
WHILE (@ana < @maria) 
BEGIN
	  SET @ana = @ana + 0.03
	  SET @maria = @maria + 0.02
	  SET @ano = @ano + 1
END
     PRINT @ano

    
DECLARE @num VARCHAR
DECLARE @num2 VARCHAR
DECLARE @cont1 INT
SET @num = 1
SET @num2 = 4
SET @cont1 = 1
WHILE (@cont1 < 5)
BEGIN
    PRINT @num + ',' + @num2 + ',' + @num2
    SET @num = @num + 1
	SET @num2 = @num2 + 1
	SET @cont1 = @cont1 + 1
END

DROP TABLE produto
CREATE TABLE produto(
codigo INT NOT NULL,
nome VARCHAR(30) NOT NULL,
valor DECIMAL(7,2) NOT NULL,
vencimento date NOT NULL
PRIMARY KEY(codigo)
)

DECLARE @codigo	INT
DECLARE @cont3 INT
SET @codigo = 50001
SET @cont3 = 1
WHILE (@cont3 <= 50)
BEGIN
	INSERT INTO produto VALUES
	(@codigo, 'Produto ' + CAST(@cont AS VARCHAR(5)), CAST(RAND() * 100.000 + 10.000 AS INT), GETDATE() + CAST(RAND() * 7 + 3 AS INT) )

	SET @codigo = @codigo + 1
	SET @cont3 = @cont3 + 1

END
   SELECT * FROM Produto






