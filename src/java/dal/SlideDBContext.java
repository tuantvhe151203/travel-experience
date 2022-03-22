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
import model.Slide;

/**
 *
 * @author User
 */
public class SlideDBContext extends DBContext {

    public List<Slide> getAllSlide() {
        try {
            List<Slide> list = new ArrayList<>();
            String sql = "select *from slide";
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Slide slide = new Slide();
                slide.setSlider_id(rs.getInt("slider_id"));
                slide.setImages(rs.getString("images"));

                list.add(slide);
            }
            return list;
        } catch (SQLException e) {
            e.printStackTrace(System.out);
        }
        return null;
    }

    public void addSlide(String images) {
        try {
            String sql = "INSERT INTO [Slide]    ([images]   )   VALUES (?)";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, images);

            ResultSet rs = ps.executeQuery();
        } catch (SQLException e) {
            e.printStackTrace(System.out);
        }
    }

    public Slide getSlideById(int slider_id) {
        try {
            String sql = "select * from Slide where slider_id = ?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, slider_id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Slide slide = new Slide();
                slide.setSlider_id(rs.getInt("slider_id"));
                slide.setImages(rs.getString("images"));

                return slide;
            }
        } catch (SQLException e) {
            e.printStackTrace(System.out);
        }
        return null;
    }

    public void updateSlide(int slider_id, String images) {
        try {
            String sql = "UPDATE [slide]\n"
                    + "   SET [images] = ?\n"
                  
                    + " WHERE slider_id = ?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, images);
            ps.setInt(2, slider_id);
            ResultSet rs = ps.executeQuery();
        } catch (SQLException e) {
            e.printStackTrace(System.out);
        }
    }

    public void deleteSlide(int slider_id) {
        try {
            String sql = "DELETE Slide WHERE slider_id = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, slider_id);
            stm.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(AccountDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
