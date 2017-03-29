/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mykmutt.report.demo.model;
/*
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import mykmutt.report.demo.datasource.ConnectionBuilder;
*/
/**
 *
 * @author Antonymz
 */
public class Member {
    private int id;
    private String name;
    private String surname;
    private long stdid;
    private char gender;
    private String faculty;
    private String email;
    private String username;
    private String password;
    private int position;

    public Member() {
    }

    public Member(String name, String surname, long stdid, char gender, String faculty, String email, String username, String password, int position) {
        this.name = name;
        this.surname = surname;
        this.stdid = stdid;
        this.gender = gender;
        this.faculty = faculty;
        this.email = email;
        this.username = username;
        this.password = password;
        this.position = position;
    }
    
    public Member(int id, String name, String surname, long stdid, char gender, String faculty, String email, String username, String password, int position) {
        this.id = id;
        this.name = name;
        this.surname = surname;
        this.stdid = stdid;
        this.gender = gender;
        this.faculty = faculty;
        this.email = email;
        this.username = username;
        this.password = password;
        this.position = position;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public long getStdid() {
        return stdid;
    }

    public void setStdid(long stdid) {
        this.stdid = stdid;
    }

    public char getGender() {
        return gender;
    }

    public void setGender(char gender) {
        this.gender = gender;
    }

    public String getFaculty() {
        return faculty;
    }

    public void setFaculty(String faculty) {
        this.faculty = faculty;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getPosition() {
        return position;
    }

    public void setPosition(int position) {
        this.position = position;
    }
    
    
    /*public boolean memberRegister() {
        try {
            Connection conn = ConnectionBuilder.getConnection();
            String sqlCmd = "INSERT INTO member(member_name, member_surname, member_stdid, member_gender, member_faculty, member_email,"
                    + " member_username, member_password, member_position) VALUES(?,?,?,?,?,?,?,?,?)";
            PreparedStatement pstm = conn.prepareStatement(sqlCmd);
            pstm.setString(1, name);
            pstm.setString(2, surname);
            pstm.setLong(3, stdid);
            pstm.setLong(4, gender);
            pstm.setString(5, faculty);
            pstm.setString(6, email);
            pstm.setString(7, username);
            pstm.setString(8, password);
            pstm.setInt(9, position);
            int result = pstm.executeUpdate();
            if (result != 0) {
                return true;
            }
        } catch (SQLException ex) {
            System.err.println(ex);
        }
        return false;
    }*/

    @Override
    public String toString() {
        return "Member{" + "id=" + id + ", name=" + name + ", surname=" + surname + ", stdid=" + stdid + ", gender=" + gender + ", faculty=" + faculty + ", email=" + email + ", username=" + username + ", password=" + password + ", position=" + position + '}';
    }
    
    
}
