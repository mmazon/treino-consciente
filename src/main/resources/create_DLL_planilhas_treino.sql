
ALTER TABLE treino
ADD COLUMN dias_da_semana character varying(50);

ALTER TABLE treino
ADD COLUMN dias_da_semana_hiit character varying(50);

ALTER TABLE treino
ADD COLUMN dias_da_semana_hiit2 character varying(50);


CREATE TABLE modelo_exercicio
(
  id_modelo bigint,
  qtde_dias smallint,
  nome character varying(255),
  CONSTRAINT id_modelo_pkey PRIMARY KEY (id_modelo)
);

CREATE TABLE planilha_exercicio
(
  id_planilha_exercicio bigint,
  nome_planilha_exer character varying(255),
  id_modelo bigint,
  nome_exercicio character varying(255),
  link_exercicio character varying(255),
  obs text,
  metedo character varying(255),
  link_metedo character varying(255),
  series character varying(100),
  reps character varying(100),
  intervalo character varying(100),
  cadencia character varying(100),
  CONSTRAINT id_planilha_pkey PRIMARY KEY (id_planilha_exercicio),
  CONSTRAINT fk_metodo_modelo FOREIGN KEY (id_modelo)
      REFERENCES modelo_exercicio (id_modelo) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
);

CREATE TABLE planilha_treino
(
  id_planilha_treino bigint,
  id_treino bigint,
  nome_planilha_exer character varying(255),
  id_modelo bigint,
  nome_exercicio character varying(255),
  link_exercicio character varying(255),
  obs text,
  metedo character varying(255),
  link_metedo character varying(255),
  series character varying(100),
  reps character varying(100),
  intervalo character varying(100),
  cadencia character varying(100),
  CONSTRAINT id_planilha_treino_pkey PRIMARY KEY (id_planilha_treino),
  CONSTRAINT fk_planilha_modelo FOREIGN KEY (id_modelo)
      REFERENCES modelo_exercicio (id_modelo) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT fk_treino_planilha FOREIGN KEY (id_treino)
      REFERENCES treino (id_treino) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
);

CREATE SEQUENCE modelo_exercicio_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE modelo_exercicio_seq
  OWNER TO postgres;

CREATE SEQUENCE planilha_treino_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE planilha_treino_seq
  OWNER TO postgres;

CREATE SEQUENCE planilha_exercicio_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE planilha_exercicio_seq
  OWNER TO postgres;



INSERT INTO public.modelo_exercicio(
            id_modelo, qtde_dias, nome)
    VALUES (nextval('modelo_exercicio_seq'), 1, '1 PC A1');

INSERT INTO public.modelo_exercicio(
            id_modelo, qtde_dias, nome)
    VALUES (nextval('modelo_exercicio_seq'), 1, '2 FC A1');

INSERT INTO public.modelo_exercicio(
            id_modelo, qtde_dias, nome)
    VALUES (nextval('modelo_exercicio_seq'), 1, '3 FC A1');

INSERT INTO public.modelo_exercicio(
            id_modelo, qtde_dias, nome)
    VALUES (nextval('modelo_exercicio_seq'), 1, '4 FC A1');

INSERT INTO public.modelo_exercicio(
            id_modelo, qtde_dias, nome)
    VALUES (nextval('modelo_exercicio_seq'), 1, '5 FC A1');

INSERT INTO public.modelo_exercicio(
            id_modelo, qtde_dias, nome)
    VALUES (nextval('modelo_exercicio_seq'), 1, '6 OV A1');

INSERT INTO public.modelo_exercicio(
            id_modelo, qtde_dias, nome)
    VALUES (nextval('modelo_exercicio_seq'), 1, '7 BS A1');

INSERT INTO public.modelo_exercicio(
            id_modelo, qtde_dias, nome)
    VALUES (nextval('modelo_exercicio_seq'), 1, '8 RP A1');


INSERT INTO public.modelo_exercicio(
            id_modelo, qtde_dias, nome)
    VALUES (nextval('modelo_exercicio_seq'), 1, '9 TRI A1');

  INSERT INTO public.modelo_exercicio(
            id_modelo, qtde_dias, nome)
    VALUES (nextval('modelo_exercicio_seq'), 1, '10 DST A1');

INSERT INTO public.modelo_exercicio(
            id_modelo, qtde_dias, nome)
    VALUES (nextval('modelo_exercicio_seq'), 1, '11 OND A1');    

INSERT INTO public.modelo_exercicio(
            id_modelo, qtde_dias, nome)
    VALUES (nextval('modelo_exercicio_seq'), 1, '12 IF A1');    

INSERT INTO public.modelo_exercicio(
            id_modelo, qtde_dias, nome)
    VALUES (nextval('modelo_exercicio_seq'), 1, '13 DE A1');    

INSERT INTO public.modelo_exercicio(
            id_modelo, qtde_dias, nome)
    VALUES (nextval('modelo_exercicio_seq'), 1, '14 PA A1');        

INSERT INTO public.modelo_exercicio(
            id_modelo, qtde_dias, nome)
    VALUES (nextval('modelo_exercicio_seq'), 1, '15 SD A1');        



INSERT INTO public.modelo_exercicio(
            id_modelo, qtde_dias, nome)
    VALUES (nextval('modelo_exercicio_seq'), 2, '1 PC A2');

INSERT INTO public.modelo_exercicio(
            id_modelo, qtde_dias, nome)
    VALUES (nextval('modelo_exercicio_seq'), 2, '2 FC A2');

INSERT INTO public.modelo_exercicio(
            id_modelo, qtde_dias, nome)
    VALUES (nextval('modelo_exercicio_seq'), 2, '3 FC A2');

INSERT INTO public.modelo_exercicio(
            id_modelo, qtde_dias, nome)
    VALUES (nextval('modelo_exercicio_seq'), 2, '4 FC A2');

INSERT INTO public.modelo_exercicio(
            id_modelo, qtde_dias, nome)
    VALUES (nextval('modelo_exercicio_seq'), 2, '5 FC A2');

INSERT INTO public.modelo_exercicio(
            id_modelo, qtde_dias, nome)
    VALUES (nextval('modelo_exercicio_seq'), 2, '6 OV A2');

INSERT INTO public.modelo_exercicio(
            id_modelo, qtde_dias, nome)
    VALUES (nextval('modelo_exercicio_seq'), 2, '7 BS A2');

INSERT INTO public.modelo_exercicio(
            id_modelo, qtde_dias, nome)
    VALUES (nextval('modelo_exercicio_seq'), 2, '8 RP A2');


INSERT INTO public.modelo_exercicio(
            id_modelo, qtde_dias, nome)
    VALUES (nextval('modelo_exercicio_seq'), 2, '9 TRI A2');

  INSERT INTO public.modelo_exercicio(
            id_modelo, qtde_dias, nome)
    VALUES (nextval('modelo_exercicio_seq'), 2, '10 DST A2');

INSERT INTO public.modelo_exercicio(
            id_modelo, qtde_dias, nome)
    VALUES (nextval('modelo_exercicio_seq'), 2, '11 OND A2');  

INSERT INTO public.modelo_exercicio(
            id_modelo, qtde_dias, nome)
    VALUES (nextval('modelo_exercicio_seq'), 2, '12 IF A2');

INSERT INTO public.modelo_exercicio(
            id_modelo, qtde_dias, nome)
    VALUES (nextval('modelo_exercicio_seq'), 2, '12 IF AB1');    

INSERT INTO public.modelo_exercicio(
            id_modelo, qtde_dias, nome)
    VALUES (nextval('modelo_exercicio_seq'), 2, '13 DE A2');

INSERT INTO public.modelo_exercicio(
            id_modelo, qtde_dias, nome)
    VALUES (nextval('modelo_exercicio_seq'), 2, '13 DE AB1');    
INSERT INTO public.modelo_exercicio(
            id_modelo, qtde_dias, nome)
    VALUES (nextval('modelo_exercicio_seq'), 2, '14 PA A2');
INSERT INTO public.modelo_exercicio(
            id_modelo, qtde_dias, nome)
    VALUES (nextval('modelo_exercicio_seq'), 2, '14 PA AB1');        
INSERT INTO public.modelo_exercicio(
            id_modelo, qtde_dias, nome)
    VALUES (nextval('modelo_exercicio_seq'), 2, '15 SD A2');
INSERT INTO public.modelo_exercicio(
            id_modelo, qtde_dias, nome)
    VALUES (nextval('modelo_exercicio_seq'), 2, '15 SD AB1');        

INSERT INTO public.modelo_exercicio(
            id_modelo, qtde_dias, nome)
    VALUES (nextval('modelo_exercicio_seq'), 3, '1 PC A3');

INSERT INTO public.modelo_exercicio(
            id_modelo, qtde_dias, nome)
    VALUES (nextval('modelo_exercicio_seq'), 3, '2 FC A3');

INSERT INTO public.modelo_exercicio(
            id_modelo, qtde_dias, nome)
    VALUES (nextval('modelo_exercicio_seq'), 3, '3 FC A2');

INSERT INTO public.modelo_exercicio(
            id_modelo, qtde_dias, nome)
    VALUES (nextval('modelo_exercicio_seq'), 3, '3 FC A3');

INSERT INTO public.modelo_exercicio(
            id_modelo, qtde_dias, nome)
    VALUES (nextval('modelo_exercicio_seq'), 3, '4 FC A3');

INSERT INTO public.modelo_exercicio(
            id_modelo, qtde_dias, nome)
    VALUES (nextval('modelo_exercicio_seq'), 3, '5 FC A3');

INSERT INTO public.modelo_exercicio(
            id_modelo, qtde_dias, nome)
    VALUES (nextval('modelo_exercicio_seq'), 3, '6 OV A3');

INSERT INTO public.modelo_exercicio(
            id_modelo, qtde_dias, nome)
    VALUES (nextval('modelo_exercicio_seq'), 3, '6 OV ABC1');    

INSERT INTO public.modelo_exercicio(
            id_modelo, qtde_dias, nome)
    VALUES (nextval('modelo_exercicio_seq'), 3, '7 BS A3');

INSERT INTO public.modelo_exercicio(
            id_modelo, qtde_dias, nome)
    VALUES (nextval('modelo_exercicio_seq'), 3, '7 BS ABC1');        

INSERT INTO public.modelo_exercicio(
            id_modelo, qtde_dias, nome)
    VALUES (nextval('modelo_exercicio_seq'), 3, '8 RP A3');

INSERT INTO public.modelo_exercicio(
            id_modelo, qtde_dias, nome)
    VALUES (nextval('modelo_exercicio_seq'), 3, '8 RP ABC1');            


INSERT INTO public.modelo_exercicio(
            id_modelo, qtde_dias, nome)
    VALUES (nextval('modelo_exercicio_seq'), 3, '9 TRI A3');

INSERT INTO public.modelo_exercicio(
            id_modelo, qtde_dias, nome)
    VALUES (nextval('modelo_exercicio_seq'), 3, '9 TRI ABC1');       

  INSERT INTO public.modelo_exercicio(
            id_modelo, qtde_dias, nome)
    VALUES (nextval('modelo_exercicio_seq'), 3, '10 DST A3');

INSERT INTO public.modelo_exercicio(
            id_modelo, qtde_dias, nome)
    VALUES (nextval('modelo_exercicio_seq'), 3, '10 DST ABC1');           

INSERT INTO public.modelo_exercicio(
            id_modelo, qtde_dias, nome)
    VALUES (nextval('modelo_exercicio_seq'), 3, '11 OND A3');

INSERT INTO public.modelo_exercicio(
            id_modelo, qtde_dias, nome)
    VALUES (nextval('modelo_exercicio_seq'), 3, '11 OND ABC1');           

INSERT INTO public.modelo_exercicio(
            id_modelo, qtde_dias, nome)
    VALUES (nextval('modelo_exercicio_seq'), 3, '12 IF A3');    

INSERT INTO public.modelo_exercicio(
            id_modelo, qtde_dias, nome)
    VALUES (nextval('modelo_exercicio_seq'), 3, '12 IF ABC1');        

INSERT INTO public.modelo_exercicio(
            id_modelo, qtde_dias, nome)
    VALUES (nextval('modelo_exercicio_seq'), 3, '13 DE A3');    

INSERT INTO public.modelo_exercicio(
            id_modelo, qtde_dias, nome)
    VALUES (nextval('modelo_exercicio_seq'), 3, '13 DE ABC1');    

INSERT INTO public.modelo_exercicio(
            id_modelo, qtde_dias, nome)
    VALUES (nextval('modelo_exercicio_seq'), 3, '14 PA A3');        

INSERT INTO public.modelo_exercicio(
            id_modelo, qtde_dias, nome)
    VALUES (nextval('modelo_exercicio_seq'), 3, '14 PA ABC1');            

INSERT INTO public.modelo_exercicio(
            id_modelo, qtde_dias, nome)
    VALUES (nextval('modelo_exercicio_seq'), 3, '15 SD A3');        

INSERT INTO public.modelo_exercicio(
            id_modelo, qtde_dias, nome)
    VALUES (nextval('modelo_exercicio_seq'), 3, '15 SD ABC1');        
INSERT INTO public.modelo_exercicio(
            id_modelo, qtde_dias, nome)
    VALUES (nextval('modelo_exercicio_seq'), 3, '16 OL ABC');
INSERT INTO public.modelo_exercicio(
            id_modelo, qtde_dias, nome)
    VALUES (nextval('modelo_exercicio_seq'), 3, '16 OL ABC1');                

INSERT INTO public.modelo_exercicio(
            id_modelo, qtde_dias, nome)
    VALUES (nextval('modelo_exercicio_seq'), 4, '2 FC AB2');

INSERT INTO public.modelo_exercicio(
            id_modelo, qtde_dias, nome)
    VALUES (nextval('modelo_exercicio_seq'), 4, '3 FC AB2');

INSERT INTO public.modelo_exercicio(
            id_modelo, qtde_dias, nome)
    VALUES (nextval('modelo_exercicio_seq'), 4, '4 FC AB2');

INSERT INTO public.modelo_exercicio(
            id_modelo, qtde_dias, nome)
    VALUES (nextval('modelo_exercicio_seq'), 4, '5 FC AB2');

INSERT INTO public.modelo_exercicio(
            id_modelo, qtde_dias, nome)
    VALUES (nextval('modelo_exercicio_seq'), 4, '6 OV AB2');

INSERT INTO public.modelo_exercicio(
            id_modelo, qtde_dias, nome)
    VALUES (nextval('modelo_exercicio_seq'), 4, '7 BS AB2');

INSERT INTO public.modelo_exercicio(
            id_modelo, qtde_dias, nome)
    VALUES (nextval('modelo_exercicio_seq'), 4, '8 RP AB2');


INSERT INTO public.modelo_exercicio(
            id_modelo, qtde_dias, nome)
    VALUES (nextval('modelo_exercicio_seq'), 4, '9 TRI AB2');

  INSERT INTO public.modelo_exercicio(
            id_modelo, qtde_dias, nome)
    VALUES (nextval('modelo_exercicio_seq'), 4, '10 DST AB2');

INSERT INTO public.modelo_exercicio(
            id_modelo, qtde_dias, nome)
    VALUES (nextval('modelo_exercicio_seq'), 4, '11 OND AB2');    

INSERT INTO public.modelo_exercicio(
            id_modelo, qtde_dias, nome)
    VALUES (nextval('modelo_exercicio_seq'), 4, '12 IF AB2');    

INSERT INTO public.modelo_exercicio(
            id_modelo, qtde_dias, nome)
    VALUES (nextval('modelo_exercicio_seq'), 4, '13 DE AB2');    

INSERT INTO public.modelo_exercicio(
            id_modelo, qtde_dias, nome)
    VALUES (nextval('modelo_exercicio_seq'), 4, '14 PA AB2');        

INSERT INTO public.modelo_exercicio(
            id_modelo, qtde_dias, nome)
    VALUES (nextval('modelo_exercicio_seq'), 4, '15 SD AB2');  

INSERT INTO public.modelo_exercicio(
            id_modelo, qtde_dias, nome)
    VALUES (nextval('modelo_exercicio_seq'), 6, '6 OV AB3');

INSERT INTO public.modelo_exercicio(
            id_modelo, qtde_dias, nome)
    VALUES (nextval('modelo_exercicio_seq'), 6, '6 OV ABC2');

INSERT INTO public.modelo_exercicio(
            id_modelo, qtde_dias, nome)
    VALUES (nextval('modelo_exercicio_seq'), 6, '7 BS AB3');

INSERT INTO public.modelo_exercicio(
            id_modelo, qtde_dias, nome)
    VALUES (nextval('modelo_exercicio_seq'), 6, '7 BS ABC2');

INSERT INTO public.modelo_exercicio(
            id_modelo, qtde_dias, nome)
    VALUES (nextval('modelo_exercicio_seq'), 6, '8 RP AB3');

INSERT INTO public.modelo_exercicio(
            id_modelo, qtde_dias, nome)
    VALUES (nextval('modelo_exercicio_seq'), 6, '8 RP ABC2');

INSERT INTO public.modelo_exercicio(
            id_modelo, qtde_dias, nome)
    VALUES (nextval('modelo_exercicio_seq'), 6, '9 TRI AB3');

INSERT INTO public.modelo_exercicio(
            id_modelo, qtde_dias, nome)
    VALUES (nextval('modelo_exercicio_seq'), 6, '9 TRI ABC2');

  INSERT INTO public.modelo_exercicio(
            id_modelo, qtde_dias, nome)
    VALUES (nextval('modelo_exercicio_seq'), 6, '10 DST AB3');

INSERT INTO public.modelo_exercicio(
            id_modelo, qtde_dias, nome)
    VALUES (nextval('modelo_exercicio_seq'), 6, '10 DST ABC2');    

INSERT INTO public.modelo_exercicio(
            id_modelo, qtde_dias, nome)
    VALUES (nextval('modelo_exercicio_seq'), 6, '11 OND AB3');    

INSERT INTO public.modelo_exercicio(
            id_modelo, qtde_dias, nome)
    VALUES (nextval('modelo_exercicio_seq'), 6, '11 OND ABC2');        

INSERT INTO public.modelo_exercicio(
            id_modelo, qtde_dias, nome)
    VALUES (nextval('modelo_exercicio_seq'), 6, '12 IF AB3');    

INSERT INTO public.modelo_exercicio(
            id_modelo, qtde_dias, nome)
    VALUES (nextval('modelo_exercicio_seq'), 6, '12 IF ABC2');        

INSERT INTO public.modelo_exercicio(
            id_modelo, qtde_dias, nome)
    VALUES (nextval('modelo_exercicio_seq'), 6, '13 DE ABC2');    

INSERT INTO public.modelo_exercicio(
            id_modelo, qtde_dias, nome)
    VALUES (nextval('modelo_exercicio_seq'), 6, '14 PA ABC2');        

INSERT INTO public.modelo_exercicio(
            id_modelo, qtde_dias, nome)
    VALUES (nextval('modelo_exercicio_seq'), 6, '15 SD ABC2');          



--modelo 1 PC A1
INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 1, 'Mobilidade Quadril', 'https://drive.google.com/open?id=1-SwXhjDOnWfrW3QgCY8XahVF0IEPGg_B', '', '','', '1', '10', '1''', '');


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 1, 'Mobilidade Escapular', 'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', '','', '1', '10', '1''', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 1, 'Agachamento Halter', 'https://drive.google.com/open?id=0B97wQJP8FcEeUmFDZVNTWHJMSE0', '', 'Perda de Cadência','', '4', '8 a 12', '1''', '2020');


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 1, 'Supino Halter Inclinado', 'https://drive.google.com/open?id=0B97wQJP8FcEeS1dRUUZ6bGFtd1U', '', 'Perda de Cadência','', '4', '8 a 12', '1''', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 1, 'Cadeira Flexora', '', '', 'Perda de Cadência','', '3', '8 a 12', '1''', '2020');        


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 1, 'Puxador Triângulo', 'https://drive.google.com/open?id=0B97wQJP8FcEeaXVzMXF3RHRMMWc', '', 'Perda de Cadência','', '4', '8 a 12', '1''', '2020'); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 1, 'Triceps Polia', 'https://drive.google.com/open?id=0B97wQJP8FcEeZ1p4SEowMzdVU1E', '', 'Perda de Cadência','', '3', '8 a 12', '1''', '2020'); 


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 1, 'Rosca Direta Halter', 'https://drive.google.com/open?id=0B97wQJP8FcEeZldPUW52LUd4Rnc', '', 'Perda de Cadência','', '3', '8 a 12', '1''', '2020'); 
    
INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 1, 'Estabilização Frontal', 'https://drive.google.com/open?id=0B97wQJP8FcEeUVctQmgyNkl6S0k', '', '','', '3', 'até 1''', '1''', ''); 

--2 FC A1
INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 2, 'Mobilidade Escapular', 'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', '','', '1', '10', '1''', '');


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 2, 'Supino Halter', 'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', 
'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '4', '12 a 15', '1''', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 2, 'Desenvolvimento', 'https://drive.google.com/open?id=0B97wQJP8FcEeM1l2ZFZUV00xWTg', '', 
'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '3', '12 a 15', '1''', '2020');           

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 2, 'Puxador Aberto', 'https://drive.google.com/open?id=0B97wQJP8FcEeQURFWFNGeFhtYzQ', '', 
'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '4', '12 a 15', '1''', '2020');    


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 2, 'Remada Curvada Halteres N', 'https://drive.google.com/open?id=17fFqGX8dHObTX9t72QNuGUoaW0jhrA8U', '', 
'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '3', '12 a 15', '1''', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 2, 'Mobilidade Tornozelo', 'https://drive.google.com/open?id=1t7I0VtNVKsDnIPQI06dI_ZDe157tPCTr', '', '','', '1', '10', '1''', '');    


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 2, 'Mobilidade Quadril', 'https://drive.google.com/open?id=1-SwXhjDOnWfrW3QgCY8XahVF0IEPGg_B', '', '','', '1', '10', '1''', '');    


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 2, 'Agachamento Sumô', 'https://drive.google.com/open?id=1jtFjEgYgfC6w8h9-Ai8lXcyS5cNh6gVM', '', 
'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '4', '12 a 15', '1''', '2020');      

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 2, 'Cadeira Flexora', '', '', 
'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '3', '12 a 15', '1''', '2020');   

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 2, 'Estabilização Frontal', '', '', 
'','', '3', 'até 1''', '1''', '2020');         


--modelo 3 FC A1
INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 3, 'Mobilidade Escapular', 'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', '','', '1', '10', '1"', '');


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 3, 'Supino Reto', 'https://drive.google.com/open?id=0B97wQJP8FcEeSGhpWW9nb1N0bU0', '', 
'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '4', '8 a 12', '1''15"', '2030');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 3, 'Supino Inclinado', 'https://drive.google.com/open?id=0B97wQJP8FcEeZ0cyR0VyVUNBOFk', '', 
'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '3', '8 a 12', '1''15"', '2030');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 3, 'Puxador Supinado', 'https://drive.google.com/open?id=0B97wQJP8FcEeZ1FTY0xfV21sWlU', '', 
'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '4', '8 a 12', '1''15"', '2030'); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 3, 'Remada Baixa Aberta', 'https://drive.google.com/open?id=0B97wQJP8FcEeRDVya1lPMnNmaW8', '', 
'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '3', '8 a 12', '1''15"', '2030');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 3, 'Mobilidade Tornozelo', 'https://drive.google.com/open?id=1t7I0VtNVKsDnIPQI06dI_ZDe157tPCTr', '', '','', '1', '10', '1''', '');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 3, 'Mobilidade Quadril', 'https://drive.google.com/open?id=1-SwXhjDOnWfrW3QgCY8XahVF0IEPGg_B', '', '','', '1', '10', '1''', '');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 3, 'Agachamento Frontal', 'https://drive.google.com/open?id=1PnIFK7Lj4xFeZTwBG7PWtd4HhVkbMyEi', '', 
'Falha Concêntrica','https://drive.google.com/open?id=1PnIFK7Lj4xFeZTwBG7PWtd4HhVkbMyEi', '4', '8 a 12', '1''15"', '2030');         

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 3, 'Mesa Flexora', 'https://drive.google.com/open?id=0B97wQJP8FcEec2pJcl9XM200cjA', '', 
'Falha Concêntrica','https://drive.google.com/open?id=1PnIFK7Lj4xFeZTwBG7PWtd4HhVkbMyEi', '3', '8 a 12', '1''15"', '2030');     

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 3, 'Estabilização 3 apoios', 'https://drive.google.com/open?id=1sJMkVowV4194OOl8QbwKIqWlShZirSbP', '', '','', '3', 'até 1''', '1''', '');  

--modelo 4 FC A1
INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 4, 'Mobilidade Escapular', 
    'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', '','', '1', '10', '1''', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 4, 'Supino Máquina', 
    'https://drive.google.com/open?id=1WCmr8D5ipoyGeTPPdzdLrl2pA_Brhs1Y', '', 'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '4', '5 a 7', '1''30"', '3030');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 4, 'Supino Halter Inclinado','https://drive.google.com/open?id=0B97wQJP8FcEeS1dRUUZ6bGFtd1U', 
    '', 'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '4', '5 a 7', '1''30"', '3030');    


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 4, 'Puxador Triângulo','https://drive.google.com/open?id=0B97wQJP8FcEeaXVzMXF3RHRMMWc', 
    '', 'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '4', '5 a 7', '1''30"', '3030');    


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 4, 'Remada Baixa Triângulo','https://drive.google.com/open?id=0B97wQJP8FcEebnhKRUpyS2pfNTA', 
    '', 'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '4', '5 a 7', '1''30"', '3030');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 4, 'Mobilidade Tornozelo', 'https://drive.google.com/open?id=1t7I0VtNVKsDnIPQI06dI_ZDe157tPCTr', '', '','', '1', '10', '1''', '');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 4, 'Mobilidade Quadril', 'https://drive.google.com/open?id=1-SwXhjDOnWfrW3QgCY8XahVF0IEPGg_B', '', '','', '1', '10', '1''', ''); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 4, 'Agachamento Búlgaro','https://drive.google.com/open?id=1nfZa_N37LxpzZllrVniNWBIe7R7qJjCE', 
    '', 'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '4', '5 a 7', '1''30"', '3030');     

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 4, 'Stiff Barra','https://drive.google.com/open?id=0B97wQJP8FcEea3l4bnlWcG9mVFk', 
    '', 'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '4', '5 a 7', '1''30"', '3030');     

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 4, 'Estabilização 3 apoios', 'https://drive.google.com/open?id=1sJMkVowV4194OOl8QbwKIqWlShZirSbP', '', '','', '3', 'até 1''', '1''', ''); 


--modelo 5 FC A1

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 5, 'Mobilidade Escapular', 
    'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', '','', '1', '10', '1''', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 5, 'Supino Reto', 'https://drive.google.com/open?id=0B97wQJP8FcEeSGhpWW9nb1N0bU0', '*', 
'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '', '', '', '');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 5, 'Desenvolvimento', 'https://drive.google.com/open?id=0B97wQJP8FcEeM1l2ZFZUV00xWTg', '*', 
'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '', '', '', '');    


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 5, 'Puxador Aberto', 'https://drive.google.com/open?id=0B97wQJP8FcEeQURFWFNGeFhtYzQ', '*', 
'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE','', '', '', '');      

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 5, 'Remada Baixa Supinada', 'https://drive.google.com/open?id=0B97wQJP8FcEeY1dySmkxUzN6a0U', '*', 
'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE','', '', '', '');     

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 5, 'Mobilidade Tornozelo', 'https://drive.google.com/open?id=1t7I0VtNVKsDnIPQI06dI_ZDe157tPCTr', '', '','', '1', '10', '1''', '');     


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 5, 'Mobilidade Quadril', 'https://drive.google.com/open?id=1-SwXhjDOnWfrW3QgCY8XahVF0IEPGg_B', '*', '','', '1', '10', '1''', ''); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 5, 'Agachamento Búlgaro','https://drive.google.com/open?id=1nfZa_N37LxpzZllrVniNWBIe7R7qJjCE', 
    '*', 'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '', '', '', ''); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 5, 'Cadeira Flexora', '', '*', 'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '', '', '', ''); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 5, 'Estabilização Lateral', 'https://drive.google.com/open?id=0B97wQJP8FcEeNml3UjlFMktrTFk', '*', 
'','', '2', 'até 1''', '1''', ''); 

--modelo 6 OV A1
INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 6, 'Mobilidade Escapular', 
    'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', '','', '1', '10', '', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 6, 'Supino Halter', 'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', 
'Oclusão Vascular','https://drive.google.com/open?id=0B97wQJP8FcEeY0RRZ21iWHZ5MDA', '4', '20" + 8 a 12', '1''', '2020'); 


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 6, 'Supino Halter Inclinado', 'https://drive.google.com/open?id=0B97wQJP8FcEeS1dRUUZ6bGFtd1U', '', 
'Oclusão Vascular','https://drive.google.com/open?id=0B97wQJP8FcEeY0RRZ21iWHZ5MDA', '4', '20" + 8 a 12', '1''', '2020'); 


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 6, 'Remada Baixa Supinada', 'https://drive.google.com/open?id=0B97wQJP8FcEeY1dySmkxUzN6a0U', '', 
'Oclusão Vascular','https://drive.google.com/open?id=0B97wQJP8FcEeY0RRZ21iWHZ5MDA', '4', '20" + 8 a 12', '1''', '2020'); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 6, 'Remada Curvada Aberta', 'https://drive.google.com/open?id=0B97wQJP8FcEeSmNQcjhHSTUtZVU', '', 
'Oclusão Vascular','https://drive.google.com/open?id=0B97wQJP8FcEeY0RRZ21iWHZ5MDA', '4', '20" + 8 a 12', '1''', '2020'); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 6, 'Mobilidade Tornozelo', 'https://drive.google.com/open?id=1t7I0VtNVKsDnIPQI06dI_ZDe157tPCTr', '', '','', '1', '10', '', '');     

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 6, 'Mobilidade Quadril', 'https://drive.google.com/open?id=1-SwXhjDOnWfrW3QgCY8XahVF0IEPGg_B', '*', '','', '1', '10', '', ''); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 6, 'Agachamento Livre', 'https://drive.google.com/open?id=0B97wQJP8FcEeVi1RdUlpOE1JYXc', '', 
'Oclusão Vascular','https://drive.google.com/open?id=0B97wQJP8FcEeY0RRZ21iWHZ5MDA', '4', '20" + 8 a 12', '1''', '2020'); 


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 6, 'Leg Press', 'https://drive.google.com/open?id=0B97wQJP8FcEeUmJYcUNodXRNRkE', '', 
'Oclusão Vascular','https://drive.google.com/open?id=0B97wQJP8FcEeY0RRZ21iWHZ5MDA', '4', '20" + 8 a 12', '1''', '2020'); 


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 6, 'Cadeira Flexora', '', '', 
'Oclusão Vascular','https://drive.google.com/open?id=0B97wQJP8FcEeY0RRZ21iWHZ5MDA', '2', '20" + 8 a 12', '1''', '2020'); 


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 6, 'Estabilização 3 apoios', 'https://drive.google.com/open?id=1sJMkVowV4194OOl8QbwKIqWlShZirSbP', '', '','', '3', 'Máx', '1''', 'Isometria');  

--modelo 7 BS A1

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 7, 'Mobilidade Escapular', 
    'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', '','', '1', '10', '', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 7, 'Supino Reto', 'https://drive.google.com/open?id=0B97wQJP8FcEeSGhpWW9nb1N0bU0', '', 
'Bi-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '4', '8 a 12', '', '2020');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 7, 'Apoio', 'https://drive.google.com/open?id=0B97wQJP8FcEeZEJpc3loczFwRkU', '', 
'Bi-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '4', 'Máx', '60"', '2020');  


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 7, 'Puxador Aberto', 'https://drive.google.com/open?id=0B97wQJP8FcEeQURFWFNGeFhtYzQ', '*', 
'Bi-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '4', '8 a 12', '', '2020');


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 7, 'Puxador Supinado', 'https://drive.google.com/open?id=0B97wQJP8FcEeZ1FTY0xfV21sWlU', '', 
'Bi-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '4', '8 a 12', '60"', '2020');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 7, 'Mobilidade Tornozelo', 'https://drive.google.com/open?id=1t7I0VtNVKsDnIPQI06dI_ZDe157tPCTr', '', '','', '1', '10', '', '');    


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 7, 'Mobilidade Quadril', 'https://drive.google.com/open?id=1-SwXhjDOnWfrW3QgCY8XahVF0IEPGg_B', '', '','', '1', '10', '', ''); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 7, 'Leg Press', 'https://drive.google.com/open?id=0B97wQJP8FcEeUmJYcUNodXRNRkE', '', 
'Bi-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '4', '8 a 12', '', '2020');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 7, 'Agachamento Sumô', 'https://drive.google.com/open?id=1jtFjEgYgfC6w8h9-Ai8lXcyS5cNh6gVM', '', 
'Bi-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '4', '8 a 12', '60"', '2020');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 7, 'Mesa Flexora', 'https://drive.google.com/open?id=0B97wQJP8FcEec2pJcl9XM200cjA', '', 
'Bi-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '2', '8 a 12', '', '2020');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 7, 'Stiff Halter', 'https://drive.google.com/open?id=0B97wQJP8FcEeQjBWeERiLTA4STQ', '', 
'Bi-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '2', '8 a 12', '60"', '2020');


--modelo 8 RP A1

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 8, 'Mobilidade Escapular', 
    'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', '','', '1', '10', '', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 8, 'Supino Reto', 'https://drive.google.com/open?id=0B97wQJP8FcEeSGhpWW9nb1N0bU0', '', 
'Rest and Pause','https://drive.google.com/open?id=0B97wQJP8FcEedk13cWcyaHdOeTA', '4', '5 a 7 10" X 10" X', '2''', '4020');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 8, 'Supino Inclinado', 'https://drive.google.com/open?id=0B97wQJP8FcEeZ0cyR0VyVUNBOFk', '', 
'Rest and Pause','https://drive.google.com/open?id=0B97wQJP8FcEedk13cWcyaHdOeTA', '4', '5 a 7 10" X 10" X', '2''', '4020');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 8, 'Puxador Triângulo', 'https://drive.google.com/open?id=0B97wQJP8FcEeaXVzMXF3RHRMMWc', '', 
'Rest and Pause','https://drive.google.com/open?id=0B97wQJP8FcEedk13cWcyaHdOeTA', '4', '5 a 7 10" X 10" X', '2''', '4020');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 8, 'Puxador Supinado', 'https://drive.google.com/open?id=0B97wQJP8FcEeZ1FTY0xfV21sWlU', '', 
'Rest and Pause','https://drive.google.com/open?id=0B97wQJP8FcEedk13cWcyaHdOeTA', '4', '5 a 7 10" X 10" X', '2''', '4020');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 8, 'Mobilidade Tornozelo', 'https://drive.google.com/open?id=1t7I0VtNVKsDnIPQI06dI_ZDe157tPCTr', '', '','', '1', '10', '', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 8, 'Mobilidade Quadril', 'https://drive.google.com/open?id=1-SwXhjDOnWfrW3QgCY8XahVF0IEPGg_B', '', '','', '1', '10', '', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 8, 'Leg Press', 'https://drive.google.com/open?id=0B97wQJP8FcEeUmJYcUNodXRNRkE', '', 
'Rest and Pause','https://drive.google.com/open?id=0B97wQJP8FcEedk13cWcyaHdOeTA', '4', '5 a 7 10" X 10" X', '2''', '4020');   

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 8, 'Agachamento Livre', 'https://drive.google.com/open?id=0B97wQJP8FcEeVi1RdUlpOE1JYXc', '', 
'Rest and Pause','https://drive.google.com/open?id=0B97wQJP8FcEedk13cWcyaHdOeTA', '4', '5 a 7 10" X 10" X', '2''', '4020');      

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 8, 'Mesa Flexora', 'https://drive.google.com/open?id=0B97wQJP8FcEec2pJcl9XM200cjA', '', 
'Rest and Pause','https://drive.google.com/open?id=0B97wQJP8FcEedk13cWcyaHdOeTA', '2', '5 a 7 10" X 10" X', '2''', '4020');      

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 8, 'Elevação de Quadril', 'https://drive.google.com/open?id=0B97wQJP8FcEeWG5oZzV5OHhXWWc', '', '','', '3', 'Máx', '1''', '3030');

--modelo 9 TRI A1

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 9, 'Mobilidade Escapular', 
    'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', 'Os dois exercícios', '','', '1', '10', '', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 9, 'Supino Reto', 'https://drive.google.com/open?id=0B97wQJP8FcEeSGhpWW9nb1N0bU0', '', 
