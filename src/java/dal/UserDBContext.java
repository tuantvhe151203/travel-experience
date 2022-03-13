/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.User;

/**
 *
 * @author User
 */
public class UserDBContext extends DBContext {

    public User getUser(String username, String password) {
        try {
            String sql = "select a.*, ar.user_role\n"
                    + "from Account a inner join Account_Role ar\n"
                    + "on a.role_id = ar.id\n"
                    + "WHERE username = ? AND password = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, username);
            stm.setString(2, password);
            ResultSet rs = stm.executeQuery();
            User account = null;
            while (rs.next()) {
                if (account == null) {
                    account = new User();
                    account.setUsername(username);
                    account.setPassword(password);
                
                    return account;
                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public List<User> getAllUser() {
        try {
            List<User> list = new ArrayList<>();
            String sql = "select a.*, ar.user_role\n"
                    + "from Account a inner join Account_Role ar\n"
                    + "on a.role_id = ar.id;";
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                User account = new User();
                account.setUser_id(rs.getInt("user_id"));
                account.setUsername(rs.getString("username"));
                account.setEmail(rs.getString("email"));
                account.setPassword(rs.getString("password"));
                account.setPassword(rs.getString("phone"));
                 account.setPassword(rs.getString("email"));
                account.setPassword(rs.getString("address"));
                list.add(account);
            }
            return list;
        } catch (SQLException e) {
            e.printStackTrace(System.out);
        }
        return null;
    }

   

    public List<User> getAllAuthors() {
        try {
            List<User> list = new ArrayList<>();
            String sql = "select a.*, ar.user_role\n"
                    + "from Account a inner join Account_Role ar\n"
                    + "on a.role_id = ar.id"
                    + " where role_id = 2";
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                User account = new User();
                account.setUser_id(rs.getInt("id"));
                account.setUsername(rs.getString("username"));
                account.setEmail(rs.getString("email"));
                account.setPassword(rs.getString("password"));
               
                list.add(account);
            }
            return list;
        } catch (SQLException e) {
            e.printStackTrace(System.out);
        }
        return null;
    }

    public User getUserById(int account_id) {
        try {
            String sql = "select a.*, ar.user_role\n"
                    + "from Account a inner join Account_Role ar\n"
                    + "on a.role_id = ar.id"
                    + " where a.id = ?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, account_id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                User account = new User();
                account.setUser_id(rs.getInt("id"));
                account.setUsername(rs.getString("username"));
                account.setEmail(rs.getString("email"));
                account.setPassword(rs.getString("password"));
                
                return account;
            }
        } catch (SQLException e) {
            e.printStackTrace(System.out);
        }
        return null;
    }

    public void addUser(String username, String password, String email, int role_id) {
        try {
            String sql = "INSERT INTO [Account]\n"
                    + "           ([username]\n"
                    + "           ,[password]\n"
                    + "           ,[email]\n"
                    + "           ,[role_id])\n"
                    + "     VALUES\n"
                    + "           (?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?)";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, password);
            ps.setString(3, email);
            ps.setInt(4, role_id);
            ResultSet rs = ps.executeQuery();
        } catch (SQLException e) {
            e.printStackTrace(System.out);
        }
    }

    public void updateUser(int account_id, String username, String password, String email, int role_id) {
        try {
            String sql = "UPDATE [Account]\n"
                    + "   SET [username] = ?\n"
                    + "      ,[password] = ?\n"
                    + "      ,[email] = ?\n"
                    + "      ,[role_id] = ?\n"
                    + " WHERE id = ?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, password);
            ps.setString(3, email);
            ps.setInt(4, role_id);
            ps.setInt(5, account_id);
            ResultSet rs = ps.executeQuery();
        } catch (SQLException e) {
            e.printStackTrace(System.out);
        }
    }

    public void deleteUser(int account_id) {
        try {
            String sql = "DELETE Account WHERE id = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, account_id);
            stm.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(CategoryDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
