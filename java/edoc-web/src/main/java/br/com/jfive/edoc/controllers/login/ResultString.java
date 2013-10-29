package br.com.jfive.edoc.controllers.login;

/**
 * Created with IntelliJ IDEA.
 * User: rodrigoalmeida
 * Date: 07/07/13
 * Time: 21:43
 * To change this template use File | Settings | File Templates.
 */
public class ResultString {

    private String message;
    private boolean error;

    public ResultString(String message, boolean error) {
        this.message = message;
        this.error = error;
    }

    public String getMessage() {
        return message;
    }

    public boolean isError() {
        return error;
    }
}
