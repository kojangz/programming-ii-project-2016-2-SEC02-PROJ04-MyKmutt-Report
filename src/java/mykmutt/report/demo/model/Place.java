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
public class Place {

    private int id;
    private String name;

    public Place() {
    }

    public Place(int id, String name) {
        this.id = id;
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public static Place getPlaceById(int id) {
        Place p = null;
        try {
            Connection con = ConnectionBuilder.getConnection();
            String sqlCmd = "SELECT * FROM place WHERE place_id = ?";
            PreparedStatement pstm = con.prepareStatement(sqlCmd);
            pstm.setInt(1, id);
            ResultSet rs = pstm.executeQuery();
            if (rs.next()) {
                p = new Place();
                ORM(p, rs);
            }
        } catch (SQLException ex) {
            Logger.getLogger(Place.class.getName()).log(Level.SEVERE, null, ex);
        }
        return p;
    }

    private static void ORM(Place p, ResultSet rs) {
        try {
            p.setId(rs.getInt("place_id"));
            p.setName(rs.getString("place_name"));
        } catch (SQLException ex) {
            Logger.getLogger(Place.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public static List<Place> getAllPlaces() {
        Place p = null;
        List<Place> places = null;
        try {
            Connection conn = ConnectionBuilder.getConnection();
            Statement stmt = conn.createStatement();
            String sqlCmd = "SELECT * FROM place";
            ResultSet rs = stmt.executeQuery(sqlCmd);
            while (rs.next()) {
                p = new Place();
                ORM(p, rs);
                if (places == null) {
                    places = new ArrayList<Place>();
                }
                places.add(p);
            }
        } catch (SQLException ex) {
            Logger.getLogger(Ticket.class.getName()).log(Level.SEVERE, null, ex);
        }
        return places;
    }
/*
    public static void main(String[] args) {
        System.out.println(Place.getAllPlaces());
    }
*/
    @Override
    public String toString() {
        return "Place{" + "id=" + id + ", name=" + name + '}';
    }

}
