/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mykmutt.report.demo.datasource;

import java.lang.reflect.Array;
import java.util.Properties;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import mykmutt.report.demo.model.Member;
import mykmutt.report.demo.model.Ticket;

public class EmailUtil {

    public static boolean sendEmail(String email, String title, String detail) {

        final String auth_host = "smtp.gmail.com";
        final String auth_port = "587";
        final String auth_email = "mykmutt@gmail.com";
        final String auth_password = "mykmutt5";

        Properties props = new Properties();
        props.put("mail.smtp.host", auth_host);
        props.put("mail.smtp.socketFactory.port", auth_port);
        props.put("mail.smtp.socketFactory.class",
                "javax.net.ssl.SSLSocketFactory");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.port", auth_port);
        props.put("mail.smtp.starttls.enable", "true");

        try {

            Session mailSession = Session.getInstance(props,
                    new javax.mail.Authenticator() {
                protected PasswordAuthentication
                        getPasswordAuthentication() {
                    return new PasswordAuthentication(auth_email, auth_password);
                }
            });

            Message message = new MimeMessage(mailSession);

            message.setFrom(new InternetAddress(auth_email)); // From

            /**
             * * Recipient **
             */
            message.setRecipients(Message.RecipientType.TO,
                    InternetAddress.parse(email)); // To
            message.setSubject(title);
            message.setText(detail);

            Transport.send(message);

        } catch (MessagingException e) {
            throw new RuntimeException(e);

        }
        return true;
    }

    public static boolean sendRegister(Member m) {
        String title = "สมัครสมาชิกเสร็จสมบูรณ์";
        String detail = "คุณสมัครสมาชิกเสร็จสมบูรณ์แล้ว คุณ " + m.getName() + " " + m.getSurname() + "\n"
                + "\nUsername ของคุณคือ " + m.getUsername() +"\n"
                + "\nสามารถ log in เข้าระบบได้ที่ http://mykmutt.sit.kmutt.ac.th ค่ะ";
        return sendEmail(m.getEmail(), title, detail);
    }

    public static boolean sendUpdateStatus(Member m, Ticket t) {
        String title = "[My KMUTT - Report] Update Ticket Status";
        String detail = "เรียน คุณ "+ m.getName()+" "+ m.getUsername()+"\n"
                    + "\nจากปัญหาที่คุณได้แจ้งไว้ในระบบหัวข้อ “"+t.getName()+"”"
                    + "\nมีการเปลี่ยนแปลงสถานะเป็น " + t.getStatusName()
                    + "\n\nโปรดเข้าสู่ระบบเพื่อตรวจสอบได้ที่ http://mykmutt.sit.kmutt.ac.th ขอบคุณค่ะ";
        return sendEmail(m.getEmail(), title, detail);
    }
    
}