'Tri-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '4', '8 a 12', '', '2020');  


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 9, 'Supino Halter', 'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', 
'Tri-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '4', '8 a 12', '', '2020');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 9, 'Apoio', 'https://drive.google.com/open?id=0B97wQJP8FcEeZEJpc3loczFwRkU', 'Mãos no banco', 
'Tri-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '4', '8 a 12', '1''30"', '2020');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 9, 'Puxador Aberto', 'https://drive.google.com/open?id=0B97wQJP8FcEeQURFWFNGeFhtYzQ', '', 
'Tri-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '4', '8 a 12', '', '2020');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 9, 'Puxador Supinado', 'https://drive.google.com/open?id=0B97wQJP8FcEeZ1FTY0xfV21sWlU', '', 
'Tri-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '4', '8 a 12', '', '2020');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 9, 'Remada Curvada Halteres N', 'https://drive.google.com/open?id=17fFqGX8dHObTX9t72QNuGUoaW0jhrA8U', '', 
'Tri-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '4', '8 a 12', '1''30"', '2020');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 9, 'Mobilidade Tornozelo', 'https://drive.google.com/open?id=1t7I0VtNVKsDnIPQI06dI_ZDe157tPCTr', '', '','', '1', '10', '', '');    


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 9, 'Mobilidade Quadril', 'https://drive.google.com/open?id=1-SwXhjDOnWfrW3QgCY8XahVF0IEPGg_B', 'Os dois exercícios', '','', '1', '10', '', '');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 9, 'Agachamento Livre', 'https://drive.google.com/open?id=0B97wQJP8FcEeVi1RdUlpOE1JYXc', '', 
'Tri-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '4', '8 a 12', '', '2020');     

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 9, 'Levantamento Terra', '', '', 
'Tri-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '4', '8 a 12', '', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 9, 'Stiff Barra','https://drive.google.com/open?id=0B97wQJP8FcEea3l4bnlWcG9mVFk','',
'Tri-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '4', '8 a 12', '1''30"', '2020');    

--modelo 10 DST A1
INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 10, 'Mobilidade Escapular', 
    'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', 'Os dois exercícios', '','', '1', '10', '', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 10, 'Supino Máquina', 'https://drive.google.com/open?id=1WCmr8D5ipoyGeTPPdzdLrl2pA_Brhs1Y', '', 
'Drop-Set','https://drive.google.com/open?id=0B97wQJP8FcEec3UwQ0c5Y0VaWHc', '4', '5 a 7 + X + X', '2''', '3030');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 10, 'Supino Reto', 'https://drive.google.com/open?id=0B97wQJP8FcEeSGhpWW9nb1N0bU0', '', 
'Drop-Set','https://drive.google.com/open?id=0B97wQJP8FcEec3UwQ0c5Y0VaWHc', '4', '5 a 7 + X + X', '2''', '3030');       

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 10, 'Puxador Supinado', 'https://drive.google.com/open?id=0B97wQJP8FcEeZ1FTY0xfV21sWlU', '', 
'Drop-Set','https://drive.google.com/open?id=0B97wQJP8FcEec3UwQ0c5Y0VaWHc', '4', '5 a 7 + X + X', '2''', '3030');       

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 10, 'Remada Máquina', 'https://drive.google.com/open?id=1J91nrQ5AzrbcjJxjNHPt3tOGOaQOlDN6', '', 
'Drop-Set','https://drive.google.com/open?id=0B97wQJP8FcEec3UwQ0c5Y0VaWHc', '4', '5 a 7 + X + X', '2''', '3030');       

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 10, 'Mobilidade Tornozelo', 'https://drive.google.com/open?id=1t7I0VtNVKsDnIPQI06dI_ZDe157tPCTr', '', '','', '1', '10', '', '');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 10, 'Mobilidade Quadril', 'https://drive.google.com/open?id=1-SwXhjDOnWfrW3QgCY8XahVF0IEPGg_B', 'Os dois exercícios', '','', '1', '10', '', '');  


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 10, 'Leg Press', 'https://drive.google.com/open?id=0B97wQJP8FcEeUmJYcUNodXRNRkE', 'Máquina', 
'Drop-Set','https://drive.google.com/open?id=0B97wQJP8FcEec3UwQ0c5Y0VaWHc', '4', '5 a 7 + X + X', '2''', '3030');       

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 10, 'Agachamento Smith', 'https://drive.google.com/open?id=0B97wQJP8FcEeRXkyWUk3UUtiMkU', '', 
'Drop-Set','https://drive.google.com/open?id=0B97wQJP8FcEec3UwQ0c5Y0VaWHc', '4', '5 a 7 + X + X', '2''', '3030');       

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 10, 'Cadeira Flexora', '', '', 
'Drop-Set','https://drive.google.com/open?id=0B97wQJP8FcEec3UwQ0c5Y0VaWHc', '2', '5 a 7 + X + X', '2''', '3030');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 10, 'Flexão de Tronco', 'https://drive.google.com/open?id=1-SwXhjDOnWfrW3QgCY8XahVF0IEPGg_B', '', '','', '3', 'Máx', '1''', '3030');  

--modelo 11 OND A1
INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 11, 'Mobilidade Escapular', 
    'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', 'Os dois exercícios', '','', '1', '10', '1''', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 11, 'Supino Halter Inclinado', 'https://drive.google.com/open?id=0B97wQJP8FcEeS1dRUUZ6bGFtd1U', '*',
'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '', '', '', '');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 11, 'Paralela Banco', 'https://drive.google.com/open?id=1se-Tfm8A-GjH9Oc8QSMTeIuubObTnIFq', '*',
'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '', '', '', '');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 11, 'Puxador Aberto', 'https://drive.google.com/open?id=0B97wQJP8FcEeQURFWFNGeFhtYzQ', '*', 
'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '', '', '', '');    


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 11, 'Remada Curvada Halteres N', 'https://drive.google.com/open?id=17fFqGX8dHObTX9t72QNuGUoaW0jhrA8U', '*', 
'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '', '', '', '');     

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 11, 'Mobilidade Tornozelo', 'https://drive.google.com/open?id=1t7I0VtNVKsDnIPQI06dI_ZDe157tPCTr', '', '','', '1', '10', '1''', '');    


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 11, 'Mobilidade Quadril', 'https://drive.google.com/open?id=1-SwXhjDOnWfrW3QgCY8XahVF0IEPGg_B', 'Os dois exercícios', '','', '1', '10', '1''', '');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 11, 'Agachamento Búlgaro','https://drive.google.com/open?id=1nfZa_N37LxpzZllrVniNWBIe7R7qJjCE', 
    '*', 'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '', '', '', '');     


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 11, 'Cadeira Flexora', '', '*', 
'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '', '', '', '');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 11, 'Cadeira Flexora', '', '*', 
'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '', '', '', '');        


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 11, 'Perdigueiro', 'https://drive.google.com/open?id=0B97wQJP8FcEeOUlYLWQ0TGl5Tjg', 'cada lado', '','', '2', 'até 1''', '1''', '');    


--modelo 12 IF A1

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 12, 'Mobilidade Escapular', 'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', '','', '1', '10', '30"', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 12, 'Supino Inclinado', 'https://drive.google.com/open?id=0B97wQJP8FcEeZ0cyR0VyVUNBOFk', '', 'Isometria funcional','', '4', '8 a 12', '1''', '2020');    


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 12, 'Supino Halter', 'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', 'Isometria funcional','', '4', '8 a 12', '1''', '2020');  


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 12, 'Triceps Polia', 'https://drive.google.com/open?id=0B97wQJP8FcEeZ1p4SEowMzdVU1E', '', 'Isometria funcional','', '2', '8 a 12', '1''', '2020'); 


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 12, 'Puxador Aberto', 'https://drive.google.com/open?id=0B97wQJP8FcEeQURFWFNGeFhtYzQ', '', 
     'Isometria funcional','', '4', '8 a 12', '1''', '2020'); 


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 12, 'Remada Curvada Halteres N', 'https://drive.google.com/open?id=17fFqGX8dHObTX9t72QNuGUoaW0jhrA8U', '', 
     'Isometria funcional','', '4', '8 a 12', '1''', '2020'); 


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 12, 'Rosca Scott', 'https://drive.google.com/open?id=0B97wQJP8FcEeeWtyQzhiR0VCTm8', '', 
     'Isometria funcional','', '2', '8 a 12', '1''', '2020'); 


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 12, 'Mobilidade Quadril', 'https://drive.google.com/open?id=1-SwXhjDOnWfrW3QgCY8XahVF0IEPGg_B', '', '','', '1', '10', '30"', '');    



INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 12, 'Leg Press', 'https://drive.google.com/open?id=0B97wQJP8FcEeUmJYcUNodXRNRkE', '', 
     'Isometria funcional','', '4', '8 a 12', '1''', '2020'); 


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 12, 'Agachamento Búlgaro','https://drive.google.com/open?id=1nfZa_N37LxpzZllrVniNWBIe7R7qJjCE', '',
     'Isometria funcional','', '2', '8 a 12', '1''', '2020'); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 12, 'Agachamento Sumô', 'https://drive.google.com/open?id=1jtFjEgYgfC6w8h9-Ai8lXcyS5cNh6gVM', '', 
     'Isometria funcional','', '2', '8 a 12', '1''', '2020'); 


--modelo 13 DE A1

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 13, 'Mobilidade Escapular', 'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', '','', '', '', '', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 13, 'Supino Máquina', 'https://drive.google.com/open?id=1WCmr8D5ipoyGeTPPdzdLrl2pA_Brhs1Y', '', 
'Duplo estímulo','', '1', '5 a 7', '30"', '4030');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 13, 'Supino Máquina', 'https://drive.google.com/open?id=1WCmr8D5ipoyGeTPPdzdLrl2pA_Brhs1Y', '', 
'Duplo estímulo','', '1', '18 a 20', '2''', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 13, 'Supino Máquina', 'https://drive.google.com/open?id=1WCmr8D5ipoyGeTPPdzdLrl2pA_Brhs1Y', '', 
'Duplo estímulo','', '1', '5 a 7', '30"', '4030');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 13, 'Supino Máquina', 'https://drive.google.com/open?id=1WCmr8D5ipoyGeTPPdzdLrl2pA_Brhs1Y', '', 
'Duplo estímulo','', '1', '18 a 20', '2''', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 13, 'Supino Máquina', 'https://drive.google.com/open?id=1WCmr8D5ipoyGeTPPdzdLrl2pA_Brhs1Y', '', 
'Duplo estímulo','', '1', '5 a 7', '30"', '4030');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 13, 'Supino Máquina', 'https://drive.google.com/open?id=1WCmr8D5ipoyGeTPPdzdLrl2pA_Brhs1Y', '', 
'Duplo estímulo','', '1', '18 a 20', '2''', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 13, 'Puxador Aberto', 'https://drive.google.com/open?id=0B97wQJP8FcEeQURFWFNGeFhtYzQ', '', 
'Duplo estímulo','', '1', '5 a 7', '30"', '4030');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 13, 'Puxador Aberto', 'https://drive.google.com/open?id=0B97wQJP8FcEeQURFWFNGeFhtYzQ', '', 
'Duplo estímulo','', '1', '18 a 20', '2''', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 13, 'Puxador Aberto', 'https://drive.google.com/open?id=0B97wQJP8FcEeQURFWFNGeFhtYzQ', '', 
'Duplo estímulo','', '1', '5 a 7', '30"', '4030');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 13, 'Puxador Aberto', 'https://drive.google.com/open?id=0B97wQJP8FcEeQURFWFNGeFhtYzQ', '', 
'Duplo estímulo','', '1', '18 a 20', '2''', '2020'); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 13, 'Puxador Aberto', 'https://drive.google.com/open?id=0B97wQJP8FcEeQURFWFNGeFhtYzQ', '', 
'Duplo estímulo','', '1', '5 a 7', '30"', '4030');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 13, 'Puxador Aberto', 'https://drive.google.com/open?id=0B97wQJP8FcEeQURFWFNGeFhtYzQ', '', 
'Duplo estímulo','', '1', '18 a 20', '2''', '2020'); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 13, 'Mobilidade Quadril', 'https://drive.google.com/open?id=1-SwXhjDOnWfrW3QgCY8XahVF0IEPGg_B', '', '','', '', '', '', '');               

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 13, 'Agachamento Livre', 'https://drive.google.com/open?id=0B97wQJP8FcEeVi1RdUlpOE1JYXc', '', 
'Duplo estímulo','', '1', '5 a 7', '30"', '4030');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 13, 'Agachamento Livre', 'https://drive.google.com/open?id=0B97wQJP8FcEeVi1RdUlpOE1JYXc', '', 
'Duplo estímulo','', '1', '18 a 20', '2''', '2020'); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 13, 'Agachamento Livre', 'https://drive.google.com/open?id=0B97wQJP8FcEeVi1RdUlpOE1JYXc', '', 
'Duplo estímulo','', '1', '5 a 7', '30"', '4030');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 13, 'Agachamento Livre', 'https://drive.google.com/open?id=0B97wQJP8FcEeVi1RdUlpOE1JYXc', '', 
'Duplo estímulo','', '1', '18 a 20', '2''', '2020'); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 13, 'Agachamento Livre', 'https://drive.google.com/open?id=0B97wQJP8FcEeVi1RdUlpOE1JYXc', '', 
'Duplo estímulo','', '1', '5 a 7', '30"', '4030');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 13, 'Agachamento Livre', 'https://drive.google.com/open?id=0B97wQJP8FcEeVi1RdUlpOE1JYXc', '', 
'Duplo estímulo','', '1', '18 a 20', '2''', '2020'); 


--modelo 14 Pa AI


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 14, 'Mobilidade Escapular', 'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', '','', '1', '10', '30"', '');



INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 14, 'Supino Halter Inclinado', 'https://drive.google.com/open?id=0B97wQJP8FcEeS1dRUUZ6bGFtd1U', '',
     'Parcial','', '4', '8 a 12', '45"', '2020');    


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 14, 'Supino Reto', 'https://drive.google.com/open?id=0B97wQJP8FcEeSGhpWW9nb1N0bU0', '', 
     'Parcial','', '4', '8 a 12', '45"', '2020');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 14, 'Triceps Corda', 'https://drive.google.com/open?id=0B97wQJP8FcEeTy1VZGEzRjU2dlE', '', 
     'Parcial','', '2', '8 a 12', '45"', '2020');         

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 14, 'Puxador Triângulo', 'https://drive.google.com/open?id=0B97wQJP8FcEeaXVzMXF3RHRMMWc', '',
     'Parcial','', '4', '8 a 12', '45"', '2020'); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 14, 'Remada Baixa Aberta', 'https://drive.google.com/open?id=0B97wQJP8FcEeRDVya1lPMnNmaW8', '', 
     'Parcial','', '4', '8 a 12', '45"', '2020');           

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 14, 'Rosca Inclinada', 'https://drive.google.com/open?id=0B97wQJP8FcEeTll3bnVlZGJSSnc', '', 
     'Parcial','', '2', '8 a 12', '45"', '2020');  


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 14, 'Mobilidade Quadril', 'https://drive.google.com/open?id=1-SwXhjDOnWfrW3QgCY8XahVF0IEPGg_B', '', '','', '1', '10', '30"', '');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 14, 'Leg Press Unilateral', 'https://drive.google.com/open?id=0B97wQJP8FcEeelFyemtGb3k5bEk', '', 
     'Parcial','', '4', '8 a 12', '45"', '2020');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 14, 'Agachamento Sumô', 'https://drive.google.com/open?id=1jtFjEgYgfC6w8h9-Ai8lXcyS5cNh6gVM', '', 
     'Parcial','', '4', '8 a 12', '45"', '2020');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 14, 'Mesa Flexora', 'https://drive.google.com/open?id=0B97wQJP8FcEec2pJcl9XM200cjA', '', 
     'Parcial','', '1', '8 a 12', '45"', '2020');

--modelo 15 SD A1

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 15, 'Mobilidade Escapular', 'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', '','', '1', '10', '30"', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 15, 'Supino Máquina', 'https://drive.google.com/open?id=1WCmr8D5ipoyGeTPPdzdLrl2pA_Brhs1Y', '', 
'Super Drop-Set','https://drive.google.com/open?id=1y69rnnva20tZd6e608_W5llcl6Dh8Q5P', '4', '5a7+x+x até 20-25 reps', '1''30" a 2''', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 15, 'Crucifixo na Polia', 'https://drive.google.com/open?id=0B97wQJP8FcEecUdWUmZrcHd0bWc', '', 
'Super Drop-Set','https://drive.google.com/open?id=1y69rnnva20tZd6e608_W5llcl6Dh8Q5P', '4', '5a7+x+x até 20-25 reps', '1''30" a 2''', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 15, 'Tríceps na Polia', 'https://drive.google.com/open?id=0B97wQJP8FcEeZ1p4SEowMzdVU1E', '', 
'Super Drop-Set','https://drive.google.com/open?id=1y69rnnva20tZd6e608_W5llcl6Dh8Q5P', '2', '5a7+x+x até 20-25 reps', '1''30" a 2''', '2020');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 15, 'Puxador Aberto', 'https://drive.google.com/open?id=0B97wQJP8FcEeQURFWFNGeFhtYzQ', '', 
'Super Drop-Set','https://drive.google.com/open?id=1y69rnnva20tZd6e608_W5llcl6Dh8Q5P', '4', '5a7+x+x até 20-25 reps', '1''30" a 2''', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 15, 'Remada Máquina', 'https://drive.google.com/open?id=1J91nrQ5AzrbcjJxjNHPt3tOGOaQOlDN6', '', 
'Super Drop-Set','https://drive.google.com/open?id=1y69rnnva20tZd6e608_W5llcl6Dh8Q5P', '4', '5a7+x+x até 20-25 reps', '1''30" a 2''', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 15, 'Rosca Direta Barra', 'https://drive.google.com/open?id=0B97wQJP8FcEebkpWUTlxeGYzZ28', '', 
'Super Drop-Set','https://drive.google.com/open?id=1y69rnnva20tZd6e608_W5llcl6Dh8Q5P', '2', '5a7+x+x até 20-25 reps', '1''30" a 2''', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 15, 'Mobilidade Quadril', 'https://drive.google.com/open?id=1-SwXhjDOnWfrW3QgCY8XahVF0IEPGg_B', '', '','', '1', '10', '30"', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 15, 'Leg Press', 'https://drive.google.com/open?id=0B97wQJP8FcEeUmJYcUNodXRNRkE', '', 
'Super Drop-Set','https://drive.google.com/open?id=1y69rnnva20tZd6e608_W5llcl6Dh8Q5P', '4', '5a7+x+x até 20-25 reps', '1''30" a 2''', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 15, 'Agachamento Smith', 'https://drive.google.com/open?id=0B97wQJP8FcEeRXkyWUk3UUtiMkU', '', 
'Super Drop-Set','https://drive.google.com/open?id=1y69rnnva20tZd6e608_W5llcl6Dh8Q5P', '4', '5a7+x+x até 20-25 reps', '1''30" a 2''', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 15, 'Mesa Flexora', 'https://drive.google.com/open?id=0B97wQJP8FcEec2pJcl9XM200cjA', '', 
'Super Drop-Set','https://drive.google.com/open?id=1y69rnnva20tZd6e608_W5llcl6Dh8Q5P', '1', '5a7+x+x até 20-25 reps', '1''30" a 2''', '2020');    


--modelo 1 PC A2
INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 16, 'Mobilidade Quadril', 'https://drive.google.com/open?id=1-SwXhjDOnWfrW3QgCY8XahVF0IEPGg_B', '', '','', '1', '10', '1''', '');


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 16, 'Mobilidade Escapular', 'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', '','', '1', '10', '1''', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 16, 'Agachamento Halter', 'https://drive.google.com/open?id=0B97wQJP8FcEeUmFDZVNTWHJMSE0', '', 'Perda de Cadência','', '3', '8 a 12', '1''', '2020');


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 16, 'Supino Halter Inclinado', 'https://drive.google.com/open?id=0B97wQJP8FcEeS1dRUUZ6bGFtd1U', '', 'Perda de Cadência','', '3', '8 a 12', '1''', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 16, 'Cadeira Flexora', '', '', 'Perda de Cadência','', '2', '8 a 12', '1''', '2020');        


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 16, 'Puxador Triângulo', 'https://drive.google.com/open?id=0B97wQJP8FcEeaXVzMXF3RHRMMWc', '', 'Perda de Cadência','', '3', '8 a 12', '1''', '2020'); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 16, 'Triceps Polia', 'https://drive.google.com/open?id=0B97wQJP8FcEeZ1p4SEowMzdVU1E', '', 'Perda de Cadência','', '2', '8 a 12', '1''', '2020'); 


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 16, 'Rosca Direta Halter', 'https://drive.google.com/open?id=0B97wQJP8FcEeZldPUW52LUd4Rnc', '', 'Perda de Cadência','', '2', '8 a 12', '1''', '2020'); 
    
INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 16, 'Estabilização Frontal', 'https://drive.google.com/open?id=0B97wQJP8FcEeUVctQmgyNkl6S0k', '', '','', '3', 'até 1''', '1''', ''); 


--modelo 2 FC A2

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 17, 'Mobilidade Escapular', 'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', '','', '1', '10', '1''', '');


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 17, 'Supino Halter', 'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', 
'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '3', '12 a 15', '1''', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 17, 'Desenvolvimento', 'https://drive.google.com/open?id=0B97wQJP8FcEeM1l2ZFZUV00xWTg', '', 
'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '2', '12 a 15', '1''', '2020');           

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 17, 'Puxador Aberto', 'https://drive.google.com/open?id=0B97wQJP8FcEeQURFWFNGeFhtYzQ', '', 
'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '3', '12 a 15', '1''', '2020');    


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 17, 'Remada Curvada Halteres N', 'https://drive.google.com/open?id=17fFqGX8dHObTX9t72QNuGUoaW0jhrA8U', '', 
'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '2', '12 a 15', '1''', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 17, 'Mobilidade Tornozelo', 'https://drive.google.com/open?id=1t7I0VtNVKsDnIPQI06dI_ZDe157tPCTr', '', '','', '1', '10', '1''', '');    


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 17, 'Mobilidade Quadril', 'https://drive.google.com/open?id=1-SwXhjDOnWfrW3QgCY8XahVF0IEPGg_B', '', '','', '1', '10', '1''', '');    


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 17, 'Agachamento Sumô', 'https://drive.google.com/open?id=1jtFjEgYgfC6w8h9-Ai8lXcyS5cNh6gVM', '', 
'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '3', '12 a 15', '1''', '2020');      

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 17, 'Cadeira Flexora', '', '', 
'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '2', '12 a 15', '1''', '2020');   

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 17, 'Estabilização Frontal', '', '', '','', '3', 'até 1''', '1''', '2020');         


--modelo 3 FC A2
INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 18, 'Mobilidade Escapular', 'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', '','', '1', '10', '1"', '');


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 18, 'Supino Reto', 'https://drive.google.com/open?id=0B97wQJP8FcEeSGhpWW9nb1N0bU0', '', 
'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '3', '8 a 12', '1''15"', '2030');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 18, 'Supino Inclinado', 'https://drive.google.com/open?id=0B97wQJP8FcEeZ0cyR0VyVUNBOFk', '', 
'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '3', '8 a 12', '1''15"', '2030');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 18, 'Puxador Supinado', 'https://drive.google.com/open?id=0B97wQJP8FcEeZ1FTY0xfV21sWlU', '', 
'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '3', '8 a 12', '1''15"', '2030'); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 18, 'Remada Baixa Aberta', 'https://drive.google.com/open?id=0B97wQJP8FcEeRDVya1lPMnNmaW8', '', 
'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '3', '8 a 12', '1''15"', '2030');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 18, 'Mobilidade Tornozelo', 'https://drive.google.com/open?id=1t7I0VtNVKsDnIPQI06dI_ZDe157tPCTr', '', '','', '1', '10', '1''', '');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 18, 'Mobilidade Quadril', 'https://drive.google.com/open?id=1-SwXhjDOnWfrW3QgCY8XahVF0IEPGg_B', '', '','', '1', '10', '1''', '');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 18, 'Agachamento Frontal', 'https://drive.google.com/open?id=1PnIFK7Lj4xFeZTwBG7PWtd4HhVkbMyEi', '', 
'Falha Concêntrica','https://drive.google.com/open?id=1PnIFK7Lj4xFeZTwBG7PWtd4HhVkbMyEi', '3', '8 a 12', '1''15"', '2030');         

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 18, 'Mesa Flexora', 'https://drive.google.com/open?id=0B97wQJP8FcEec2pJcl9XM200cjA', '', 
'Falha Concêntrica','https://drive.google.com/open?id=1PnIFK7Lj4xFeZTwBG7PWtd4HhVkbMyEi', '3', '8 a 12', '1''15"', '2030');     

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 18, 'Estabilização 3 apoios', 'https://drive.google.com/open?id=1sJMkVowV4194OOl8QbwKIqWlShZirSbP', '', '','', '3', 'até 1''', '1''', '');  


--modelo 4 FC A2

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 19, 'Mobilidade Escapular', 
    'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', '','', '1', '10', '1''', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 19, 'Supino Máquina', 
    'https://drive.google.com/open?id=1WCmr8D5ipoyGeTPPdzdLrl2pA_Brhs1Y', '', 'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '3', '5 a 7', '1''30"', '3030');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 19, 'Supino Halter Inclinado','https://drive.google.com/open?id=0B97wQJP8FcEeS1dRUUZ6bGFtd1U', 
    '', 'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '3', '5 a 7', '1''30"', '3030');    


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 19, 'Puxador Triângulo','https://drive.google.com/open?id=0B97wQJP8FcEeaXVzMXF3RHRMMWc', 
    '', 'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '3', '5 a 7', '1''30"', '3030');    


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 19, 'Remada Baixa Triângulo','https://drive.google.com/open?id=0B97wQJP8FcEebnhKRUpyS2pfNTA', 
    '', 'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '3', '5 a 7', '1''30"', '3030');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 19, 'Mobilidade Tornozelo', 'https://drive.google.com/open?id=1t7I0VtNVKsDnIPQI06dI_ZDe157tPCTr', '', '','', '1', '10', '1''', '');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 19, 'Mobilidade Quadril', 'https://drive.google.com/open?id=1-SwXhjDOnWfrW3QgCY8XahVF0IEPGg_B', '', '','', '1', '10', '1''', ''); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 19, 'Agachamento Búlgaro','https://drive.google.com/open?id=1nfZa_N37LxpzZllrVniNWBIe7R7qJjCE', 
    '', 'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '3', '5 a 7', '1''30"', '3030');     

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 19, 'Stiff Barra','https://drive.google.com/open?id=0B97wQJP8FcEea3l4bnlWcG9mVFk', 
    '', 'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '3', '5 a 7', '1''30"', '3030');     

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 19, 'Estabilização 3 apoios', 'https://drive.google.com/open?id=1sJMkVowV4194OOl8QbwKIqWlShZirSbP', '', '','', '3', 'até 1''', '1''', ''); 


--modelo 5 FC A2
INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 20, 'Mobilidade Escapular', 
    'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', '','', '1', '10', '1''', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 20, 'Supino Reto', 'https://drive.google.com/open?id=0B97wQJP8FcEeSGhpWW9nb1N0bU0', '*', 
'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '', '', '', '');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 20, 'Desenvolvimento', 'https://drive.google.com/open?id=0B97wQJP8FcEeM1l2ZFZUV00xWTg', '*', 
'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '', '', '', '');    


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 20, 'Puxador Aberto', 'https://drive.google.com/open?id=0B97wQJP8FcEeQURFWFNGeFhtYzQ', '*', 
'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE','', '', '', '');      

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 20, 'Remada Baixa Supinada', 'https://drive.google.com/open?id=0B97wQJP8FcEeY1dySmkxUzN6a0U', '*', 
'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE','', '', '', '');     

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 20, 'Mobilidade Tornozelo', 'https://drive.google.com/open?id=1t7I0VtNVKsDnIPQI06dI_ZDe157tPCTr', '', '','', '1', '10', '1''', '');     


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 20, 'Mobilidade Quadril', 'https://drive.google.com/open?id=1-SwXhjDOnWfrW3QgCY8XahVF0IEPGg_B', '*', '','', '1', '10', '1''', ''); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 20, 'Agachamento Búlgaro','https://drive.google.com/open?id=1nfZa_N37LxpzZllrVniNWBIe7R7qJjCE', 
    '*', 'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '', '', '', ''); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 20, 'Cadeira Flexora', '', '*', 'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '', '', '', ''); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 20, 'Estabilização Lateral', 'https://drive.google.com/open?id=0B97wQJP8FcEeNml3UjlFMktrTFk', '*', 
'','', '2', 'até 1''', '1''', ''); 


--modelo 6 OV A2
INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 21, 'Mobilidade Escapular', 
    'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', '','', '1', '10', '', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 21, 'Supino Halter', 'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', 
'Oclusão Vascular','https://drive.google.com/open?id=0B97wQJP8FcEeY0RRZ21iWHZ5MDA', '3', '20" + 8 a 12', '1''', '2020'); 


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 21, 'Supino Halter Inclinado', 'https://drive.google.com/open?id=0B97wQJP8FcEeS1dRUUZ6bGFtd1U', '', 
'Oclusão Vascular','https://drive.google.com/open?id=0B97wQJP8FcEeY0RRZ21iWHZ5MDA', '3', '20" + 8 a 12', '1''', '2020'); 


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 21, 'Remada Baixa Supinada', 'https://drive.google.com/open?id=0B97wQJP8FcEeY1dySmkxUzN6a0U', '', 
'Oclusão Vascular','https://drive.google.com/open?id=0B97wQJP8FcEeY0RRZ21iWHZ5MDA', '3', '20" + 8 a 12', '1''', '2020'); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 21, 'Remada Curvada Aberta', 'https://drive.google.com/open?id=0B97wQJP8FcEeSmNQcjhHSTUtZVU', '', 
'Oclusão Vascular','https://drive.google.com/open?id=0B97wQJP8FcEeY0RRZ21iWHZ5MDA', '3', '20" + 8 a 12', '1''', '2020'); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 21, 'Mobilidade Tornozelo', 'https://drive.google.com/open?id=1t7I0VtNVKsDnIPQI06dI_ZDe157tPCTr', '', '','', '1', '10', '', '');     

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 21, 'Mobilidade Quadril', 'https://drive.google.com/open?id=1-SwXhjDOnWfrW3QgCY8XahVF0IEPGg_B', '*', '','', '1', '10', '', ''); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 21, 'Agachamento Livre', 'https://drive.google.com/open?id=0B97wQJP8FcEeVi1RdUlpOE1JYXc', '', 
'Oclusão Vascular','https://drive.google.com/open?id=0B97wQJP8FcEeY0RRZ21iWHZ5MDA', '3', '20" + 8 a 12', '1''', '2020'); 


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 21, 'Leg Press', 'https://drive.google.com/open?id=0B97wQJP8FcEeUmJYcUNodXRNRkE', '', 
'Oclusão Vascular','https://drive.google.com/open?id=0B97wQJP8FcEeY0RRZ21iWHZ5MDA', '3', '20" + 8 a 12', '1''', '2020'); 


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 21, 'Cadeira Flexora', '', '', 
'Oclusão Vascular','https://drive.google.com/open?id=0B97wQJP8FcEeY0RRZ21iWHZ5MDA', '2', '20" + 8 a 12', '1''', '2020'); 


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 21, 'Estabilização 3 apoios', 'https://drive.google.com/open?id=1sJMkVowV4194OOl8QbwKIqWlShZirSbP', '', '','', '3', 'Máx', '1''', 'Isometria');  

--modelo 7 BS A2

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 22, 'Mobilidade Escapular', 
    'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', '','', '1', '10', '', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 22, 'Supino Reto', 'https://drive.google.com/open?id=0B97wQJP8FcEeSGhpWW9nb1N0bU0', '', 
'Bi-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '3', '8 a 12', '', '2020');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 22, 'Apoio', 'https://drive.google.com/open?id=0B97wQJP8FcEeZEJpc3loczFwRkU', '', 
'Bi-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '3', 'Máx', '60"', '2020');  


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 22, 'Puxador Aberto', 'https://drive.google.com/open?id=0B97wQJP8FcEeQURFWFNGeFhtYzQ', '*', 
'Bi-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '3', '8 a 12', '', '2020');


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 22, 'Puxador Supinado', 'https://drive.google.com/open?id=0B97wQJP8FcEeZ1FTY0xfV21sWlU', '', 
'Bi-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '3', '8 a 12', '60"', '2020');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 22, 'Mobilidade Tornozelo', 'https://drive.google.com/open?id=1t7I0VtNVKsDnIPQI06dI_ZDe157tPCTr', '', '','', '1', '10', '', '');    


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 22, 'Mobilidade Quadril', 'https://drive.google.com/open?id=1-SwXhjDOnWfrW3QgCY8XahVF0IEPGg_B', '', '','', '1', '10', '', ''); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 22, 'Leg Press', 'https://drive.google.com/open?id=0B97wQJP8FcEeUmJYcUNodXRNRkE', '', 
'Bi-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '3', '8 a 12', '', '2020');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 22, 'Agachamento Sumô', 'https://drive.google.com/open?id=1jtFjEgYgfC6w8h9-Ai8lXcyS5cNh6gVM', '', 
'Bi-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '3', '8 a 12', '60"', '2020');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 22, 'Mesa Flexora', 'https://drive.google.com/open?id=0B97wQJP8FcEec2pJcl9XM200cjA', '', 
'Bi-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '2', '8 a 12', '', '2020');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 22, 'Stiff Halter', 'https://drive.google.com/open?id=0B97wQJP8FcEeQjBWeERiLTA4STQ', '', 
'Bi-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '2', '8 a 12', '60"', '2020');

--modelo 8 RP A2

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 23, 'Mobilidade Escapular', 
    'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', '','', '1', '10', '', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 23, 'Supino Reto', 'https://drive.google.com/open?id=0B97wQJP8FcEeSGhpWW9nb1N0bU0', '', 
'Rest and Pause','https://drive.google.com/open?id=0B97wQJP8FcEedk13cWcyaHdOeTA', '3', '5 a 7 10" X 10" X', '2''', '4020');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 23, 'Supino Inclinado', 'https://drive.google.com/open?id=0B97wQJP8FcEeZ0cyR0VyVUNBOFk', '', 
'Rest and Pause','https://drive.google.com/open?id=0B97wQJP8FcEedk13cWcyaHdOeTA', '3', '5 a 7 10" X 10" X', '2''', '4020');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 23, 'Puxador Triângulo', 'https://drive.google.com/open?id=0B97wQJP8FcEeaXVzMXF3RHRMMWc', '', 
'Rest and Pause','https://drive.google.com/open?id=0B97wQJP8FcEedk13cWcyaHdOeTA', '3', '5 a 7 10" X 10" X', '2''', '4020');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 23, 'Puxador Supinado', 'https://drive.google.com/open?id=0B97wQJP8FcEeZ1FTY0xfV21sWlU', '', 
'Rest and Pause','https://drive.google.com/open?id=0B97wQJP8FcEedk13cWcyaHdOeTA', '3', '5 a 7 10" X 10" X', '2''', '4020');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 23, 'Mobilidade Tornozelo', 'https://drive.google.com/open?id=1t7I0VtNVKsDnIPQI06dI_ZDe157tPCTr', '', '','', '1', '10', '', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 23, 'Mobilidade Quadril', 'https://drive.google.com/open?id=1-SwXhjDOnWfrW3QgCY8XahVF0IEPGg_B', '', '','', '1', '10', '', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 23, 'Leg Press', 'https://drive.google.com/open?id=0B97wQJP8FcEeUmJYcUNodXRNRkE', '', 
'Rest and Pause','https://drive.google.com/open?id=0B97wQJP8FcEedk13cWcyaHdOeTA', '3', '5 a 7 10" X 10" X', '2''', '4020');   

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 23, 'Agachamento Livre', 'https://drive.google.com/open?id=0B97wQJP8FcEeVi1RdUlpOE1JYXc', '', 
'Rest and Pause','https://drive.google.com/open?id=0B97wQJP8FcEedk13cWcyaHdOeTA', '2', '5 a 7 10" X 10" X', '2''', '4020');      

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 23, 'Mesa Flexora', 'https://drive.google.com/open?id=0B97wQJP8FcEec2pJcl9XM200cjA', '', 
'Rest and Pause','https://drive.google.com/open?id=0B97wQJP8FcEedk13cWcyaHdOeTA', '2', '5 a 7 10" X 10" X', '2''', '4020');      

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 23, 'Elevação de Quadril', 'https://drive.google.com/open?id=0B97wQJP8FcEeWG5oZzV5OHhXWWc', '', '','', '3', 'Máx', '1''', '3030');

--modelo 9 TRI A2
INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 24, 'Mobilidade Escapular', 
    'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', 'Os dois exercícios', '','', '1', '10', '', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 24, 'Supino Reto', 'https://drive.google.com/open?id=0B97wQJP8FcEeSGhpWW9nb1N0bU0', '', 
