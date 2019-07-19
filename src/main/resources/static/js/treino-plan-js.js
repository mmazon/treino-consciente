$(document).ready(function () {
	$("#selectModelos").change(function(){
		loadExercicios();
	});
	
	$("#selectModelosHiit").change(function(){
		loadExerciciosHiit();
	});
	
	$("#selectModelosHiit2").change(function(){
		loadExerciciosHiit2();
	});
	
	editor = new SimpleTableCellEditor("tableExerResults");
    editor.SetEditableClass("editMe");
    
    editorHiit = new SimpleTableCellEditor("tableExerHiitResults");
    editorHiit.SetEditableClass("editMe");
    
    editorHiit2 = new SimpleTableCellEditor("tableExerHiitResults2");
    editorHiit2.SetEditableClass("editMe");
	
});

function loadComboModelos() {
    var url = '/treino-consciente/modelos/';
    var $boxes = $('input[name^=listaDeDiasSelecionadosExer]:checked');
    $("#selectModelos").load(url+$boxes.length);
}

function loadExerciciosHiit() {
    var url = '/treino-consciente/exercicios-hiit/';
    
    var idModelo = $('#selectModelosHiit').val();

    $("#tableExerHiitResults").load(url+idModelo);
}

function loadExerciciosHiit2() {
    var url = '/treino-consciente/exercicios-hiit2/';
    
    var idModelo = $('#selectModelosHiit2').val();

    $("#tableExerHiitResults2").load(url+idModelo);
}

function loadExercicios() {
    var url = '/treino-consciente/exercicios/';
    
    var idModelo = $('#selectModelos').val();

    $("#divExer").show();
    $("#idBtnHiit").show();
    $("#addExerDiv").show();
    $("#tableExerResults").load(url+idModelo);
}

