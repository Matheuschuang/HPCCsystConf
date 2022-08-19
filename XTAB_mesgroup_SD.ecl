IMPORT $, STD;

// Valor gasto no seguro defeso para cada mês

mes_layout := RECORD
	$.RecordsOtimizadasTema4.New_File_Seguro_Defeso_append.mes_referencia;
	INTEGER total := SUM(GROUP,$.RecordsOtimizadasTema4.New_File_Seguro_Defeso_append.valor_parcela);
	INTEGER cnt := COUNT(GROUP);
	REAL average_paid_per_month := AVE(GROUP,$.RecordsOtimizadasTema4.New_File_Seguro_Defeso_append.valor_parcela);
END;

EXPORT XTAB_mesgroup_SD := TABLE($.RecordsOtimizadasTema4.New_File_Seguro_Defeso_append, mes_layout, mes_referencia);