SELECT
  D.COD,
  D.SITUACAO,
  D.SOLICITANTE,
  D.PROBLEMA,
  D.DATA,
  D.INTERACAO,
  D.DIAS,
  D.TECNICO,
  D.CHA_STATUS
FROM (
    SELECT
       CHA.CHA_CODIGO COD, 
       DECODE(CHA.CHA_SITUACAO,'AB','ABERTO','AG','AGUARDANDO','AN','EM ANDAMENTO','OK','FINALIZADO','SD','SOLIC. DESENV.') SITUACAO,
       USU.USU_NOME SOLICITANTE,
       CHA.CHA_PROBLEMA PROBLEMA,
       TO_DATE(CHA.CHA_INCLUIDATA, 'DD/MM/RRRR') DATA,
       TO_DATE(CHA.CHA_ALTERADATA, 'DD/MM/RRRR') INTERACAO,
       TO_DATE(SYSDATE,'DD/MM/RRRR') - TO_DATE(CHA.CHA_INCLUIDATA,'DD/MM/RRRR') DIAS,
       CHA.CHA_TECNICO TECNICO,
     CASE 
       WHEN  CHA.CHA_DEPARTAMENTO IN (2,3,4) AND CHA.CHA_TECNICO IS NULL               AND CHA.CHA_SITUACAO = 'AB' THEN 1 --ABERTO
       WHEN (CHA.CHA_TECNICO =       :NOME OR CHA.CHA_ALTERAPOR = :NOME)               AND CHA.CHA_SITUACAO = 'AG' THEN 2 --AGUARDANDO
       WHEN (CHA.CHA_TECNICO =       :NOME OR CHA.CHA_ALTERAPOR = :NOME)               AND CHA.CHA_SITUACAO = 'AN' THEN 3 --ANDAMENTO
       WHEN (CHA.CHA_FINALIZADOPOR = :NOME AND CHA.CHA_TECNICO =  :NOME)               AND CHA.CHA_SITUACAO = 'OK' THEN 4 --FINALIZADO
     ELSE 0 END CHA_STATUS
    FROM CHAMADO CHA
    INNER JOIN USUARIO USU ON (USU.USU_CODIGO = CHA.USU_CODIGO)
   ORDER BY CHA.CHA_INCLUIDATA
) D
WHERE D.CHA_STATUS = :STATUS;
