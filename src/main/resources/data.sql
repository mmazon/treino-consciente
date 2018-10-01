INSERT INTO public.professor(id_professor, email, login, nome, senha)
    VALUES (1, 'rafasadam@gmail.com', 'rafa', 'Rafael Bonatelli', 'admin');

INSERT INTO public.professor(id_professor, email, login, nome, senha)
    VALUES (2, 'josue@gmail.com', 'rafa', 'Josué Ricardo', 'admin');

INSERT INTO public.professor(id_professor, email, login, nome, senha)
    VALUES (3, 'rodrigo@gmail.com', 'rafa', 'Rodrigo Pereira', 'admin');
    
    

INSERT INTO public.aluno(
id_aluno, cidade_uf, data_nascimento, data_resposta_form, email, 
   link_formulario, nm_aluno, ds_obs, sexo, telefone)
  VALUES (1, 'Floripa', CURRENT_DATE, CURRENT_DATE, 'moacir.mazon@gmail.com', '', 'Moacir Mazon', '', 'Masculino', '');
 
 INSERT INTO public.aluno(
id_aluno, cidade_uf, data_nascimento, data_resposta_form, email, 
   link_formulario, nm_aluno, ds_obs, sexo, telefone)
  VALUES (2, 'Sao Paulo', CURRENT_DATE, CURRENT_DATE, 'joao.delino@gmail.com', '', 'Joao Delino', '', 'Masculino', '');


 INSERT INTO public.treino(id_treino, data_envio, data_resposta_form, ds_obs, plano, status, tipo, id_aluno, id_professor)
    VALUES (1, CURRENT_DATE, CURRENT_DATE, '', 'Mensal', '', '1-1', 1, 1);

INSERT INTO public.treino(id_treino, data_envio, data_resposta_form, ds_obs, plano, status, tipo, id_aluno, id_professor)
    VALUES (2, CURRENT_DATE, CURRENT_DATE, '', 'Mensal', 'ENVIADO', '1-1', 2, 1);    