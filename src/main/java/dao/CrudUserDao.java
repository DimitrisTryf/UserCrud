/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import model.CrudUser;
import utils.DBUtils;

/**
 *
 * @author dimit
 */
public class CrudUserDao {

    public List<CrudUser> fetchAllUsers() {
        String sql = "SELECT * FROM users;";
        List<CrudUser> result = new ArrayList<>();
        DBUtils dbu = new DBUtils();
        try (Connection con = dbu.getConPool()) {
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery(sql);
            while (rs.next()) {
                CrudUser temp = new CrudUser();
                temp.setId(rs.getInt("ID"));
                temp.setRealName(rs.getString("RealName"));
                temp.setUsername(rs.getString("Username"));
                temp.setPassword(rs.getString("Password"));
                result.add(temp);
            }
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        return result;
    }

    public void deleteUserById(String userId) {
        String sql = "DELETE FROM users WHERE ID=" + userId + ";";
        DBUtils dbu = new DBUtils();
        try (Connection con = dbu.getConPool()) {
            Statement st = con.createStatement();
            int i = st.executeUpdate(sql);
            System.out.println(i);
            System.out.println("");
        } catch (SQLException ex) {
            System.out.println(ex);
        }
    }

    public CrudUser getUserById(String id) {
        String sql = "SELECT * FROM users WHERE id=" + id;
        DBUtils dbu = new DBUtils();
        try (Connection con = dbu.getConPool()) {
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery(sql);
            if (rs.next()) {
                CrudUser temp = new CrudUser();
                temp.setId(rs.getInt("ID"));
                temp.setRealName(rs.getString("RealName"));
                temp.setUsername(rs.getString("Username"));
                temp.setPassword(rs.getString("Password"));
                return temp;
            }

        } catch (SQLException ex) {
            System.out.println(ex);
        }
        return null;
    }

    public void updateUser(CrudUser cu) {
        int id = cu.getId();
        String realname = cu.getRealName();
        String username = cu.getUsername();
        String password = cu.getPassword();
        String sql = "UPDATE users SET RealName='" + realname + "',Username='" + username + "',Password='" + password + "' WHERE id=" + id;
        DBUtils dbu = new DBUtils();
        try (Connection con = dbu.getConPool()) {
            Statement st = con.createStatement();
            st.executeUpdate(sql);
        } catch (SQLException ex) {
            System.out.println(ex);
        }
    }

}
