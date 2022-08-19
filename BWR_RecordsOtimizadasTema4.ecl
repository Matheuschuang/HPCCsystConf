IMPORT $, STD;

// Dataset outputs and profile results

// OUTPUT($.RecordsOtimizadasTema4.New_File_Seguro_Defeso,NAMED('seguro_defeso'));

// OUTPUT($.RecordsOtimizadasTema4.New_File_Auxilio_Emergencial,NAMED('auxilio_emergencial'));

// OUTPUT($.RecordsOtimizadasTema4.New_File_Seguro_Defeso_append,NAMED('seguro_defeso_append'));

OUTPUT($.XTAB_mesgroup_SD, NAMED('value_table_SD'),ALL);

OUTPUT($.XTAB_mesgroup_AE, NAMED('value_table_AE'));

OUTPUT($.XTAB_UFgroup_SD, NAMED('UF_month_grouped_SD'));

// profileResults_SeguroDefeso := STD.DataPatterns.Profile($.RecordsOtimizadasTema4.New_File_Seguro_Defeso);
// profileResults_AuxilioEmergencial := STD.DataPatterns.Profile($.RecordsOtimizadasTema4.New_File_Auxilio_Emergencial);

// OUTPUT(profileResults_SeguroDefeso, NAMED('seguro_defeso'));
// OUTPUT(COUNT($.RecordsOtimizadasTema4.New_File_Seguro_Defeso), NAMED('countSD'));
// OUTPUT(profileResults_AuxilioEmergencial, NAMED('auxilio_emergencial'));
// OUTPUT(COUNT($.RecordsOtimizadasTema4.New_File_Auxilio_Emergencial),NAMED('countAE'));

// OUTPUT(SUM($.RecordsOtimizadasTema4.New_File_Seguro_Defeso,$.RecordsOtimizadasTema4.New_File_Seguro_Defeso.valor_parcela), NAMED('valor_total_SD'));