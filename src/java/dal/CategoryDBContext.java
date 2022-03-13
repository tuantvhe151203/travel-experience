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
import model.Category;
/**
 *
 * @author User
 */
public class CategoryDBContext extends DBContext {
    public List<Category> getAllCategories() {
        try {
            List<Category> list = new ArrayList<>();
            String sql = "select * from category";
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Category category = new Category(rs.getInt(1),
                        rs.getString(2));
                list.add(category);
            }
            return list;
        } catch (SQLException e) {
            e.printStackTrace(System.out);
        }
        return null;
    }

    public Category getCategoryById(int cate_id) {
        try {
            String sql = "select * from Category where category_id =? ";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, cate_id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Category category = new Category(
                        rs.getInt(1),
                        rs.getString(2));
                return category;
            }
        } catch (SQLException e) {
            e.printStackTrace(System.out);
        }
        return null;
    }

    public String getCateNameByCateId(int category_id) {
        try {
            String sql = "select name from category where category_id = ?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, category_id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                String name = rs.getString(1);
                return name;
            }
        } catch (SQLException e) {
            e.printStackTrace(System.out);
        }
        return null;
    }

    public void addCategory(String name) {
        try {
                String sql = "INSERT INTO [dbo].[Category]\n"
                        + "           ([name]\n"
                        + "     VALUES\n"
                        + "           ,?)";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, name);
            ResultSet rs = ps.executeQuery();
        } catch (SQLException e) {
            e.printStackTrace(System.out);
        }
    }

    public void updateCategory(int category_id, String name) {
        try {
            String sql = "UPDATE [Category] SET [name] = ? Where category_id = ?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, name);
            ps.setInt(2, category_id);
            ResultSet rs = ps.executeQuery();
        } catch (SQLException e) {
            e.printStackTrace(System.out);
        }
    }

    public void deleteCategory(int category_id) {
        try {
            String sql = "DELETE category Where category_id = ? ";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, category_id);
            stm.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(CategoryDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
