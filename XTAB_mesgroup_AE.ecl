IMPORT $, STD;

// Valor gasto no auxilio emergencial para cada mês

mes_layout := RECORD
	$.RecordsOtimizadasTema4.New_File_Auxilio_Emergencial_append.mes_disponibilizacao;
	INTEGER total := SUM(GROUP,$.RecordsOtimizadasTema4.New_File_Auxilio_Emergencial_append.valor_beneficio);
	INTEGER cnt := COUNT(GROUP);
	REAL average_paid_per_month := AVE(GROUP,$.RecordsOtimizadasTema4.New_File_Auxilio_Emergencial_append.valor_beneficio)
END;

EXPORT XTAB_mesgroup_AE := TABLE($.RecordsOtimizadasTema4.New_File_Auxilio_Emergencial_append, mes_layout, mes_disponibilizacao);