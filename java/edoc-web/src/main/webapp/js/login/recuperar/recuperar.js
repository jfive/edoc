/**
 * Created with IntelliJ IDEA.
 * User: rodrigoalmeida
 * Date: 07/07/13
 * Time: 20:13
 * To change this template use File | Settings | File Templates.
 */

$().ready(function(){
    $("#formRecupera").validate({
        rules: {
            email: {
                required:true,
                email: true
            }
        },
        messages: {
            email: {
                required: "E-mail Obrigatório",
                email: "E-mail Inválido"
            }
        }/*,

        errorElement: "div",
        errorPlacement: function(error, element) {
            error.addClass("alert alert-error");
            error.appendTo($("#errorMessage"));
        }*/
    });
});

function userController($scope, $window, $http) {

    $scope.sendEmail = function (usuario) {

        if($("#formRecupera").valid()) {
            var user = angular.toJson({usuario : $scope.usuario});
            $http.post('/edoc/login/enviaSenha', user).success(function(data){

                $('#errorMessage').html("");

                if(data.error){
                    $('#errorMessage').append("<div class='alert alert-error'>"+ data.message +"</div>");
                }else{
                    $('#errorMessage').append("<div class='alert alert-success'>" + data.message +"</div>");
                }

            }).error(function(data, status, headers, config) {
                $('#errorMessage').html("");
                $('#errorMessage').append("<div class='alert alert-error'>Erro ao enviar senha favor tentar novamente mais tarde</div>");
            });
        }

    };

    $scope.sendVoltar = function() {
        window.location.href="/edoc/";
    }


}
 /*
User = Backbone.Model.extend({

    el: $('body'),

    paramRoot: 'usuario',

    initialize : function(){
        this.bind("invalid",  function(model, error) {
            $('#errorMessage').html("");
            $('#errorMessage').append("<div class='alert alert-error'>"+ error +"</div>");
        });
    },

    toJSON: function(){
        return {usuario: _.clone(this.attributes)}
    },

    dataType: 'jsonp',


    defaults : {
        email: ""
    },

    urlRoot : "/edoc/login/enviaSenha",


    validate : function(attributes) {
        if(attributes.email == ''){
            return "Email Obrigatório";
        }


    }

});

View = Backbone.View.extend({

    el: $('#formRecupera'),

    initialize: function(){
        this.model = new User;
    },

    events: {
        "click #btnSubmit" : "send",
        "submit" : "send"
    },

    send : function(event) {

        var emailTxt = this.$('input[name=email]').val();
        var result = new Message();

        this.model.set({email: emailTxt},{validate: true});

        if(this.model.isValid()){
            this.model.save({
                success: function(result) {
                    $('#errorMessage').html("");
                    $('#errorMessage').append("<div class='alert alert-success'>" + result.get('message') +"</div>");
                },
                error: function(model, error){
                    $('#errorMessage').html("");
                    $('#errorMessage').append("<div class='alert alert-error'>Erro ao recuperar a senha tente novamente mais tarde</div>");
                }

            });
        }
    }

});

var view = new View();
       */