'Tri-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '3', '8 a 12', '', '2020');  


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 24, 'Supino Halter', 'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', 
'Tri-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '3', '8 a 12', '', '2020');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 24, 'Apoio', 'https://drive.google.com/open?id=0B97wQJP8FcEeZEJpc3loczFwRkU', 'Mãos no banco', 
'Tri-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '3', '8 a 12', '1''30"', '2020');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 24, 'Puxador Aberto', 'https://drive.google.com/open?id=0B97wQJP8FcEeQURFWFNGeFhtYzQ', '', 
'Tri-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '3', '8 a 12', '', '2020');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 24, 'Puxador Supinado', 'https://drive.google.com/open?id=0B97wQJP8FcEeZ1FTY0xfV21sWlU', '', 
'Tri-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '3', '8 a 12', '', '2020');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 24, 'Remada Curvada Halteres N', 'https://drive.google.com/open?id=17fFqGX8dHObTX9t72QNuGUoaW0jhrA8U', '', 
'Tri-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '3', '8 a 12', '1''30"', '2020');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 24, 'Mobilidade Tornozelo', 'https://drive.google.com/open?id=1t7I0VtNVKsDnIPQI06dI_ZDe157tPCTr', '', '','', '1', '10', '', '');    


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 24, 'Mobilidade Quadril', 'https://drive.google.com/open?id=1-SwXhjDOnWfrW3QgCY8XahVF0IEPGg_B', 'Os dois exercícios', '','', '1', '10', '', '');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 24, 'Agachamento Livre', 'https://drive.google.com/open?id=0B97wQJP8FcEeVi1RdUlpOE1JYXc', '', 
'Tri-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '3', '8 a 12', '', '2020');     

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 24, 'Levantamento Terra', '', '', 
'Tri-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '3', '8 a 12', '', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 24, 'Stiff Barra','https://drive.google.com/open?id=0B97wQJP8FcEea3l4bnlWcG9mVFk','',
'Tri-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '3', '8 a 12', '1''30"', '2020');    

--modelo 10 DST A2

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 25, 'Mobilidade Escapular', 
    'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', 'Os dois exercícios', '','', '1', '10', '', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 25, 'Supino Máquina', 'https://drive.google.com/open?id=1WCmr8D5ipoyGeTPPdzdLrl2pA_Brhs1Y', '', 
'Drop-Set','https://drive.google.com/open?id=0B97wQJP8FcEec3UwQ0c5Y0VaWHc', '3', '5 a 7 + X + X', '2''', '3030');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 25, 'Supino Reto', 'https://drive.google.com/open?id=0B97wQJP8FcEeSGhpWW9nb1N0bU0', '', 
'Drop-Set','https://drive.google.com/open?id=0B97wQJP8FcEec3UwQ0c5Y0VaWHc', '3', '5 a 7 + X + X', '2''', '3030');       

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 25, 'Puxador Supinado', 'https://drive.google.com/open?id=0B97wQJP8FcEeZ1FTY0xfV21sWlU', '', 
'Drop-Set','https://drive.google.com/open?id=0B97wQJP8FcEec3UwQ0c5Y0VaWHc', '3', '5 a 7 + X + X', '2''', '3030');       

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 25, 'Remada Máquina', 'https://drive.google.com/open?id=1J91nrQ5AzrbcjJxjNHPt3tOGOaQOlDN6', '', 
'Drop-Set','https://drive.google.com/open?id=0B97wQJP8FcEec3UwQ0c5Y0VaWHc', '3', '5 a 7 + X + X', '2''', '3030');       

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 25, 'Mobilidade Tornozelo', 'https://drive.google.com/open?id=1t7I0VtNVKsDnIPQI06dI_ZDe157tPCTr', '', '','', '1', '10', '', '');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 25, 'Mobilidade Quadril', 'https://drive.google.com/open?id=1-SwXhjDOnWfrW3QgCY8XahVF0IEPGg_B', 'Os dois exercícios', '','', '1', '10', '', '');  


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 25, 'Leg Press', 'https://drive.google.com/open?id=0B97wQJP8FcEeUmJYcUNodXRNRkE', 'Máquina', 
'Drop-Set','https://drive.google.com/open?id=0B97wQJP8FcEec3UwQ0c5Y0VaWHc', '3', '5 a 7 + X + X', '2''', '3030');       

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 25, 'Agachamento Smith', 'https://drive.google.com/open?id=0B97wQJP8FcEeRXkyWUk3UUtiMkU', '', 
'Drop-Set','https://drive.google.com/open?id=0B97wQJP8FcEec3UwQ0c5Y0VaWHc', '3', '5 a 7 + X + X', '2''', '3030');       

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 25, 'Cadeira Flexora', '', '', 
'Drop-Set','https://drive.google.com/open?id=0B97wQJP8FcEec3UwQ0c5Y0VaWHc', '2', '5 a 7 + X + X', '2''', '3030');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 25, 'Flexão de Tronco', 'https://drive.google.com/open?id=1-SwXhjDOnWfrW3QgCY8XahVF0IEPGg_B', '', '','', '3', 'Máx', '1''', '3030');  

---modelo 11 OND A2

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 26, 'Mobilidade Escapular', 
    'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', 'Os dois exercícios', '','', '1', '10', '1''', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 26, 'Supino Halter Inclinado', 'https://drive.google.com/open?id=0B97wQJP8FcEeS1dRUUZ6bGFtd1U', '*',
'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '', '', '', '');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 26, 'Paralela Banco', 'https://drive.google.com/open?id=1se-Tfm8A-GjH9Oc8QSMTeIuubObTnIFq', '*',
'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '2', '', '', '');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 26, 'Puxador Aberto', 'https://drive.google.com/open?id=0B97wQJP8FcEeQURFWFNGeFhtYzQ', '*', 
'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '', '', '', '');    


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 26, 'Remada Curvada Halteres N', 'https://drive.google.com/open?id=17fFqGX8dHObTX9t72QNuGUoaW0jhrA8U', '*', 
'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '2', '', '', '');     

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 26, 'Mobilidade Tornozelo', 'https://drive.google.com/open?id=1t7I0VtNVKsDnIPQI06dI_ZDe157tPCTr', '', '','', '1', '10', '1''', '');    


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 26, 'Mobilidade Quadril', 'https://drive.google.com/open?id=1-SwXhjDOnWfrW3QgCY8XahVF0IEPGg_B', 'Os dois exercícios', '','', '1', '10', '1''', '');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 26, 'Agachamento Búlgaro','https://drive.google.com/open?id=1nfZa_N37LxpzZllrVniNWBIe7R7qJjCE', 
    '*', 'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '', '', '', '');     


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 26, 'Cadeira Flexora', '', '*', 
'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '2', '', '', '');  


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 26, 'Perdigueiro', 'https://drive.google.com/open?id=0B97wQJP8FcEeOUlYLWQ0TGl5Tjg', 'cada lado', '','', '2', 'até 1''', '1''', '');    


-- modelo 12 IF A2"
INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 27, 'Mobilidade Escapular', 'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', '','', '1', '10', '30"', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 27, 'Supino Inclinado', 'https://drive.google.com/open?id=0B97wQJP8FcEeZ0cyR0VyVUNBOFk', '', 'Isometria funcional','', '4', '8 a 12', '1''', '2020');    


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 27, 'Crucifixo na Polia', 'https://drive.google.com/open?id=0B97wQJP8FcEecUdWUmZrcHd0bWc', '', 'Isometria funcional','', '2', '8 a 12', '1''', '2020');  


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 27, 'Triceps Polia', 'https://drive.google.com/open?id=0B97wQJP8FcEeZ1p4SEowMzdVU1E', '', 'Isometria funcional','', '2', '8 a 12', '1''', '2020'); 


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 27, 'Puxador Aberto', 'https://drive.google.com/open?id=0B97wQJP8FcEeQURFWFNGeFhtYzQ', '', 
     'Isometria funcional','', '4', '8 a 12', '1''', '2020'); 


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 27, 'Remada Curvada Halteres N', 'https://drive.google.com/open?id=17fFqGX8dHObTX9t72QNuGUoaW0jhrA8U', '', 
     'Isometria funcional','', '2', '8 a 12', '1''', '2020'); 


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 27, 'Rosca Scott', 'https://drive.google.com/open?id=0B97wQJP8FcEeeWtyQzhiR0VCTm8', '', 
     'Isometria funcional','', '2', '8 a 12', '1''', '2020'); 


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 27, 'Mobilidade Quadril', 'https://drive.google.com/open?id=1-SwXhjDOnWfrW3QgCY8XahVF0IEPGg_B', '', '','', '1', '10', '30"', '');    



INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 27, 'Leg Press', 'https://drive.google.com/open?id=0B97wQJP8FcEeUmJYcUNodXRNRkE', '', 
     'Isometria funcional','', '4', '8 a 12', '1''', '2020'); 


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 27, 'Agachamento Búlgaro','https://drive.google.com/open?id=1nfZa_N37LxpzZllrVniNWBIe7R7qJjCE', '',
     'Isometria funcional','', '2', '8 a 12', '1''', '2020'); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 28, 'Mobilidade Escapular', 'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', '','', '1', '10', '30"', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 28, 'Supino Inclinado', 'https://drive.google.com/open?id=0B97wQJP8FcEeZ0cyR0VyVUNBOFk', '', 'Isometria funcional','', '5', '8 a 12', '1''', '2020');    


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 28, 'Crucifixo na Polia', 'https://drive.google.com/open?id=0B97wQJP8FcEecUdWUmZrcHd0bWc', '', 'Isometria funcional','', '3', '8 a 12', '1''', '2020');  


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 28, 'Elevação Lateral', 'https://drive.google.com/open?id=0B97wQJP8FcEeSkJxNGRfeThwMXM', '', 'Isometria funcional','', '3', '8 a 12', '1''', '2020'); 


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 28, 'Triceps Polia', 'https://drive.google.com/open?id=0B97wQJP8FcEeZ1p4SEowMzdVU1E', '', 'Isometria funcional','', '3', '8 a 12', '1''', '2020'); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 28, 'Estabilização 2 apoios', 'https://drive.google.com/open?id=10bslWCl-qbFQL39KJQ8pmei0GhF-q1q9', '', '','', '2', 'Máximo', '30"', ''); 


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 28, 'Mobilidade Escapular', 'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', '','', '1', '10', '30"', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 28, 'Puxador Aberto', 'https://drive.google.com/open?id=0B97wQJP8FcEeQURFWFNGeFhtYzQ', '', 'Isometria funcional','', '5', '8 a 12', '1''', '2020'); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 28, 'Remada Curvada Halteres N', 'https://drive.google.com/open?id=17fFqGX8dHObTX9t72QNuGUoaW0jhrA8U', '', 'Isometria funcional','', '3', '8 a 12', '1''', '2020'); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 28, 'Rosca Scott', 'https://drive.google.com/open?id=0B97wQJP8FcEeeWtyQzhiR0VCTm8', '','Isometria funcional','', '3', '8 a 12', '1''', '2020'); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 28, 'Mobilidade Quadril', 'https://drive.google.com/open?id=1-SwXhjDOnWfrW3QgCY8XahVF0IEPGg_B', '', '','', '1', '10', '1''', '');


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 28, 'Leg Press', 'https://drive.google.com/open?id=0B97wQJP8FcEeUmJYcUNodXRNRkE', '', 
'Isometria funcional','', '4', '8 a 12', '1''', '2020'); 

  
INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 28, 'Agachamento Búlgaro','https://drive.google.com/open?id=1nfZa_N37LxpzZllrVniNWBIe7R7qJjCE', '',
     'Isometria funcional','', '2', '8 a 12', '1''', '2020'); 


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 28, 'Mesa Flexora', 'https://drive.google.com/open?id=0B97wQJP8FcEec2pJcl9XM200cjA', '', 
'Isometria funcional','', '2', '8 a 12', '1''', '2020');      

--modelo 13 de A2

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 29, 'Mobilidade Escapular', 'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', '','', '', '', '', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 29, 'Supino Máquina', 'https://drive.google.com/open?id=1WCmr8D5ipoyGeTPPdzdLrl2pA_Brhs1Y', '', 
'Duplo estímulo','', '1', '5 a 7', '30"', '4020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 29, 'Supino Máquina', 'https://drive.google.com/open?id=1WCmr8D5ipoyGeTPPdzdLrl2pA_Brhs1Y', '', 
'Duplo estímulo','', '1', '18 a 20', '2''', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 29, 'Supino Máquina', 'https://drive.google.com/open?id=1WCmr8D5ipoyGeTPPdzdLrl2pA_Brhs1Y', '', 
'Duplo estímulo','', '1', '5 a 7', '30"', '4020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 29, 'Supino Máquina', 'https://drive.google.com/open?id=1WCmr8D5ipoyGeTPPdzdLrl2pA_Brhs1Y', '', 
'Duplo estímulo','', '1', '18 a 20', '2''', '2020');    
    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 29, 'Puxador Aberto', 'https://drive.google.com/open?id=0B97wQJP8FcEeQURFWFNGeFhtYzQ', '', 
'Duplo estímulo','', '1', '5 a 7', '30"', '4020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 29, 'Puxador Aberto', 'https://drive.google.com/open?id=0B97wQJP8FcEeQURFWFNGeFhtYzQ', '', 
'Duplo estímulo','', '1', '18 a 20', '2''', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 29, 'Puxador Aberto', 'https://drive.google.com/open?id=0B97wQJP8FcEeQURFWFNGeFhtYzQ', '', 
'Duplo estímulo','', '1', '5 a 7', '30"', '4020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 29, 'Puxador Aberto', 'https://drive.google.com/open?id=0B97wQJP8FcEeQURFWFNGeFhtYzQ', '', 
'Duplo estímulo','', '1', '18 a 20', '2''', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 29, 'Mobilidade Quadril', 'https://drive.google.com/open?id=1-SwXhjDOnWfrW3QgCY8XahVF0IEPGg_B', '', '','', '', '', '', '');               

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 29, 'Agachamento Livre', 'https://drive.google.com/open?id=0B97wQJP8FcEeVi1RdUlpOE1JYXc', '', 
'Duplo estímulo','', '1', '5 a 7', '30"', '4020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 29, 'Agachamento Livre', 'https://drive.google.com/open?id=0B97wQJP8FcEeVi1RdUlpOE1JYXc', '', 
'Duplo estímulo','', '1', '18 a 20', '2''', '2020'); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 29, 'Agachamento Livre', 'https://drive.google.com/open?id=0B97wQJP8FcEeVi1RdUlpOE1JYXc', '', 
'Duplo estímulo','', '1', '5 a 7', '30"', '4020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 29, 'Agachamento Livre', 'https://drive.google.com/open?id=0B97wQJP8FcEeVi1RdUlpOE1JYXc', '', 
'Duplo estímulo','', '1', '18 a 20', '2''', '2020'); 


--modelo 13 DE AB1

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 30, 'Mobilidade Escapular', 'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', '','', '', '', '', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 30, 'Supino Máquina', 'https://drive.google.com/open?id=1WCmr8D5ipoyGeTPPdzdLrl2pA_Brhs1Y', '', 'Duplo estímulo','', '1', '5 a 7', '30"', '4020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 30, 'Supino Máquina', 'https://drive.google.com/open?id=1WCmr8D5ipoyGeTPPdzdLrl2pA_Brhs1Y', '', 'Duplo estímulo','', '1', '18 a 20', '2''', '2020');    
INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 30, 'Supino Máquina', 'https://drive.google.com/open?id=1WCmr8D5ipoyGeTPPdzdLrl2pA_Brhs1Y', '', 'Duplo estímulo','', '1', '5 a 7', '30"', '4020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 30, 'Supino Máquina', 'https://drive.google.com/open?id=1WCmr8D5ipoyGeTPPdzdLrl2pA_Brhs1Y', '', 'Duplo estímulo','', '1', '18 a 20', '2''', '2020'); 
INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 30, 'Supino Máquina', 'https://drive.google.com/open?id=1WCmr8D5ipoyGeTPPdzdLrl2pA_Brhs1Y', '', 'Duplo estímulo','', '1', '5 a 7', '30"', '4020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 30, 'Supino Máquina', 'https://drive.google.com/open?id=1WCmr8D5ipoyGeTPPdzdLrl2pA_Brhs1Y', '', 'Duplo estímulo','', '1', '18 a 20', '2''', '2020');   
    
INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 30, 'Crucifixo Halter Inclinado', 'https://drive.google.com/open?id=0B97wQJP8FcEeNGpjUXhrRDRxZFk', '', 'Duplo estímulo','', '1', '5 a 7', '30"', '4020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 30, 'Crucifixo Halter Inclinado', 'https://drive.google.com/open?id=0B97wQJP8FcEeNGpjUXhrRDRxZFk', '', 'Duplo estímulo','', '1', '18 a 20', '2''', '2020');   

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 30, 'Elevação Frontal', 'https://drive.google.com/open?id=0B97wQJP8FcEecHF1ZjZ2Y0JnYlk', '', 'Duplo estímulo','', '1', '5 a 7', '30"', '4020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 30, 'Elevação Frontal', 'https://drive.google.com/open?id=0B97wQJP8FcEecHF1ZjZ2Y0JnYlk', '', 'Duplo estímulo','', '1', '18 a 20', '2''', '2020');   
    
INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 30, 'Triceps Francês', 'https://drive.google.com/open?id=0B97wQJP8FcEeQlN0SlplX2NWUG8', '', 'Duplo estímulo','', '1', '5 a 7', '30"', '4020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 30, 'Triceps Francês', 'https://drive.google.com/open?id=0B97wQJP8FcEeQlN0SlplX2NWUG8', '', 'Duplo estímulo','', '1', '18 a 20', '2''', '2020');   
    


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 30, 'Mobilidade Escapular', 'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', '','', '', '', '', '');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 30, 'Puxador Aberto', 'https://drive.google.com/open?id=0B97wQJP8FcEeQURFWFNGeFhtYzQ', '', 
'Duplo estímulo','', '1', '5 a 7', '30"', '4020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 30, 'Puxador Aberto', 'https://drive.google.com/open?id=0B97wQJP8FcEeQURFWFNGeFhtYzQ', '', 
'Duplo estímulo','', '1', '18 a 20', '2''', '2020');   

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 30, 'Puxador Aberto', 'https://drive.google.com/open?id=0B97wQJP8FcEeQURFWFNGeFhtYzQ', '', 
'Duplo estímulo','', '1', '5 a 7', '30"', '4020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 30, 'Puxador Aberto', 'https://drive.google.com/open?id=0B97wQJP8FcEeQURFWFNGeFhtYzQ', '', 
'Duplo estímulo','', '1', '18 a 20', '2''', '2020');   

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 30, 'Puxador Aberto', 'https://drive.google.com/open?id=0B97wQJP8FcEeQURFWFNGeFhtYzQ', '', 
'Duplo estímulo','', '1', '5 a 7', '30"', '4020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 30, 'Puxador Aberto', 'https://drive.google.com/open?id=0B97wQJP8FcEeQURFWFNGeFhtYzQ', '', 
'Duplo estímulo','', '1', '18 a 20', '2''', '2020');   

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 30, 'Remada Baixa Triângulo','https://drive.google.com/open?id=0B97wQJP8FcEebnhKRUpyS2pfNTA', '', 
'Duplo estímulo','', '1', '5 a 7', '30"', '4020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 30, 'Remada Baixa Triângulo','https://drive.google.com/open?id=0B97wQJP8FcEebnhKRUpyS2pfNTA', '', 
'Duplo estímulo','', '1', '18 a 20', '2''', '2020');   

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 30, 'Rosca Direta Barra', 'https://drive.google.com/open?id=0B97wQJP8FcEebkpWUTlxeGYzZ28', '', 
'Duplo estímulo','', '1', '5 a 7', '30"', '4020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 30, 'Rosca Direta Barra', 'https://drive.google.com/open?id=0B97wQJP8FcEebkpWUTlxeGYzZ28', '', 
'Duplo estímulo','', '1', '18 a 20', '2''', '2020');   

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 30, 'Mobilidade Quadril', 'https://drive.google.com/open?id=1-SwXhjDOnWfrW3QgCY8XahVF0IEPGg_B', '', '','', '', '', '', '');               


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 30, 'Agachamento Livre', 'https://drive.google.com/open?id=0B97wQJP8FcEeVi1RdUlpOE1JYXc', '', 
'Duplo estímulo','', '1', '5 a 7', '30"', '4020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 30, 'Agachamento Livre', 'https://drive.google.com/open?id=0B97wQJP8FcEeVi1RdUlpOE1JYXc', '', 
'Duplo estímulo','', '1', '18 a 20', '2''', '2020'); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 30, 'Agachamento Livre', 'https://drive.google.com/open?id=0B97wQJP8FcEeVi1RdUlpOE1JYXc', '', 
'Duplo estímulo','', '1', '5 a 7', '30"', '4020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 30, 'Agachamento Livre', 'https://drive.google.com/open?id=0B97wQJP8FcEeVi1RdUlpOE1JYXc', '', 
'Duplo estímulo','', '1', '18 a 20', '2''', '2020'); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 30, 'Agachamento Sumô', 'https://drive.google.com/open?id=1jtFjEgYgfC6w8h9-Ai8lXcyS5cNh6gVM', '', 
'Duplo estímulo','', '1', '5 a 7', '30"', '4020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 30, 'Agachamento Sumô', 'https://drive.google.com/open?id=1jtFjEgYgfC6w8h9-Ai8lXcyS5cNh6gVM', '', 
'Duplo estímulo','', '1', '18 a 20', '2''', '2020'); 

--modelo 14 PA A2


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 31, 'Mobilidade Escapular', 'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', '','', '1', '10', '30"', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 31, 'Supino Halter Inclinado', 'https://drive.google.com/open?id=0B97wQJP8FcEeS1dRUUZ6bGFtd1U', '',
     'Parcial','', '3', '8 a 12', '45"', '2020');    


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 31, 'Supino Reto', 'https://drive.google.com/open?id=0B97wQJP8FcEeSGhpWW9nb1N0bU0', '', 
     'Parcial','', '3', '8 a 12', '45"', '2020');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 31, 'Triceps Corda', 'https://drive.google.com/open?id=0B97wQJP8FcEeTy1VZGEzRjU2dlE', '', 
     'Parcial','', '2', '8 a 12', '45"', '2020');         

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 31, 'Puxador Triângulo', 'https://drive.google.com/open?id=0B97wQJP8FcEeaXVzMXF3RHRMMWc', '',
     'Parcial','', '3', '8 a 12', '45"', '2020'); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 31, 'Remada Baixa Aberta', 'https://drive.google.com/open?id=0B97wQJP8FcEeRDVya1lPMnNmaW8', '', 
     'Parcial','', '3', '8 a 12', '45"', '2020');           

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 31, 'Rosca Inclinada', 'https://drive.google.com/open?id=0B97wQJP8FcEeTll3bnVlZGJSSnc', '', 
     'Parcial','', '2', '8 a 12', '45"', '2020');  


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 31, 'Mobilidade Quadril', 'https://drive.google.com/open?id=1-SwXhjDOnWfrW3QgCY8XahVF0IEPGg_B', '', '','', '1', '10', '30"', '');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 31, 'Leg Press Unilateral', 'https://drive.google.com/open?id=0B97wQJP8FcEeelFyemtGb3k5bEk', '', 
     'Parcial','', '3', '8 a 12', '45"', '2020');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 31, 'Agachamento Sumô', 'https://drive.google.com/open?id=1jtFjEgYgfC6w8h9-Ai8lXcyS5cNh6gVM', '', 
     'Parcial','', '3', '8 a 12', '45"', '2020');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 31, 'Mesa Flexora', 'https://drive.google.com/open?id=0B97wQJP8FcEec2pJcl9XM200cjA', '', 
     'Parcial','', '1', '8 a 12', '45"', '2020');

--modelo 14 PA AB1
INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 32, 'Mobilidade Escapular', 'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', '','', '1', '10', '30"', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 32, 'Supino Halter Inclinado', 'https://drive.google.com/open?id=0B97wQJP8FcEeS1dRUUZ6bGFtd1U', '',
     'Parcial','', '5', '8 a 12', '45"', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 32, 'Cross Over', 'https://drive.google.com/open?id=0B97wQJP8FcEebm9tUFJKRXVyV3c', '', 
     'Parcial','', '3', '8 a 12', '45"', '2020');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 32, 'Desenvolvimento', 'https://drive.google.com/open?id=0B97wQJP8FcEeM1l2ZFZUV00xWTg', '', 
     'Parcial','', '2', '8 a 12', '45"', '2020');         

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 32, 'Triceps Corda', 'https://drive.google.com/open?id=0B97wQJP8FcEeTy1VZGEzRjU2dlE', '',
     'Parcial','', '3', '8 a 12', '45"', '2020'); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 32, 'Estabilização 2 apoios', 'https://drive.google.com/open?id=10bslWCl-qbFQL39KJQ8pmei0GhF-q1q9', '', '','', '2', 'Máximo', '30"', ''); 


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 32, 'Mobilidade Escapular', 'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', '','', '1', '10', '30"', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 32, 'Puxador Triângulo', 'https://drive.google.com/open?id=0B97wQJP8FcEeaXVzMXF3RHRMMWc', '',
     'Parcial','', '5', '8 a 12', '45"', '2020'); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 32, 'Remada Baixa Aberta', 'https://drive.google.com/open?id=0B97wQJP8FcEeRDVya1lPMnNmaW8', '',
     'Parcial','', '3', '8 a 12', '45"', '2020'); 


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 32, 'Rosca Inclinada', 'https://drive.google.com/open?id=0B97wQJP8FcEeTll3bnVlZGJSSnc', '',
     'Parcial','', '3', '8 a 12', '45"', '2020'); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 32, 'Mobilidade Quadril', 'https://drive.google.com/open?id=1-SwXhjDOnWfrW3QgCY8XahVF0IEPGg_B', '', '','', '1', '10', '30"', '');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 32, 'Leg Press Unilateral', 'https://drive.google.com/open?id=0B97wQJP8FcEeelFyemtGb3k5bEk', '', 
     'Parcial','', '3', '8 a 12', '45"', '2020');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 32, 'Agachamento Sumô', 'https://drive.google.com/open?id=1jtFjEgYgfC6w8h9-Ai8lXcyS5cNh6gVM', '', 
     'Parcial','', '3', '8 a 12', '45"', '2020');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 32, 'Mesa Flexora', 'https://drive.google.com/open?id=0B97wQJP8FcEec2pJcl9XM200cjA', '', 
     'Parcial','', '2', '8 a 12', '45"', '2020');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 32, 'Cadeira Extensora', 'https://drive.google.com/open?id=0B97wQJP8FcEeZGViUmFBTVhtTzg', '', 
     'Parcial','', '1', '8 a 12', '45"', '2020');

--modelo 15 SD A2

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 33, 'Mobilidade Escapular', 'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', '','', '1', '10', '30"', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 33, 'Supino Máquina', 'https://drive.google.com/open?id=1WCmr8D5ipoyGeTPPdzdLrl2pA_Brhs1Y', '', 
'Super Drop-Set','https://drive.google.com/open?id=1y69rnnva20tZd6e608_W5llcl6Dh8Q5P', '2', '5a7+x+x até 20-25 reps', '1''30" a 2''', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 33, 'Crucifixo na Polia', 'https://drive.google.com/open?id=0B97wQJP8FcEecUdWUmZrcHd0bWc', '', 
'Super Drop-Set','https://drive.google.com/open?id=1y69rnnva20tZd6e608_W5llcl6Dh8Q5P', '2', '5a7+x+x até 20-25 reps', '1''30" a 2''', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 33, 'Tríceps na Polia', 'https://drive.google.com/open?id=0B97wQJP8FcEeZ1p4SEowMzdVU1E', '', 
'Super Drop-Set','https://drive.google.com/open?id=1y69rnnva20tZd6e608_W5llcl6Dh8Q5P', '2', '5a7+x+x até 20-25 reps', '1''30" a 2''', '2020');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 33, 'Puxador Aberto', 'https://drive.google.com/open?id=0B97wQJP8FcEeQURFWFNGeFhtYzQ', '', 
'Super Drop-Set','https://drive.google.com/open?id=1y69rnnva20tZd6e608_W5llcl6Dh8Q5P', '2', '5a7+x+x até 20-25 reps', '1''30" a 2''', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 33, 'Remada Máquina', 'https://drive.google.com/open?id=1J91nrQ5AzrbcjJxjNHPt3tOGOaQOlDN6', '', 
'Super Drop-Set','https://drive.google.com/open?id=1y69rnnva20tZd6e608_W5llcl6Dh8Q5P', '2', '5a7+x+x até 20-25 reps', '1''30" a 2''', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 33, 'Rosca Direta Barra', 'https://drive.google.com/open?id=0B97wQJP8FcEebkpWUTlxeGYzZ28', '', 
'Super Drop-Set','https://drive.google.com/open?id=1y69rnnva20tZd6e608_W5llcl6Dh8Q5P', '1', '5a7+x+x até 20-25 reps', '1''30" a 2''', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 33, 'Mobilidade Quadril', 'https://drive.google.com/open?id=1-SwXhjDOnWfrW3QgCY8XahVF0IEPGg_B', '', '','', '1', '10', '30"', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 33, 'Leg Press', 'https://drive.google.com/open?id=0B97wQJP8FcEeUmJYcUNodXRNRkE', '', 
'Super Drop-Set','https://drive.google.com/open?id=1y69rnnva20tZd6e608_W5llcl6Dh8Q5P', '2', '5a7+x+x até 20-25 reps', '1''30" a 2''', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 33, 'Agachamento Smith', 'https://drive.google.com/open?id=0B97wQJP8FcEeRXkyWUk3UUtiMkU', '', 
'Super Drop-Set','https://drive.google.com/open?id=1y69rnnva20tZd6e608_W5llcl6Dh8Q5P', '2', '5a7+x+x até 20-25 reps', '1''30" a 2''', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 33, 'Mesa Flexora', 'https://drive.google.com/open?id=0B97wQJP8FcEec2pJcl9XM200cjA', '', 
'Super Drop-Set','https://drive.google.com/open?id=1y69rnnva20tZd6e608_W5llcl6Dh8Q5P', '1', '5a7+x+x até 20-25 reps', '1''30" a 2''', '2020');    

--modelo 15 SD AB1


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 34, 'Mobilidade Escapular', 'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', '','', '1', '10', '30"', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 34, 'Supino Máquina', 'https://drive.google.com/open?id=1WCmr8D5ipoyGeTPPdzdLrl2pA_Brhs1Y', '', 
'Super Drop-Set','https://drive.google.com/open?id=1y69rnnva20tZd6e608_W5llcl6Dh8Q5P', '5', '5a7+x+x até 20-25 reps', '1''30" a 2''', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 34, 'Crucifixo na Polia', 'https://drive.google.com/open?id=0B97wQJP8FcEecUdWUmZrcHd0bWc', '', 
'Super Drop-Set','https://drive.google.com/open?id=1y69rnnva20tZd6e608_W5llcl6Dh8Q5P', '3', '5a7+x+x até 20-25 reps', '1''30" a 2''', '2020');    


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 34, 'Desenvolvimento', 'https://drive.google.com/open?id=0B97wQJP8FcEeM1l2ZFZUV00xWTg', '', 
'Super Drop-Set','https://drive.google.com/open?id=1y69rnnva20tZd6e608_W5llcl6Dh8Q5P', '2', '5a7+x+x até 20-25 reps', '1''30" a 2''', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 34, 'Tríceps na Polia', 'https://drive.google.com/open?id=0B97wQJP8FcEeZ1p4SEowMzdVU1E', '', 
'Super Drop-Set','https://drive.google.com/open?id=1y69rnnva20tZd6e608_W5llcl6Dh8Q5P', '3', '5a7+x+x até 20-25 reps', '1''30" a 2''', '2020');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 34, 'Estabilização 2 apoios', 'https://drive.google.com/open?id=10bslWCl-qbFQL39KJQ8pmei0GhF-q1q9', '', '','', '2', 'Máximo', '30"', ''); 


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 34, 'Mobilidade Escapular', 'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', '','', '1', '10', '30"', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 34, 'Puxador Aberto', 'https://drive.google.com/open?id=0B97wQJP8FcEeQURFWFNGeFhtYzQ', '', 
'Super Drop-Set','https://drive.google.com/open?id=1y69rnnva20tZd6e608_W5llcl6Dh8Q5P', '5', '5a7+x+x até 20-25 reps', '1''30" a 2''', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 34, 'Remada Máquina', 'https://drive.google.com/open?id=1J91nrQ5AzrbcjJxjNHPt3tOGOaQOlDN6', '', 
'Super Drop-Set','https://drive.google.com/open?id=1y69rnnva20tZd6e608_W5llcl6Dh8Q5P', '3', '5a7+x+x até 20-25 reps', '1''30" a 2''', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 34, 'Rosca Direta Barra', 'https://drive.google.com/open?id=0B97wQJP8FcEebkpWUTlxeGYzZ28', '', 
'Super Drop-Set','https://drive.google.com/open?id=1y69rnnva20tZd6e608_W5llcl6Dh8Q5P', '3', '5a7+x+x até 20-25 reps', '1''30" a 2''', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 34, 'Mobilidade Quadril', 'https://drive.google.com/open?id=1-SwXhjDOnWfrW3QgCY8XahVF0IEPGg_B', '', '','', '1', '10', '30"', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 34, 'Leg Press', 'https://drive.google.com/open?id=0B97wQJP8FcEeUmJYcUNodXRNRkE', '', 
'Super Drop-Set','https://drive.google.com/open?id=1y69rnnva20tZd6e608_W5llcl6Dh8Q5P', '5', '5a7+x+x até 20-25 reps', '1''30" a 2''', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 34, 'Agachamento Smith', 'https://drive.google.com/open?id=0B97wQJP8FcEeRXkyWUk3UUtiMkU', '', 
'Super Drop-Set','https://drive.google.com/open?id=1y69rnnva20tZd6e608_W5llcl6Dh8Q5P', '2', '5a7+x+x até 20-25 reps', '1''30" a 2''', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 34, 'Mesa Flexora', 'https://drive.google.com/open?id=0B97wQJP8FcEec2pJcl9XM200cjA', '', 
'Super Drop-Set','https://drive.google.com/open?id=1y69rnnva20tZd6e608_W5llcl6Dh8Q5P', '1', '5a7+x+x até 20-25 reps', '1''30" a 2''', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 34, 'Cadeira Extensora', 'https://drive.google.com/open?id=0B97wQJP8FcEeZGViUmFBTVhtTzg', '', 
'Super Drop-Set','https://drive.google.com/open?id=1y69rnnva20tZd6e608_W5llcl6Dh8Q5P', '1', '5a7+x+x até 20-25 reps', '1''30" a 2''', '2020');         

--modelo 1 PC a3

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 35, 'Mobilidade Quadril', 'https://drive.google.com/open?id=1-SwXhjDOnWfrW3QgCY8XahVF0IEPGg_B', '', '','', '1', '10', '1''', '');


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 35, 'Mobilidade Escapular', 'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', '','', '1', '10', '1''', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 35, 'Agachamento Halter', 'https://drive.google.com/open?id=0B97wQJP8FcEeUmFDZVNTWHJMSE0', '', 'Perda de Cadência','', '2', '8 a 12', '1''', '2020');


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 35, 'Supino Halter Inclinado', 'https://drive.google.com/open?id=0B97wQJP8FcEeS1dRUUZ6bGFtd1U', '', 'Perda de Cadência','', '2', '8 a 12', '1''', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 35, 'Cadeira Flexora', '', '', 'Perda de Cadência','', '2', '8 a 12', '1''', '2020');        


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 35, 'Puxador Triângulo', 'https://drive.google.com/open?id=0B97wQJP8FcEeaXVzMXF3RHRMMWc', '', 'Perda de Cadência','', '2', '8 a 12', '1''', '2020'); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 35, 'Triceps Polia', 'https://drive.google.com/open?id=0B97wQJP8FcEeZ1p4SEowMzdVU1E', '', 'Perda de Cadência','', '2', '8 a 12', '1''', '2020'); 


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 35, 'Rosca Direta Halter', 'https://drive.google.com/open?id=0B97wQJP8FcEeZldPUW52LUd4Rnc', '', 'Perda de Cadência','', '2', '8 a 12', '1''', '2020'); 
    
INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 35, 'Estabilização Frontal', 'https://drive.google.com/open?id=0B97wQJP8FcEeUVctQmgyNkl6S0k', '', '','', '3', 'até 1''', '1''', ''); 


    --modelo 2 FC A3


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 36, 'Mobilidade Escapular', 'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', '','', '1', '10', '1''', '');


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 36, 'Supino Halter', 'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', 
'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '2', '12 a 15', '1''', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 36, 'Desenvolvimento', 'https://drive.google.com/open?id=0B97wQJP8FcEeM1l2ZFZUV00xWTg', '', 
'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '2', '12 a 15', '1''', '2020');           

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 36, 'Puxador Aberto', 'https://drive.google.com/open?id=0B97wQJP8FcEeQURFWFNGeFhtYzQ', '', 
'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '2', '12 a 15', '1''', '2020');    


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 36, 'Remada Curvada Halteres N', 'https://drive.google.com/open?id=17fFqGX8dHObTX9t72QNuGUoaW0jhrA8U', '', 
'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '2', '12 a 15', '1''', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 36, 'Mobilidade Tornozelo', 'https://drive.google.com/open?id=1t7I0VtNVKsDnIPQI06dI_ZDe157tPCTr', '', '','', '1', '10', '1''', '');    


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 36, 'Mobilidade Quadril', 'https://drive.google.com/open?id=1-SwXhjDOnWfrW3QgCY8XahVF0IEPGg_B', '', '','', '1', '10', '1''', '');    


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 36, 'Agachamento Sumô', 'https://drive.google.com/open?id=1jtFjEgYgfC6w8h9-Ai8lXcyS5cNh6gVM', '', 
'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '2', '12 a 15', '1''', '2020');      

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 36, 'Cadeira Flexora', '', '', 
'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '2', '12 a 15', '1''', '2020');   

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 36, 'Estabilização Frontal', '', '', '','', '3', 'até 1''', '1''', '2020');        


