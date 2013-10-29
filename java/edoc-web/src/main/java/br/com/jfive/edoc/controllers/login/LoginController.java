package br.com.jfive.edoc.controllers.login;


import br.com.caelum.vraptor.*;
import br.com.caelum.vraptor.simplemail.Mailer;
import br.com.caelum.vraptor.view.Results;
import br.com.jfive.edoc.models.UsuarioDTO;
import br.com.jfive.edoc.models.UsuarioEntity;
import br.com.jfive.edoc.service.UsuarioService;
import org.apache.commons.mail.Email;
import org.apache.commons.mail.EmailException;
import org.apache.commons.mail.SimpleEmail;


@Resource
public class LoginController {

    private final Result result;
    private Mailer mailer;
    private UsuarioService usuarioService;


    public LoginController(Result result,Mailer mailer, UsuarioService usuarioService) {
        this.result = result;
        this.mailer = mailer;
        this.usuarioService = usuarioService;
    }

    @Path("/login")
    @Get
    public void login() {
        result.forwardTo("/login.jsp");
    }

    public void recuperar() {}

    public void trocarSenha() {}

    @Post("/login/enviaSenha")
    @Consumes("application/json")
    public void enviarEmailRecuperacao(UsuarioDTO usuario) {

        UsuarioEntity usuarioRecupera = usuarioService.resetarSenhaUsuario(usuario.getEmail());

        if(usuarioRecupera == null) {
            ResultString message = new ResultString("E-mail não encontrado", true);
            result.use(Results.json()).withoutRoot().from(message).recursive().serialize();
        }else{

            ResultString message = new ResultString("Nova senha enviada para seu e-mail verifique e tente novamente o login", false);

            Email emailSend = new SimpleEmail();
            emailSend.setSubject("[GMUD] - Nova Senha");
            try {
                emailSend.addTo(usuario.getEmail());
                emailSend.setMsg("Segue a nova senha: " + usuarioRecupera.getSenha());

                mailer.send(emailSend);
            } catch (EmailException e) {
                message = new ResultString("Erro no envio do e-mail", true);
            }

            result.use(Results.json()).withoutRoot().from(message).recursive().serialize();
        }

    }

}
