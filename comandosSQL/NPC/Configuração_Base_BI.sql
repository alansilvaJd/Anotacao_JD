Parâmetros Base BI 
Neses parâmetros, definimos se o envio é via Arquivo ou mensagem.

A - Arquivo
M - Mensagem

SELECT * FROM TBJDPAR_PARAMETROGERAL WHERE PARAMETRO = 'MECAN_ENVIO_BAIXAOP' --consulta ser baixa
SELECT * FROM TBJDPAR_PARAMETROGERAL WHERE PARAMETRO = 'MECAN_ENVIO_CONSTIT' --consulta ser via arquivo
select * from  TBJDPAR_PARAMETROGERAL WHERE CDGRUPO = 'INTBI'

update TBJDPAR_PARAMETROGERAL
Set VLRPARAM='A'
WHERE DESCRICAO='Mecanismo de Envio das Requisições de Consulta de Títulos na Integração BI'