--modelo 3 FC A2 --3dias

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 37, 'Mobilidade Escapular', 'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', '','', '1', '10', '1"', '');


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 37, 'Supino Reto', 'https://drive.google.com/open?id=0B97wQJP8FcEeSGhpWW9nb1N0bU0', '', 
'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '3', '8 a 12', '1''15"', '2030');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 37, 'Supino Inclinado', 'https://drive.google.com/open?id=0B97wQJP8FcEeZ0cyR0VyVUNBOFk', '', 
'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '2', '8 a 12', '1''15"', '2030');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 37, 'Puxador Supinado', 'https://drive.google.com/open?id=0B97wQJP8FcEeZ1FTY0xfV21sWlU', '', 
'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '3', '8 a 12', '1''15"', '2030'); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 37, 'Remada Baixa Aberta', 'https://drive.google.com/open?id=0B97wQJP8FcEeRDVya1lPMnNmaW8', '', 
'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '2', '8 a 12', '1''15"', '2030');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 37, 'Mobilidade Tornozelo', 'https://drive.google.com/open?id=1t7I0VtNVKsDnIPQI06dI_ZDe157tPCTr', '', '','', '1', '10', '1''', '');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 37, 'Mobilidade Quadril', 'https://drive.google.com/open?id=1-SwXhjDOnWfrW3QgCY8XahVF0IEPGg_B', '', '','', '1', '10', '1''', '');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 37, 'Agachamento Frontal', 'https://drive.google.com/open?id=1PnIFK7Lj4xFeZTwBG7PWtd4HhVkbMyEi', '', 
'Falha Concêntrica','https://drive.google.com/open?id=1PnIFK7Lj4xFeZTwBG7PWtd4HhVkbMyEi', '3', '8 a 12', '1''15"', '2030');         

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 37, 'Mesa Flexora', 'https://drive.google.com/open?id=0B97wQJP8FcEec2pJcl9XM200cjA', '', 
'Falha Concêntrica','https://drive.google.com/open?id=1PnIFK7Lj4xFeZTwBG7PWtd4HhVkbMyEi', '2', '8 a 12', '1''15"', '2030');     

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 37, 'Estabilização 3 apoios', 'https://drive.google.com/open?id=1sJMkVowV4194OOl8QbwKIqWlShZirSbP', '', '','', '3', 'até 1''', '1''', '');  

--modelo 3 FC A3

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 38, 'Mobilidade Escapular', 'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', '','', '1', '10', '1"', '');


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 38, 'Supino Reto', 'https://drive.google.com/open?id=0B97wQJP8FcEeSGhpWW9nb1N0bU0', '', 
'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '2', '8 a 12', '1''15"', '2030');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 38, 'Supino Inclinado', 'https://drive.google.com/open?id=0B97wQJP8FcEeZ0cyR0VyVUNBOFk', '', 
'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '2', '8 a 12', '1''15"', '2030');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 38, 'Puxador Supinado', 'https://drive.google.com/open?id=0B97wQJP8FcEeZ1FTY0xfV21sWlU', '', 
'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '2', '8 a 12', '1''15"', '2030'); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 38, 'Remada Baixa Aberta', 'https://drive.google.com/open?id=0B97wQJP8FcEeRDVya1lPMnNmaW8', '', 
'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '2', '8 a 12', '1''15"', '2030');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 38, 'Mobilidade Tornozelo', 'https://drive.google.com/open?id=1t7I0VtNVKsDnIPQI06dI_ZDe157tPCTr', '', '','', '1', '10', '1''', '');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 38, 'Mobilidade Quadril', 'https://drive.google.com/open?id=1-SwXhjDOnWfrW3QgCY8XahVF0IEPGg_B', '', '','', '1', '10', '1''', '');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 38, 'Agachamento Frontal', 'https://drive.google.com/open?id=1PnIFK7Lj4xFeZTwBG7PWtd4HhVkbMyEi', '', 
'Falha Concêntrica','https://drive.google.com/open?id=1PnIFK7Lj4xFeZTwBG7PWtd4HhVkbMyEi', '2', '8 a 12', '1''15"', '2030');         

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 38, 'Mesa Flexora', 'https://drive.google.com/open?id=0B97wQJP8FcEec2pJcl9XM200cjA', '', 
'Falha Concêntrica','https://drive.google.com/open?id=1PnIFK7Lj4xFeZTwBG7PWtd4HhVkbMyEi', '2', '8 a 12', '1''15"', '2030');     

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 38, 'Estabilização 3 apoios', 'https://drive.google.com/open?id=1sJMkVowV4194OOl8QbwKIqWlShZirSbP', '', '','', '3', 'até 1''', '1''', ''); 


--modelo 4 FC A3

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 39, 'Mobilidade Escapular', 
    'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', '','', '1', '10', '1''', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 39, 'Supino Máquina', 
    'https://drive.google.com/open?id=1WCmr8D5ipoyGeTPPdzdLrl2pA_Brhs1Y', '', 'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '3', '5 a 7', '1''30"', '3030');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 39, 'Supino Halter Inclinado','https://drive.google.com/open?id=0B97wQJP8FcEeS1dRUUZ6bGFtd1U', 
    '', 'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '2', '5 a 7', '1''30"', '3030');    


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 39, 'Puxador Triângulo','https://drive.google.com/open?id=0B97wQJP8FcEeaXVzMXF3RHRMMWc', 
    '', 'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '3', '5 a 7', '1''30"', '3030');    


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 39, 'Remada Baixa Triângulo','https://drive.google.com/open?id=0B97wQJP8FcEebnhKRUpyS2pfNTA', 
    '', 'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '2', '5 a 7', '1''30"', '3030');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 39, 'Mobilidade Tornozelo', 'https://drive.google.com/open?id=1t7I0VtNVKsDnIPQI06dI_ZDe157tPCTr', '', '','', '1', '10', '1''', '');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 39, 'Mobilidade Quadril', 'https://drive.google.com/open?id=1-SwXhjDOnWfrW3QgCY8XahVF0IEPGg_B', '', '','', '1', '10', '1''', ''); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 39, 'Agachamento Búlgaro','https://drive.google.com/open?id=1nfZa_N37LxpzZllrVniNWBIe7R7qJjCE', 
    '', 'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '3', '5 a 7', '1''30"', '3030');     

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 39, 'Stiff Barra','https://drive.google.com/open?id=0B97wQJP8FcEea3l4bnlWcG9mVFk', 
    '', 'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '2', '5 a 7', '1''30"', '3030');     

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 39, 'Estabilização 3 apoios', 'https://drive.google.com/open?id=1sJMkVowV4194OOl8QbwKIqWlShZirSbP', '', '','', '3', 'até 1''', '1''', ''); 

--modelo 5 FC A3

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 40, 'Mobilidade Escapular', 
    'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', '','', '1', '10', '1''', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 40, 'Supino Reto', 'https://drive.google.com/open?id=0B97wQJP8FcEeSGhpWW9nb1N0bU0', '*', 
'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '', '', '', '');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 40, 'Desenvolvimento', 'https://drive.google.com/open?id=0B97wQJP8FcEeM1l2ZFZUV00xWTg', '*', 
'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '', '', '', '');    


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 40, 'Puxador Aberto', 'https://drive.google.com/open?id=0B97wQJP8FcEeQURFWFNGeFhtYzQ', '*', 
'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE','', '', '', '');      

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 40, 'Remada Baixa Supinada', 'https://drive.google.com/open?id=0B97wQJP8FcEeY1dySmkxUzN6a0U', '*', 
'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE','', '', '', '');     

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 40, 'Mobilidade Tornozelo', 'https://drive.google.com/open?id=1t7I0VtNVKsDnIPQI06dI_ZDe157tPCTr', '', '','', '1', '10', '1''', '');     


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 40, 'Mobilidade Quadril', 'https://drive.google.com/open?id=1-SwXhjDOnWfrW3QgCY8XahVF0IEPGg_B', '*', '','', '1', '10', '1''', ''); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 40, 'Agachamento Búlgaro','https://drive.google.com/open?id=1nfZa_N37LxpzZllrVniNWBIe7R7qJjCE', 
    '*', 'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '', '', '', ''); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 40, 'Cadeira Flexora', '', '*', 'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '', '', '', ''); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 40, 'Estabilização Lateral', 'https://drive.google.com/open?id=0B97wQJP8FcEeNml3UjlFMktrTFk', '*', 
'','', '2', 'até 1''', '1''', ''); 

--modelo 6 OV A3

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 41, 'Mobilidade Escapular', 
    'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', '','', '1', '10', '', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 41, 'Supino Halter', 'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', 
'Oclusão Vascular','https://drive.google.com/open?id=0B97wQJP8FcEeY0RRZ21iWHZ5MDA', '2', '20" + 8 a 12', '1''', '2020'); 


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 41, 'Supino Halter Inclinado', 'https://drive.google.com/open?id=0B97wQJP8FcEeS1dRUUZ6bGFtd1U', '', 
'Oclusão Vascular','https://drive.google.com/open?id=0B97wQJP8FcEeY0RRZ21iWHZ5MDA', '2', '20" + 8 a 12', '1''', '2020'); 


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 41, 'Remada Baixa Supinada', 'https://drive.google.com/open?id=0B97wQJP8FcEeY1dySmkxUzN6a0U', '', 
'Oclusão Vascular','https://drive.google.com/open?id=0B97wQJP8FcEeY0RRZ21iWHZ5MDA', '2', '20" + 8 a 12', '1''', '2020'); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 41, 'Remada Curvada Aberta', 'https://drive.google.com/open?id=0B97wQJP8FcEeSmNQcjhHSTUtZVU', '', 
'Oclusão Vascular','https://drive.google.com/open?id=0B97wQJP8FcEeY0RRZ21iWHZ5MDA', '2', '20" + 8 a 12', '1''', '2020'); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 41, 'Mobilidade Tornozelo', 'https://drive.google.com/open?id=1t7I0VtNVKsDnIPQI06dI_ZDe157tPCTr', '', '','', '1', '10', '', '');     

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 41, 'Mobilidade Quadril', 'https://drive.google.com/open?id=1-SwXhjDOnWfrW3QgCY8XahVF0IEPGg_B', '*', '','', '1', '10', '', ''); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 41, 'Agachamento Livre', 'https://drive.google.com/open?id=0B97wQJP8FcEeVi1RdUlpOE1JYXc', '', 
'Oclusão Vascular','https://drive.google.com/open?id=0B97wQJP8FcEeY0RRZ21iWHZ5MDA', '3', '20" + 8 a 12', '1''', '2020'); 


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 41, 'Leg Press', 'https://drive.google.com/open?id=0B97wQJP8FcEeUmJYcUNodXRNRkE', '', 
'Oclusão Vascular','https://drive.google.com/open?id=0B97wQJP8FcEeY0RRZ21iWHZ5MDA', '2', '20" + 8 a 12', '1''', '2020'); 


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 41, 'Cadeira Flexora', '', '', 
'Oclusão Vascular','https://drive.google.com/open?id=0B97wQJP8FcEeY0RRZ21iWHZ5MDA', '2', '20" + 8 a 12', '1''', '2020'); 


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 41, 'Estabilização 3 apoios', 'https://drive.google.com/open?id=1sJMkVowV4194OOl8QbwKIqWlShZirSbP', '', '','', '3', 'Máx', '1''', 'Isometria'); 

--modelo 6 OV ABC1

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 42, 'Mobilidade Escapular', 
    'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', '','', '1', '10', '', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 42, 'Supino Halter', 'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', 
'Oclusão Vascular','https://drive.google.com/open?id=0B97wQJP8FcEeY0RRZ21iWHZ5MDA', '3', '20" + 8 a 12', '1''', '2020'); 


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 42, 'Supino Halter Inclinado', 'https://drive.google.com/open?id=0B97wQJP8FcEeS1dRUUZ6bGFtd1U', '', 
'Oclusão Vascular','https://drive.google.com/open?id=0B97wQJP8FcEeY0RRZ21iWHZ5MDA', '4', '20" + 8 a 12', '1''', '2020'); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 42, 'Supino Reto', 'https://drive.google.com/open?id=0B97wQJP8FcEeSGhpWW9nb1N0bU0', '', 
'Oclusão Vascular','https://drive.google.com/open?id=0B97wQJP8FcEeY0RRZ21iWHZ5MDA', '1', '20" + 8 a 12', '1''', '2020');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 42, 'Mobilidade Escapular', 
    'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', '','', '1', '10', '', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 42, 'Remada Baixa Supinada', 'https://drive.google.com/open?id=0B97wQJP8FcEeY1dySmkxUzN6a0U', '', 
'Oclusão Vascular','https://drive.google.com/open?id=0B97wQJP8FcEeY0RRZ21iWHZ5MDA', '3', '20" + 8 a 12', '1''', '2020'); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 42, 'Remada Curvada Aberta', 'https://drive.google.com/open?id=0B97wQJP8FcEeSmNQcjhHSTUtZVU', '', 
'Oclusão Vascular','https://drive.google.com/open?id=0B97wQJP8FcEeY0RRZ21iWHZ5MDA', '4', '20" + 8 a 12', '1''', '2020'); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 42, 'Remada Baixa Triângulo','https://drive.google.com/open?id=0B97wQJP8FcEebnhKRUpyS2pfNTA', '', 
'Oclusão Vascular','https://drive.google.com/open?id=0B97wQJP8FcEeY0RRZ21iWHZ5MDA', '1', '20" + 8 a 12', '1''', '2020'); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 42, 'Mobilidade Tornozelo', 'https://drive.google.com/open?id=1t7I0VtNVKsDnIPQI06dI_ZDe157tPCTr', '', '','', '1', '10', '', '');     

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 42, 'Mobilidade Quadril', 'https://drive.google.com/open?id=1-SwXhjDOnWfrW3QgCY8XahVF0IEPGg_B', '', '','', '1', '10', '', ''); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 42, 'Agachamento Livre', 'https://drive.google.com/open?id=0B97wQJP8FcEeVi1RdUlpOE1JYXc', '', 
'Oclusão Vascular','https://drive.google.com/open?id=0B97wQJP8FcEeY0RRZ21iWHZ5MDA', '4', '20" + 8 a 12', '1''', '2020'); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 42, 'Leg Press', 'https://drive.google.com/open?id=0B97wQJP8FcEeUmJYcUNodXRNRkE', '', 
'Oclusão Vascular','https://drive.google.com/open?id=0B97wQJP8FcEeY0RRZ21iWHZ5MDA', '3', '20" + 8 a 12', '1''', '2020'); 


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 42, 'Mesa Flexora', 'https://drive.google.com/open?id=0B97wQJP8FcEec2pJcl9XM200cjA', '', 
'Oclusão Vascular','https://drive.google.com/open?id=0B97wQJP8FcEeY0RRZ21iWHZ5MDA', '1', '20" + 8 a 12', '1''', '2020'); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 42, 'Estabilização 3 apoios', 'https://drive.google.com/open?id=1sJMkVowV4194OOl8QbwKIqWlShZirSbP', '', '','', '3', 'Máx', '1''', 'Isometria');  

--modelo 7 BS A3


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 43, 'Mobilidade Escapular', 
    'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', '','', '1', '10', '', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 43, 'Supino Reto', 'https://drive.google.com/open?id=0B97wQJP8FcEeSGhpWW9nb1N0bU0', '', 
'Bi-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '2', '8 a 12', '', '2020');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 43, 'Apoio', 'https://drive.google.com/open?id=0B97wQJP8FcEeZEJpc3loczFwRkU', '', 
'Bi-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '2', 'Máx', '60"', '2020');  


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 43, 'Puxador Aberto', 'https://drive.google.com/open?id=0B97wQJP8FcEeQURFWFNGeFhtYzQ', '*', 
'Bi-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '2', '8 a 12', '', '2020');


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 43, 'Puxador Supinado', 'https://drive.google.com/open?id=0B97wQJP8FcEeZ1FTY0xfV21sWlU', '', 
'Bi-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '2', '8 a 12', '60"', '2020');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 43, 'Mobilidade Tornozelo', 'https://drive.google.com/open?id=1t7I0VtNVKsDnIPQI06dI_ZDe157tPCTr', '', '','', '1', '10', '', '');    


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 43, 'Mobilidade Quadril', 'https://drive.google.com/open?id=1-SwXhjDOnWfrW3QgCY8XahVF0IEPGg_B', '', '','', '1', '10', '', ''); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 43, 'Leg Press', 'https://drive.google.com/open?id=0B97wQJP8FcEeUmJYcUNodXRNRkE', '', 
'Bi-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '3', '8 a 12', '', '2020');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 43, 'Agachamento Sumô', 'https://drive.google.com/open?id=1jtFjEgYgfC6w8h9-Ai8lXcyS5cNh6gVM', '', 
'Bi-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '3', '8 a 12', '60"', '2020');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 43, 'Mesa Flexora', 'https://drive.google.com/open?id=0B97wQJP8FcEec2pJcl9XM200cjA', '', 
'Bi-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '1', '8 a 12', '', '2020');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 43, 'Stiff Halter', 'https://drive.google.com/open?id=0B97wQJP8FcEeQjBWeERiLTA4STQ', '', 
'Bi-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '1', '8 a 12', '60"', '2020');

--modelo 7 BS ABC1

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 44, 'Mobilidade Escapular', 
    'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', '','', '1', '10', '', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 44, 'Supino Reto', 'https://drive.google.com/open?id=0B97wQJP8FcEeSGhpWW9nb1N0bU0', '', 
'Bi-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '3', '8 a 12', '', '2020');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 44, 'Apoio', 'https://drive.google.com/open?id=0B97wQJP8FcEeZEJpc3loczFwRkU', '', 
'Bi-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '3', '8 a 12', '60"', '2020');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 44, 'Supino Halter Inclinado', 'https://drive.google.com/open?id=0B97wQJP8FcEeS1dRUUZ6bGFtd1U', '', 
'Bi-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '3', '8 a 12', '', '2020');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 44, 'Desenvolvimento', 'https://drive.google.com/open?id=0B97wQJP8FcEeM1l2ZFZUV00xWTg', '', 
'Bi-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '3', '8 a 12', '60"', '2020');    


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 44, 'Mobilidade Escapular', 
    'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', '','', '1', '10', '', ''); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 44, 'Remada Baixa Triângulo','https://drive.google.com/open?id=0B97wQJP8FcEebnhKRUpyS2pfNTA', '', 
'Bi-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '3', '8 a 12', '', '2020');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 44, 'Remada Curvada Supinada','https://drive.google.com/open?id=0B97wQJP8FcEeR2F1dlJKbFJ0Tlk', '', 
'Bi-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '3', '8 a 12', '60"', '2020');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 44, 'Puxador Triângulo', 'https://drive.google.com/open?id=0B97wQJP8FcEeaXVzMXF3RHRMMWc', '', 
'Bi-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '3', '8 a 12', '', '2020');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 44, 'Puxador Aberto', 'https://drive.google.com/open?id=0B97wQJP8FcEeQURFWFNGeFhtYzQ', '', 
'Bi-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '3', '8 a 12', '60"', '2020');    


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 44, 'Mobilidade Tornozelo', 'https://drive.google.com/open?id=1t7I0VtNVKsDnIPQI06dI_ZDe157tPCTr', '', '','', '1', '10', '', '');     

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 44, 'Mobilidade Quadril', 'https://drive.google.com/open?id=1-SwXhjDOnWfrW3QgCY8XahVF0IEPGg_B', '', '','', '1', '10', '', ''); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 44, 'Agachamento Livre', 'https://drive.google.com/open?id=0B97wQJP8FcEeVi1RdUlpOE1JYXc', '', 
'Bi-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '3', '8 a 12', '', '2020'); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 44, 'Levantamento Terra', '', '', 
'Bi-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '3', '8 a 12', '60"', '2020');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 44, 'Cadeira Flexora', '', '', 
'Bi-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '2', '8 a 12', '', '2020'); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 44, 'Stiff Halter', 'https://drive.google.com/open?id=0B97wQJP8FcEeQjBWeERiLTA4STQ', '', 
'Bi-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '2', '8 a 12', '60"', '2020');  

--modelo 8 RP A3

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 45, 'Mobilidade Escapular', 
    'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', '','', '1', '10', '', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 45, 'Supino Reto', 'https://drive.google.com/open?id=0B97wQJP8FcEeSGhpWW9nb1N0bU0', '', 
'Rest and Pause','https://drive.google.com/open?id=0B97wQJP8FcEedk13cWcyaHdOeTA', '2', '5 a 7 10" X 10" X', '2''', '4020');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 45, 'Supino Inclinado', 'https://drive.google.com/open?id=0B97wQJP8FcEeZ0cyR0VyVUNBOFk', '', 
'Rest and Pause','https://drive.google.com/open?id=0B97wQJP8FcEedk13cWcyaHdOeTA', '2', '5 a 7 10" X 10" X', '2''', '4020');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 45, 'Puxador Triângulo', 'https://drive.google.com/open?id=0B97wQJP8FcEeaXVzMXF3RHRMMWc', '', 
'Rest and Pause','https://drive.google.com/open?id=0B97wQJP8FcEedk13cWcyaHdOeTA', '2', '5 a 7 10" X 10" X', '2''', '4020');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 45, 'Puxador Supinado', 'https://drive.google.com/open?id=0B97wQJP8FcEeZ1FTY0xfV21sWlU', '', 
'Rest and Pause','https://drive.google.com/open?id=0B97wQJP8FcEedk13cWcyaHdOeTA', '2', '5 a 7 10" X 10" X', '2''', '4020');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 45, 'Mobilidade Tornozelo', 'https://drive.google.com/open?id=1t7I0VtNVKsDnIPQI06dI_ZDe157tPCTr', '', '','', '1', '10', '', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 45, 'Mobilidade Quadril', 'https://drive.google.com/open?id=1-SwXhjDOnWfrW3QgCY8XahVF0IEPGg_B', '', '','', '1', '10', '', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 45, 'Leg Press', 'https://drive.google.com/open?id=0B97wQJP8FcEeUmJYcUNodXRNRkE', '', 
'Rest and Pause','https://drive.google.com/open?id=0B97wQJP8FcEedk13cWcyaHdOeTA', '2', '5 a 7 10" X 10" X', '2''', '4020');   

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 45, 'Agachamento Livre', 'https://drive.google.com/open?id=0B97wQJP8FcEeVi1RdUlpOE1JYXc', '', 
'Rest and Pause','https://drive.google.com/open?id=0B97wQJP8FcEedk13cWcyaHdOeTA', '2', '5 a 7 10" X 10" X', '2''', '4020');      

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 45, 'Mesa Flexora', 'https://drive.google.com/open?id=0B97wQJP8FcEec2pJcl9XM200cjA', '', 
'Rest and Pause','https://drive.google.com/open?id=0B97wQJP8FcEedk13cWcyaHdOeTA', '1', '5 a 7 10" X 10" X', '2''', '4020');      

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 45, 'Elevação de Quadril', 'https://drive.google.com/open?id=0B97wQJP8FcEeWG5oZzV5OHhXWWc', '', '','', '3', 'Máx', '1''', '3030');

--modelo 8 RP ABC1

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 46, 'Mobilidade Escapular', 
    'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', '','', '1', '10', '', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 46, 'Supino Reto', 'https://drive.google.com/open?id=0B97wQJP8FcEeSGhpWW9nb1N0bU0', '', 
'Rest and Pause','https://drive.google.com/open?id=0B97wQJP8FcEedk13cWcyaHdOeTA', '4', '5 a 7 10" X 10" X', '2''', '4020');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 46, 'Supino Inclinado', 'https://drive.google.com/open?id=0B97wQJP8FcEeZ0cyR0VyVUNBOFk', '', 
'Rest and Pause','https://drive.google.com/open?id=0B97wQJP8FcEedk13cWcyaHdOeTA', '3', '5 a 7 10" X 10" X', '2''', '4020');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 46, 'Supino Halter Inclinado', 'https://drive.google.com/open?id=0B97wQJP8FcEeS1dRUUZ6bGFtd1U', '', 
'Rest and Pause','https://drive.google.com/open?id=0B97wQJP8FcEedk13cWcyaHdOeTA', '3', '5 a 7 10" X 10" X', '2''', '4020');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 46, 'Mobilidade Escapular', 
    'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', '','', '1', '10', '', '');


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 46, 'Remada Baixa Triângulo','https://drive.google.com/open?id=0B97wQJP8FcEebnhKRUpyS2pfNTA', '', 
'Rest and Pause','https://drive.google.com/open?id=0B97wQJP8FcEedk13cWcyaHdOeTA', '4', '5 a 7 10" X 10" X', '2''', '4020');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 46, 'Remada Curvada Supinada','https://drive.google.com/open?id=0B97wQJP8FcEeR2F1dlJKbFJ0Tlk', '', 
'Rest and Pause','https://drive.google.com/open?id=0B97wQJP8FcEedk13cWcyaHdOeTA', '3', '5 a 7 10" X 10" X', '2''', '4020');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 46, 'Puxador Triângulo', 'https://drive.google.com/open?id=0B97wQJP8FcEeaXVzMXF3RHRMMWc', '', 
'Rest and Pause','https://drive.google.com/open?id=0B97wQJP8FcEedk13cWcyaHdOeTA', '3', '5 a 7 10" X 10" X', '2''', '4020');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 46, 'Mobilidade Tornozelo', 'https://drive.google.com/open?id=1t7I0VtNVKsDnIPQI06dI_ZDe157tPCTr', '', '','', '1', '10', '', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 46, 'Mobilidade Quadril', 'https://drive.google.com/open?id=1-SwXhjDOnWfrW3QgCY8XahVF0IEPGg_B', '', '','', '1', '10', '', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 46, 'Leg Press', 'https://drive.google.com/open?id=0B97wQJP8FcEeUmJYcUNodXRNRkE', '', 
'Rest and Pause','https://drive.google.com/open?id=0B97wQJP8FcEedk13cWcyaHdOeTA', '4', '5 a 7 10" X 10" X', '2''', '4020');   

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 46, 'Agachamento Livre', 'https://drive.google.com/open?id=0B97wQJP8FcEeVi1RdUlpOE1JYXc', '', 
'Rest and Pause','https://drive.google.com/open?id=0B97wQJP8FcEedk13cWcyaHdOeTA', '4', '5 a 7 10" X 10" X', '2''', '4020');      

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 46, 'Cadeira Flexora', '', '', 
'Rest and Pause','https://drive.google.com/open?id=0B97wQJP8FcEedk13cWcyaHdOeTA', '2', '5 a 7 10" X 10" X', '2''', '4020');      

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 46, 'Elevação de Quadril', 'https://drive.google.com/open?id=0B97wQJP8FcEeWG5oZzV5OHhXWWc', '', '','', '3', 'Máx', '1''', '3030');

--modelo 9 TRI A3

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 47, 'Mobilidade Escapular', 
    'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', 'Os dois exercícios', '','', '1', '10', '', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 47, 'Supino Reto', 'https://drive.google.com/open?id=0B97wQJP8FcEeSGhpWW9nb1N0bU0', '', 
'Tri-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '2', '8 a 12', '', '2020');  


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 47, 'Supino Halter', 'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', 
'Tri-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '2', '8 a 12', '', '2020');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 47, 'Apoio', 'https://drive.google.com/open?id=0B97wQJP8FcEeZEJpc3loczFwRkU', 'Mãos no banco', 
'Tri-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '2', '8 a 12', '1''30"', '2020');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 47, 'Puxador Aberto', 'https://drive.google.com/open?id=0B97wQJP8FcEeQURFWFNGeFhtYzQ', '', 
'Tri-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '2', '8 a 12', '', '2020');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 47, 'Puxador Supinado', 'https://drive.google.com/open?id=0B97wQJP8FcEeZ1FTY0xfV21sWlU', '', 
'Tri-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '2', '8 a 12', '', '2020');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 47, 'Remada Curvada Halteres N', 'https://drive.google.com/open?id=17fFqGX8dHObTX9t72QNuGUoaW0jhrA8U', '', 
'Tri-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '2', '8 a 12', '1''30"', '2020');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 47, 'Mobilidade Tornozelo', 'https://drive.google.com/open?id=1t7I0VtNVKsDnIPQI06dI_ZDe157tPCTr', '', '','', '1', '10', '', '');    


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 47, 'Mobilidade Quadril', 'https://drive.google.com/open?id=1-SwXhjDOnWfrW3QgCY8XahVF0IEPGg_B', 'Os dois exercícios', '','', '1', '10', '', '');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 47, 'Agachamento Livre', 'https://drive.google.com/open?id=0B97wQJP8FcEeVi1RdUlpOE1JYXc', '', 
'Tri-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '2', '8 a 12', '', '2020');     

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 47, 'Levantamento Terra', '', '', 
'Tri-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '2', '8 a 12', '', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 47, 'Stiff Barra','https://drive.google.com/open?id=0B97wQJP8FcEea3l4bnlWcG9mVFk','',
'Tri-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '2', '8 a 12', '1''30"', '2020');    

--modelo 9 TRI ABC1

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 48, 'Mobilidade Escapular', 
    'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', 'Os dois exercícios', '','', '1', '10', '', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 48, 'Supino Reto', 'https://drive.google.com/open?id=0B97wQJP8FcEeSGhpWW9nb1N0bU0', '', 
'Tri-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '4', '8 a 12', '', '2020');  


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 48, 'Supino Halter', 'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', 
'Tri-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '4', '8 a 12', '', '2020');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 48, 'Apoio', 'https://drive.google.com/open?id=0B97wQJP8FcEeZEJpc3loczFwRkU', 'Mãos no banco', 
'Tri-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '4', '8 a 12', '1''30"', '2020');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 48, 'Puxador Aberto', 'https://drive.google.com/open?id=0B97wQJP8FcEeQURFWFNGeFhtYzQ', '', 
'Tri-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '4', '8 a 12', '', '2020');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 48, 'Puxador Supinado', 'https://drive.google.com/open?id=0B97wQJP8FcEeZ1FTY0xfV21sWlU', '', 
'Tri-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '4', '8 a 12', '', '2020');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 48, 'Remada Curvada Halteres N', 'https://drive.google.com/open?id=17fFqGX8dHObTX9t72QNuGUoaW0jhrA8U', '', 
'Tri-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '4', '8 a 12', '1''30"', '2020');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 48, 'Mobilidade Tornozelo', 'https://drive.google.com/open?id=1t7I0VtNVKsDnIPQI06dI_ZDe157tPCTr', '', '','', '1', '10', '', '');    


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 48, 'Mobilidade Quadril', 'https://drive.google.com/open?id=1-SwXhjDOnWfrW3QgCY8XahVF0IEPGg_B', 'Os dois exercícios', '','', '1', '10', '', '');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 48, 'Agachamento Livre', 'https://drive.google.com/open?id=0B97wQJP8FcEeVi1RdUlpOE1JYXc', '', 
'Tri-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '4', '8 a 12', '', '2020');     

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 48, 'Levantamento Terra', '', '', 
'Tri-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '4', '8 a 12', '', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 48, 'Stiff Barra','https://drive.google.com/open?id=0B97wQJP8FcEea3l4bnlWcG9mVFk','',
'Tri-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '4', '8 a 12', '1''30"', '2020');    

--modelo 10 DST A3

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 49, 'Mobilidade Escapular', 
    'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', 'Os dois exercícios', '','', '1', '10', '', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 49, 'Supino Máquina', 'https://drive.google.com/open?id=1WCmr8D5ipoyGeTPPdzdLrl2pA_Brhs1Y', '', 
'Drop-Set','https://drive.google.com/open?id=0B97wQJP8FcEec3UwQ0c5Y0VaWHc', '2', '5 a 7 + X + X', '2''', '3030');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 49, 'Supino Reto', 'https://drive.google.com/open?id=0B97wQJP8FcEeSGhpWW9nb1N0bU0', '', 
'Drop-Set','https://drive.google.com/open?id=0B97wQJP8FcEec3UwQ0c5Y0VaWHc', '2', '5 a 7 + X + X', '2''', '3030');       

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 49, 'Puxador Supinado', 'https://drive.google.com/open?id=0B97wQJP8FcEeZ1FTY0xfV21sWlU', '', 
'Drop-Set','https://drive.google.com/open?id=0B97wQJP8FcEec3UwQ0c5Y0VaWHc', '2', '5 a 7 + X + X', '2''', '3030');       

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 49, 'Remada Máquina', 'https://drive.google.com/open?id=1J91nrQ5AzrbcjJxjNHPt3tOGOaQOlDN6', '', 
'Drop-Set','https://drive.google.com/open?id=0B97wQJP8FcEec3UwQ0c5Y0VaWHc', '2', '5 a 7 + X + X', '2''', '3030');       

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 49, 'Mobilidade Tornozelo', 'https://drive.google.com/open?id=1t7I0VtNVKsDnIPQI06dI_ZDe157tPCTr', '', '','', '1', '10', '', '');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 49, 'Mobilidade Quadril', 'https://drive.google.com/open?id=1-SwXhjDOnWfrW3QgCY8XahVF0IEPGg_B', 'Os dois exercícios', '','', '1', '10', '', '');  


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 49, 'Leg Press', 'https://drive.google.com/open?id=0B97wQJP8FcEeUmJYcUNodXRNRkE', 'Máquina', 
'Drop-Set','https://drive.google.com/open?id=0B97wQJP8FcEec3UwQ0c5Y0VaWHc', '3', '5 a 7 + X + X', '2''', '3030');       

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 49, 'Agachamento Smith', 'https://drive.google.com/open?id=0B97wQJP8FcEeRXkyWUk3UUtiMkU', '', 
'Drop-Set','https://drive.google.com/open?id=0B97wQJP8FcEec3UwQ0c5Y0VaWHc', '2', '5 a 7 + X + X', '2''', '3030');       

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 49, 'Cadeira Flexora', '', '', 
'Drop-Set','https://drive.google.com/open?id=0B97wQJP8FcEec3UwQ0c5Y0VaWHc', '2', '5 a 7 + X + X', '2''', '3030');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 49, 'Flexão de Tronco', 'https://drive.google.com/open?id=1-SwXhjDOnWfrW3QgCY8XahVF0IEPGg_B', '', '','', '3', 'Máx', '1''', '3030');  

--modelo 10 DST ABC1

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 50, 'Mobilidade Escapular', 
    'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', 'Os dois exercícios', '','', '1', '10', '', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 50, 'Supino Reto', 'https://drive.google.com/open?id=0B97wQJP8FcEeSGhpWW9nb1N0bU0', '', 
'Drop-Set','https://drive.google.com/open?id=0B97wQJP8FcEec3UwQ0c5Y0VaWHc', '3', '5 a 7 + X + X', '2''', '3030');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 50, 'Supino Máquina', 'https://drive.google.com/open?id=1WCmr8D5ipoyGeTPPdzdLrl2pA_Brhs1Y', '', 
'Drop-Set','https://drive.google.com/open?id=0B97wQJP8FcEec3UwQ0c5Y0VaWHc', '4', '5 a 7 + X + X', '2''', '3030');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 50, 'Desenvolvimento', 'https://drive.google.com/open?id=0B97wQJP8FcEeM1l2ZFZUV00xWTg', '', 
'Drop-Set','https://drive.google.com/open?id=0B97wQJP8FcEec3UwQ0c5Y0VaWHc', '1', '5 a 7 + X + X', '2''', '3030');    
   

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 50, 'Mobilidade Escapular', 
    'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', 'Os dois exercícios', '','', '1', '10', '', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 50, 'Puxador Supinado', 'https://drive.google.com/open?id=0B97wQJP8FcEeZ1FTY0xfV21sWlU', '', 
