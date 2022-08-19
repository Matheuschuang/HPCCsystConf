IMPORT $, STD;

UF_layout := RECORD
	$.RecordsOtimizadasTema4.New_File_Seguro_Defeso_append.UF;
	INTEGER cnt := COUNT(GROUP);
END;

EXPORT XTAB_UFgroup_SD := TABLE($.RecordsOtimizadasTema4.New_File_Seguro_Defeso_append, UF_layout, uf);