function removeLinhaTableResults(obj){
	$(obj).parent().parent().remove();
}

  function addExercicioTable(){
	  
	  var objsTdsExercicios = [];
	  $('#tableExerResults tr').each(function() {
		  var objsIn = [];
		  $(this).find('td').each(function() {
			  objsIn.push($(this).html());
		  });
		  objsTdsExercicios.push(objsIn);
	  });
	  
	  var exerToAdd = $("#dropAddExer").val().split("|");
	  
	  $('#tableExerResults tbody').append('<tr>' +
			'<td text="idPlanTreino" style="display:none;">' +
          	'<td class="editMe"> </td>' + 
          	'<td class="editMe">' +exerToAdd[0]+ '</td>' + 
          	'<td style="display:none;">' + exerToAdd[1] + '</td>' +
          	'<td class="editMe">' + objsTdsExercicios[2][4] + '</td>' + 
          	'<td style="display:none;">' +objsTdsExercicios[2][5]+'</td>'+
          	'<td class="editMe"> </td>' +
          	'<td class="editMe">' +objsTdsExercicios[2][7]+ '</td>'+
          	'<td class="editMe">' +objsTdsExercicios[2][8]+ '</td>'+
          	'<td class="editMe"> </td>' +
          	'<td class="editMe">' +objsTdsExercicios[2][10]+ '</td>'+
          	'<td class="editMe"> </td>' +
          	'<td> <a class="btn btn-sm btn-danger" onclick="removeLinhaTableResults(this);"><span class="glyphicon glyphicon-trash"></span></a></td>' +
          	'<td style="display:none;"> </td>' +
          	'<td style="display:none;"> </td>' +
          	'<td style="display:none;"> </td>' +
          	'</tr>');
	  
  }

  function sendDataTreino(urlMetodo){
	  var planilhas = [];
	  var treino = {};
	  treino.idTreino = $('#idTreino').val();
	  
	  var aluno = {};
	  aluno.idAluno = $('#idAluno').val();
	  treino.aluno = aluno;
	  
	  var professor = {};
	  professor.idProfessor = $('#idProfessor').val();
	  treino.professor = professor;
	  
	  var objsTdsExercicios = [];
	  
	  $('#tableExerResults tr').each(function() {
		  var objsIn = [];
		  $(this).find('td').each(function() {
			  objsIn.push($(this).html());
		  });
		  objsTdsExercicios.push(objsIn);
	  });
	  
	  
	  $('#tableExerHiitResults tr').each(function() {
		  var objsIn = [];
		  $(this).find('td').each(function() {
			  objsIn.push($(this).html());
		  });
		  objsTdsExercicios.push(objsIn);
	  });
	  
	  
	  $('#tableExerHiitResults2 tr').each(function() {
		  var objsIn = [];
		  $(this).find('td').each(function() {
			  objsIn.push($(this).html());
		  });
		  objsTdsExercicios.push(objsIn);
	  });
	  
	  
	  objsTdsExercicios.splice(0, 1);
	  
	  var idModeloFix;
	  var qtDiasFix;
	  var modeloTreinoFix;
	  
	  $.each( objsTdsExercicios, function( keyOut, valueOut ) {
		  var json = {};
		  $.each( valueOut, function( key, value ) {
			  
			  if(key == 0){
				  json.idPlanilhaTreino = null;
			  }
				
			  if(key == 1){
				  json.nomePlanilhaExer = value;
			  }
			  if(key == 2){
				  json.nomeExercicio = value;
			  }
			  if(key == 3){
				  json.linkExercicio = value;
			  }
			  if(key == 4){
				  json.metodo = value;
			  }
			  if(key == 5){
				  json.linkMetodo = value;
			  }
			  if(key == 6){
				  json.observacao = value;
			  }
			  if(key == 7){
				  json.series = value;
			  }
			  if(key == 8){
				  json.reps = value;
			  }
			  if(key == 9){
				  json.intervalo = value;
			  }
			  if(key == 10){
				  json.cadencia = value;
			  }
			  if(key == 11){
				  json.sequenciaNaLista = value;
			  }
			  
			  //modelo
			  if(key == 13){
				  if(value === undefined || value === null || value===" "){
					  value = idModeloFix;
				  }
				  modeloTreino = {};
				  modeloTreino.idModelo = value;
				  idModeloFix = value;
			  }
			  if(key == 14){
				  if(value === undefined || value === null || value===" "){
					  value = qtDiasFix;
				  }
				  modeloTreino.qtDias = value;
				  qtDiasFix = value;
			  }
			  
			  if(key == 15){
				  if(value === undefined || value === null || value===" "){
					  value = modeloTreinoFix;
				  }
				  modeloTreino.nome = value;
				  json.modeloTreino = modeloTreino;
				  modeloTreinoFix = value;
			  }
			  
			  
		  });
		  planilhas.push(json);
	})
	
	
	treino.planilhas = planilhas;
	var listaDeDiasSelecionados = [];
	
	var $boxes = $('input[name^=listaDeDiasSelecionadosExer]:checked');
	$.each( $boxes, function( key, value ) {
		listaDeDiasSelecionados.push($(value).val());
	});
	treino.listaDeDiasSelecionadosExer = listaDeDiasSelecionados;
	treino.observacao = $('#observacao').val();
	
	//dias do hiit
	listaDeDiasSelecionados = [];
	$boxes = $('input[name^=listaDeDiasSelecionadosHiit]:checked');
	$.each( $boxes, function( key, value ) {
		listaDeDiasSelecionados.push($(value).val());
	});
	treino.listaDeDiasSelecionadosHiit = listaDeDiasSelecionados;
	
	//dias hiit 2
	listaDeDiasSelecionados = [];
	$boxes = $('input[name^=listaDeDiasSelecionadosOtherHiit]:checked');
	$.each( $boxes, function( key, value ) {
		listaDeDiasSelecionados.push($(value).val());
	});
	treino.listaDeDiasSelecionadosOtherHiit = listaDeDiasSelecionados;
	
	doPostSave(treino, urlMetodo);
	
}
  
  function doPostSave(treino, urlMetodo){
	  $('#loader').show();
	  $.ajax({
		    method: "POST",
		    url: "/treino-consciente/" + urlMetodo,
		    contentType : "application/json",
		    data: JSON.stringify(treino),
		    success: function(status){
		        if(status) {
		        	$('#downFile').show();
		        	$('#enviaEmail').show();
		            alert('Planilha salva com sucesso!');
		        }else{
		        	alert('Ocorreu um erro inesperado!');
		        }
		        $('#loader').hide();
		    }
		});
  }
  
  function enviaEmail(){
	  var result = confirm("Deseja realmente enviar o E-mail?");
	  if(result){
		  //$(window).scrollTop(0);
		  var treino = {};
		  treino.idTreino = $('#idTreino').val();
		  $('#loader').show();
		  $.ajax({
			    method: "POST",
			    url: "/treino-consciente/enviaMailPlanilha",
			    contentType : "application/json",
			    data: JSON.stringify(treino),
			    success: function(status){
			        if(status) {
			            alert('Email enviado com sucesso!');
			        }else{
			        	alert('Ocorreu um erro inesperado!');
			        }
			        $('#loader').hide();
			    }
			});
	  }
  }
  
	function addOtherHiit(){
		$('#camposHiit2').show();
	}
	
	function addHiit(){
		$('#idBtnOtherHiit').show();
		$('#camposHiit1').show();
	}
