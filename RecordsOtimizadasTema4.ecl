EXPORT RecordsOtimizadasTema4 := MODULE
	
	EXPORT NewLayoutSeguroDefeso := RECORD
		UNSIGNED3 mes_referencia;
		STRING2 uf;
		STRING4 codigo_municipios_siafi;
		STRING nome_municipio;
		STRING38 cpf_favorecido;
		STRING14 nis_favorecido;
		UNSIGNED6 rgp_favorecido;
		STRING42 nome_favorecido;
		REAL8 valor_parcela;
	END;
	
	EXPORT New_File_Seguro_Defeso := DATASET ('~tema4::202201_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)));
	
	EXPORT New_File_Seguro_Defeso_append := DATASET ('~tema4::201301_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::201302_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::201303_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::201304_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::201305_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::201306_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::201307_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::201308_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::201309_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::201310_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::201311_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::201312_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::201401_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::201302_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::201403_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::201404_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::201405_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::201406_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::201407_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::201408_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::201409_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::201410_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::201411_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::201412_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::201501_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::201502_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::201503_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::201504_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::201505_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::201506_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::201507_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::201508_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::201509_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::201510_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::201511_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::201512_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::201601_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::201602_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::201603_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::201604_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::201605_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::201606_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::201607_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::201608_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::201609_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::201610_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::201611_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::201612_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::201701_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::201702_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::201703_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::201704_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::201705_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::201706_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::201707_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::201708_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::201709_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::201710_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::201711_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::201812_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::201801_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::201802_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::201803_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::201804_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::201805_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::201806_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::201807_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::201808_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::201809_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::201810_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::201811_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::201812_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::201901_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::201902_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::201903_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::201904_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::201905_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::201906_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::201907_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::201908_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::201909_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::201910_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::201911_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::201912_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::202001_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::202002_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::202003_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::202004_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::202005_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::202006_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::202007_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::202008_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::202009_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::202010_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::202011_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::202012_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::202101_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::202102_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::202103_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::202104_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::202105_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::202106_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::202107_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::202108_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::202109_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::202110_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::202111_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::202112_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::202201_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)))
	+ DATASET ('~tema4::202202_segurodefeso.csv', NewLayoutSeguroDefeso, csv(heading(1)));

	EXPORT NewLayoutAuxilioEmergencial := RECORD
		UNSIGNED3 mes_disponibilizacao;
		STRING2 uf;
		UNSIGNED4 codigo_municipio_ibge;
		STRING28 nome_municipio;
		STRING11 nis_beneficiario;
		STRING38 cpf_beneficiario;
		STRING42 nome_beneficiario;
		INTEGER6 nis_responsavel;
		STRING14 cpf_responsavel;
		STRING40 nome_responsavel;
		STRING13 enquadramento;
		STRING2 parcela;
		STRING32 observacao;
		REAL8 valor_beneficio;
	END;
	
	EXPORT New_File_Auxilio_Emergencial := DATASET ('~tema4::202201_auxilioemergencial.csv', NewLayoutAuxilioEmergencial, csv(heading(1)));

	EXPORT New_File_Auxilio_Emergencial_append := 
		// DATASET ('~tema4::202004_auxilioemergencial.csv', NewLayoutAuxilioEmergencial, csv(heading(1)))
	// +	DATASET ('~tema4::202005_auxilioemergencial.csv', NewLayoutAuxilioEmergencial, csv(heading(1)))
	// +	DATASET ('~tema4::202006_auxilioemergencial.csv', NewLayoutAuxilioEmergencial, csv(heading(1)))
	// +	DATASET ('~tema4::202007_auxilioemergencial.csv', NewLayoutAuxilioEmergencial, csv(heading(1)))
	// +	DATASET ('~tema4::202008_auxilioemergencial.csv', NewLayoutAuxilioEmergencial, csv(heading(1)))
	// +	DATASET ('~tema4::202009_auxilioemergencial.csv', NewLayoutAuxilioEmergencial, csv(heading(1)))
	// +	DATASET ('~tema4::202010_auxilioemergencial.csv', NewLayoutAuxilioEmergencial, csv(heading(1)))
	// +	DATASET ('~tema4::202011_auxilioemergencial.csv', NewLayoutAuxilioEmergencial, csv(heading(1)))
	// +	DATASET ('~tema4::202012_auxilioemergencial.csv', NewLayoutAuxilioEmergencial, csv(heading(1)))
	// +	DATASET ('~tema4::202101_auxilioemergencial.csv', NewLayoutAuxilioEmergencial, csv(heading(1)))
	// +	DATASET ('~tema4::202102_auxilioemergencial.csv', NewLayoutAuxilioEmergencial, csv(heading(1)))
	// +	DATASET ('~tema4::202103_auxilioemergencial.csv', NewLayoutAuxilioEmergencial, csv(heading(1)))
	// +	DATASET ('~tema4::202104_auxilioemergencial.csv', NewLayoutAuxilioEmergencial, csv(heading(1)))
	// +	DATASET ('~tema4::202105_auxilioemergencial.csv', NewLayoutAuxilioEmergencial, csv(heading(1)))
	// +	DATASET ('~tema4::202106_auxilioemergencial.csv', NewLayoutAuxilioEmergencial, csv(heading(1)))
	// +	DATASET ('~tema4::202107_auxilioemergencial.csv', NewLayoutAuxilioEmergencial, csv(heading(1)))
	// +	DATASET ('~tema4::202108_auxilioemergencial.csv', NewLayoutAuxilioEmergencial, csv(heading(1)))
	// +	DATASET ('~tema4::202109_auxilioemergencial.csv', NewLayoutAuxilioEmergencial, csv(heading(1)))
		DATASET ('~tema4::202110_auxilioemergencial.csv', NewLayoutAuxilioEmergencial, csv(heading(1)))
	+	DATASET ('~tema4::202111_auxilioemergencial.csv', NewLayoutAuxilioEmergencial, csv(heading(1)))
	+	DATASET ('~tema4::202112_auxilioemergencial.csv', NewLayoutAuxilioEmergencial, csv(heading(1)))
	+	DATASET ('~tema4::202201_auxilioemergencial.csv', NewLayoutAuxilioEmergencial, csv(heading(1)))
	+	DATASET ('~tema4::202202_auxilioemergencial.csv', NewLayoutAuxilioEmergencial, csv(heading(1)));

END;