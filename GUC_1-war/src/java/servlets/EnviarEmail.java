/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

/**
 *
 * @author O--maro
 */
public class EnviarEmail {
    
     public EnviarEmail(){
    }
    public void enviar(String mailDestino, String nombre ,String contrasenya) {
        try {
            // CONFIGURACION CONEXION CON GMAIL
            Properties props = new Properties();
            props.setProperty("mail.smtp.host", "smtp.gmail.com");
            props.setProperty("mail.smtp.starttls.enable", "true");
            props.setProperty("mail.smtp.port", "587");
            props.setProperty("mail.smtp.user", "inftelhypj@gmail.com");
            props.setProperty("mail.smtp.auth", "true");

            // PREPARAMOS LA SESION
            Session session = Session.getDefaultInstance(props);

            // CONSTRUIMOS EL MENSAJE
            MimeMessage message = new MimeMessage(session);
            //Nuestra cuenta desde la que enviaremos notificaciones
            message.setFrom(new InternetAddress("newsofttechapp@gmail.com"));

            //DESTINATARIO
            message.addRecipient(
                    Message.RecipientType.TO,
                    new InternetAddress(mailDestino));

            //ASUNTO
            message.setSubject("Los datos de su cuenta");
            message.setText("Su cuenta ha sido creada con éxito.\n"+"Puede acceder a la aplicación con los siguientes datos: \n"
                    +"Usuario: "+nombre+"\n"+"Contraseña: "+contrasenya);
            Transport t;
            t = session.getTransport("smtp");
            t.connect("newsofttechapp@gmail.com", "newsofttech1234");
            t.sendMessage(message, message.getAllRecipients());
            // Cierre.
            t.close();

        } catch (AddressException ex) {
            ex.printStackTrace();
        } catch (MessagingException ex) {
            ex.printStackTrace();
        }
    }
}