'Drop-Set','https://drive.google.com/open?id=0B97wQJP8FcEec3UwQ0c5Y0VaWHc', '3', '5 a 7 + X + X', '2''', '3030');       

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 50, 'Remada Máquina', 'https://drive.google.com/open?id=1J91nrQ5AzrbcjJxjNHPt3tOGOaQOlDN6', '', 
'Drop-Set','https://drive.google.com/open?id=0B97wQJP8FcEec3UwQ0c5Y0VaWHc', '4', '5 a 7 + X + X', '2''', '3030');       

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 50, 'Remada Baixa Triângulo','https://drive.google.com/open?id=0B97wQJP8FcEebnhKRUpyS2pfNTA', '',
    'Drop-Set','https://drive.google.com/open?id=0B97wQJP8FcEec3UwQ0c5Y0VaWHc', '1', '5 a 7 + X + X', '2''', '3030');       

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 50, 'Mobilidade Tornozelo', 'https://drive.google.com/open?id=1t7I0VtNVKsDnIPQI06dI_ZDe157tPCTr', '', '','', '1', '10', '', '');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 50, 'Mobilidade Quadril', 'https://drive.google.com/open?id=1-SwXhjDOnWfrW3QgCY8XahVF0IEPGg_B', 'Os dois exercícios', '','', '1', '10', '', '');  


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 50, 'Leg Press', 'https://drive.google.com/open?id=0B97wQJP8FcEeUmJYcUNodXRNRkE', 'Máquina', 
'Drop-Set','https://drive.google.com/open?id=0B97wQJP8FcEec3UwQ0c5Y0VaWHc', '4', '5 a 7 + X + X', '2''', '3030');       

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 50, 'Agachamento Smith', 'https://drive.google.com/open?id=0B97wQJP8FcEeRXkyWUk3UUtiMkU', '', 
'Drop-Set','https://drive.google.com/open?id=0B97wQJP8FcEec3UwQ0c5Y0VaWHc', '3', '5 a 7 + X + X', '2''', '3030');       

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 50, 'Mesa Flexora', 'https://drive.google.com/open?id=0B97wQJP8FcEec2pJcl9XM200cjA', '', 
'Drop-Set','https://drive.google.com/open?id=0B97wQJP8FcEec3UwQ0c5Y0VaWHc', '1', '5 a 7 + X + X', '2''', '3030');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 50, 'Flexão de Tronco', 'https://drive.google.com/open?id=1-SwXhjDOnWfrW3QgCY8XahVF0IEPGg_B', '', '','', '3', 'Máx', '1''', '3030');  

--modelo 11 OND A3        

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 51, 'Mobilidade Escapular', 
    'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', 'Os dois exercícios', '','', '1', '10', '1''', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 51, 'Supino Halter Inclinado', 'https://drive.google.com/open?id=0B97wQJP8FcEeS1dRUUZ6bGFtd1U', '*',
'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '', '', '', '');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 51, 'Paralela Banco', 'https://drive.google.com/open?id=1se-Tfm8A-GjH9Oc8QSMTeIuubObTnIFq', '*',
'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '2', '', '', '');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 51, 'Puxador Aberto', 'https://drive.google.com/open?id=0B97wQJP8FcEeQURFWFNGeFhtYzQ', '*', 
'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '', '', '', '');    


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 51, 'Remada Curvada Halteres N', 'https://drive.google.com/open?id=17fFqGX8dHObTX9t72QNuGUoaW0jhrA8U', '*', 
'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '2', '', '', '');     

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 51, 'Mobilidade Tornozelo', 'https://drive.google.com/open?id=1t7I0VtNVKsDnIPQI06dI_ZDe157tPCTr', '', '','', '1', '10', '1''', '');    


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 51, 'Mobilidade Quadril', 'https://drive.google.com/open?id=1-SwXhjDOnWfrW3QgCY8XahVF0IEPGg_B', 'Os dois exercícios', '','', '1', '10', '1''', '');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 51, 'Agachamento Búlgaro','https://drive.google.com/open?id=1nfZa_N37LxpzZllrVniNWBIe7R7qJjCE', 
    '*', 'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '', '', '', '');     


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 51, 'Cadeira Flexora', '', '*', 
'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '2', '', '', '');  


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 51, 'Perdigueiro', 'https://drive.google.com/open?id=0B97wQJP8FcEeOUlYLWQ0TGl5Tjg', 'cada lado', '','', '2', 'até 1''', '1''', '');    

--modelo 11 OND ABC1
INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 52, 'Mobilidade Escapular', 
    'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', 'Os dois exercícios', '','', '1', '10', '1''', '');


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 52, 'Supino Reto', 'https://drive.google.com/open?id=0B97wQJP8FcEeSGhpWW9nb1N0bU0', '*', 
'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '', '', '', '');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 52, 'Paralela Banco', 'https://drive.google.com/open?id=1se-Tfm8A-GjH9Oc8QSMTeIuubObTnIFq', '*',
'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '', '', '', '');  


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 52, 'Supino Inclinado', 'https://drive.google.com/open?id=0B97wQJP8FcEeZ0cyR0VyVUNBOFk', '*',
'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '', '', '', '');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 52, 'Flexão de Tronco', 'https://drive.google.com/open?id=1-SwXhjDOnWfrW3QgCY8XahVF0IEPGg_B', '*', 'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '2', '', '', '');  


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 52, 'Puxador Aberto', 'https://drive.google.com/open?id=0B97wQJP8FcEeQURFWFNGeFhtYzQ', '*',
'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '', '', '', '');  


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 52, 'Remada Curvada Halteres N', 'https://drive.google.com/open?id=17fFqGX8dHObTX9t72QNuGUoaW0jhrA8U', '*', 
'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '', '', '', ''); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 52, 'Remada Unilateral', 'https://drive.google.com/open?id=0B97wQJP8FcEecmdaVUZTSVJ0RWM', '*', 
'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '', '', '', ''); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 52, 'Flexão de Tronco', 'https://drive.google.com/open?id=1-SwXhjDOnWfrW3QgCY8XahVF0IEPGg_B', '*', 'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '2', '', '', '');  
   

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 52, 'Mobilidade Tornozelo', 'https://drive.google.com/open?id=1t7I0VtNVKsDnIPQI06dI_ZDe157tPCTr', '', '','', '1', '10', '1''', '');    


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 52, 'Mobilidade Quadril', 'https://drive.google.com/open?id=1-SwXhjDOnWfrW3QgCY8XahVF0IEPGg_B', 'Os dois exercícios', '','', '1', '10', '1''', '');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 52, 'Agachamento Búlgaro','https://drive.google.com/open?id=1nfZa_N37LxpzZllrVniNWBIe7R7qJjCE', 
    '*', 'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '', '', '', '');     

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 52, 'Agachamento Frontal', 'https://drive.google.com/open?id=1PnIFK7Lj4xFeZTwBG7PWtd4HhVkbMyEi',
    '*', 'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '', '', '', '');     

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 52, 'Cadeira Flexora', '', '*', 
'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '1', '', '', '');  

--modelo 12 IF A3
INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 53, 'Mobilidade Escapular', 
    'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', 'Os dois exercícios', '','', '1', '10', '30"', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 53, 'Supino Inclinado', 'https://drive.google.com/open?id=0B97wQJP8FcEeZ0cyR0VyVUNBOFk', '', 'Isometria funcional','', '4', '8 a 12', '1''', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 53, 'Triceps Polia', 'https://drive.google.com/open?id=0B97wQJP8FcEeZ1p4SEowMzdVU1E', '', 'Isometria funcional','', '2', '8 a 12', '1''', '2020'); 


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 53, 'Puxador Aberto', 'https://drive.google.com/open?id=0B97wQJP8FcEeQURFWFNGeFhtYzQ', '', 
     'Isometria funcional','', '4', '8 a 12', '1''', '2020'); 
    
INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 53, 'Rosca Scott', 'https://drive.google.com/open?id=0B97wQJP8FcEeeWtyQzhiR0VCTm8', '', 
'Isometria funcional','', '2', '8 a 12', '1''', '2020'); 


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 53, 'Mobilidade Quadril', 'https://drive.google.com/open?id=1-SwXhjDOnWfrW3QgCY8XahVF0IEPGg_B', 'Os dois exercícios', '','', '1', '10', '30"', '');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 53, 'Leg Press', 'https://drive.google.com/open?id=0B97wQJP8FcEeUmJYcUNodXRNRkE', '', 
     'Isometria funcional','', '4', '8 a 12', '1''', '2020'); 


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 53, 'Mesa Flexora', 'https://drive.google.com/open?id=0B97wQJP8FcEec2pJcl9XM200cjA', '', 
     'Isometria funcional','', '1', '8 a 12', '1''', '2020');      

--modelo 12 IF ABC1
INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 54, 'Mobilidade Escapular', 'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', '','', '1', '10', '30"', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 54, 'Supino Inclinado', 'https://drive.google.com/open?id=0B97wQJP8FcEeZ0cyR0VyVUNBOFk', '', 'Isometria funcional','', '5', '8 a 12', '1''', '2020');    


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 54, 'Crucifixo na Polia', 'https://drive.google.com/open?id=0B97wQJP8FcEecUdWUmZrcHd0bWc', '', 'Isometria funcional','', '3', '8 a 12', '1''', '2020');  


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 54, 'Elevação Lateral', 'https://drive.google.com/open?id=0B97wQJP8FcEeSkJxNGRfeThwMXM', '', 'Isometria funcional','', '3', '8 a 12', '1''', '2020'); 


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 54, 'Triceps Polia', 'https://drive.google.com/open?id=0B97wQJP8FcEeZ1p4SEowMzdVU1E', '', 'Isometria funcional','', '3', '8 a 12', '1''', '2020'); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 54, 'Estabilização 2 apoios', 'https://drive.google.com/open?id=10bslWCl-qbFQL39KJQ8pmei0GhF-q1q9', '', '','', '2', 'Máximo', '30"', ''); 


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 54, 'Mobilidade Escapular', 'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', '','', '1', '10', '30"', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 54, 'Puxador Aberto', 'https://drive.google.com/open?id=0B97wQJP8FcEeQURFWFNGeFhtYzQ', '', 'Isometria funcional', '', '5', '8 a 12', '1''', '2020');    


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 54, 'Remada Curvada Halteres N', 'https://drive.google.com/open?id=17fFqGX8dHObTX9t72QNuGUoaW0jhrA8U', '','Isometria funcional', '', '3', '8 a 12', '1''', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 54, 'Rosca Scott', 'https://drive.google.com/open?id=0B97wQJP8FcEeeWtyQzhiR0VCTm8', '', 'Isometria funcional','', '3', '8 a 12', '1''', '2020'); 
INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 54, 'Hiperextensão Lombar', 'https://drive.google.com/open?id=1FgRFgLN0hmpacqplGBO3rRFzOy2RdG3f', '', '','', '2', 'Máximo', '30"', ''); 



INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 54, 'Mobilidade Quadril', 'https://drive.google.com/open?id=1-SwXhjDOnWfrW3QgCY8XahVF0IEPGg_B', '', '','', '1', '10', '30"', '');    


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 54, 'Leg Press', 'https://drive.google.com/open?id=0B97wQJP8FcEeUmJYcUNodXRNRkE', '', 
     'Isometria funcional','', '4', '8 a 12', '1''', '2020'); 


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 54, 'Agachamento Búlgaro','https://drive.google.com/open?id=1nfZa_N37LxpzZllrVniNWBIe7R7qJjCE', '',
     'Isometria funcional','', '2', '8 a 12', '1''', '2020'); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 54, 'Mesa Flexora', 'https://drive.google.com/open?id=0B97wQJP8FcEec2pJcl9XM200cjA', '','Isometria funcional','', '2', '8 a 12', '1''', '2020');   

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 54, 'Cadeira Extensora', 'https://drive.google.com/open?id=0B97wQJP8FcEeZGViUmFBTVhtTzg', '', 
     'Isometria funcional','', '2', '8 a 12', '1''', '2020');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 54, 'Elevação de Quadril', 'https://drive.google.com/open?id=0B97wQJP8FcEeWG5oZzV5OHhXWWc', '', '','', '2', 'máximo', '30"', '');

--modelo 13 DE A3

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 55, 'Mobilidade Escapular', 'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', '','', '', '', '', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 55, 'Supino Máquina', 'https://drive.google.com/open?id=1WCmr8D5ipoyGeTPPdzdLrl2pA_Brhs1Y', '', 
'Duplo estímulo','', '1', '5 a 7', '30"', '4020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 55, 'Supino Máquina', 'https://drive.google.com/open?id=1WCmr8D5ipoyGeTPPdzdLrl2pA_Brhs1Y', '', 
'Duplo estímulo','', '1', '18 a 20', '2''', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 55, 'Supino Máquina', 'https://drive.google.com/open?id=1WCmr8D5ipoyGeTPPdzdLrl2pA_Brhs1Y', '', 
'Duplo estímulo','', '1', '5 a 7', '30"', '4020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 55, 'Supino Máquina', 'https://drive.google.com/open?id=1WCmr8D5ipoyGeTPPdzdLrl2pA_Brhs1Y', '', 
'Duplo estímulo','', '1', '18 a 20', '2''', '2020');    
    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 55, 'Puxador Aberto', 'https://drive.google.com/open?id=0B97wQJP8FcEeQURFWFNGeFhtYzQ', '', 
'Duplo estímulo','', '1', '5 a 7', '30"', '4020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 55, 'Puxador Aberto', 'https://drive.google.com/open?id=0B97wQJP8FcEeQURFWFNGeFhtYzQ', '', 
'Duplo estímulo','', '1', '18 a 20', '2''', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 55, 'Puxador Aberto', 'https://drive.google.com/open?id=0B97wQJP8FcEeQURFWFNGeFhtYzQ', '', 
'Duplo estímulo','', '1', '5 a 7', '30"', '4020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 55, 'Puxador Aberto', 'https://drive.google.com/open?id=0B97wQJP8FcEeQURFWFNGeFhtYzQ', '', 
'Duplo estímulo','', '1', '18 a 20', '2''', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 55, 'Mobilidade Quadril', 'https://drive.google.com/open?id=1-SwXhjDOnWfrW3QgCY8XahVF0IEPGg_B', '', '','', '', '', '', '');               

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 55, 'Agachamento Livre', 'https://drive.google.com/open?id=0B97wQJP8FcEeVi1RdUlpOE1JYXc', '', 
'Duplo estímulo','', '1', '5 a 7', '30"', '4020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 55, 'Agachamento Livre', 'https://drive.google.com/open?id=0B97wQJP8FcEeVi1RdUlpOE1JYXc', '', 
'Duplo estímulo','', '1', '18 a 20', '2''', '2020'); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 55, 'Agachamento Livre', 'https://drive.google.com/open?id=0B97wQJP8FcEeVi1RdUlpOE1JYXc', '', 
'Duplo estímulo','', '1', '5 a 7', '30"', '4020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 55, 'Agachamento Livre', 'https://drive.google.com/open?id=0B97wQJP8FcEeVi1RdUlpOE1JYXc', '', 
'Duplo estímulo','', '1', '18 a 20', '2''', '2020'); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 55, 'Agachamento Livre', 'https://drive.google.com/open?id=0B97wQJP8FcEeVi1RdUlpOE1JYXc', '', 
'Duplo estímulo','', '1', '5 a 7', '30"', '4020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 55, 'Agachamento Livre', 'https://drive.google.com/open?id=0B97wQJP8FcEeVi1RdUlpOE1JYXc', '', 
'Duplo estímulo','', '1', '18 a 20', '2''', '2020'); 

--modelo 13 DE ABC1

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 56, 'Mobilidade Escapular', 'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', '','', '', '', '', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 56, 'Supino Máquina', 'https://drive.google.com/open?id=1WCmr8D5ipoyGeTPPdzdLrl2pA_Brhs1Y', '', 'Duplo estímulo','', '1', '5 a 7', '30"', '4020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 56, 'Supino Máquina', 'https://drive.google.com/open?id=1WCmr8D5ipoyGeTPPdzdLrl2pA_Brhs1Y', '', 'Duplo estímulo','', '1', '18 a 20', '2''', '2020');    
INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 56, 'Supino Máquina', 'https://drive.google.com/open?id=1WCmr8D5ipoyGeTPPdzdLrl2pA_Brhs1Y', '', 'Duplo estímulo','', '1', '5 a 7', '30"', '4020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 56, 'Supino Máquina', 'https://drive.google.com/open?id=1WCmr8D5ipoyGeTPPdzdLrl2pA_Brhs1Y', '', 'Duplo estímulo','', '1', '18 a 20', '2''', '2020'); 
INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 56, 'Supino Máquina', 'https://drive.google.com/open?id=1WCmr8D5ipoyGeTPPdzdLrl2pA_Brhs1Y', '', 'Duplo estímulo','', '1', '5 a 7', '30"', '4020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 56, 'Supino Máquina', 'https://drive.google.com/open?id=1WCmr8D5ipoyGeTPPdzdLrl2pA_Brhs1Y', '', 'Duplo estímulo','', '1', '18 a 20', '2''', '2020');   
    
INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 56, 'Crucifixo Halter Inclinado', 'https://drive.google.com/open?id=0B97wQJP8FcEeNGpjUXhrRDRxZFk', '', 'Duplo estímulo','', '1', '5 a 7', '30"', '4020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 56, 'Crucifixo Halter Inclinado', 'https://drive.google.com/open?id=0B97wQJP8FcEeNGpjUXhrRDRxZFk', '', 'Duplo estímulo','', '1', '18 a 20', '2''', '2020');   

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 56, 'Elevação Frontal', 'https://drive.google.com/open?id=0B97wQJP8FcEecHF1ZjZ2Y0JnYlk', '', 'Duplo estímulo','', '1', '5 a 7', '30"', '4020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 56, 'Elevação Frontal', 'https://drive.google.com/open?id=0B97wQJP8FcEecHF1ZjZ2Y0JnYlk', '', 'Duplo estímulo','', '1', '18 a 20', '2''', '2020');   
    
INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 56, 'Triceps Francês', 'https://drive.google.com/open?id=0B97wQJP8FcEeQlN0SlplX2NWUG8', '', 'Duplo estímulo','', '1', '5 a 7', '30"', '4020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 56, 'Triceps Francês', 'https://drive.google.com/open?id=0B97wQJP8FcEeQlN0SlplX2NWUG8', '', 'Duplo estímulo','', '1', '18 a 20', '2''', '2020');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 56, 'Mobilidade Escapular', 'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', '','', '', '', '', '');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 56, 'Puxador Aberto', 'https://drive.google.com/open?id=0B97wQJP8FcEeQURFWFNGeFhtYzQ', '', 
'Duplo estímulo','', '1', '5 a 7', '30"', '4020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 56, 'Puxador Aberto', 'https://drive.google.com/open?id=0B97wQJP8FcEeQURFWFNGeFhtYzQ', '', 
'Duplo estímulo','', '1', '18 a 20', '2''', '2020');   

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 56, 'Puxador Aberto', 'https://drive.google.com/open?id=0B97wQJP8FcEeQURFWFNGeFhtYzQ', '', 
'Duplo estímulo','', '1', '5 a 7', '30"', '4020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 56, 'Puxador Aberto', 'https://drive.google.com/open?id=0B97wQJP8FcEeQURFWFNGeFhtYzQ', '', 
'Duplo estímulo','', '1', '18 a 20', '2''', '2020');   

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 56, 'Puxador Aberto', 'https://drive.google.com/open?id=0B97wQJP8FcEeQURFWFNGeFhtYzQ', '', 
'Duplo estímulo','', '1', '5 a 7', '30"', '4020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 56, 'Puxador Aberto', 'https://drive.google.com/open?id=0B97wQJP8FcEeQURFWFNGeFhtYzQ', '', 
'Duplo estímulo','', '1', '18 a 20', '2''', '2020');   

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 56, 'Remada Baixa Triângulo','https://drive.google.com/open?id=0B97wQJP8FcEebnhKRUpyS2pfNTA', '', 
'Duplo estímulo','', '1', '5 a 7', '30"', '4020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 56, 'Remada Baixa Triângulo','https://drive.google.com/open?id=0B97wQJP8FcEebnhKRUpyS2pfNTA', '', 
'Duplo estímulo','', '1', '18 a 20', '2''', '2020');   

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 56, 'Rosca Direta Barra', 'https://drive.google.com/open?id=0B97wQJP8FcEebkpWUTlxeGYzZ28', '', 
'Duplo estímulo','', '1', '5 a 7', '30"', '4020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 56, 'Rosca Direta Barra', 'https://drive.google.com/open?id=0B97wQJP8FcEebkpWUTlxeGYzZ28', '', 
'Duplo estímulo','', '1', '18 a 20', '2''', '2020');   

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 56, 'Abdominal em Suspensão', 'https://drive.google.com/open?id=0B97wQJP8FcEeYVAtWHNNN1N3bjA', '', '','', '2', 'máximo', '30"', '4020');   



INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 56, 'Mobilidade Quadril', 'https://drive.google.com/open?id=1-SwXhjDOnWfrW3QgCY8XahVF0IEPGg_B', '', '','', '', '', '', '');               

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 56, 'Agachamento Livre', 'https://drive.google.com/open?id=0B97wQJP8FcEeVi1RdUlpOE1JYXc', '', 
'Duplo estímulo','', '1', '5 a 7', '30"', '4020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 56, 'Agachamento Livre', 'https://drive.google.com/open?id=0B97wQJP8FcEeVi1RdUlpOE1JYXc', '', 
'Duplo estímulo','', '1', '18 a 20', '2''', '2020'); 
INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 56, 'Agachamento Livre', 'https://drive.google.com/open?id=0B97wQJP8FcEeVi1RdUlpOE1JYXc', '', 
'Duplo estímulo','', '1', '5 a 7', '30"', '4020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 56, 'Agachamento Livre', 'https://drive.google.com/open?id=0B97wQJP8FcEeVi1RdUlpOE1JYXc', '', 
'Duplo estímulo','', '1', '18 a 20', '2''', '2020'); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 56, 'Agachamento Sumô', 'https://drive.google.com/open?id=1jtFjEgYgfC6w8h9-Ai8lXcyS5cNh6gVM', '', 
'Duplo estímulo','', '1', '5 a 7', '30"', '4020');   

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 56, 'Agachamento Sumô', 'https://drive.google.com/open?id=1jtFjEgYgfC6w8h9-Ai8lXcyS5cNh6gVM', '', 
'Duplo estímulo','', '1', '18 a 20', '2''', '2020'); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 56, 'Mesa Flexora', 'https://drive.google.com/open?id=0B97wQJP8FcEec2pJcl9XM200cjA', '', 
'Duplo estímulo','', '1', '5 a 7', '30"', '4020');   


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 56, 'Mesa Flexora', 'https://drive.google.com/open?id=0B97wQJP8FcEec2pJcl9XM200cjA', '', 
'Duplo estímulo','', '1', '18 a 20', '2''', '2020');   


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 56, 'Cadeira Extensora', 'https://drive.google.com/open?id=0B97wQJP8FcEeZGViUmFBTVhtTzg', '', 
     'Duplo estímulo','', '1', '5 a 7', '30"', '4020');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 56, 'Cadeira Extensora', 'https://drive.google.com/open?id=0B97wQJP8FcEeZGViUmFBTVhtTzg', '', 
     'Duplo estímulo','', '1', '18 a 20', '2''', '2020');   

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 56, 'Hiperextensão Lombar', 'https://drive.google.com/open?id=1FgRFgLN0hmpacqplGBO3rRFzOy2RdG3f', '', '','', '2', 'Máximo', '30"', '4020'); 


--modelo  14 PA A3

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 57, 'Mobilidade Escapular', 'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', '','', '1', '10', '30"', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 57, 'Supino Halter Inclinado', 'https://drive.google.com/open?id=0B97wQJP8FcEeS1dRUUZ6bGFtd1U', '', 'Parcial','', '2', '8 a 12', '45"', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 57, 'Cross Over', 'https://drive.google.com/open?id=0B97wQJP8FcEebm9tUFJKRXVyV3c', '',
     'Parcial','', '2', '8 a 12', '45"', '2020');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 57, 'Triceps Corda', 'https://drive.google.com/open?id=0B97wQJP8FcEeTy1VZGEzRjU2dlE', '', 
     'Parcial','', '2', '8 a 12', '45"', '2020');         

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 57, 'Puxador Triângulo', 'https://drive.google.com/open?id=0B97wQJP8FcEeaXVzMXF3RHRMMWc', '',
     'Parcial','', '2', '8 a 12', '45"', '2020'); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 57, 'Remada Baixa Aberta', 'https://drive.google.com/open?id=0B97wQJP8FcEeRDVya1lPMnNmaW8', '', 
     'Parcial','', '2', '8 a 12', '45"', '2020');                                     

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 57,  'Rosca Inclinada', 'https://drive.google.com/open?id=0B97wQJP8FcEeTll3bnVlZGJSSnc', '', 
     'Parcial','', '2', '8 a 12', '45"', '2020');  


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 57, 'Mobilidade Quadril', 'https://drive.google.com/open?id=1-SwXhjDOnWfrW3QgCY8XahVF0IEPGg_B', '', '','', '1', '10', '30"', '');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 57, 'Leg Press Unilateral', 'https://drive.google.com/open?id=0B97wQJP8FcEeelFyemtGb3k5bEk', '', 
     'Parcial','', '2', '8 a 12', '45"', '2020');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 57, 'Agachamento Sumô', 'https://drive.google.com/open?id=1jtFjEgYgfC6w8h9-Ai8lXcyS5cNh6gVM', '', 
     'Parcial','', '2', '8 a 12', '45"', '2020');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 57, 'Mesa Flexora', 'https://drive.google.com/open?id=0B97wQJP8FcEec2pJcl9XM200cjA', '', 
     'Parcial','', '1', '8 a 12', '45"', '2020');

--modelo 14 PA ABC1
INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 58, 'Mobilidade Escapular', 'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', '','', '1', '10', '30"', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 58, 'Supino Halter Inclinado', 'https://drive.google.com/open?id=0B97wQJP8FcEeS1dRUUZ6bGFtd1U', '',
     'Parcial','', '5', '8 a 12', '45"', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 58, 'Cross Over', 'https://drive.google.com/open?id=0B97wQJP8FcEebm9tUFJKRXVyV3c', '', 
     'Parcial','', '3', '8 a 12', '45"', '2020');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 58, 'Desenvolvimento', 'https://drive.google.com/open?id=0B97wQJP8FcEeM1l2ZFZUV00xWTg', '', 
     'Parcial','', '2', '8 a 12', '45"', '2020');         

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 58, 'Triceps Corda', 'https://drive.google.com/open?id=0B97wQJP8FcEeTy1VZGEzRjU2dlE', '',
     'Parcial','', '3', '8 a 12', '45"', '2020'); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 58, 'Estabilização 2 apoios', 'https://drive.google.com/open?id=10bslWCl-qbFQL39KJQ8pmei0GhF-q1q9', '', '','', '2', 'Máximo', '30"', ''); 


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 58, 'Mobilidade Escapular', 'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', '','', '1', '10', '30"', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 58, 'Puxador Triângulo', 'https://drive.google.com/open?id=0B97wQJP8FcEeaXVzMXF3RHRMMWc', '',
     'Parcial','', '5', '8 a 12', '45"', '2020'); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 58, 'Remada Baixa Aberta', 'https://drive.google.com/open?id=0B97wQJP8FcEeRDVya1lPMnNmaW8', '',
     'Parcial','', '3', '8 a 12', '45"', '2020'); 


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 58, 'Rosca Inclinada', 'https://drive.google.com/open?id=0B97wQJP8FcEeTll3bnVlZGJSSnc', '',
     'Parcial','', '3', '8 a 12', '45"', '2020'); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 58, 'Hiperextensão Lombar', 'https://drive.google.com/open?id=1FgRFgLN0hmpacqplGBO3rRFzOy2RdG3f', '', '','', '2', 'Máximo', '30"', ''); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 58, 'Mobilidade Quadril', 'https://drive.google.com/open?id=1-SwXhjDOnWfrW3QgCY8XahVF0IEPGg_B', '', '','', '1', '10', '30"', '');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 58, 'Leg Press Unilateral', 'https://drive.google.com/open?id=0B97wQJP8FcEeelFyemtGb3k5bEk', '', 
     'Parcial','', '4', '8 a 12', '45"', '2020');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 58, 'Agachamento Sumô', 'https://drive.google.com/open?id=1jtFjEgYgfC6w8h9-Ai8lXcyS5cNh6gVM', '', 
     'Parcial','', '3', '8 a 12', '45"', '2020');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 58, 'Mesa Flexora', 'https://drive.google.com/open?id=0B97wQJP8FcEec2pJcl9XM200cjA', '', 
     'Parcial','', '2', '8 a 12', '45"', '2020');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 58, 'Cadeira Extensora', 'https://drive.google.com/open?id=0B97wQJP8FcEeZGViUmFBTVhtTzg', '', 
     'Parcial','', '2', '8 a 12', '45"', '2020');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 58, 'Elevação de Quadril', 'https://drive.google.com/open?id=0B97wQJP8FcEeWG5oZzV5OHhXWWc', '', '','', '2', 'Máx', '30"', '');

--modelo 15 SD A3

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 59, 'Mobilidade Escapular', 'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', '','', '1', '10', '30"', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 59, 'Supino Máquina', 'https://drive.google.com/open?id=1WCmr8D5ipoyGeTPPdzdLrl2pA_Brhs1Y', '', 
'Super Drop-Set','https://drive.google.com/open?id=1y69rnnva20tZd6e608_W5llcl6Dh8Q5P', '2', '5a7+x+x até 20-25 reps', '1''30" a 2''', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 59, 'Crucifixo na Polia', 'https://drive.google.com/open?id=0B97wQJP8FcEecUdWUmZrcHd0bWc', '', 
'Super Drop-Set','https://drive.google.com/open?id=1y69rnnva20tZd6e608_W5llcl6Dh8Q5P', '2', '5a7+x+x até 20-25 reps', '1''30" a 2''', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 59, 'Tríceps na Polia', 'https://drive.google.com/open?id=0B97wQJP8FcEeZ1p4SEowMzdVU1E', '', 
'Super Drop-Set','https://drive.google.com/open?id=1y69rnnva20tZd6e608_W5llcl6Dh8Q5P', '2', '5a7+x+x até 20-25 reps', '1''30" a 2''', '2020');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 59, 'Puxador Aberto', 'https://drive.google.com/open?id=0B97wQJP8FcEeQURFWFNGeFhtYzQ', '', 
'Super Drop-Set','https://drive.google.com/open?id=1y69rnnva20tZd6e608_W5llcl6Dh8Q5P', '2', '5a7+x+x até 20-25 reps', '1''30" a 2''', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 59, 'Remada Máquina', 'https://drive.google.com/open?id=1J91nrQ5AzrbcjJxjNHPt3tOGOaQOlDN6', '', 
'Super Drop-Set','https://drive.google.com/open?id=1y69rnnva20tZd6e608_W5llcl6Dh8Q5P', '2', '5a7+x+x até 20-25 reps', '1''30" a 2''', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 59, 'Rosca Direta Barra', 'https://drive.google.com/open?id=0B97wQJP8FcEebkpWUTlxeGYzZ28', '', 
'Super Drop-Set','https://drive.google.com/open?id=1y69rnnva20tZd6e608_W5llcl6Dh8Q5P', '2', '5a7+x+x até 20-25 reps', '1''30" a 2''', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 59, 'Mobilidade Quadril', 'https://drive.google.com/open?id=1-SwXhjDOnWfrW3QgCY8XahVF0IEPGg_B', '', '','', '1', '10', '30"', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 59, 'Leg Press', 'https://drive.google.com/open?id=0B97wQJP8FcEeUmJYcUNodXRNRkE', '', 
'Super Drop-Set','https://drive.google.com/open?id=1y69rnnva20tZd6e608_W5llcl6Dh8Q5P', '2', '5a7+x+x até 20-25 reps', '1''30" a 2''', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 59, 'Agachamento Smith', 'https://drive.google.com/open?id=0B97wQJP8FcEeRXkyWUk3UUtiMkU', '', 
'Super Drop-Set','https://drive.google.com/open?id=1y69rnnva20tZd6e608_W5llcl6Dh8Q5P', '2', '5a7+x+x até 20-25 reps', '1''30" a 2''', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 59, 'Mesa Flexora', 'https://drive.google.com/open?id=0B97wQJP8FcEec2pJcl9XM200cjA', '', 
'Super Drop-Set','https://drive.google.com/open?id=1y69rnnva20tZd6e608_W5llcl6Dh8Q5P', '1', '5a7+x+x até 20-25 reps', '1''30" a 2''', '2020');    

--modelo 15 SD ABC1

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 60, 'Mobilidade Escapular', 'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', '','', '1', '10', '30"', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 60, 'Supino Máquina', 'https://drive.google.com/open?id=1WCmr8D5ipoyGeTPPdzdLrl2pA_Brhs1Y', '', 
'Super Drop-Set','https://drive.google.com/open?id=1y69rnnva20tZd6e608_W5llcl6Dh8Q5P', '5', '5a7+x+x até 20-25 reps', '1''30" a 2''', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 60, 'Crucifixo na Polia', 'https://drive.google.com/open?id=0B97wQJP8FcEecUdWUmZrcHd0bWc', '', 
'Super Drop-Set','https://drive.google.com/open?id=1y69rnnva20tZd6e608_W5llcl6Dh8Q5P', '3', '5a7+x+x até 20-25 reps', '1''30" a 2''', '2020');    


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 60, 'Desenvolvimento', 'https://drive.google.com/open?id=0B97wQJP8FcEeM1l2ZFZUV00xWTg', '', 
'Super Drop-Set','https://drive.google.com/open?id=1y69rnnva20tZd6e608_W5llcl6Dh8Q5P', '2', '5a7+x+x até 20-25 reps', '1''30" a 2''', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 60, 'Tríceps na Polia', 'https://drive.google.com/open?id=0B97wQJP8FcEeZ1p4SEowMzdVU1E', '', 
'Super Drop-Set','https://drive.google.com/open?id=1y69rnnva20tZd6e608_W5llcl6Dh8Q5P', '3', '5a7+x+x até 20-25 reps', '1''30" a 2''', '2020');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 60, 'Estabilização 2 apoios', 'https://drive.google.com/open?id=10bslWCl-qbFQL39KJQ8pmei0GhF-q1q9', '', '','', '2', 'Máximo', '30"', ''); 


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 60, 'Mobilidade Escapular', 'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', '','', '1', '10', '30"', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 60, 'Puxador Aberto', 'https://drive.google.com/open?id=0B97wQJP8FcEeQURFWFNGeFhtYzQ', '', 
'Super Drop-Set','https://drive.google.com/open?id=1y69rnnva20tZd6e608_W5llcl6Dh8Q5P', '5', '5a7+x+x até 20-25 reps', '1''30" a 2''', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 60, 'Remada Máquina', 'https://drive.google.com/open?id=1J91nrQ5AzrbcjJxjNHPt3tOGOaQOlDN6', '', 
'Super Drop-Set','https://drive.google.com/open?id=1y69rnnva20tZd6e608_W5llcl6Dh8Q5P', '3', '5a7+x+x até 20-25 reps', '1''30" a 2''', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 60, 'Rosca Direta Barra', 'https://drive.google.com/open?id=0B97wQJP8FcEebkpWUTlxeGYzZ28', '', 
'Super Drop-Set','https://drive.google.com/open?id=1y69rnnva20tZd6e608_W5llcl6Dh8Q5P', '3', '5a7+x+x até 20-25 reps', '1''30" a 2''', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 60, 'Hiperextensão Lombar', 'https://drive.google.com/open?id=1FgRFgLN0hmpacqplGBO3rRFzOy2RdG3f', '', '','', '2', 'Máximo', '30"', ''); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 60, 'Mobilidade Quadril', 'https://drive.google.com/open?id=1-SwXhjDOnWfrW3QgCY8XahVF0IEPGg_B', '', '','', '1', '10', '30"', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 60, 'Leg Press', 'https://drive.google.com/open?id=0B97wQJP8FcEeUmJYcUNodXRNRkE', '', 
'Super Drop-Set','https://drive.google.com/open?id=1y69rnnva20tZd6e608_W5llcl6Dh8Q5P', '5', '5a7+x+x até 20-25 reps', '1''30" a 2''', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 60, 'Agachamento Smith', 'https://drive.google.com/open?id=0B97wQJP8FcEeRXkyWUk3UUtiMkU', '', 
'Super Drop-Set','https://drive.google.com/open?id=1y69rnnva20tZd6e608_W5llcl6Dh8Q5P', '2', '5a7+x+x até 20-25 reps', '1''30" a 2''', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 60, 'Mesa Flexora', 'https://drive.google.com/open?id=0B97wQJP8FcEec2pJcl9XM200cjA', '', 
'Super Drop-Set','https://drive.google.com/open?id=1y69rnnva20tZd6e608_W5llcl6Dh8Q5P', '2', '5a7+x+x até 20-25 reps', '1''30" a 2''', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 60, 'Cadeira Extensora', 'https://drive.google.com/open?id=0B97wQJP8FcEeZGViUmFBTVhtTzg', '', 
'Super Drop-Set','https://drive.google.com/open?id=1y69rnnva20tZd6e608_W5llcl6Dh8Q5P', '2', '5a7+x+x até 20-25 reps', '1''30" a 2''', '2020');         

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 60, 'Elevação de Quadril', 'https://drive.google.com/open?id=0B97wQJP8FcEeWG5oZzV5OHhXWWc', '', '','', '2', 'máximo', '30"', '');



