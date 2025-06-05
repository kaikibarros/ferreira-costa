--1. 

-- 2. verdadeiro
-- 3. verdadeiro
SELECT nome, sobrenome, salario AS Vencimentos
FROM funcionario;
-- 4. verdadeiro
SELECT *
FROM faixa_salario;

-- 5. o erro do comando abaixo está relacionado a utilização do x para multiplicação, Falta de vírgula entre colunas
-- SELECT
-- cod_funcionario, nome
-- salario x 13 SALARIO ANUAL
-- FROM funcionario;

-- comando correto: 
SELECT
  cod_funcionario,
  nome,
  salario * 13 AS "SALARIO ANUAL"
FROM funcionario;


--CAP 2

-- 1.
SELECT NOME, SALARIO
FROM FUNCIONARIO
WHERE SALARIO > 10000;

-- 2.
SELECT NOME, COD_CARGO
FROM FUNCIONARIO
WHERE COD_FUNCIONARIO = 107;

--3. 
SELECT NOME, SALARIO
FROM FUNCIONARIO
WHERE SALARIO NOT BETWEEN 12000 AND 6000;

--4 
SELECT NOME, SOBRENOME, COD_CARGO, SALARIO
FROM FUNCIONARIO
WHERE SOBRENOME IN ('Cabral', 'Martins')
ORDER BY SALARIO ASC;

--5.
SELECT NOME_DEPARTAMENTO, COD_LOCALIDADE
FROM DEPARTAMENTO
WHERE COD_LOCALIDADE IN (1700, 1800)
ORDER BY NOME_DEPARTAMENTO ASC;

--6.
SELECT 
    NOME AS FUNCIONARIO,
    COD_CARGO AS FUNCAO,
    SALARIO AS "SALARIO MENSAL"
FROM FUNCIONARIO
WHERE 
    SALARIO BETWEEN 3000 AND 7000
    AND COD_CARGO IN ('IT_PROG', 'VE_REP');



-- 10.
ACCEPT VALOR NUMBER PROMPT 'Informe o salário mínimo desejado: '

SELECT NOME, SALARIO
FROM FUNCIONARIO
WHERE SALARIO > &VALOR;

-- 11.

-- Código do gerente = :manager_code, ordenando pela coluna :order_column

SELECT NOME, SALARIO
FROM FUNCIONARIO
WHERE COD_FUNCIONARIO = : manager_code
ORDER BY : order_column;

-- Código do gerente = 103, ordenando pelo nome do funcionário:
SELECT NOME, SALARIO
FROM FUNCIONARIO
WHERE COD_FUNCIONARIO = 103
ORDER BY NOME;

-- Código do gerente = 100, ordenando pelo salário do funcionário
SELECT  NOME, SALARIO
FROM FUNCIONARIO
WHERE COD_FUNCIONARIO = 100
ORDER BY SALARIO;

-- Código do gerente = 149, ordenando pelo código do funcionário:
SELECT  NOME, SALARIO
FROM FUNCIONARIO
WHERE COD_FUNCIONARIO = 149
ORDER BY COD_FUNCIONARIO;


--12.
SELECT NOME
FROM FUNCIONARIO
WHERE SUBSTR(NOME, 3, 1) = 'r';

--13. 
SELECT NOME
FROM FUNCIONARIO
WHERE NOME LIKE '%a%' AND NOME LIKE '%e%';

--14.
-- ESTÁ RETORNANDO VAZIO
SELECT NOME, SALARIO  COD_CARGO
FROM FUNCIONARIO 
WHERE COD_CARGO IN ('Vendedor', 'Recursos Humanos')
AND SALARIO NOT IN (1200, 1500, 2000);


