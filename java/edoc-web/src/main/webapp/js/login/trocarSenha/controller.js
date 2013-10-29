/**
 * Script de controle da tela de trocarSenha
 * @autor Rodrigo Almeida
 * @since 11 Jul 2013
 **/


$().ready(function (){

    $("#formTrocarSenha").validate({
        rules: {
            senhaAtual: "required",

            novaSenha: "required",

            confirmarSenha: {
                required: true,
                equalTo: "#novaSenha"
            }

        },
        messages: {
            senhaAtual: "Senha Atual obrigatória",

            novaSenha: "Nova Senha obrigatória",

            confirmarSenha: {
                required: "Confirma Senha obrigatória",
                equalTo: "Senha e confirma senha não conferem"
            }
        }
    })
});


function trocarSenhaController($scope, $window, $http) {

    $scope.trocarSenha = function(formulario) {

        if($("#formTrocarSenha").valid()) {

        }
    }


}