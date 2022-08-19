IMPORT $,STD;

// Auxilio Emergencial

new_layout := RECORD
  UNSIGNED recid;
  // STRING beneficio;
	$.RecordsOtimizadasTema4.NewLayoutAuxilioEmergencial;
END;

new_layout MyTransf($.RecordsOtimizadasTema4.NewLayoutAuxilioEmergencial Le, UNSIGNED cnt) := TRANSFORM
	SELF.recid := cnt;
	// SELF.beneficio := 'AE';
  SELF := Le;
END;

newds := PROJECT($.RecordsOtimizadasTema4.New_File_Auxilio_Emergencial_append ,MyTransf(LEFT,COUNTER));

// OUTPUT(newds,NAMED('row_id_added'));

sortds := SORT(newds,nome_beneficiario);

// OUTPUT(sortds,NAMED('sorted'));

AuxEmergTable := TABLE(sortds,{nis_beneficiario,nome_beneficiario});

// OUTPUT(AuxEmergTable, NAMED('tabela_nao_formatada'));

beneficiario_auxilio_emergencial := DEDUP(AuxEmergTable, nome_beneficiario);

OUTPUT(beneficiario_auxilio_emergencial, NAMED('beneficiario_auxilio_emergencial'));

// SEGURO DEFESO

new_layoutsd := RECORD
  UNSIGNED recid;
	// STRING2 beneficio;
	$.RecordsOtimizadasTema4.NewLayoutSeguroDefeso;
END;

new_layoutsd MyTransfsd($.RecordsOtimizadasTema4.NewLayoutSeguroDefeso Le, UNSIGNED cnt) := TRANSFORM
	SELF.recid := cnt;
	// SELF.beneficio := 'SD';
  SELF := Le;
END;

newdssd := PROJECT($.RecordsOtimizadasTema4.New_File_Seguro_Defeso_append ,MyTransfsd(LEFT,COUNTER));

// OUTPUT(newdssd,NAMED('row_id_added'));

sortdssd := SORT(newdssd,nome_favorecido);

// OUTPUT(sortdssd,NAMED('sorted'));

segurodefesotable := TABLE(sortdssd,{nis_favorecido,nome_favorecido});

// OUTPUT(segurodefesotable, NAMED('tabela_nao_formatada'));

favorecido_seguro_defeso := DEDUP(segurodefesotable, nome_favorecido);

OUTPUT(favorecido_seguro_defeso, NAMED('favorecido_seguro_defeso'));

// JOIN

outrec := RECORD
	$.RecordsOtimizadasTema4.NewLayoutSeguroDefeso.nis_favorecido;
	$.RecordsOtimizadasTema4.NewLayoutSeguroDefeso.nome_favorecido;
	$.RecordsOtimizadasTema4.NewLayoutAuxilioEmergencial.nome_beneficiario;
END;

// outrec := RECORD
	// NIS := $.RecordsOtimizadasTema4.New_File_Seguro_Defeso.nis_favorecido;
	// NAME_SD := $.RecordsOtimizadasTema4.New_File_Seguro_Defeso.nome_favorecido;
	// NAME_AE := $.RecordsOtimizadasTema4.New_File_Auxilio_Emergencial.nome_beneficiario;
// END;

outrec join_transf(favorecido_seguro_defeso Le, beneficiario_auxilio_emergencial Ri) := TRANSFORM
	SELF := Le;
	SELF := Ri;
END;

joinedrecs := JOIN(favorecido_seguro_defeso, beneficiario_auxilio_emergencial, LEFT.nis_favorecido=RIGHT.nis_beneficiario, join_transf(LEFT,RIGHT));

OUTPUT(SORT(joinedrecs,nome_favorecido), NAMED('JOIN'));
OUTPUT(COUNT(joinedrecs), NAMED('total_observations'));
OUTPUT(joinedrecs(joinedrecs.nome_beneficiario = joinedrecs.nome_favorecido),NAMED('consistent'));
OUTPUT(COUNT(joinedrecs(joinedrecs.nome_beneficiario = joinedrecs.nome_favorecido)), NAMED('count_of_consistent'));
OUTPUT(joinedrecs(joinedrecs.nome_beneficiario <> joinedrecs.nome_favorecido),NAMED('inconsistent'));
OUTPUT(COUNT(joinedrecs(joinedrecs.nome_beneficiario <> joinedrecs.nome_favorecido)), NAMED('count_of_inconsistent'));

// Adding boolean column

// new_layout_compare := RECORD
	// STRING14 NIS;
	// STRING42 NOME_SD;
	// STRING42 NOME_AE;
	// BOOLEAN IS_EQUAL;
// END;

// new_layout_compare add_boolean_field(outrec Le) := TRANSFORM
	// SELF.NIS := joinedrecs.nis_favorecido;
	// SELF.NOME_SD := joinedrecs.nome_favorecido;
	// SELF.NOME_AE := joinedrecs.nome_beneficiario;
	// SELF.IS_EQUAL := joinedrecs.nome_favorecido = joinedrecs.nome_beneficiario;
// END;

// compare_data_set := PROJECT(joinedrecs,add_boolean_field(LEFT));

// OUTPUt(compare_data_set, NAMED('compared'));