--modelo 16 OL ABC
INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 61, 'Supino Reto', 'https://drive.google.com/open?id=0B97wQJP8FcEeSGhpWW9nb1N0bU0', '', 'Holístico','', '1', '5 a 7', 'x', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 61, 'Supino Inclinado', 'https://drive.google.com/open?id=0B97wQJP8FcEeZ0cyR0VyVUNBOFk', '', 'Holístico','', '1', '8 a 12', 'x', '2020');    


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 61, 'Supino Reto', 'https://drive.google.com/open?id=0B97wQJP8FcEeSGhpWW9nb1N0bU0', '', 'Holístico','', '1', '5 a 7', 'x', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 61, 'Supino Inclinado', 'https://drive.google.com/open?id=0B97wQJP8FcEeZ0cyR0VyVUNBOFk', '', 'Holístico','', '1', '8 a 12', 'x', '2020');    


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 61, 'Supino Reto', 'https://drive.google.com/open?id=0B97wQJP8FcEeSGhpWW9nb1N0bU0', '', 'Holístico','', '1', '5 a 7', 'x', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 61, 'Crucifixo Halter', 'https://drive.google.com/open?id=0B97wQJP8FcEeNjVpdXJxWVd1ZkU', '',  'Holístico','', '1', '40', 'x', '2020');    


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 61, 'Supino Reto', 'https://drive.google.com/open?id=0B97wQJP8FcEeSGhpWW9nb1N0bU0', '', 'Holístico','', '1', '5 a 7', 'x', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 61, 'Supino Inclinado', 'https://drive.google.com/open?id=0B97wQJP8FcEeZ0cyR0VyVUNBOFk', '', 'Holístico','', '1', '8 a 12', 'x', '2020');    


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 61, 'Supino Reto', 'https://drive.google.com/open?id=0B97wQJP8FcEeSGhpWW9nb1N0bU0', '', 'Holístico','', '1', '5 a 7', 'x', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 61, 'Supino Inclinado', 'https://drive.google.com/open?id=0B97wQJP8FcEeZ0cyR0VyVUNBOFk', '', 'Holístico','', '1', '8 a 12', 'x', '2020');    


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 61, 'Supino Reto', 'https://drive.google.com/open?id=0B97wQJP8FcEeSGhpWW9nb1N0bU0', '', 'Holístico','', '1', '5 a 7', 'x', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 61, 'Crucifixo Halter', 'https://drive.google.com/open?id=0B97wQJP8FcEeNjVpdXJxWVd1ZkU', '',  'Holístico','', '1', '40', 'x', '2020');    



INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 61, 'Puxador Aberto', 'https://drive.google.com/open?id=0B97wQJP8FcEeQURFWFNGeFhtYzQ', '', 'Holístico','', '1', '5 a 7', 'x', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 61, 'Puxador Supinado', 'https://drive.google.com/open?id=0B97wQJP8FcEeZ1FTY0xfV21sWlU', '', 'Holístico','', '1', '8 a 12', 'x', '2020');    


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 61, 'Puxador Aberto', 'https://drive.google.com/open?id=0B97wQJP8FcEeQURFWFNGeFhtYzQ', '', 'Holístico','', '1', '5 a 7', 'x', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 61, 'Puxador Supinado', 'https://drive.google.com/open?id=0B97wQJP8FcEeZ1FTY0xfV21sWlU', '', 'Holístico','', '1', '8 a 12', 'x', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 61, 'Puxador Aberto', 'https://drive.google.com/open?id=0B97wQJP8FcEeQURFWFNGeFhtYzQ', '', 'Holístico','', '1', '5 a 7', 'x', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 61, 'Remada Baixa Triângulo','https://drive.google.com/open?id=0B97wQJP8FcEebnhKRUpyS2pfNTA', '',  'Holístico','', '1', '40', 'x', '2020');    



INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 61, 'Puxador Aberto', 'https://drive.google.com/open?id=0B97wQJP8FcEeQURFWFNGeFhtYzQ', '', 'Holístico','', '1', '5 a 7', 'x', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 61, 'Puxador Supinado', 'https://drive.google.com/open?id=0B97wQJP8FcEeZ1FTY0xfV21sWlU', '', 'Holístico','', '1', '8 a 12', 'x', '2020');    


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 61, 'Puxador Aberto', 'https://drive.google.com/open?id=0B97wQJP8FcEeQURFWFNGeFhtYzQ', '', 'Holístico','', '1', '5 a 7', 'x', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 61, 'Puxador Supinado', 'https://drive.google.com/open?id=0B97wQJP8FcEeZ1FTY0xfV21sWlU', '', 'Holístico','', '1', '8 a 12', 'x', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 61, 'Puxador Aberto', 'https://drive.google.com/open?id=0B97wQJP8FcEeQURFWFNGeFhtYzQ', '', 'Holístico','', '1', '5 a 7', 'x', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 61, 'Remada Baixa Triângulo','https://drive.google.com/open?id=0B97wQJP8FcEebnhKRUpyS2pfNTA', '',  'Holístico','', '1', '40', 'x', '2020');  


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 61, 'Leg Press', 'https://drive.google.com/open?id=0B97wQJP8FcEeUmJYcUNodXRNRkE', '', 'Holístico','', '1', '5 a 7', 'x', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 61, 'Agachamento Sumô', 'https://drive.google.com/open?id=1jtFjEgYgfC6w8h9-Ai8lXcyS5cNh6gVM', '', 'Holístico','', '1', '8 a 12', 'x', '2020');  
INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 61, 'Leg Press', 'https://drive.google.com/open?id=0B97wQJP8FcEeUmJYcUNodXRNRkE', '', 'Holístico','', '1', '5 a 7', 'x', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 61, 'Agachamento Sumô', 'https://drive.google.com/open?id=1jtFjEgYgfC6w8h9-Ai8lXcyS5cNh6gVM', '', 'Holístico','', '1', '8 a 12', 'x', '2020');  
INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 61, 'Leg Press', 'https://drive.google.com/open?id=0B97wQJP8FcEeUmJYcUNodXRNRkE', '', 'Holístico','', '1', '5 a 7', 'x', '2020'); 


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 61, 'Mesa Flexora', 'https://drive.google.com/open?id=0B97wQJP8FcEec2pJcl9XM200cjA', '',  'Holístico','', '1', '40', 'x', '2020');  


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 61, 'Leg Press', 'https://drive.google.com/open?id=0B97wQJP8FcEeUmJYcUNodXRNRkE', '', 'Holístico','', '1', '5 a 7', 'x', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 61, 'Agachamento Sumô', 'https://drive.google.com/open?id=1jtFjEgYgfC6w8h9-Ai8lXcyS5cNh6gVM', '', 'Holístico','', '1', '8 a 12', 'x', '2020');  
INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 61, 'Leg Press', 'https://drive.google.com/open?id=0B97wQJP8FcEeUmJYcUNodXRNRkE', '', 'Holístico','', '1', '5 a 7', 'x', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 61, 'Agachamento Sumô', 'https://drive.google.com/open?id=1jtFjEgYgfC6w8h9-Ai8lXcyS5cNh6gVM', '', 'Holístico','', '1', '8 a 12', 'x', '2020');  
INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 61, 'Leg Press', 'https://drive.google.com/open?id=0B97wQJP8FcEeUmJYcUNodXRNRkE', '', 'Holístico','', '1', '5 a 7', 'x', '2020'); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 61, 'Cadeira Extensora', 'https://drive.google.com/open?id=0B97wQJP8FcEeZGViUmFBTVhtTzg', '',  'Holístico','', '1', '40', 'x', '2020');  

--modelo 16 OL ABC1
INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 62, 'Supino Reto', 'https://drive.google.com/open?id=0B97wQJP8FcEeSGhpWW9nb1N0bU0', '', 'Holístico','', '1', '5 a 7', 'x', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 62, 'Supino Inclinado', 'https://drive.google.com/open?id=0B97wQJP8FcEeZ0cyR0VyVUNBOFk', '', 'Holístico','', '1', '8 a 12', 'x', '2020');    


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 62, 'Supino Reto', 'https://drive.google.com/open?id=0B97wQJP8FcEeSGhpWW9nb1N0bU0', '', 'Holístico','', '1', '5 a 7', 'x', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 62, 'Supino Inclinado', 'https://drive.google.com/open?id=0B97wQJP8FcEeZ0cyR0VyVUNBOFk', '', 'Holístico','', '1', '8 a 12', 'x', '2020');    


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 62, 'Supino Reto', 'https://drive.google.com/open?id=0B97wQJP8FcEeSGhpWW9nb1N0bU0', '', 'Holístico','', '1', '5 a 7', 'x', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 62, 'Crucifixo Halter', 'https://drive.google.com/open?id=0B97wQJP8FcEeNjVpdXJxWVd1ZkU', '',  'Holístico','', '1', '40', 'x', '2020');    


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 62, 'Supino Reto', 'https://drive.google.com/open?id=0B97wQJP8FcEeSGhpWW9nb1N0bU0', '', 'Holístico','', '1', '5 a 7', 'x', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 62, 'Supino Inclinado', 'https://drive.google.com/open?id=0B97wQJP8FcEeZ0cyR0VyVUNBOFk', '', 'Holístico','', '1', '8 a 12', 'x', '2020');    


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 62, 'Supino Reto', 'https://drive.google.com/open?id=0B97wQJP8FcEeSGhpWW9nb1N0bU0', '', 'Holístico','', '1', '5 a 7', 'x', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 62, 'Supino Inclinado', 'https://drive.google.com/open?id=0B97wQJP8FcEeZ0cyR0VyVUNBOFk', '', 'Holístico','', '1', '8 a 12', 'x', '2020');    


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 62, 'Supino Reto', 'https://drive.google.com/open?id=0B97wQJP8FcEeSGhpWW9nb1N0bU0', '', 'Holístico','', '1', '5 a 7', 'x', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 62, 'Crucifixo Halter', 'https://drive.google.com/open?id=0B97wQJP8FcEeNjVpdXJxWVd1ZkU', '',  'Holístico','', '1', '40', 'x', '2020');    



INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 62, 'Puxador Aberto', 'https://drive.google.com/open?id=0B97wQJP8FcEeQURFWFNGeFhtYzQ', '', 'Holístico','', '1', '5 a 7', 'x', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 62, 'Puxador Supinado', 'https://drive.google.com/open?id=0B97wQJP8FcEeZ1FTY0xfV21sWlU', '', 'Holístico','', '1', '8 a 12', 'x', '2020');    


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 62, 'Puxador Aberto', 'https://drive.google.com/open?id=0B97wQJP8FcEeQURFWFNGeFhtYzQ', '', 'Holístico','', '1', '5 a 7', 'x', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 62, 'Puxador Supinado', 'https://drive.google.com/open?id=0B97wQJP8FcEeZ1FTY0xfV21sWlU', '', 'Holístico','', '1', '8 a 12', 'x', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 62, 'Puxador Aberto', 'https://drive.google.com/open?id=0B97wQJP8FcEeQURFWFNGeFhtYzQ', '', 'Holístico','', '1', '5 a 7', 'x', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 62, 'Remada Baixa Triângulo','https://drive.google.com/open?id=0B97wQJP8FcEebnhKRUpyS2pfNTA', '',  'Holístico','', '1', '40', 'x', '2020');    



INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 62, 'Puxador Aberto', 'https://drive.google.com/open?id=0B97wQJP8FcEeQURFWFNGeFhtYzQ', '', 'Holístico','', '1', '5 a 7', 'x', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 62, 'Puxador Supinado', 'https://drive.google.com/open?id=0B97wQJP8FcEeZ1FTY0xfV21sWlU', '', 'Holístico','', '1', '8 a 12', 'x', '2020');    


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 62, 'Puxador Aberto', 'https://drive.google.com/open?id=0B97wQJP8FcEeQURFWFNGeFhtYzQ', '', 'Holístico','', '1', '5 a 7', 'x', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 62, 'Puxador Supinado', 'https://drive.google.com/open?id=0B97wQJP8FcEeZ1FTY0xfV21sWlU', '', 'Holístico','', '1', '8 a 12', 'x', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 62, 'Puxador Aberto', 'https://drive.google.com/open?id=0B97wQJP8FcEeQURFWFNGeFhtYzQ', '', 'Holístico','', '1', '5 a 7', 'x', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 62, 'Remada Baixa Triângulo','https://drive.google.com/open?id=0B97wQJP8FcEebnhKRUpyS2pfNTA', '',  'Holístico','', '1', '40', 'x', '2020');  


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 62, 'Leg Press', 'https://drive.google.com/open?id=0B97wQJP8FcEeUmJYcUNodXRNRkE', '', 'Holístico','', '1', '5 a 7', 'x', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 62, 'Agachamento Sumô', 'https://drive.google.com/open?id=1jtFjEgYgfC6w8h9-Ai8lXcyS5cNh6gVM', '', 'Holístico','', '1', '8 a 12', 'x', '2020');  
INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 62, 'Leg Press', 'https://drive.google.com/open?id=0B97wQJP8FcEeUmJYcUNodXRNRkE', '', 'Holístico','', '1', '5 a 7', 'x', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 62, 'Agachamento Sumô', 'https://drive.google.com/open?id=1jtFjEgYgfC6w8h9-Ai8lXcyS5cNh6gVM', '', 'Holístico','', '1', '8 a 12', 'x', '2020');  
INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 62, 'Leg Press', 'https://drive.google.com/open?id=0B97wQJP8FcEeUmJYcUNodXRNRkE', '', 'Holístico','', '1', '5 a 7', 'x', '2020'); 


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 62, 'Mesa Flexora', 'https://drive.google.com/open?id=0B97wQJP8FcEec2pJcl9XM200cjA', '',  'Holístico','', '1', '40', 'x', '2020');  


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 62, 'Leg Press', 'https://drive.google.com/open?id=0B97wQJP8FcEeUmJYcUNodXRNRkE', '', 'Holístico','', '1', '5 a 7', 'x', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 62, 'Agachamento Sumô', 'https://drive.google.com/open?id=1jtFjEgYgfC6w8h9-Ai8lXcyS5cNh6gVM', '', 'Holístico','', '1', '8 a 12', 'x', '2020');  
INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 62, 'Leg Press', 'https://drive.google.com/open?id=0B97wQJP8FcEeUmJYcUNodXRNRkE', '', 'Holístico','', '1', '5 a 7', 'x', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 62, 'Agachamento Sumô', 'https://drive.google.com/open?id=1jtFjEgYgfC6w8h9-Ai8lXcyS5cNh6gVM', '', 'Holístico','', '1', '8 a 12', 'x', '2020');  
INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 62, 'Leg Press', 'https://drive.google.com/open?id=0B97wQJP8FcEeUmJYcUNodXRNRkE', '', 'Holístico','', '1', '5 a 7', 'x', '2020'); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 62, 'Cadeira Extensora', 'https://drive.google.com/open?id=0B97wQJP8FcEeZGViUmFBTVhtTzg', '',  'Holístico','', '1', '40', 'x', '2020');  

--modelo 2 FC AB2
INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 63, 'Mobilidade Escapular', 'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', '','', '1', '10', '1''', '');


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 63, 'Supino Halter', 'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', 
'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '3', '10 a 15', '1''', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 63, 'Desenvolvimento', 'https://drive.google.com/open?id=0B97wQJP8FcEeM1l2ZFZUV00xWTg', '', 
'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '3', '10 a 15', '1''', '2020');           

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 63, 'Puxador Aberto', 'https://drive.google.com/open?id=0B97wQJP8FcEeQURFWFNGeFhtYzQ', '', 
'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '3', '10 a 15', '1''', '2020');    


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 63, 'Remada Curvada Halteres N', 'https://drive.google.com/open?id=17fFqGX8dHObTX9t72QNuGUoaW0jhrA8U', '', 
'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '3', '10 a 15', '1''', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 63, 'Mobilidade Tornozelo', 'https://drive.google.com/open?id=1t7I0VtNVKsDnIPQI06dI_ZDe157tPCTr', '', '','', '1', '10', '1''', '');    


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 63, 'Mobilidade Quadril', 'https://drive.google.com/open?id=1-SwXhjDOnWfrW3QgCY8XahVF0IEPGg_B', '', '','', '1', '10', '1''', '');    


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 63, 'Agachamento Sumô', 'https://drive.google.com/open?id=1jtFjEgYgfC6w8h9-Ai8lXcyS5cNh6gVM', '', 
'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '3', '12 a 15', '1''', '2020');      

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 63, 'Cadeira Flexora', '', '', 
'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '3', '12 a 15', '1''', '2020');   

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 63, 'Estabilização Frontal', '', '', 
'','', '3', 'até 1''', '1''', '2020');    

-- modelo 3 FC AB2

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 64, 'Mobilidade Escapular', 'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', '','', '1', '10', '1"', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 64, 'Supino Reto', 'https://drive.google.com/open?id=0B97wQJP8FcEeSGhpWW9nb1N0bU0', '', 
'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '3', '8 a 12', '1''15"', '2030');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 64, 'Supino Inclinado', 'https://drive.google.com/open?id=0B97wQJP8FcEeZ0cyR0VyVUNBOFk', '', 
'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '3', '8 a 12', '1''15"', '2030');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 64, 'Puxador Supinado', 'https://drive.google.com/open?id=0B97wQJP8FcEeZ1FTY0xfV21sWlU', '', 
'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '3', '8 a 12', '1''15"', '2030'); 


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 64, 'Remada Baixa Aberta', 'https://drive.google.com/open?id=0B97wQJP8FcEeRDVya1lPMnNmaW8', '', 
'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '3', '8 a 12', '1''15"', '2030'); 



INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 64, 'Mobilidade Tornozelo', 'https://drive.google.com/open?id=1t7I0VtNVKsDnIPQI06dI_ZDe157tPCTr', '', '','', '1', '10', '1''', '');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 64, 'Mobilidade Quadril', 'https://drive.google.com/open?id=1-SwXhjDOnWfrW3QgCY8XahVF0IEPGg_B', '', '','', '1', '10', '1''', '');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 64, 'Agachamento Frontal', 'https://drive.google.com/open?id=1PnIFK7Lj4xFeZTwBG7PWtd4HhVkbMyEi', '', 
'Falha Concêntrica','https://drive.google.com/open?id=1PnIFK7Lj4xFeZTwBG7PWtd4HhVkbMyEi', '3', '8 a 12', '1''15"', '2030');         

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 64, 'Mesa Flexora', 'https://drive.google.com/open?id=0B97wQJP8FcEec2pJcl9XM200cjA', '', 
'Falha Concêntrica','https://drive.google.com/open?id=1PnIFK7Lj4xFeZTwBG7PWtd4HhVkbMyEi', '3', '8 a 12', '1''15"', '2030');     

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 64, 'Estabilização 3 apoios', 'https://drive.google.com/open?id=1sJMkVowV4194OOl8QbwKIqWlShZirSbP', '', '','', '3', 'até 1''', '1''', '');  

--modelo 4 FC Ab2
INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 65, 'Mobilidade Escapular', 
    'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', '','', '1', '10', '1''', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 65, 'Supino Máquina', 
    'https://drive.google.com/open?id=1WCmr8D5ipoyGeTPPdzdLrl2pA_Brhs1Y', '', 'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '4', '5 a 7', '1''30"', '3030');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 65, 'Supino Halter Inclinado','https://drive.google.com/open?id=0B97wQJP8FcEeS1dRUUZ6bGFtd1U', 
    '', 'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '3', '5 a 7', '1''30"', '3030');    


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 65, 'Puxador Triângulo','https://drive.google.com/open?id=0B97wQJP8FcEeaXVzMXF3RHRMMWc', 
    '', 'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '4', '5 a 7', '1''30"', '3030');    


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 65, 'Remada Baixa Triângulo','https://drive.google.com/open?id=0B97wQJP8FcEebnhKRUpyS2pfNTA', 
    '', 'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '3', '5 a 7', '1''30"', '3030');


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 65, 'Mobilidade Tornozelo', 'https://drive.google.com/open?id=1t7I0VtNVKsDnIPQI06dI_ZDe157tPCTr', '', '','', '1', '10', '1''', '');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 65, 'Mobilidade Quadril', 'https://drive.google.com/open?id=1-SwXhjDOnWfrW3QgCY8XahVF0IEPGg_B', '', '','', '1', '10', '1''', ''); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 65, 'Agachamento Búlgaro','https://drive.google.com/open?id=1nfZa_N37LxpzZllrVniNWBIe7R7qJjCE', 
    '', 'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '4', '5 a 7', '1''30"', '3030');     

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 65, 'Stiff Barra','https://drive.google.com/open?id=0B97wQJP8FcEea3l4bnlWcG9mVFk', 
    '', 'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '3', '5 a 7', '1''30"', '3030');     

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 65, 'Estabilização 3 apoios', 'https://drive.google.com/open?id=1sJMkVowV4194OOl8QbwKIqWlShZirSbP', '', '','', '3', 'até 1''', '1''', ''); 

--modelo 5 FC Ab2

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 66, 'Mobilidade Escapular', 
    'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', '','', '1', '10', '1''', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 66, 'Supino Reto', 'https://drive.google.com/open?id=0B97wQJP8FcEeSGhpWW9nb1N0bU0', '*', 
'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '', '', '', '');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 66, 'Desenvolvimento', 'https://drive.google.com/open?id=0B97wQJP8FcEeM1l2ZFZUV00xWTg', '*', 
'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '', '', '', '');    


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 66, 'Puxador Aberto', 'https://drive.google.com/open?id=0B97wQJP8FcEeQURFWFNGeFhtYzQ', '*', 
'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE','', '', '', '');      

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 66, 'Remada Baixa Supinada', 'https://drive.google.com/open?id=0B97wQJP8FcEeY1dySmkxUzN6a0U', '*', 
'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE','', '', '', '');   

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 66, 'Mobilidade Tornozelo', 'https://drive.google.com/open?id=1t7I0VtNVKsDnIPQI06dI_ZDe157tPCTr', '', '','', '1', '10', '1''', '');     


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 66, 'Mobilidade Quadril', 'https://drive.google.com/open?id=1-SwXhjDOnWfrW3QgCY8XahVF0IEPGg_B', '*', '','', '1', '10', '1''', ''); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 66, 'Agachamento Búlgaro','https://drive.google.com/open?id=1nfZa_N37LxpzZllrVniNWBIe7R7qJjCE', 
    '*', 'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '', '', '', ''); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 66, 'Cadeira Flexora', '', '*', 'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '', '', '', ''); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 66, 'Estabilização Lateral', 'https://drive.google.com/open?id=0B97wQJP8FcEeNml3UjlFMktrTFk', '*', 
'','', '2', 'até 1''', '1''', ''); 

--modelo 6 OV AB2
INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 67, 'Mobilidade Escapular', 
    'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', '','', '1', '10', '', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 67, 'Supino Halter', 'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', 
'Oclusão Vascular','https://drive.google.com/open?id=0B97wQJP8FcEeY0RRZ21iWHZ5MDA', '3', '20" + 8 a 12', '1''', '2020'); 


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 67, 'Supino Halter Inclinado', 'https://drive.google.com/open?id=0B97wQJP8FcEeS1dRUUZ6bGFtd1U', '', 
'Oclusão Vascular','https://drive.google.com/open?id=0B97wQJP8FcEeY0RRZ21iWHZ5MDA', '3', '20" + 8 a 12', '1''', '2020'); 


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 67, 'Remada Baixa Supinada', 'https://drive.google.com/open?id=0B97wQJP8FcEeY1dySmkxUzN6a0U', '', 
'Oclusão Vascular','https://drive.google.com/open?id=0B97wQJP8FcEeY0RRZ21iWHZ5MDA', '3', '20" + 8 a 12', '1''', '2020'); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 67, 'Remada Curvada Aberta', 'https://drive.google.com/open?id=0B97wQJP8FcEeSmNQcjhHSTUtZVU', '', 
'Oclusão Vascular','https://drive.google.com/open?id=0B97wQJP8FcEeY0RRZ21iWHZ5MDA', '3', '20" + 8 a 12', '1''', '2020'); 



INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 67, 'Mobilidade Tornozelo', 'https://drive.google.com/open?id=1t7I0VtNVKsDnIPQI06dI_ZDe157tPCTr', '', '','', '1', '10', '', '');     

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 67, 'Mobilidade Quadril', 'https://drive.google.com/open?id=1-SwXhjDOnWfrW3QgCY8XahVF0IEPGg_B', '*', '','', '1', '10', '', ''); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 67, 'Agachamento Livre', 'https://drive.google.com/open?id=0B97wQJP8FcEeVi1RdUlpOE1JYXc', '', 
'Oclusão Vascular','https://drive.google.com/open?id=0B97wQJP8FcEeY0RRZ21iWHZ5MDA', '3', '20" + 8 a 12', '1''', '2020'); 


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 67, 'Leg Press', 'https://drive.google.com/open?id=0B97wQJP8FcEeUmJYcUNodXRNRkE', '', 
'Oclusão Vascular','https://drive.google.com/open?id=0B97wQJP8FcEeY0RRZ21iWHZ5MDA', '3', '20" + 8 a 12', '1''', '2020'); 


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 67, 'Cadeira Flexora', '', '', 
'Oclusão Vascular','https://drive.google.com/open?id=0B97wQJP8FcEeY0RRZ21iWHZ5MDA', '2', '20" + 8 a 12', '1''', '2020'); 


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 67, 'Estabilização 3 apoios', 'https://drive.google.com/open?id=1sJMkVowV4194OOl8QbwKIqWlShZirSbP', '', '','', '3', 'Máx', '1''', 'Isometria');  


--modelo 7 BS AB2
INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 68, 'Mobilidade Escapular', 
    'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', '','', '1', '10', '', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 68, 'Supino Reto', 'https://drive.google.com/open?id=0B97wQJP8FcEeSGhpWW9nb1N0bU0', '', 
'Bi-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '3', '8 a 12', '', '2020');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 68, 'Supino Halter', 'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', 
'Bi-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '3', '8 a 12', '60"', '2020');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 68, 'Puxador Triângulo', 'https://drive.google.com/open?id=0B97wQJP8FcEeaXVzMXF3RHRMMWc', '',
     'Bi-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '3', '8 a 12', '', '2020');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 68, 'Puxador Aberto', 'https://drive.google.com/open?id=0B97wQJP8FcEeQURFWFNGeFhtYzQ', '', 
'Bi-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '3', '8 a 12', '60"', '2020');


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 68, 'Mobilidade Tornozelo', 'https://drive.google.com/open?id=1t7I0VtNVKsDnIPQI06dI_ZDe157tPCTr' , '', '','', '1', '10', '', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 68, 'Mobilidade Quadril', 'https://drive.google.com/open?id=1-SwXhjDOnWfrW3QgCY8XahVF0IEPGg_B', '', '','', '1', '10', '', '');    


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 68, 'Leg Press', 'https://drive.google.com/open?id=0B97wQJP8FcEeUmJYcUNodXRNRkE', '', 
'Bi-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '3', '8 a 12', '', '2020');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 68, 'Agachamento Halter', 'https://drive.google.com/open?id=0B97wQJP8FcEeUmFDZVNTWHJMSE0', '', 
'Bi-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '3', '8 a 12', '60"', '2020');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 68, 'Mesa Flexora', 'https://drive.google.com/open?id=0B97wQJP8FcEec2pJcl9XM200cjA', '',
     'Bi-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '2', '8 a 12', '', '2020');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 68, 'Stiff Halter', 'https://drive.google.com/open?id=0B97wQJP8FcEeQjBWeERiLTA4STQ', '', 
'Bi-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '2', '8 a 12', '60"', '2020');

--modelo 8 RP AB2

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 69, 'Mobilidade Escapular', 
    'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', '','', '1', '10', '', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 69, 'Supino Reto', 'https://drive.google.com/open?id=0B97wQJP8FcEeSGhpWW9nb1N0bU0', '', 
'Rest and Pause','https://drive.google.com/open?id=0B97wQJP8FcEedk13cWcyaHdOeTA', '3', '5 a 7 10" X 10" X', '2''', '4020');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 69, 'Supino Inclinado', 'https://drive.google.com/open?id=0B97wQJP8FcEeZ0cyR0VyVUNBOFk', '', 
'Rest and Pause','https://drive.google.com/open?id=0B97wQJP8FcEedk13cWcyaHdOeTA', '3', '5 a 7 10" X 10" X', '2''', '4020');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 69, 'Puxador Triângulo', 'https://drive.google.com/open?id=0B97wQJP8FcEeaXVzMXF3RHRMMWc', '', 
'Rest and Pause','https://drive.google.com/open?id=0B97wQJP8FcEedk13cWcyaHdOeTA', '3', '5 a 7 10" X 10" X', '2''', '4020');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 69, 'Puxador Aberto', 'https://drive.google.com/open?id=0B97wQJP8FcEeQURFWFNGeFhtYzQ', '', 
'Rest and Pause','https://drive.google.com/open?id=0B97wQJP8FcEedk13cWcyaHdOeTA', '3', '5 a 7 10" X 10" X', '2''', '4020'); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 69, 'Mobilidade Tornozelo', 'https://drive.google.com/open?id=1t7I0VtNVKsDnIPQI06dI_ZDe157tPCTr', '', '','', '1', '10', '', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 69, 'Mobilidade Quadril', 'https://drive.google.com/open?id=1-SwXhjDOnWfrW3QgCY8XahVF0IEPGg_B', '', '','', '1', '10', '', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 69, 'Leg Press', 'https://drive.google.com/open?id=0B97wQJP8FcEeUmJYcUNodXRNRkE', '', 
'Rest and Pause','https://drive.google.com/open?id=0B97wQJP8FcEedk13cWcyaHdOeTA', '3', '5 a 7 10" X 10" X', '2''', '4020');   

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 69, 'Agachamento Livre', 'https://drive.google.com/open?id=0B97wQJP8FcEeVi1RdUlpOE1JYXc', '', 
'Rest and Pause','https://drive.google.com/open?id=0B97wQJP8FcEedk13cWcyaHdOeTA', '3', '5 a 7 10" X 10" X', '2''', '4020');      

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 69, 'Mesa Flexora', 'https://drive.google.com/open?id=0B97wQJP8FcEec2pJcl9XM200cjA', '', 
'Rest and Pause','https://drive.google.com/open?id=0B97wQJP8FcEedk13cWcyaHdOeTA', '2', '5 a 7 10" X 10" X', '2''', '4020');      

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 69, 'Elevação de Quadril', 'https://drive.google.com/open?id=0B97wQJP8FcEeWG5oZzV5OHhXWWc', '', '','', '3', 'Máx', '1''', '3030');

--modelo 9 TRI AB2

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 70, 'Mobilidade Escapular', 
    'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', 'Os dois exercícios', '','', '1', '10', '', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 70, 'Supino Reto', 'https://drive.google.com/open?id=0B97wQJP8FcEeSGhpWW9nb1N0bU0', '', 
'Tri-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '3', '8 a 12', '', '2020');  


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 70, 'Supino Halter', 'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', 
'Tri-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '3', '8 a 12', '', '2020');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 70, 'Apoio', 'https://drive.google.com/open?id=0B97wQJP8FcEeZEJpc3loczFwRkU', 'Mãos no banco', 
'Tri-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '3', '8 a 12', '1''30"', '2020');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 70, 'Puxador Aberto', 'https://drive.google.com/open?id=0B97wQJP8FcEeQURFWFNGeFhtYzQ', '', 
'Tri-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '3', '8 a 12', '', '2020');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 70, 'Puxador Supinado', 'https://drive.google.com/open?id=0B97wQJP8FcEeZ1FTY0xfV21sWlU', '', 
'Tri-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '3', '8 a 12', '', '2020');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 70, 'Remada Curvada Halteres N', 'https://drive.google.com/open?id=17fFqGX8dHObTX9t72QNuGUoaW0jhrA8U', '', 
'Tri-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '3', '8 a 12', '1''30"', '2020');  


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 70, 'Mobilidade Tornozelo', 'https://drive.google.com/open?id=1t7I0VtNVKsDnIPQI06dI_ZDe157tPCTr', '', '','', '1', '10', '', '');    


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 70, 'Mobilidade Quadril', 'https://drive.google.com/open?id=1-SwXhjDOnWfrW3QgCY8XahVF0IEPGg_B', 'Os dois exercícios', '','', '1', '10', '', '');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 70, 'Agachamento Livre', 'https://drive.google.com/open?id=0B97wQJP8FcEeVi1RdUlpOE1JYXc', '', 
'Tri-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '3', '8 a 12', '', '2020');     

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 70, 'Levantamento Terra', '', '', 
'Tri-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '3', '8 a 12', '', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 70, 'Stiff Barra','https://drive.google.com/open?id=0B97wQJP8FcEea3l4bnlWcG9mVFk','',
'Tri-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '3', '8 a 12', '1''30"', '2020');    

--modelo 10 DST AB2
INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 71, 'Mobilidade Escapular', 
    'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', 'Os dois exercícios', '','', '1', '10', '', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 71, 'Supino Máquina', 'https://drive.google.com/open?id=1WCmr8D5ipoyGeTPPdzdLrl2pA_Brhs1Y', '', 
'Drop-Set','https://drive.google.com/open?id=0B97wQJP8FcEec3UwQ0c5Y0VaWHc', '3', '5 a 7 + X + X', '2''', '3030');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 71, 'Supino Reto', 'https://drive.google.com/open?id=0B97wQJP8FcEeSGhpWW9nb1N0bU0', '', 
'Drop-Set','https://drive.google.com/open?id=0B97wQJP8FcEec3UwQ0c5Y0VaWHc', '3', '5 a 7 + X + X', '2''', '3030');       

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 71, 'Puxador Supinado', 'https://drive.google.com/open?id=0B97wQJP8FcEeZ1FTY0xfV21sWlU', '', 
'Drop-Set','https://drive.google.com/open?id=0B97wQJP8FcEec3UwQ0c5Y0VaWHc', '3', '5 a 7 + X + X', '2''', '3030');       

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 71, 'Remada Máquina', 'https://drive.google.com/open?id=1J91nrQ5AzrbcjJxjNHPt3tOGOaQOlDN6', '', 
'Drop-Set','https://drive.google.com/open?id=0B97wQJP8FcEec3UwQ0c5Y0VaWHc', '3', '5 a 7 + X + X', '2''', '3030');       


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 71, 'Mobilidade Tornozelo', 'https://drive.google.com/open?id=1t7I0VtNVKsDnIPQI06dI_ZDe157tPCTr', '', '','', '1', '10', '', '');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 71, 'Mobilidade Quadril', 'https://drive.google.com/open?id=1-SwXhjDOnWfrW3QgCY8XahVF0IEPGg_B', 'Os dois exercícios', '','', '1', '10', '', '');  


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 71, 'Leg Press', 'https://drive.google.com/open?id=0B97wQJP8FcEeUmJYcUNodXRNRkE', 'Máquina', 
'Drop-Set','https://drive.google.com/open?id=0B97wQJP8FcEec3UwQ0c5Y0VaWHc', '3', '5 a 7 + X + X', '2''', '3030');       

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 71, 'Agachamento Smith', 'https://drive.google.com/open?id=0B97wQJP8FcEeRXkyWUk3UUtiMkU', '', 
'Drop-Set','https://drive.google.com/open?id=0B97wQJP8FcEec3UwQ0c5Y0VaWHc', '4', '5 a 7 + X + X', '2''', '3030');       

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 71, 'Cadeira Flexora', '', '', 
'Drop-Set','https://drive.google.com/open?id=0B97wQJP8FcEec3UwQ0c5Y0VaWHc', '3', '5 a 7 + X + X', '2''', '3030');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 71, 'Flexão de Tronco', 'https://drive.google.com/open?id=1-SwXhjDOnWfrW3QgCY8XahVF0IEPGg_B', '', '','', '3', 'Máx', '1''', '3030');  


--modelo 11 OND Ab2

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 72, 'Mobilidade Escapular', 
    'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', 'Os dois exercícios', '','', '1', '10', '1''', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 72, 'Supino Reto', 'https://drive.google.com/open?id=0B97wQJP8FcEeSGhpWW9nb1N0bU0', '*',
'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '', '', '', '');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 72, 'Paralela Banco', 'https://drive.google.com/open?id=1se-Tfm8A-GjH9Oc8QSMTeIuubObTnIFq', '*',
'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '', '', '', '');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 72, 'Puxador Aberto', 'https://drive.google.com/open?id=0B97wQJP8FcEeQURFWFNGeFhtYzQ', '*', 
'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '', '', '', '');    


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 72, 'Remada Curvada Halteres N', 'https://drive.google.com/open?id=17fFqGX8dHObTX9t72QNuGUoaW0jhrA8U', '*', 
'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '', '', '', '');   


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 72, 'Mobilidade Tornozelo', 'https://drive.google.com/open?id=1t7I0VtNVKsDnIPQI06dI_ZDe157tPCTr', '', '','', '1', '10', '1''', '');    


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 72, 'Mobilidade Quadril', 'https://drive.google.com/open?id=1-SwXhjDOnWfrW3QgCY8XahVF0IEPGg_B', 'Os dois exercícios', '','', '1', '10', '1''', '');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 72, 'Agachamento Búlgaro','https://drive.google.com/open?id=1nfZa_N37LxpzZllrVniNWBIe7R7qJjCE', 
    '*', 'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '', '', '', '');     

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 72, 'Agachamento Frontal', 'https://drive.google.com/open?id=1PnIFK7Lj4xFeZTwBG7PWtd4HhVkbMyEi', 
    '*', 'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '', '', '', ''); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 72, 'Cadeira Flexora', '', 
    '*', 'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '1', '', '', '');     

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 72, 'Perdigueiro', 'https://drive.google.com/open?id=0B97wQJP8FcEeOUlYLWQ0TGl5Tjg', 'cada lado', '','', '2', 'até 1''', '1''', '');    

