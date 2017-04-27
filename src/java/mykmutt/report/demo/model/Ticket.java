/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mykmutt.report.demo.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import mykmutt.report.demo.datasource.ConnectionBuilder;

/**
 *
 * @author Antonymz
 */
public class Ticket {

    private int id;
    private String name;
    private String desc;
    private String place;
    private int status;
    private int userId;

    public Ticket() {
    }

    public Ticket(String name, String desc, String place) {
        this.id = 0;
        this.name = name;
        this.desc = desc;
        this.place = place;
        this.status = 0;
    }

    public Ticket(String name, String desc, String place, int userId) throws SQLException {
        this.name = name;
        this.desc = desc;
        this.place = place;
        this.status = 0;
        this.userId = userId;
    }

    public Ticket(int id, String name, String desc, String place, int status) {
        this.id = id;
        this.name = name;
        this.desc = desc;
        this.place = place;
        this.status = status;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getPlace() {
        return place;
    }

    public void setPlace(String place) {
        this.place = place;
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

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    public static Ticket getTicketById(int id) {
        Ticket t = null;
        try {
            Connection con = ConnectionBuilder.getConnection();
            String sqlCmd = "SELECT * FROM ticket WHERE ticket_id = ?";
            PreparedStatement pstm = con.prepareStatement(sqlCmd);
            pstm.setInt(1, id);
            ResultSet rs = pstm.executeQuery();
            if (rs.next()) {
                t = new Ticket();
                ORM(t, rs);
            }
        } catch (SQLException ex) {
            Logger.getLogger(Ticket.class.getName()).log(Level.SEVERE, null, ex);
        }
        return t;
    }

    private static void ORM(Ticket t, ResultSet rs) {
        try {
            t.setId(rs.getInt("ticket_id"));
            t.setName(rs.getString("ticket_name"));
            t.setDesc(rs.getString("ticket_desc"));
            t.setPlace(rs.getString("ticket_place"));
            t.setStatus(rs.getInt("ticket_status"));
            t.setUserId(rs.getInt("ticket_user"));
        } catch (SQLException ex) {
            Logger.getLogger(Ticket.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public static List<Ticket> getAllTickets() {
        Ticket t = null;
        List<Ticket> tickets = null;
        try {
            Connection conn = ConnectionBuilder.getConnection();
            Statement stmt = conn.createStatement();
            String sqlCmd = "SELECT * FROM ticket";
            ResultSet rs = stmt.executeQuery(sqlCmd);
            while (rs.next()) {
                t = new Ticket();
                ORM(t, rs);
                if (tickets == null) {
                    tickets = new ArrayList<Ticket>();
                }
                tickets.add(t);
            }
        } catch (SQLException ex) {
            Logger.getLogger(Ticket.class.getName()).log(Level.SEVERE, null, ex);
        }
        return tickets;
    }

    public boolean addTicket() {
        if (name.length() > 0 && desc.length() > 0 && place.length() > 0) {
            try {
                Connection conn = ConnectionBuilder.getConnection();
                String sqlCmd = "INSERT INTO ticket(ticket_name, ticket_desc, ticket_place,ticket_status,ticket_user) VALUES(?,?,?,0,?)";
                PreparedStatement pstm = conn.prepareStatement(sqlCmd);
                pstm.setString(1, name);
                pstm.setString(2, desc);
                pstm.setString(3, place);
                pstm.setInt(4, userId);
                int result = pstm.executeUpdate();
                if (result != 0) {
                    return true;
                }
            } catch (SQLException ex) {
                System.err.println(ex);
            }
        }
        return false;
    }

    @Override
    public String toString() {
        return "Ticket{" + "id=" + id + ", name=" + name + ", desc=" + desc + ", place=" + place + '}';
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public static boolean update(int ticket_id, int ticket_status) {
        try {
            Connection conn = ConnectionBuilder.getConnection();
            String sqlCmd = "UPDATE ticket SET ticket_status = " + ticket_status + " WHERE ticket_id = " + ticket_id;
            PreparedStatement pstm = conn.prepareStatement(sqlCmd);
            int result = pstm.executeUpdate();
            if (result != 0) {
                return true;
            }
        } catch (SQLException ex) {
            System.err.println(ex);
        }
        return false;
    }

    public static Ticket getTicket(int ticket_id) {
        Ticket t = null;
        try {
            Connection conn = ConnectionBuilder.getConnection();
            Statement stmt = conn.createStatement();
            String sqlCmd = "SELECT * FROM ticket WHERE ticket_id = " + ticket_id;
            ResultSet rs = stmt.executeQuery(sqlCmd);
            while (rs.next()) {
                t = new Ticket();
                ORM(t, rs);

            }
        } catch (SQLException ex) {
            Logger.getLogger(Ticket.class.getName()).log(Level.SEVERE, null, ex);
        }
        return t;
    }

    public static boolean delete(int ticket_id) {
        try {
            Connection conn = ConnectionBuilder.getConnection();
            String sqlCmd = "DELETE FROM ticket WHERE ticket_id = " + ticket_id;
            PreparedStatement pstm = conn.prepareStatement(sqlCmd);
            int result = pstm.executeUpdate();
            if (result != 0) {
                return true;
            }
        } catch (SQLException ex) {
            System.err.println(ex);
        }
        return false;

    }

    public String getStatusName() {
        if (status == 0) {
            return "Received";
        } else if (status == 1) {
            return "On going";
        } else if (status == 2) {
            return "Finished";
        }
        return "";
    }
}
