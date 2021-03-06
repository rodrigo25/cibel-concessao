jQuery ->
  $('#concessionario_checkbox').change ->
    # $(this).prop('checked')
    # quando eu do check, ele retorna true
    if $(this).prop('checked')
      $('#concessionario_municipe_nome').val($('#municipe_nome').val()).prop("disabled", true)
      $('#concessionario_municipe_RG').val($('#municipe_RG').val()).prop("disabled", true)
      $('#concessionario_requerente_CPF').val($('#requerente_CPF').val()).prop("disabled", true)
      $('#concessionario_requerente_dt_nascimento').val($('#requerente_dt_nascimento').val()).prop("disabled", true)
      $('#concessionario_requerente_estado_civil').val($('#requerente_estado_civil').val()).prop("disabled", true)
      $('#concessionario_requerente_nacionalidade').val($('#requerente_nacionalidade').val()).prop("disabled", true)
      $('#concessionario_requerente_profissao').val($('#requerente_profissao').val()).prop("disabled", true)
      $('#concessionario_requerente_email').val($('#requerente_email').val()).prop("disabled", true)
      $('#concessionario_municipe_telefone').val($('#municipe_telefone').val()).prop("disabled", true)
      $('#concessionario_requerente_celular').val($('#requerente_celular').val()).prop("disabled", true)
      $('#concessionario_requerente_CEP').val($('#requerente_CEP').val()).prop("disabled", true)
      $('#concessionario_municipe_rua').val($('#municipe_rua').val()).prop("disabled", true)
      $('#concessionario_municipe_numero').val($('#municipe_numero').val()).prop("disabled", true)
      $('#concessionario_municipe_complemento').val($('#municipe_complemento').val()).prop("disabled", true)
      $('#concessionario_requerente_bairro').val($('#requerente_bairro').val()).prop("disabled", true)
      $('#concessionario_requerente_cidade').val($('#requerente_cidade').val()).prop("disabled", true)
      $('#concessionario_requerente_estado').val($('#requerente_estado').val()).prop("disabled", true)
      $('#concessionario_dt_obito').val("").prop("disabled", true)
      $('#ajax_concessionario_buscar').prop('disabled', true)
      $('#ajax_concessionario_limpar').prop('disabled', true)
    else
      $('#concessionario_municipe_nome').val("").prop("disabled", false)
      $('#concessionario_municipe_RG').val("").prop("disabled", false)
      $('#concessionario_requerente_CPF').val("").prop("disabled", false)
      $('#concessionario_requerente_dt_nascimento').val("").prop("disabled", false)
      $('#concessionario_requerente_estado_civil').val("").prop("disabled", false)
      $('#concessionario_requerente_nacionalidade').val("").prop("disabled", false)
      $('#concessionario_requerente_profissao').val("").prop("disabled", false)
      $('#concessionario_requerente_email').val("").prop("disabled", false)
      $('#concessionario_municipe_telefone').val("").prop("disabled", false)
      $('#concessionario_requerente_celular').val("").prop("disabled", false)
      $('#concessionario_requerente_CEP').val("").prop("disabled", false)
      $('#concessionario_municipe_rua').val("").prop("disabled", false)
      $('#concessionario_municipe_numero').val("").prop("disabled", false)
      $('#concessionario_municipe_complemento').val("").prop("disabled", false)
      $('#concessionario_requerente_bairro').val("").prop("disabled", false)
      $('#concessionario_requerente_cidade').val("").prop("disabled", false)
      $('#concessionario_requerente_estado').val("").prop("disabled", false)
      $('#concessionario_dt_obito').val("").prop("disabled", false)
      $('#ajax_concessionario_buscar').prop("disabled", false)
      $('#ajax_concessionario_limpar').prop("disabled", false)
    
  checkbox_change = (selector) ->
    $('#'+selector).change ->
      $('#concessionario_checkbox').click() if $('#concessionario_checkbox').prop("checked", true)
      
  checkbox_change("municipe_nome")
  checkbox_change("municipe_RG")
  checkbox_change("requerente_CPF")
  checkbox_change("requerente_dt_nascimento")
  checkbox_change("requerente_estado_civil")
  checkbox_change("requerente_nacionalidade")
  checkbox_change("requerente_profissao")
  checkbox_change("requerente_email")
  checkbox_change("municipe_telefone")
  checkbox_change("requerente_celular")
  checkbox_change("requerente_CEP")
  checkbox_change("municipe_rua")
  checkbox_change("municipe_numero")
  checkbox_change("municipe_complemento")
  checkbox_change("requerente_bairro")
  checkbox_change("requerente_cidade")
  checkbox_change("requerente_estado")
  
  
  $("#ajax_concessionario_buscar").click ->
    $.post("/ajax_buscar_concessionario_cpf",
      {
        concessionario_CPF: $('#concessionario_requerente_CPF').val()
      }
    )
    
  
  $("#ajax_concessionario_limpar").click ->
    $('#concessionario_requerente_CPF').val("").prop("disabled", false).focus();
    $('#concessionario_municipe_nome').val("").prop("disabled", false);
    $('#concessionario_municipe_RG').val("").prop("disabled", false);
    $('#concessionario_requerente_dt_nascimento').val("").prop("disabled", false);
    $('#concessionario_requerente_estado_civil').val("").prop("disabled", false);
    $('#concessionario_requerente_nacionalidade').val("").prop("disabled", false);
    $('#concessionario_requerente_profissao').val("").prop("disabled", false);
    $('#concessionario_dt_obito').val("").prop("disabled", false);
    $('#concessionario_requerente_email').val("").prop("disabled", false);
    $('#concessionario_municipe_telefone').val("").prop("disabled", false);
    $('#concessionario_requerente_celular').val("").prop("disabled", false);
    $('#concessionario_requerente_CEP').val("").prop("disabled", false);
    $('#concessionario_municipe_rua').val("").prop("disabled", false);
    $('#concessionario_municipe_numero').val("").prop("disabled", false);
    $('#concessionario_municipe_complemento').val("").prop("disabled", false);
    $('#concessionario_requerente_bairro').val("").prop("disabled", false);
    $('#concessionario_requerente_cidade').val("").prop("disabled", false);
    $('#concessionario_requerente_estado').val("").prop("disabled", false);
  
  