--modelo 12 IF AB2

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 73, 'Mobilidade Escapular', 'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', '','', '1', '10', '30"', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 73, 'Supino Inclinado', 'https://drive.google.com/open?id=0B97wQJP8FcEeZ0cyR0VyVUNBOFk', '', 'Isometria funcional','', '4', '8 a 12', '1''', '2020');    


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 73, 'Crucifixo na Polia', 'https://drive.google.com/open?id=0B97wQJP8FcEecUdWUmZrcHd0bWc', '', 'Isometria funcional','', '2', '8 a 12', '1''', '2020');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 73, 'Elevação Lateral', 'https://drive.google.com/open?id=0B97wQJP8FcEeSkJxNGRfeThwMXM', '', 'Isometria funcional','', '2', '8 a 12', '1''', '2020'); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 73, 'Triceps Polia', 'https://drive.google.com/open?id=0B97wQJP8FcEeZ1p4SEowMzdVU1E', '', 'Isometria funcional','', '2', '8 a 12', '1''', '2020'); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 73, 'Estabilização 2 apoios', 'https://drive.google.com/open?id=10bslWCl-qbFQL39KJQ8pmei0GhF-q1q9', '', '','', '2', 'Máximo', '30"', ''); 


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 73, 'Mobilidade Escapular', 'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', '','', '1', '10', '30"', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 73, 'Puxador Aberto', 'https://drive.google.com/open?id=0B97wQJP8FcEeQURFWFNGeFhtYzQ', '', 'Isometria funcional','', '4', '8 a 12', '1''', '2020'); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 73, 'Remada Curvada Halteres N', 'https://drive.google.com/open?id=17fFqGX8dHObTX9t72QNuGUoaW0jhrA8U', '', 'Isometria funcional','', '2', '8 a 12', '1''', '2020'); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 73, 'Rosca Scott', 'https://drive.google.com/open?id=0B97wQJP8FcEeeWtyQzhiR0VCTm8', '','Isometria funcional','', '2', '8 a 12', '1''', '2020'); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 73, 'Mobilidade Quadril', 'https://drive.google.com/open?id=1-SwXhjDOnWfrW3QgCY8XahVF0IEPGg_B', '', '','', '1', '10', '30"', '');


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 73, 'Leg Press', 'https://drive.google.com/open?id=0B97wQJP8FcEeUmJYcUNodXRNRkE', '', 
'Isometria funcional','', '3', '8 a 12', '1''', '2020'); 

  
INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 73, 'Agachamento Búlgaro','https://drive.google.com/open?id=1nfZa_N37LxpzZllrVniNWBIe7R7qJjCE', '',
     'Isometria funcional','', '2', '8 a 12', '1''', '2020'); 


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 73, 'Mesa Flexora', 'https://drive.google.com/open?id=0B97wQJP8FcEec2pJcl9XM200cjA', '', 
'Isometria funcional','', '1', '8 a 12', '1''', '2020');      

--modelo 13 DE AB2

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 74, 'Mobilidade Escapular', 'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', '','', '', '', '', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 74, 'Supino Máquina', 'https://drive.google.com/open?id=1WCmr8D5ipoyGeTPPdzdLrl2pA_Brhs1Y', '', 
'Duplo estímulo','', '1', '5 a 7', '30"', '4020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 74, 'Supino Máquina', 'https://drive.google.com/open?id=1WCmr8D5ipoyGeTPPdzdLrl2pA_Brhs1Y', '', 
'Duplo estímulo','', '1', '18 a 20', '2''', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 74, 'Supino Máquina', 'https://drive.google.com/open?id=1WCmr8D5ipoyGeTPPdzdLrl2pA_Brhs1Y', '', 
'Duplo estímulo','', '1', '5 a 7', '30"', '4020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 74, 'Supino Máquina', 'https://drive.google.com/open?id=1WCmr8D5ipoyGeTPPdzdLrl2pA_Brhs1Y', '', 
'Duplo estímulo','', '1', '18 a 20', '2''', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 74, 'Supino Máquina', 'https://drive.google.com/open?id=1WCmr8D5ipoyGeTPPdzdLrl2pA_Brhs1Y', '', 
'Duplo estímulo','', '1', '5 a 7', '30"', '4020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 74, 'Supino Máquina', 'https://drive.google.com/open?id=1WCmr8D5ipoyGeTPPdzdLrl2pA_Brhs1Y', '', 
'Duplo estímulo','', '1', '18 a 20', '2''', '2020');    


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 74, 'Elevação Frontal', 'https://drive.google.com/open?id=0B97wQJP8FcEecHF1ZjZ2Y0JnYlk', '', 'Duplo estímulo','', '1', '5 a 7', '30"', '4020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 74, 'Elevação Frontal', 'https://drive.google.com/open?id=0B97wQJP8FcEecHF1ZjZ2Y0JnYlk', '', 'Duplo estímulo','', '1', '18 a 20', '2''', '2020');   
    
INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 74, 'Triceps Francês', 'https://drive.google.com/open?id=0B97wQJP8FcEeQlN0SlplX2NWUG8', '', 'Duplo estímulo','', '1', '5 a 7', '30"', '4020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 74, 'Triceps Francês', 'https://drive.google.com/open?id=0B97wQJP8FcEeQlN0SlplX2NWUG8', '', 'Duplo estímulo','', '1', '18 a 20', '2''', '2020');   




INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 74, 'Mobilidade Escapular', 'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', '','', '', '', '', '');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 74, 'Puxador Aberto', 'https://drive.google.com/open?id=0B97wQJP8FcEeQURFWFNGeFhtYzQ', '', 
'Duplo estímulo','', '1', '5 a 7', '30"', '4020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 74, 'Puxador Aberto', 'https://drive.google.com/open?id=0B97wQJP8FcEeQURFWFNGeFhtYzQ', '', 
'Duplo estímulo','', '1', '18 a 20', '2''', '2020');   

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 74, 'Puxador Aberto', 'https://drive.google.com/open?id=0B97wQJP8FcEeQURFWFNGeFhtYzQ', '', 
'Duplo estímulo','', '1', '5 a 7', '30"', '4020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 74, 'Puxador Aberto', 'https://drive.google.com/open?id=0B97wQJP8FcEeQURFWFNGeFhtYzQ', '', 
'Duplo estímulo','', '1', '18 a 20', '2''', '2020');   

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 74, 'Puxador Aberto', 'https://drive.google.com/open?id=0B97wQJP8FcEeQURFWFNGeFhtYzQ', '', 
'Duplo estímulo','', '1', '5 a 7', '30"', '4020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 74, 'Puxador Aberto', 'https://drive.google.com/open?id=0B97wQJP8FcEeQURFWFNGeFhtYzQ', '', 
'Duplo estímulo','', '1', '18 a 20', '2''', '2020');   

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 74, 'Rosca Direta Barra', 'https://drive.google.com/open?id=0B97wQJP8FcEebkpWUTlxeGYzZ28', '', 
'Duplo estímulo','', '1', '5 a 7', '30"', '4020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 74, 'Rosca Direta Barra', 'https://drive.google.com/open?id=0B97wQJP8FcEebkpWUTlxeGYzZ28', '', 
'Duplo estímulo','', '1', '18 a 20', '2''', '2020');   


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 74, 'Mobilidade Quadril', 'https://drive.google.com/open?id=1-SwXhjDOnWfrW3QgCY8XahVF0IEPGg_B', '', '','', '', '', '', '');               


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 74, 'Agachamento Livre', 'https://drive.google.com/open?id=0B97wQJP8FcEeVi1RdUlpOE1JYXc', '', 
'Duplo estímulo','', '1', '5 a 7', '30"', '4020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 74, 'Agachamento Livre', 'https://drive.google.com/open?id=0B97wQJP8FcEeVi1RdUlpOE1JYXc', '', 
'Duplo estímulo','', '1', '18 a 20', '2''', '2020'); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 74, 'Agachamento Livre', 'https://drive.google.com/open?id=0B97wQJP8FcEeVi1RdUlpOE1JYXc', '', 
'Duplo estímulo','', '1', '5 a 7', '30"', '4020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 74, 'Agachamento Livre', 'https://drive.google.com/open?id=0B97wQJP8FcEeVi1RdUlpOE1JYXc', '', 
'Duplo estímulo','', '1', '18 a 20', '2''', '2020');


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 74, 'Mesa Flexora', 'https://drive.google.com/open?id=0B97wQJP8FcEec2pJcl9XM200cjA', '', 
'Duplo estímulo','', '1', '5 a 7', '30"', '4020');  
INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 74, 'Mesa Flexora', 'https://drive.google.com/open?id=0B97wQJP8FcEec2pJcl9XM200cjA', '', 
'Duplo estímulo','', '1', '18 a 20', '2''', '2020');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 74, 'Hiperextensão Lombar', 'https://drive.google.com/open?id=1FgRFgLN0hmpacqplGBO3rRFzOy2RdG3f', '', '','', '2', 'Máximo', '30"', '4020'); 

--modelo 14 PA AB2

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 75, 'Mobilidade Escapular', 'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', '','', '1', '10', '30"', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 75, 'Supino Halter Inclinado', 'https://drive.google.com/open?id=0B97wQJP8FcEeS1dRUUZ6bGFtd1U', '',
     'Parcial','', '4', '8 a 12', '45"', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 75, 'Cross Over', 'https://drive.google.com/open?id=0B97wQJP8FcEebm9tUFJKRXVyV3c', '', 
     'Parcial','', '2', '8 a 12', '45"', '2020');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 75, 'Desenvolvimento', 'https://drive.google.com/open?id=0B97wQJP8FcEeM1l2ZFZUV00xWTg', '', 
     'Parcial','', '2', '8 a 12', '45"', '2020');         

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 75, 'Triceps Corda', 'https://drive.google.com/open?id=0B97wQJP8FcEeTy1VZGEzRjU2dlE', '',
     'Parcial','', '2', '8 a 12', '45"', '2020'); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 75, 'Puxador Triângulo', 'https://drive.google.com/open?id=0B97wQJP8FcEeaXVzMXF3RHRMMWc', '',
     'Parcial','', '4', '8 a 12', '45"', '2020'); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 75, 'Remada Baixa Aberta', 'https://drive.google.com/open?id=0B97wQJP8FcEeRDVya1lPMnNmaW8', '',
     'Parcial','', '2', '8 a 12', '45"', '2020'); 


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 75, 'Rosca Inclinada', 'https://drive.google.com/open?id=0B97wQJP8FcEeTll3bnVlZGJSSnc', '',
     'Parcial','', '2', '8 a 12', '45"', '2020'); 


     
INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 75, 'Mobilidade Quadril', 'https://drive.google.com/open?id=1-SwXhjDOnWfrW3QgCY8XahVF0IEPGg_B', '', '','', '1', '10', '30"', '');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 75, 'Leg Press Unilateral', 'https://drive.google.com/open?id=0B97wQJP8FcEeelFyemtGb3k5bEk', '', 
     'Parcial','', '4', '8 a 12', '45"', '2020');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 75, 'Agachamento Sumô', 'https://drive.google.com/open?id=1jtFjEgYgfC6w8h9-Ai8lXcyS5cNh6gVM', '', 
     'Parcial','', '2', '8 a 12', '45"', '2020');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 75, 'Mesa Flexora', 'https://drive.google.com/open?id=0B97wQJP8FcEec2pJcl9XM200cjA', '', 
     'Parcial','', '2', '8 a 12', '45"', '2020');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 75, 'Cadeira Extensora', 'https://drive.google.com/open?id=0B97wQJP8FcEeZGViUmFBTVhtTzg', '', 
     'Parcial','', '1', '8 a 12', '45"', '2020');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 75, 'Estabilização 2 apoios', 'https://drive.google.com/open?id=10bslWCl-qbFQL39KJQ8pmei0GhF-q1q9', '', '','', '2', 'Máximo', '30"', ''); 

--modelo 15 SD AB2

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 76, 'Mobilidade Escapular', 'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', '','', '1', '10', '30"', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 76, 'Supino Máquina', 'https://drive.google.com/open?id=1WCmr8D5ipoyGeTPPdzdLrl2pA_Brhs1Y', '', 
'Super Drop-Set','https://drive.google.com/open?id=1y69rnnva20tZd6e608_W5llcl6Dh8Q5P', '4', '5a7+x+x até 20-25 reps', '1''30" a 2''', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 76, 'Crucifixo na Polia', 'https://drive.google.com/open?id=0B97wQJP8FcEecUdWUmZrcHd0bWc', '', 
'Super Drop-Set','https://drive.google.com/open?id=1y69rnnva20tZd6e608_W5llcl6Dh8Q5P', '2', '5a7+x+x até 20-25 reps', '1''30" a 2''', '2020');    


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 76, 'Desenvolvimento', 'https://drive.google.com/open?id=0B97wQJP8FcEeM1l2ZFZUV00xWTg', '', 
'Super Drop-Set','https://drive.google.com/open?id=1y69rnnva20tZd6e608_W5llcl6Dh8Q5P', '2', '5a7+x+x até 20-25 reps', '1''30" a 2''', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 76, 'Tríceps na Polia', 'https://drive.google.com/open?id=0B97wQJP8FcEeZ1p4SEowMzdVU1E', '', 
'Super Drop-Set','https://drive.google.com/open?id=1y69rnnva20tZd6e608_W5llcl6Dh8Q5P', '2', '5a7+x+x até 20-25 reps', '1''30" a 2''', '2020');  


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 76, 'Puxador Aberto', 'https://drive.google.com/open?id=0B97wQJP8FcEeQURFWFNGeFhtYzQ', '', 
'Super Drop-Set','https://drive.google.com/open?id=1y69rnnva20tZd6e608_W5llcl6Dh8Q5P', '4', '5a7+x+x até 20-25 reps', '1''30" a 2''', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 76, 'Remada Máquina', 'https://drive.google.com/open?id=1J91nrQ5AzrbcjJxjNHPt3tOGOaQOlDN6', '', 
'Super Drop-Set','https://drive.google.com/open?id=1y69rnnva20tZd6e608_W5llcl6Dh8Q5P', '2', '5a7+x+x até 20-25 reps', '1''30" a 2''', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 76, 'Rosca Direta Barra', 'https://drive.google.com/open?id=0B97wQJP8FcEebkpWUTlxeGYzZ28', '', 
'Super Drop-Set','https://drive.google.com/open?id=1y69rnnva20tZd6e608_W5llcl6Dh8Q5P', '2', '5a7+x+x até 20-25 reps', '1''30" a 2''', '2020');    


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 76, 'Mobilidade Quadril', 'https://drive.google.com/open?id=1-SwXhjDOnWfrW3QgCY8XahVF0IEPGg_B', '', '','', '1', '10', '30"', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 76, 'Leg Press', 'https://drive.google.com/open?id=0B97wQJP8FcEeUmJYcUNodXRNRkE', '', 
'Super Drop-Set','https://drive.google.com/open?id=1y69rnnva20tZd6e608_W5llcl6Dh8Q5P', '4', '5a7+x+x até 20-25 reps', '1''30" a 2''', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 76, 'Agachamento Smith', 'https://drive.google.com/open?id=0B97wQJP8FcEeRXkyWUk3UUtiMkU', '', 
'Super Drop-Set','https://drive.google.com/open?id=1y69rnnva20tZd6e608_W5llcl6Dh8Q5P', '2', '5a7+x+x até 20-25 reps', '1''30" a 2''', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 76, 'Mesa Flexora', 'https://drive.google.com/open?id=0B97wQJP8FcEec2pJcl9XM200cjA', '', 
'Super Drop-Set','https://drive.google.com/open?id=1y69rnnva20tZd6e608_W5llcl6Dh8Q5P', '2', '5a7+x+x até 20-25 reps', '1''30" a 2''', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 76, 'Cadeira Extensora', 'https://drive.google.com/open?id=0B97wQJP8FcEeZGViUmFBTVhtTzg', '', 
'Super Drop-Set','https://drive.google.com/open?id=1y69rnnva20tZd6e608_W5llcl6Dh8Q5P', '1', '5a7+x+x até 20-25 reps', '1''30" a 2''', '2020');         

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 76, 'Estabilização 2 apoios', 'https://drive.google.com/open?id=10bslWCl-qbFQL39KJQ8pmei0GhF-q1q9', '', '','', '2', 'Máximo', '30"', ''); 

--modelo 6 OV AB3

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 77, 'Mobilidade Escapular', 
    'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', '','', '1', '10', '', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 77, 'Supino Halter', 'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', 
'Oclusão Vascular','https://drive.google.com/open?id=0B97wQJP8FcEeY0RRZ21iWHZ5MDA', '2', '20" + 8 a 12', '1''', '2020'); 


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 77, 'Supino Halter Inclinado', 'https://drive.google.com/open?id=0B97wQJP8FcEeS1dRUUZ6bGFtd1U', '', 
'Oclusão Vascular','https://drive.google.com/open?id=0B97wQJP8FcEeY0RRZ21iWHZ5MDA', '2', '20" + 8 a 12', '1''', '2020'); 


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 77, 'Remada Baixa Supinada', 'https://drive.google.com/open?id=0B97wQJP8FcEeY1dySmkxUzN6a0U', '', 
'Oclusão Vascular','https://drive.google.com/open?id=0B97wQJP8FcEeY0RRZ21iWHZ5MDA', '2', '20" + 8 a 12', '1''', '2020'); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 77, 'Remada Curvada Aberta', 'https://drive.google.com/open?id=0B97wQJP8FcEeSmNQcjhHSTUtZVU', '', 
'Oclusão Vascular','https://drive.google.com/open?id=0B97wQJP8FcEeY0RRZ21iWHZ5MDA', '2', '20" + 8 a 12', '1''', '2020'); 



INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 77, 'Mobilidade Tornozelo', 'https://drive.google.com/open?id=1t7I0VtNVKsDnIPQI06dI_ZDe157tPCTr', '', '','', '1', '10', '', '');     

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 77, 'Mobilidade Quadril', 'https://drive.google.com/open?id=1-SwXhjDOnWfrW3QgCY8XahVF0IEPGg_B', '*', '','', '1', '10', '', ''); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 77, 'Agachamento Livre', 'https://drive.google.com/open?id=0B97wQJP8FcEeVi1RdUlpOE1JYXc', '', 
'Oclusão Vascular','https://drive.google.com/open?id=0B97wQJP8FcEeY0RRZ21iWHZ5MDA', '2', '20" + 8 a 12', '1''', '2020'); 


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 77, 'Leg Press', 'https://drive.google.com/open?id=0B97wQJP8FcEeUmJYcUNodXRNRkE', '', 
'Oclusão Vascular','https://drive.google.com/open?id=0B97wQJP8FcEeY0RRZ21iWHZ5MDA', '2', '20" + 8 a 12', '1''', '2020'); 


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 77, 'Cadeira Flexora', '', '', 
'Oclusão Vascular','https://drive.google.com/open?id=0B97wQJP8FcEeY0RRZ21iWHZ5MDA', '1', '20" + 8 a 12', '1''', '2020'); 


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 77, 'Estabilização 3 apoios', 'https://drive.google.com/open?id=1sJMkVowV4194OOl8QbwKIqWlShZirSbP', '', '','', '3', 'Máx', '1''', 'Isometria');  


--modelo 6 OV ABC2
INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 78, 'Mobilidade Escapular', 
    'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', '','', '1', '10', '', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 78, 'Supino Halter', 'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', 
'Oclusão Vascular','https://drive.google.com/open?id=0B97wQJP8FcEeY0RRZ21iWHZ5MDA', '2', '20" + 8 a 12', '1''', '2020'); 


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 78, 'Supino Halter Inclinado', 'https://drive.google.com/open?id=0B97wQJP8FcEeS1dRUUZ6bGFtd1U', '', 
'Oclusão Vascular','https://drive.google.com/open?id=0B97wQJP8FcEeY0RRZ21iWHZ5MDA', '2', '20" + 8 a 12', '1''', '2020'); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 78, 'Supino Reto', 'https://drive.google.com/open?id=0B97wQJP8FcEeSGhpWW9nb1N0bU0', '', 
'Oclusão Vascular','https://drive.google.com/open?id=0B97wQJP8FcEeY0RRZ21iWHZ5MDA', '2', '20" + 8 a 12', '1''', '2020');  



INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 78, 'Mobilidade Escapular', 
    'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', '','', '1', '10', '', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 78, 'Remada Baixa Supinada', 'https://drive.google.com/open?id=0B97wQJP8FcEeY1dySmkxUzN6a0U', '', 
'Oclusão Vascular','https://drive.google.com/open?id=0B97wQJP8FcEeY0RRZ21iWHZ5MDA', '2', '20" + 8 a 12', '1''', '2020'); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 78, 'Remada Curvada Aberta', 'https://drive.google.com/open?id=0B97wQJP8FcEeSmNQcjhHSTUtZVU', '', 
'Oclusão Vascular','https://drive.google.com/open?id=0B97wQJP8FcEeY0RRZ21iWHZ5MDA', '2', '20" + 8 a 12', '1''', '2020'); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 78, 'Remada Baixa Triângulo','https://drive.google.com/open?id=0B97wQJP8FcEebnhKRUpyS2pfNTA', '', 
'Oclusão Vascular','https://drive.google.com/open?id=0B97wQJP8FcEeY0RRZ21iWHZ5MDA', '2', '20" + 8 a 12', '1''', '2020'); 


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 78, 'Mobilidade Tornozelo', 'https://drive.google.com/open?id=1t7I0VtNVKsDnIPQI06dI_ZDe157tPCTr', '', '','', '1', '10', '', '');     

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 78, 'Mobilidade Quadril', 'https://drive.google.com/open?id=1-SwXhjDOnWfrW3QgCY8XahVF0IEPGg_B', '', '','', '1', '10', '', ''); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 78, 'Agachamento Livre', 'https://drive.google.com/open?id=0B97wQJP8FcEeVi1RdUlpOE1JYXc', '', 
'Oclusão Vascular','https://drive.google.com/open?id=0B97wQJP8FcEeY0RRZ21iWHZ5MDA', '2', '20" + 8 a 12', '1''', '2020'); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 78, 'Leg Press', 'https://drive.google.com/open?id=0B97wQJP8FcEeUmJYcUNodXRNRkE', '', 
'Oclusão Vascular','https://drive.google.com/open?id=0B97wQJP8FcEeY0RRZ21iWHZ5MDA', '2', '20" + 8 a 12', '1''', '2020'); 


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 78, 'Mesa Flexora', 'https://drive.google.com/open?id=0B97wQJP8FcEec2pJcl9XM200cjA', '', 
'Oclusão Vascular','https://drive.google.com/open?id=0B97wQJP8FcEeY0RRZ21iWHZ5MDA', '2', '20" + 8 a 12', '1''', '2020'); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 78, 'Estabilização 3 apoios', 'https://drive.google.com/open?id=1sJMkVowV4194OOl8QbwKIqWlShZirSbP', '', '','', '3', 'Máx', '1''', 'Isometria');  


--modelo 7 BS AB3
INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 79, 'Mobilidade Escapular', 
    'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', '','', '1', '10', '', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 79, 'Supino Reto', 'https://drive.google.com/open?id=0B97wQJP8FcEeSGhpWW9nb1N0bU0', '', 
'Bi-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '2', '8 a 12', '', '2020');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 79, 'Supino Halter', 'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', 
'Bi-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '2', '8 a 12', '60"', '2020');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 79, 'Puxador Triângulo', 'https://drive.google.com/open?id=0B97wQJP8FcEeaXVzMXF3RHRMMWc', '',
     'Bi-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '2', '8 a 12', '', '2020');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 79, 'Puxador Aberto', 'https://drive.google.com/open?id=0B97wQJP8FcEeQURFWFNGeFhtYzQ', '', 
'Bi-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '2', '8 a 12', '60"', '2020');



INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 79, 'Mobilidade Tornozelo', 'https://drive.google.com/open?id=1t7I0VtNVKsDnIPQI06dI_ZDe157tPCTr' , '', '','', '1', '10', '', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 79, 'Mobilidade Quadril', 'https://drive.google.com/open?id=1-SwXhjDOnWfrW3QgCY8XahVF0IEPGg_B', '', '','', '1', '10', '', '');    


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 79, 'Leg Press', 'https://drive.google.com/open?id=0B97wQJP8FcEeUmJYcUNodXRNRkE', '', 
'Bi-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '2', '8 a 12', '', '2020');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 79, 'Agachamento Halter', 'https://drive.google.com/open?id=0B97wQJP8FcEeUmFDZVNTWHJMSE0', '', 
'Bi-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '2', '8 a 12', '60"', '2020');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 79, 'Mesa Flexora', 'https://drive.google.com/open?id=0B97wQJP8FcEec2pJcl9XM200cjA', '',
     'Bi-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '2', '8 a 12', '', '2020');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 79, 'Stiff Halter', 'https://drive.google.com/open?id=0B97wQJP8FcEeQjBWeERiLTA4STQ', '', 
'Bi-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '2', '8 a 12', '60"', '2020');

--modelo 7 BS ABC2

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 80, 'Mobilidade Escapular', 
    'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', '','', '1', '10', '', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 80, 'Supino Reto', 'https://drive.google.com/open?id=0B97wQJP8FcEeSGhpWW9nb1N0bU0', '', 
'Bi-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '3', '8 a 12', '', '2020');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 80, 'Apoio', 'https://drive.google.com/open?id=0B97wQJP8FcEeZEJpc3loczFwRkU', '', 
'Bi-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '3', '8 a 12', '60"', '2020');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 80, 'Supino Halter Inclinado', 'https://drive.google.com/open?id=0B97wQJP8FcEeS1dRUUZ6bGFtd1U', '', 
'Bi-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '2', '8 a 12', '', '2020');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 80, 'Desenvolvimento', 'https://drive.google.com/open?id=0B97wQJP8FcEeM1l2ZFZUV00xWTg', '', 
'Bi-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '2', '8 a 12', '60"', '2020');    


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 80, 'Mobilidade Escapular', 
    'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', '','', '1', '10', '', ''); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 80, 'Remada Baixa Triângulo','https://drive.google.com/open?id=0B97wQJP8FcEebnhKRUpyS2pfNTA', '', 
'Bi-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '3', '8 a 12', '', '2020');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 80, 'Remada Curvada Supinada','https://drive.google.com/open?id=0B97wQJP8FcEeR2F1dlJKbFJ0Tlk', '', 
'Bi-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '3', '8 a 12', '60"', '2020');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 80, 'Puxador Triângulo', 'https://drive.google.com/open?id=0B97wQJP8FcEeaXVzMXF3RHRMMWc', '', 
'Bi-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '2', '8 a 12', '', '2020');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 80, 'Puxador Aberto', 'https://drive.google.com/open?id=0B97wQJP8FcEeQURFWFNGeFhtYzQ', '', 
'Bi-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '2', '8 a 12', '60"', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 80, 'Mobilidade Tornozelo', 'https://drive.google.com/open?id=1t7I0VtNVKsDnIPQI06dI_ZDe157tPCTr', '', '','', '1', '10', '', '');     

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 80, 'Mobilidade Quadril', 'https://drive.google.com/open?id=1-SwXhjDOnWfrW3QgCY8XahVF0IEPGg_B', '', '','', '1', '10', '', ''); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 80, 'Agachamento Livre', 'https://drive.google.com/open?id=0B97wQJP8FcEeVi1RdUlpOE1JYXc', '', 
'Bi-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '3', '8 a 12', '', '2020'); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 80, 'Levantamento Terra', '', '', 
'Bi-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '3', '8 a 12', '60"', '2020');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 80, 'Cadeira Flexora', '', '', 
'Bi-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '2', '8 a 12', '', '2020'); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 80, 'Stiff Halter', 'https://drive.google.com/open?id=0B97wQJP8FcEeQjBWeERiLTA4STQ', '', 
'Bi-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '2', '8 a 12', '60"', '2020');  

--modelo 8 RP AB3
INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 81, 'Mobilidade Escapular', 
    'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', '','', '1', '10', '', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 81, 'Supino Reto', 'https://drive.google.com/open?id=0B97wQJP8FcEeSGhpWW9nb1N0bU0', '', 
'Rest and Pause','https://drive.google.com/open?id=0B97wQJP8FcEedk13cWcyaHdOeTA', '3', '5 a 7 10" X 10" X', '2''', '4020');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 81, 'Supino Inclinado', 'https://drive.google.com/open?id=0B97wQJP8FcEeZ0cyR0VyVUNBOFk', '', 
'Rest and Pause','https://drive.google.com/open?id=0B97wQJP8FcEedk13cWcyaHdOeTA', '2', '5 a 7 10" X 10" X', '2''', '4020');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 81, 'Puxador Triângulo', 'https://drive.google.com/open?id=0B97wQJP8FcEeaXVzMXF3RHRMMWc', '', 
'Rest and Pause','https://drive.google.com/open?id=0B97wQJP8FcEedk13cWcyaHdOeTA', '2', '5 a 7 10" X 10" X', '2''', '4020');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 81, 'Puxador Aberto', 'https://drive.google.com/open?id=0B97wQJP8FcEeQURFWFNGeFhtYzQ', '', 
'Rest and Pause','https://drive.google.com/open?id=0B97wQJP8FcEedk13cWcyaHdOeTA', '3', '5 a 7 10" X 10" X', '2''', '4020'); 



INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 81, 'Mobilidade Tornozelo', 'https://drive.google.com/open?id=1t7I0VtNVKsDnIPQI06dI_ZDe157tPCTr', '', '','', '1', '10', '', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 81, 'Mobilidade Quadril', 'https://drive.google.com/open?id=1-SwXhjDOnWfrW3QgCY8XahVF0IEPGg_B', '', '','', '1', '10', '', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 81, 'Leg Press', 'https://drive.google.com/open?id=0B97wQJP8FcEeUmJYcUNodXRNRkE', '', 
'Rest and Pause','https://drive.google.com/open?id=0B97wQJP8FcEedk13cWcyaHdOeTA', '3', '5 a 7 10" X 10" X', '2''', '4020');   

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 81, 'Agachamento Livre', 'https://drive.google.com/open?id=0B97wQJP8FcEeVi1RdUlpOE1JYXc', '', 
'Rest and Pause','https://drive.google.com/open?id=0B97wQJP8FcEedk13cWcyaHdOeTA', '2', '5 a 7 10" X 10" X', '2''', '4020');      

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 81, 'Mesa Flexora', 'https://drive.google.com/open?id=0B97wQJP8FcEec2pJcl9XM200cjA', '', 
'Rest and Pause','https://drive.google.com/open?id=0B97wQJP8FcEedk13cWcyaHdOeTA', '2', '5 a 7 10" X 10" X', '2''', '4020');      

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 81, 'Elevação de Quadril', 'https://drive.google.com/open?id=0B97wQJP8FcEeWG5oZzV5OHhXWWc', '', '','', '3', 'Máx', '1''', '3030');

--modelo 8 RP ABC2

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 82, 'Mobilidade Escapular', 
    'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', '','', '1', '10', '', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 82, 'Supino Reto', 'https://drive.google.com/open?id=0B97wQJP8FcEeSGhpWW9nb1N0bU0', '', 
'Rest and Pause','https://drive.google.com/open?id=0B97wQJP8FcEedk13cWcyaHdOeTA', '2', '5 a 7 10" X 10" X', '2''', '4020');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 82, 'Supino Inclinado', 'https://drive.google.com/open?id=0B97wQJP8FcEeZ0cyR0VyVUNBOFk', '', 
'Rest and Pause','https://drive.google.com/open?id=0B97wQJP8FcEedk13cWcyaHdOeTA', '2', '5 a 7 10" X 10" X', '2''', '4020');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 82, 'Supino Halter Inclinado', 'https://drive.google.com/open?id=0B97wQJP8FcEeS1dRUUZ6bGFtd1U', '', 
'Rest and Pause','https://drive.google.com/open?id=0B97wQJP8FcEedk13cWcyaHdOeTA', '2', '5 a 7 10" X 10" X', '2''', '4020');  


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 82, 'Mobilidade Escapular', 
    'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', '','', '1', '10', '', '');


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 82, 'Remada Baixa Triângulo','https://drive.google.com/open?id=0B97wQJP8FcEebnhKRUpyS2pfNTA', '', 
'Rest and Pause','https://drive.google.com/open?id=0B97wQJP8FcEedk13cWcyaHdOeTA', '2', '5 a 7 10" X 10" X', '2''', '4020');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 82, 'Remada Curvada Supinada','https://drive.google.com/open?id=0B97wQJP8FcEeR2F1dlJKbFJ0Tlk', '', 
'Rest and Pause','https://drive.google.com/open?id=0B97wQJP8FcEedk13cWcyaHdOeTA', '2', '5 a 7 10" X 10" X', '2''', '4020');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 82, 'Puxador Triângulo', 'https://drive.google.com/open?id=0B97wQJP8FcEeaXVzMXF3RHRMMWc', '', 
'Rest and Pause','https://drive.google.com/open?id=0B97wQJP8FcEedk13cWcyaHdOeTA', '2', '5 a 7 10" X 10" X', '2''', '4020');  



INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 82, 'Mobilidade Tornozelo', 'https://drive.google.com/open?id=1t7I0VtNVKsDnIPQI06dI_ZDe157tPCTr', '', '','', '1', '10', '', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 82, 'Mobilidade Quadril', 'https://drive.google.com/open?id=1-SwXhjDOnWfrW3QgCY8XahVF0IEPGg_B', '', '','', '1', '10', '', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 82, 'Leg Press', 'https://drive.google.com/open?id=0B97wQJP8FcEeUmJYcUNodXRNRkE', '', 
'Rest and Pause','https://drive.google.com/open?id=0B97wQJP8FcEedk13cWcyaHdOeTA', '2', '5 a 7 10" X 10" X', '2''', '4020');   

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 82, 'Agachamento Livre', 'https://drive.google.com/open?id=0B97wQJP8FcEeVi1RdUlpOE1JYXc', '', 
'Rest and Pause','https://drive.google.com/open?id=0B97wQJP8FcEedk13cWcyaHdOeTA', '2', '5 a 7 10" X 10" X', '2''', '4020');      

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 82, 'Cadeira Flexora', '', '', 
'Rest and Pause','https://drive.google.com/open?id=0B97wQJP8FcEedk13cWcyaHdOeTA', '2', '5 a 7 10" X 10" X', '2''', '4020');      

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 82, 'Elevação de Quadril', 'https://drive.google.com/open?id=0B97wQJP8FcEeWG5oZzV5OHhXWWc', '', '','', '3', 'Máx', '1''', '3030');


--modelo 9 TRI AB3

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 83, 'Mobilidade Escapular', 
    'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', 'Os dois exercícios', '','', '1', '10', '', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 83, 'Supino Reto', 'https://drive.google.com/open?id=0B97wQJP8FcEeSGhpWW9nb1N0bU0', '', 
'Tri-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '2', '8 a 12', '', '2020');  


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 83, 'Supino Halter', 'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', 
'Tri-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '2', '8 a 12', '', '2020');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 83, 'Apoio', 'https://drive.google.com/open?id=0B97wQJP8FcEeZEJpc3loczFwRkU', 'Mãos no banco', 
'Tri-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '2', '8 a 12', '1''30"', '2020');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 83, 'Puxador Aberto', 'https://drive.google.com/open?id=0B97wQJP8FcEeQURFWFNGeFhtYzQ', '', 
'Tri-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '2', '8 a 12', '', '2020');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 83, 'Puxador Supinado', 'https://drive.google.com/open?id=0B97wQJP8FcEeZ1FTY0xfV21sWlU', '', 
'Tri-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '2', '8 a 12', '', '2020');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 83, 'Remada Curvada Halteres N', 'https://drive.google.com/open?id=17fFqGX8dHObTX9t72QNuGUoaW0jhrA8U', '', 
'Tri-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '2', '8 a 12', '1''30"', '2020');  



INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 83, 'Mobilidade Tornozelo', 'https://drive.google.com/open?id=1t7I0VtNVKsDnIPQI06dI_ZDe157tPCTr', '', '','', '1', '10', '', '');    


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 83, 'Mobilidade Quadril', 'https://drive.google.com/open?id=1-SwXhjDOnWfrW3QgCY8XahVF0IEPGg_B', 'Os dois exercícios', '','', '1', '10', '', '');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 83, 'Agachamento Livre', 'https://drive.google.com/open?id=0B97wQJP8FcEeVi1RdUlpOE1JYXc', '', 
'Tri-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '2', '8 a 12', '', '2020');     

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 83, 'Levantamento Terra', '', '', 
'Tri-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '2', '8 a 12', '', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 83, 'Stiff Barra','https://drive.google.com/open?id=0B97wQJP8FcEea3l4bnlWcG9mVFk','',
'Tri-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '2', '8 a 12', '1''30"', '2020');    


