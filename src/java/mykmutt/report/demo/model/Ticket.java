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
 * @author Koichi
 */
public class Ticket {

    private int id;
    private String name;
    private String desc;
    private Place place;

    public Ticket() {
    }

    public Ticket(int id, String name, String desc, Place place) {
        this.id = id;
        this.name = name;
        this.desc = desc;
        this.place = place;
    }

    public Place getPlace() {
        return place;
    }

    public void setPlace(Place place) {
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
            t.setPlace(Place.getPlaceById(rs.getInt("ticket_place")));
        } catch (SQLException ex) {
            Logger.getLogger(Place.class.getName()).log(Level.SEVERE, null, ex);
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

    
//    public static void main(String[] args) {
//        System.out.println(Ticket.getAllTickets());
//    }
    
    @Override
    public String toString() {
        return "Ticket{" + "id=" + id + ", name=" + name + ", desc=" + desc + ", place=" + place + '}';
    }

}
