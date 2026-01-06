Tabela de Log:
SELECT * FROM TBJDLOG_ERROS
  
Truncante da tabela de log:
truncate table TBJDLOG_ERROS

Consulta da tabela destinatária express : 
SELECT * FROM TBJDNPCDST_TIT_OPER where NUMIDENTCTIT = '2025071500702135'     //Filtro por identificação Titulo
SELECT * FROM TBJDNPCDST_TIT_OPER where NOSSONUM = '202512160000000001'       //Filtro pelo número bancário do título
SELECT * FROM TBJDNPCDST_TIT_OPER where IDTITULOLEG = '20251112160122020002'  // Filtro pelo id do título
SELECT * FROM TBJDNPCDST_TIT_OPER order by DTEMISSAO desc                     // filtro ordenado por Data de emissão.
SELECT * FROM TBJDNPCDST_TIT_BAIXA_OPER where NUMIDENTCTIT='2025121900070241001' // Tabela de titulos baixados

Consulta da tabela Situação :
Select * from TBJDNPC_SITUACAO WHERE CD_SITUACAO='OI9' --'Incluída com sucesso. Aguardando envio para CIP'
Select * from TBJDNPC_SITUACAO WHERE CD_SITUACAO='OV9' --'Validado com Sucesso'
Select * from TBJDNPC_SITUACAO WHERE CD_SITUACAO='OT9' --'Enviada CIP - Aguardando Resposta'             --transmissor dando certo nos outros cenários.
Select * from TBJDNPC_SITUACAO WHERE CD_SITUACAO='CT9' --'Cancelamento Enviado/Transmitido com Sucesso'  --transmissor dando certo no cancelamento
Select * from TBJDNPC_SITUACAO WHERE CD_SITUACAO='OC9' --'Aceito na CIP'
Select * from TBJDNPC_SITUACAO WHERE CD_SITUACAO='OB9' --'Enviado para a Base Integradora'  
Select * from TBJDNPC_SITUACAO WHERE CD_SITUACAO='CA9' --'Cancelamento Aceito'  
Consulta 
--Envio Arquivo
SELECT * FROM TBJDNPCCIP_ARQ_TRANS order by DT_REGISTRO DESC
--Recebimento Arquivo
SELECT * FROM TBJDNPCCIP_ARQ_REC order by ID_ARQV_REC DESC


------------------------------------------------------------------------------------------------------------------
  Recebimento de retorno mais de uma vez, precisa deletar alguns registros.
  
  consultar o id aqui : 
  SELECT * FROM TBJDNPCCIP_ARQ_REC order by DT_REGISTRO DESC

  deletar ele, usando os dois comandos abaixo : 
  delete from TBJDNPCCIP_ARQ_REC_LG where ID_ARQV_REC='72351'
  delete from TBJDNPCCIP_ARQ_REC where ID_ARQV_REC='72351'
-----------------------------------------------------------------------------------------------------------------

Permissão usuário : 

SELECT * FROM TBJDACE_CLASSEXUSUARIO where CDSISTEMA = 'NPC'
--update TBJDACE_CLASSEXUSUARIO set sitclassexusuario = 'A'
SELECT * FROM TBJDACE_DADOSUSUARIO
SELECT * FROM TBJDACE_PJUSUARIO
SELECT * FROM TBJDACE_SITCLASSEXUSUARIO
SELECT * FROM TBJDACE_SITPJUSUARIO
SELECT * FROM TBJDACE_SITUSUARIO
SELECT * FROM TBJDACE_USUARIO
--update TBJDACE_USUARIO set situsuario = 'A'

usuário padrão usuário : master senha : 123