--modelo 9 TRI ABC2


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 84, 'Mobilidade Escapular', 
    'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', 'Os dois exercícios', '','', '1', '10', '', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 84, 'Supino Reto', 'https://drive.google.com/open?id=0B97wQJP8FcEeSGhpWW9nb1N0bU0', '', 
'Tri-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '3', '8 a 12', '', '2020');  


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 84, 'Supino Halter', 'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', 
'Tri-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '3', '8 a 12', '', '2020');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 84, 'Apoio', 'https://drive.google.com/open?id=0B97wQJP8FcEeZEJpc3loczFwRkU', 'Mãos no banco', 
'Tri-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '3', '8 a 12', '1''30"', '2020');  


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 84, 'Puxador Aberto', 'https://drive.google.com/open?id=0B97wQJP8FcEeQURFWFNGeFhtYzQ', '', 
'Tri-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '3', '8 a 12', '', '2020');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 84, 'Puxador Supinado', 'https://drive.google.com/open?id=0B97wQJP8FcEeZ1FTY0xfV21sWlU', '', 
'Tri-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '3', '8 a 12', '', '2020');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 84, 'Remada Curvada Halteres N', 'https://drive.google.com/open?id=17fFqGX8dHObTX9t72QNuGUoaW0jhrA8U', '', 
'Tri-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '3', '8 a 12', '1''30"', '2020');  


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 84, 'Mobilidade Tornozelo', 'https://drive.google.com/open?id=1t7I0VtNVKsDnIPQI06dI_ZDe157tPCTr', '', '','', '1', '10', '', '');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 84, 'Mobilidade Quadril', 'https://drive.google.com/open?id=1-SwXhjDOnWfrW3QgCY8XahVF0IEPGg_B', 'Os dois exercícios', '','', '1', '10', '', '');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 84, 'Agachamento Livre', 'https://drive.google.com/open?id=0B97wQJP8FcEeVi1RdUlpOE1JYXc', '', 
'Tri-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '3', '8 a 12', '', '2020');     

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 84, 'Levantamento Terra', '', '', 
'Tri-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '3', '8 a 12', '', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 84, 'Stiff Barra','https://drive.google.com/open?id=0B97wQJP8FcEea3l4bnlWcG9mVFk','',
'Tri-Set','https://drive.google.com/open?id=0B97wQJP8FcEeTC0yWmRYZy1EOFU', '3', '8 a 12', '1''30"', '2020');    

--modelo 10 DST AB3

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 85, 'Mobilidade Escapular', 
    'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', 'Os dois exercícios', '','', '1', '10', '', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 85, 'Supino Máquina', 'https://drive.google.com/open?id=1WCmr8D5ipoyGeTPPdzdLrl2pA_Brhs1Y', '', 
'Drop-Set','https://drive.google.com/open?id=0B97wQJP8FcEec3UwQ0c5Y0VaWHc', '2', '5 a 7 10" X 10" X', '2''', '4020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 85, 'Supino Reto', 'https://drive.google.com/open?id=0B97wQJP8FcEeSGhpWW9nb1N0bU0', '', 
'Drop-Set','https://drive.google.com/open?id=0B97wQJP8FcEec3UwQ0c5Y0VaWHc', '2', '5 a 7 10" X 10" X', '2''', '4020');       

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 85, 'Puxador Supinado', 'https://drive.google.com/open?id=0B97wQJP8FcEeZ1FTY0xfV21sWlU', '', 
'Drop-Set','https://drive.google.com/open?id=0B97wQJP8FcEec3UwQ0c5Y0VaWHc', '2', '5 a 7 10" X 10" X', '2''', '4020');       

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 85, 'Remada Máquina', 'https://drive.google.com/open?id=1J91nrQ5AzrbcjJxjNHPt3tOGOaQOlDN6', '', 
'Drop-Set','https://drive.google.com/open?id=0B97wQJP8FcEec3UwQ0c5Y0VaWHc', '2', '5 a 7 10" X 10" X', '2''', '4020'); 


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 85, 'Mobilidade Tornozelo', 'https://drive.google.com/open?id=1t7I0VtNVKsDnIPQI06dI_ZDe157tPCTr', '', '','', '1', '10', '', '');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 85, 'Mobilidade Quadril', 'https://drive.google.com/open?id=1-SwXhjDOnWfrW3QgCY8XahVF0IEPGg_B', 'Os dois exercícios', '','', '1', '10', '', '');  


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 85, 'Leg Press', 'https://drive.google.com/open?id=0B97wQJP8FcEeUmJYcUNodXRNRkE', 'Máquina', 
'Drop-Set','https://drive.google.com/open?id=0B97wQJP8FcEec3UwQ0c5Y0VaWHc', '2', '5 a 7 10" X 10" X', '2''', '4020');       

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 85, 'Agachamento Smith', 'https://drive.google.com/open?id=0B97wQJP8FcEeRXkyWUk3UUtiMkU', '', 
'Drop-Set','https://drive.google.com/open?id=0B97wQJP8FcEec3UwQ0c5Y0VaWHc', '2', '5 a 7 10" X 10" X', '2''', '4020');       

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 85, 'Cadeira Flexora', '', '', 
'Drop-Set','https://drive.google.com/open?id=0B97wQJP8FcEec3UwQ0c5Y0VaWHc', '1', '5 a 7 10" X 10" X', '2''', '4020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 85, 'Flexão de Tronco', 'https://drive.google.com/open?id=1-SwXhjDOnWfrW3QgCY8XahVF0IEPGg_B', '', '','', '3', 'Máx', '1''', '3030');  


--modelo 10 DST AB3

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 86, 'Mobilidade Escapular', 
    'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', 'Os dois exercícios', '','', '1', '10', '', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 86, 'Supino Reto', 'https://drive.google.com/open?id=0B97wQJP8FcEeSGhpWW9nb1N0bU0', '', 
'Drop-Set','https://drive.google.com/open?id=0B97wQJP8FcEec3UwQ0c5Y0VaWHc', '2', '5 a 7 + X + X', '2''', '3030');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 86, 'Supino Máquina', 'https://drive.google.com/open?id=1WCmr8D5ipoyGeTPPdzdLrl2pA_Brhs1Y', '', 
'Drop-Set','https://drive.google.com/open?id=0B97wQJP8FcEec3UwQ0c5Y0VaWHc', '2', '5 a 7 + X + X', '2''', '3030');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 86, 'Desenvolvimento', 'https://drive.google.com/open?id=0B97wQJP8FcEeM1l2ZFZUV00xWTg', '', 
'Drop-Set','https://drive.google.com/open?id=0B97wQJP8FcEec3UwQ0c5Y0VaWHc', '2', '5 a 7 + X + X', '2''', '3030');    
   

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 86, 'Mobilidade Escapular', 
    'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', 'Os dois exercícios', '','', '1', '10', '', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 86, 'Puxador Supinado', 'https://drive.google.com/open?id=0B97wQJP8FcEeZ1FTY0xfV21sWlU', '', 
'Drop-Set','https://drive.google.com/open?id=0B97wQJP8FcEec3UwQ0c5Y0VaWHc', '2', '5 a 7 + X + X', '2''', '3030');       

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 86, 'Remada Máquina', 'https://drive.google.com/open?id=1J91nrQ5AzrbcjJxjNHPt3tOGOaQOlDN6', '', 
'Drop-Set','https://drive.google.com/open?id=0B97wQJP8FcEec3UwQ0c5Y0VaWHc', '2', '5 a 7 + X + X', '2''', '3030');       

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 86, 'Remada Baixa Triângulo','https://drive.google.com/open?id=0B97wQJP8FcEebnhKRUpyS2pfNTA', '',
    'Drop-Set','https://drive.google.com/open?id=0B97wQJP8FcEec3UwQ0c5Y0VaWHc', '2', '5 a 7 + X + X', '2''', '3030');       


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 86, 'Mobilidade Tornozelo', 'https://drive.google.com/open?id=1t7I0VtNVKsDnIPQI06dI_ZDe157tPCTr', '', '','', '1', '10', '', '');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 86, 'Mobilidade Quadril', 'https://drive.google.com/open?id=1-SwXhjDOnWfrW3QgCY8XahVF0IEPGg_B', 'Os dois exercícios', '','', '1', '10', '', '');  


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 86, 'Leg Press', 'https://drive.google.com/open?id=0B97wQJP8FcEeUmJYcUNodXRNRkE', 'Máquina', 
'Drop-Set','https://drive.google.com/open?id=0B97wQJP8FcEec3UwQ0c5Y0VaWHc', '2', '5 a 7 + X + X', '2''', '3030');       

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 86, 'Agachamento Smith', 'https://drive.google.com/open?id=0B97wQJP8FcEeRXkyWUk3UUtiMkU', '', 
'Drop-Set','https://drive.google.com/open?id=0B97wQJP8FcEec3UwQ0c5Y0VaWHc', '2', '5 a 7 + X + X', '2''', '3030');       

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 86, 'Mesa Flexora', 'https://drive.google.com/open?id=0B97wQJP8FcEec2pJcl9XM200cjA', '', 
'Drop-Set','https://drive.google.com/open?id=0B97wQJP8FcEec3UwQ0c5Y0VaWHc', '2', '5 a 7 + X + X', '2''', '3030');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 86, 'Flexão de Tronco', 'https://drive.google.com/open?id=1-SwXhjDOnWfrW3QgCY8XahVF0IEPGg_B', '', '','', '3', 'Máx', '1''', '3030');  

--modelo 11 OND AB3

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 87, 'Mobilidade Escapular', 
    'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', 'Os dois exercícios', '','', '1', '10', '1''', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 87, 'Supino Reto', 'https://drive.google.com/open?id=0B97wQJP8FcEeSGhpWW9nb1N0bU0', '*',
'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '', '', '', '');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 87, 'Paralela Banco', 'https://drive.google.com/open?id=1se-Tfm8A-GjH9Oc8QSMTeIuubObTnIFq', '*',
'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '', '', '', '');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 87, 'Puxador Aberto', 'https://drive.google.com/open?id=0B97wQJP8FcEeQURFWFNGeFhtYzQ', '*', 
'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '', '', '', '');    


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 87, 'Remada Curvada Halteres N', 'https://drive.google.com/open?id=17fFqGX8dHObTX9t72QNuGUoaW0jhrA8U', '*', 
'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '', '', '', '');   


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 87, 'Mobilidade Tornozelo', 'https://drive.google.com/open?id=1t7I0VtNVKsDnIPQI06dI_ZDe157tPCTr', '', '','', '1', '10', '1''', '');    


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 87, 'Mobilidade Quadril', 'https://drive.google.com/open?id=1-SwXhjDOnWfrW3QgCY8XahVF0IEPGg_B', 'Os dois exercícios', '','', '1', '10', '1''', '');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 87, 'Agachamento Búlgaro','https://drive.google.com/open?id=1nfZa_N37LxpzZllrVniNWBIe7R7qJjCE', 
    '*', 'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '', '', '', '');     

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 87, 'Agachamento Frontal', 'https://drive.google.com/open?id=1PnIFK7Lj4xFeZTwBG7PWtd4HhVkbMyEi', 
    '*', 'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '', '', '', ''); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 87, 'Cadeira Flexora', '', 
    '*', 'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '1', '', '', '');     

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 87, 'Perdigueiro', 'https://drive.google.com/open?id=0B97wQJP8FcEeOUlYLWQ0TGl5Tjg', 'cada lado', '','', '2', 'até 1''', '1''', '');    

--modelo 11 OND ABC2

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 88, 'Mobilidade Escapular', 
    'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', 'Os dois exercícios', '','', '1', '10', '1''', '');


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 88, 'Supino Reto', 'https://drive.google.com/open?id=0B97wQJP8FcEeSGhpWW9nb1N0bU0', '*', 
'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '', '', '', '');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 88, 'Paralela Banco', 'https://drive.google.com/open?id=1se-Tfm8A-GjH9Oc8QSMTeIuubObTnIFq', '*',
'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '', '', '', '');  


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 88, 'Supino Inclinado', 'https://drive.google.com/open?id=0B97wQJP8FcEeZ0cyR0VyVUNBOFk', '*',
'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '', '', '', '');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 88, 'Flexão de Tronco', 'https://drive.google.com/open?id=1-SwXhjDOnWfrW3QgCY8XahVF0IEPGg_B', '*', 'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '2', '', '', '');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 88, 'Puxador Aberto', 'https://drive.google.com/open?id=0B97wQJP8FcEeQURFWFNGeFhtYzQ', '*',
'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '', '', '', '');  


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 88, 'Remada Curvada Halteres N', 'https://drive.google.com/open?id=17fFqGX8dHObTX9t72QNuGUoaW0jhrA8U', '*', 
'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '', '', '', ''); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 88, 'Remada Unilateral', 'https://drive.google.com/open?id=0B97wQJP8FcEecmdaVUZTSVJ0RWM', '*', 
'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '', '', '', ''); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 88, 'Flexão de Tronco', 'https://drive.google.com/open?id=1-SwXhjDOnWfrW3QgCY8XahVF0IEPGg_B', '*', 'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '2', '', '', '');  



INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 88, 'Mobilidade Tornozelo', 'https://drive.google.com/open?id=1t7I0VtNVKsDnIPQI06dI_ZDe157tPCTr', '', '','', '1', '10', '1''', '');    


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 88, 'Mobilidade Quadril', 'https://drive.google.com/open?id=1-SwXhjDOnWfrW3QgCY8XahVF0IEPGg_B', 'Os dois exercícios', '','', '1', '10', '1''', '');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 88, 'Agachamento Búlgaro','https://drive.google.com/open?id=1nfZa_N37LxpzZllrVniNWBIe7R7qJjCE', 
    '*', 'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '', '', '', '');     

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 88, 'Agachamento Frontal', 'https://drive.google.com/open?id=1PnIFK7Lj4xFeZTwBG7PWtd4HhVkbMyEi',
    '*', 'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '', '', '', '');     

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 88, 'Cadeira Flexora', '', '*', 
'Falha Concêntrica','https://drive.google.com/open?id=0B97wQJP8FcEeSzJnc053bERsZEE', '1', '', '', '');  
   

--modelo 12 IF AB3

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 89, 'Mobilidade Escapular', 'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', '','', '1', '10', '30"', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 89, 'Supino Inclinado', 'https://drive.google.com/open?id=0B97wQJP8FcEeZ0cyR0VyVUNBOFk', '', 'Isometria funcional','', '3', '8 a 12', '1''', '2020');    


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 89, 'Crucifixo na Polia', 'https://drive.google.com/open?id=0B97wQJP8FcEecUdWUmZrcHd0bWc', '', 'Isometria funcional','', '2', '8 a 12', '1''', '2020');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 89, 'Elevação Lateral', 'https://drive.google.com/open?id=0B97wQJP8FcEeSkJxNGRfeThwMXM', '', 'Isometria funcional','', '2', '8 a 12', '1''', '2020'); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 89, 'Triceps Polia', 'https://drive.google.com/open?id=0B97wQJP8FcEeZ1p4SEowMzdVU1E', '', 'Isometria funcional','', '2', '8 a 12', '1''', '2020'); 


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 89, 'Puxador Aberto', 'https://drive.google.com/open?id=0B97wQJP8FcEeQURFWFNGeFhtYzQ', '', 'Isometria funcional','', '3', '8 a 12', '1''', '2020'); 


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 89, 'Remada Curvada Halteres N', 'https://drive.google.com/open?id=17fFqGX8dHObTX9t72QNuGUoaW0jhrA8U', '', 'Isometria funcional','', '2', '8 a 12', '1''', '2020'); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 89, 'Rosca Scott', 'https://drive.google.com/open?id=0B97wQJP8FcEeeWtyQzhiR0VCTm8', '','Isometria funcional','', '2', '8 a 12', '1''', '2020'); 




INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 89, 'Mobilidade Quadril', 'https://drive.google.com/open?id=1-SwXhjDOnWfrW3QgCY8XahVF0IEPGg_B', '', '','', '1', '10', '30"', '');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 89, 'Leg Press', 'https://drive.google.com/open?id=0B97wQJP8FcEeUmJYcUNodXRNRkE', '', 
'Isometria funcional','', '3', '8 a 12', '1''', '2020'); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 89, 'Agachamento Búlgaro','https://drive.google.com/open?id=1nfZa_N37LxpzZllrVniNWBIe7R7qJjCE', '', 
'Isometria funcional','', '2', '8 a 12', '1''', '2020'); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 89, 'Mesa Flexora', 'https://drive.google.com/open?id=0B97wQJP8FcEec2pJcl9XM200cjA', '', 
'Isometria funcional','', '1', '8 a 12', '1''', '2020'); 


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 89, 'Cadeira Extensora', 'https://drive.google.com/open?id=0B97wQJP8FcEeZGViUmFBTVhtTzg', '', 
'Isometria funcional','', '1', '8 a 12', '1''', '2020'); 


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 89, 'Elevação de Quadril', 'https://drive.google.com/open?id=0B97wQJP8FcEeWG5oZzV5OHhXWWc', '', '','', '2', 'Máx', '30"', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 89, 'Estabilização 2 apoios', 'https://drive.google.com/open?id=10bslWCl-qbFQL39KJQ8pmei0GhF-q1q9', '', '','', '2', 'Máx', '30"', '');


--modelo 12 IF ABC2
INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 90, 'Mobilidade Escapular', 'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', '','', '1', '10', '30"', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 90, 'Supino Inclinado', 'https://drive.google.com/open?id=0B97wQJP8FcEeZ0cyR0VyVUNBOFk', '', 'Isometria funcional','', '4', '8 a 12', '1''', '2020');    


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 90, 'Crucifixo na Polia', 'https://drive.google.com/open?id=0B97wQJP8FcEecUdWUmZrcHd0bWc', '', 'Isometria funcional','', '2', '8 a 12', '1''', '2020');  


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 90, 'Elevação Lateral', 'https://drive.google.com/open?id=0B97wQJP8FcEeSkJxNGRfeThwMXM', '', 'Isometria funcional','', '2', '8 a 12', '1''', '2020'); 


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 90, 'Triceps Polia', 'https://drive.google.com/open?id=0B97wQJP8FcEeZ1p4SEowMzdVU1E', '', 'Isometria funcional','', '2', '8 a 12', '1''', '2020'); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 90, 'Estabilização 2 apoios', 'https://drive.google.com/open?id=10bslWCl-qbFQL39KJQ8pmei0GhF-q1q9', '', '','', '2', 'Máximo', '30"', ''); 


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 90, 'Mobilidade Escapular', 'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', '','', '1', '10', '30"', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 90, 'Puxador Aberto', 'https://drive.google.com/open?id=0B97wQJP8FcEeQURFWFNGeFhtYzQ', '', 'Isometria funcional', '', '4', '8 a 12', '1''', '2020');    


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 90, 'Remada Curvada Halteres N', 'https://drive.google.com/open?id=17fFqGX8dHObTX9t72QNuGUoaW0jhrA8U', '','Isometria funcional', '', '2', '8 a 12', '1''', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 90, 'Rosca Scott', 'https://drive.google.com/open?id=0B97wQJP8FcEeeWtyQzhiR0VCTm8', '', 'Isometria funcional','', '2', '8 a 12', '1''', '2020'); 
INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 90, 'Hiperextensão Lombar', 'https://drive.google.com/open?id=1FgRFgLN0hmpacqplGBO3rRFzOy2RdG3f', '', '','', '2', 'Máximo', '30"', ''); 



INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 90, 'Mobilidade Quadril', 'https://drive.google.com/open?id=1-SwXhjDOnWfrW3QgCY8XahVF0IEPGg_B', '', '','', '1', '10', '30"', '');    


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 90, 'Leg Press', 'https://drive.google.com/open?id=0B97wQJP8FcEeUmJYcUNodXRNRkE', '', 
     'Isometria funcional','', '3', '8 a 12', '1''', '2020'); 


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 90, 'Agachamento Búlgaro','https://drive.google.com/open?id=1nfZa_N37LxpzZllrVniNWBIe7R7qJjCE', '',
     'Isometria funcional','', '2', '8 a 12', '1''', '2020'); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 90, 'Mesa Flexora', 'https://drive.google.com/open?id=0B97wQJP8FcEec2pJcl9XM200cjA', '','Isometria funcional','', '1', '8 a 12', '1''', '2020');   

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 90, 'Cadeira Extensora', 'https://drive.google.com/open?id=0B97wQJP8FcEeZGViUmFBTVhtTzg', '', 
     'Isometria funcional','', '1', '8 a 12', '1''', '2020');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 90, 'Elevação de Quadril', 'https://drive.google.com/open?id=0B97wQJP8FcEeWG5oZzV5OHhXWWc', '', '','', '2', 'máximo', '30"', '');


--modelo 13 DE ABC2
INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 91, 'Mobilidade Escapular', 'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', '','', '', '', '', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 91, 'Supino Máquina', 'https://drive.google.com/open?id=1WCmr8D5ipoyGeTPPdzdLrl2pA_Brhs1Y', '', 'Duplo estímulo','', '1', '5 a 7', '30"', '4020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 91, 'Supino Máquina', 'https://drive.google.com/open?id=1WCmr8D5ipoyGeTPPdzdLrl2pA_Brhs1Y', '', 'Duplo estímulo','', '1', '18 a 20', '2''', '2020');    
INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 91, 'Supino Máquina', 'https://drive.google.com/open?id=1WCmr8D5ipoyGeTPPdzdLrl2pA_Brhs1Y', '', 'Duplo estímulo','', '1', '5 a 7', '30"', '4020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 91, 'Supino Máquina', 'https://drive.google.com/open?id=1WCmr8D5ipoyGeTPPdzdLrl2pA_Brhs1Y', '', 'Duplo estímulo','', '1', '18 a 20', '2''', '2020'); 
INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 91, 'Supino Máquina', 'https://drive.google.com/open?id=1WCmr8D5ipoyGeTPPdzdLrl2pA_Brhs1Y', '', 'Duplo estímulo','', '1', '5 a 7', '30"', '4020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 91, 'Supino Máquina', 'https://drive.google.com/open?id=1WCmr8D5ipoyGeTPPdzdLrl2pA_Brhs1Y', '', 'Duplo estímulo','', '1', '18 a 20', '2''', '2020');   

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 91, 'Elevação Frontal', 'https://drive.google.com/open?id=0B97wQJP8FcEecHF1ZjZ2Y0JnYlk', '', 'Duplo estímulo','', '1', '5 a 7', '30"', '4020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 91, 'Elevação Frontal', 'https://drive.google.com/open?id=0B97wQJP8FcEecHF1ZjZ2Y0JnYlk', '', 'Duplo estímulo','', '1', '18 a 20', '2''', '2020');   
    
INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 91, 'Triceps Francês', 'https://drive.google.com/open?id=0B97wQJP8FcEeQlN0SlplX2NWUG8', '', 'Duplo estímulo','', '1', '5 a 7', '30"', '4020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 91, 'Triceps Francês', 'https://drive.google.com/open?id=0B97wQJP8FcEeQlN0SlplX2NWUG8', '', 'Duplo estímulo','', '1', '18 a 20', '2''', '2020');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 91, 'Mobilidade Escapular', 'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', '','', '', '', '', '');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 91, 'Puxador Aberto', 'https://drive.google.com/open?id=0B97wQJP8FcEeQURFWFNGeFhtYzQ', '', 
'Duplo estímulo','', '1', '5 a 7', '30"', '4020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 91, 'Puxador Aberto', 'https://drive.google.com/open?id=0B97wQJP8FcEeQURFWFNGeFhtYzQ', '', 
'Duplo estímulo','', '1', '18 a 20', '2''', '2020');   

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 91, 'Puxador Aberto', 'https://drive.google.com/open?id=0B97wQJP8FcEeQURFWFNGeFhtYzQ', '', 
'Duplo estímulo','', '1', '5 a 7', '30"', '4020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 91, 'Puxador Aberto', 'https://drive.google.com/open?id=0B97wQJP8FcEeQURFWFNGeFhtYzQ', '', 
'Duplo estímulo','', '1', '18 a 20', '2''', '2020');   

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 91, 'Puxador Aberto', 'https://drive.google.com/open?id=0B97wQJP8FcEeQURFWFNGeFhtYzQ', '', 
'Duplo estímulo','', '1', '5 a 7', '30"', '4020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 91, 'Puxador Aberto', 'https://drive.google.com/open?id=0B97wQJP8FcEeQURFWFNGeFhtYzQ', '', 
'Duplo estímulo','', '1', '18 a 20', '2''', '2020');   

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 91, 'Rosca Direta Barra', 'https://drive.google.com/open?id=0B97wQJP8FcEebkpWUTlxeGYzZ28', '', 
'Duplo estímulo','', '1', '5 a 7', '30"', '4020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 91, 'Rosca Direta Barra', 'https://drive.google.com/open?id=0B97wQJP8FcEebkpWUTlxeGYzZ28', '', 
'Duplo estímulo','', '1', '18 a 20', '2''', '2020');   

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 91, 'Abdominal em Suspensão', 'https://drive.google.com/open?id=0B97wQJP8FcEeYVAtWHNNN1N3bjA', '', '','', '2', 'máximo', '30"', '4020');   



INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 91, 'Mobilidade Quadril', 'https://drive.google.com/open?id=1-SwXhjDOnWfrW3QgCY8XahVF0IEPGg_B', '', '','', '', '', '', '');               

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 91, 'Agachamento Livre', 'https://drive.google.com/open?id=0B97wQJP8FcEeVi1RdUlpOE1JYXc', '', 
'Duplo estímulo','', '1', '5 a 7', '30"', '4020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 91, 'Agachamento Livre', 'https://drive.google.com/open?id=0B97wQJP8FcEeVi1RdUlpOE1JYXc', '', 
'Duplo estímulo','', '1', '18 a 20', '2''', '2020'); 
INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 91, 'Agachamento Livre', 'https://drive.google.com/open?id=0B97wQJP8FcEeVi1RdUlpOE1JYXc', '', 
'Duplo estímulo','', '1', '5 a 7', '30"', '4020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 91, 'Agachamento Livre', 'https://drive.google.com/open?id=0B97wQJP8FcEeVi1RdUlpOE1JYXc', '', 
'Duplo estímulo','', '1', '18 a 20', '2''', '2020'); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 91, 'Mesa Flexora', 'https://drive.google.com/open?id=0B97wQJP8FcEec2pJcl9XM200cjA', '', 
'Duplo estímulo','', '1', '5 a 7', '30"', '4020');   


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 91, 'Mesa Flexora', 'https://drive.google.com/open?id=0B97wQJP8FcEec2pJcl9XM200cjA', '', 
'Duplo estímulo','', '1', '18 a 20', '2''', '2020');      

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 91, 'Cadeira Extensora', 'https://drive.google.com/open?id=0B97wQJP8FcEeZGViUmFBTVhtTzg', '', 
     'Duplo estímulo','', '1', '5 a 7', '30"', '4020');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 91, 'Cadeira Extensora', 'https://drive.google.com/open?id=0B97wQJP8FcEeZGViUmFBTVhtTzg', '', 
     'Duplo estímulo','', '1', '18 a 20', '2''', '2020');   

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 91, 'Hiperextensão Lombar', 'https://drive.google.com/open?id=1FgRFgLN0hmpacqplGBO3rRFzOy2RdG3f', '', '','', '2', 'Máximo', '30"', '4020'); 

--modelo 14 PA ABC2

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 92, 'Mobilidade Escapular', 'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', '','', '1', '10', '30"', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 92, 'Supino Halter Inclinado', 'https://drive.google.com/open?id=0B97wQJP8FcEeS1dRUUZ6bGFtd1U', '',
     'Parcial','', '4', '8 a 12', '45"', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 92, 'Cross Over', 'https://drive.google.com/open?id=0B97wQJP8FcEebm9tUFJKRXVyV3c', '', 
     'Parcial','', '2', '8 a 12', '45"', '2020');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 92, 'Desenvolvimento', 'https://drive.google.com/open?id=0B97wQJP8FcEeM1l2ZFZUV00xWTg', '', 
     'Parcial','', '2', '8 a 12', '45"', '2020');         

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 92, 'Triceps Corda', 'https://drive.google.com/open?id=0B97wQJP8FcEeTy1VZGEzRjU2dlE', '',
     'Parcial','', '2', '8 a 12', '45"', '2020'); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 92, 'Estabilização 2 apoios', 'https://drive.google.com/open?id=10bslWCl-qbFQL39KJQ8pmei0GhF-q1q9', '', '','', '2', 'Máximo', '30"', ''); 


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 92, 'Mobilidade Escapular', 'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', '','', '1', '10', '30"', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 92, 'Puxador Triângulo', 'https://drive.google.com/open?id=0B97wQJP8FcEeaXVzMXF3RHRMMWc', '',
     'Parcial','', '4', '8 a 12', '45"', '2020'); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 92, 'Remada Baixa Aberta', 'https://drive.google.com/open?id=0B97wQJP8FcEeRDVya1lPMnNmaW8', '',
     'Parcial','', '2', '8 a 12', '45"', '2020'); 


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 92, 'Rosca Inclinada', 'https://drive.google.com/open?id=0B97wQJP8FcEeTll3bnVlZGJSSnc', '',
     'Parcial','', '2', '8 a 12', '45"', '2020'); 

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 92, 'Hiperextensão Lombar', 'https://drive.google.com/open?id=1FgRFgLN0hmpacqplGBO3rRFzOy2RdG3f', '', '','', '2', 'Máximo', '30"', ''); 


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 92, 'Mobilidade Quadril', 'https://drive.google.com/open?id=1-SwXhjDOnWfrW3QgCY8XahVF0IEPGg_B', '', '','', '1', '10', '30"', '');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 92, 'Leg Press Unilateral', 'https://drive.google.com/open?id=0B97wQJP8FcEeelFyemtGb3k5bEk', '', 
     'Parcial','', '4', '8 a 12', '45"', '2020');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 92, 'Agachamento Sumô', 'https://drive.google.com/open?id=1jtFjEgYgfC6w8h9-Ai8lXcyS5cNh6gVM', '', 
     'Parcial','', '2', '8 a 12', '45"', '2020');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 92, 'Mesa Flexora', 'https://drive.google.com/open?id=0B97wQJP8FcEec2pJcl9XM200cjA', '', 
     'Parcial','', '2', '8 a 12', '45"', '2020');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 92, 'Cadeira Extensora', 'https://drive.google.com/open?id=0B97wQJP8FcEeZGViUmFBTVhtTzg', '', 
     'Parcial','', '2', '8 a 12', '45"', '2020');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 92, 'Elevação de Quadril', 'https://drive.google.com/open?id=0B97wQJP8FcEeWG5oZzV5OHhXWWc', '', '','', '2', 'Máx', '30"', '');

--modelo 15 SD ABC2

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 93, 'Mobilidade Escapular', 'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', '','', '1', '10', '30"', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 93, 'Supino Máquina', 'https://drive.google.com/open?id=1WCmr8D5ipoyGeTPPdzdLrl2pA_Brhs1Y', '', 
'Super Drop-Set','https://drive.google.com/open?id=1y69rnnva20tZd6e608_W5llcl6Dh8Q5P', '4', '5a7+x+x até 20-25 reps', '1''30" a 2''', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 93, 'Crucifixo na Polia', 'https://drive.google.com/open?id=0B97wQJP8FcEecUdWUmZrcHd0bWc', '', 
'Super Drop-Set','https://drive.google.com/open?id=1y69rnnva20tZd6e608_W5llcl6Dh8Q5P', '2', '5a7+x+x até 20-25 reps', '1''30" a 2''', '2020');    


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 93, 'Desenvolvimento', 'https://drive.google.com/open?id=0B97wQJP8FcEeM1l2ZFZUV00xWTg', '', 
'Super Drop-Set','https://drive.google.com/open?id=1y69rnnva20tZd6e608_W5llcl6Dh8Q5P', '2', '5a7+x+x até 20-25 reps', '1''30" a 2''', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 93, 'Tríceps na Polia', 'https://drive.google.com/open?id=0B97wQJP8FcEeZ1p4SEowMzdVU1E', '', 
'Super Drop-Set','https://drive.google.com/open?id=1y69rnnva20tZd6e608_W5llcl6Dh8Q5P', '2', '5a7+x+x até 20-25 reps', '1''30" a 2''', '2020');  

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino A', 93, 'Estabilização 2 apoios', 'https://drive.google.com/open?id=10bslWCl-qbFQL39KJQ8pmei0GhF-q1q9', '', '','', '2', 'Máximo', '30"', ''); 


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 93, 'Mobilidade Escapular', 'https://drive.google.com/open?id=1LMAk9onvzHIr1b0hzp9_GTVhq61xYBkc', '', '','', '1', '10', '30"', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 93, 'Puxador Aberto', 'https://drive.google.com/open?id=0B97wQJP8FcEeQURFWFNGeFhtYzQ', '', 
'Super Drop-Set','https://drive.google.com/open?id=1y69rnnva20tZd6e608_W5llcl6Dh8Q5P', '4', '5a7+x+x até 20-25 reps', '1''30" a 2''', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 93, 'Remada Máquina', 'https://drive.google.com/open?id=1J91nrQ5AzrbcjJxjNHPt3tOGOaQOlDN6', '', 
'Super Drop-Set','https://drive.google.com/open?id=1y69rnnva20tZd6e608_W5llcl6Dh8Q5P', '2', '5a7+x+x até 20-25 reps', '1''30" a 2''', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 93, 'Rosca Direta Barra', 'https://drive.google.com/open?id=0B97wQJP8FcEebkpWUTlxeGYzZ28', '', 
'Super Drop-Set','https://drive.google.com/open?id=1y69rnnva20tZd6e608_W5llcl6Dh8Q5P', '2', '5a7+x+x até 20-25 reps', '1''30" a 2''', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino B', 93, 'Hiperextensão Lombar', 'https://drive.google.com/open?id=1FgRFgLN0hmpacqplGBO3rRFzOy2RdG3f', '', '','', '2', 'Máximo', '30"', ''); 


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 93, 'Mobilidade Quadril', 'https://drive.google.com/open?id=1-SwXhjDOnWfrW3QgCY8XahVF0IEPGg_B', '', '','', '1', '10', '30"', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 93, 'Leg Press', 'https://drive.google.com/open?id=0B97wQJP8FcEeUmJYcUNodXRNRkE', '', 
'Super Drop-Set','https://drive.google.com/open?id=1y69rnnva20tZd6e608_W5llcl6Dh8Q5P', '4', '5a7+x+x até 20-25 reps', '1''30" a 2''', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 93, 'Agachamento Smith', 'https://drive.google.com/open?id=0B97wQJP8FcEeRXkyWUk3UUtiMkU', '', 
'Super Drop-Set','https://drive.google.com/open?id=1y69rnnva20tZd6e608_W5llcl6Dh8Q5P', '2', '5a7+x+x até 20-25 reps', '1''30" a 2''', '2020');    

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 93, 'Mesa Flexora', 'https://drive.google.com/open?id=0B97wQJP8FcEec2pJcl9XM200cjA', '', 
'Super Drop-Set','https://drive.google.com/open?id=1y69rnnva20tZd6e608_W5llcl6Dh8Q5P', '2', '5a7+x+x até 20-25 reps', '1''30" a 2''', '2020');    


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
    VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 93, 'Cadeira Extensora', 'https://drive.google.com/open?id=0B97wQJP8FcEeZGViUmFBTVhtTzg', '', 
'Super Drop-Set','https://drive.google.com/open?id=1y69rnnva20tZd6e608_W5llcl6Dh8Q5P', '2', '5a7+x+x até 20-25 reps', '1''30" a 2''', '2020');         

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Treino C', 93, 'Elevação de Quadril', 'https://drive.google.com/open?id=0B97wQJP8FcEeWG5oZzV5OHhXWWc', '', '','', '2', 'máximo', '30"', '');


update planilha_exercicio set obs = 'Os dois exercícios'
where nome_exercicio in ('Mobilidade Escapular', 'Mobilidade Quadril');


INSERT INTO public.modelo_exercicio(
            id_modelo, qtde_dias, nome)
    VALUES (nextval('modelo_exercicio_seq'), 7, 'HIIT Bike');


    INSERT INTO public.modelo_exercicio(
            id_modelo, qtde_dias, nome)
    VALUES (nextval('modelo_exercicio_seq'), 7, 'HIIT Corda');


    INSERT INTO public.modelo_exercicio(
            id_modelo, qtde_dias, nome)
    VALUES (nextval('modelo_exercicio_seq'), 7, 'Esteira');


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'HIIT', 94, 'Hiit Bike', '', '30/30', '','', '8 a 12', '30"120%Vvo2max', '30" parada', '');


INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'HIIT', 95, 'Hiit Corda', '', 'continuo', '','', '1', '20'' 75%VvO2max', '', '');

INSERT INTO planilha_exercicio(
            id_planilha_exercicio, nome_planilha_exer, id_modelo, nome_exercicio, 
            link_exercicio, obs, metedo, link_metedo, series, reps, intervalo, 
            cadencia)
VALUES (nextval('planilha_exercicio_seq'), 'Aeróbio Contínuo', 96, 'Esteira', '', 'continuo', '','', '1', '20'' 75%VvO2max', '', '');
