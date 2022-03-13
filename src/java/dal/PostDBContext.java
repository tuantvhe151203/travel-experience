/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import model.Category;
import model.Post;

/**
 *
 * @author Century
 */
public class PostDBContext extends DBContext {

    public List<Post> getAllPosts() {
        try {
            List<Post> list = new ArrayList<>();
            String sql = "select p.*, c.category_id as cid, c.name\n"
                    + "from Post p inner join Category c on p.category_id = c.category_id ";
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Post post = new Post();
                post.setPost_id(rs.getInt("post_id"));
                post.setTitle(rs.getString("title"));
                post.setShort_new(rs.getString("short_new"));
                post.setContent(rs.getString("content"));
                post.setImages(rs.getString("images"));
                post.setCreate_date(rs.getDate("create_date"));

                Category cate = new Category();
                cate.setCategory_id(rs.getInt("cid"));
                cate.setName(rs.getString("name"));

                post.setCategory_id(cate);

                list.add(post);
            }
            return list;
        } catch (Exception e) {
            e.printStackTrace(System.out);
        }
        return null;
    }


    public Post getPostById(int post_id) {
        try {
            String sql = "select p.*, c.category_id as cid, c.name\n"
                    + " from Post p inner join Category c \n"
                    + "on p.category_id = c.category_id ";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, post_id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Post post = new Post();
                post.setPost_id(rs.getInt("post_id"));
                post.setTitle(rs.getString("title"));
                post.setShort_new(rs.getString("short_new"));
                post.setContent(rs.getString("content"));
                post.setImages(rs.getString("images"));
                post.setCreate_date(rs.getDate("create_date"));

                Category cate = new Category();
                cate.setCategory_id(rs.getInt("cid"));
                cate.setName(rs.getString("name"));

                post.setCategory_id(cate);

                return post;
            }
        } catch (SQLException e) {
            e.printStackTrace(System.out);
        }
        return null;
    }

    public List<Post> getPostByCateId(int cate_id) {
        try {
            List<Post> list = new ArrayList<>();
            String sql = "select *from post";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, cate_id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Post post = new Post();
                post.setPost_id(rs.getInt("post_id"));
                post.setTitle(rs.getString("title"));
                post.setShort_new(rs.getString("short_new"));
                post.setContent(rs.getString("content"));
                post.setImages(rs.getString("images"));
                post.setCreate_date(rs.getDate("create_date"));

                Category cate = new Category();
                cate.setCategory_id(rs.getInt("cid"));
                cate.setName(rs.getString("name"));

                post.setCategory_id(cate);
                list.add(post);
            }
            return list;
        } catch (SQLException e) {
            e.printStackTrace(System.out);
        }
        return null;
    }


    public void addPost(String title,
            String short_new, String images, String content, Date create_date,int category_id) {
        try {
            String sql = "INSERT INTO [Ass_PRJ].[dbo].[post]   ([title]  ,[short_new]    ,[images]    \n"
                    + "  ,[content]    ,[create_date]     ,[category_id])  \n"
                    + "   VALUES (?,?,?,?,?,?)";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, title);
            ps.setString(2, short_new);
            ps.setString(3, images);
            ps.setString(4, content);
            ps.setDate(5, create_date);
            ps.setInt(6, category_id);

            ResultSet rs = ps.executeQuery();
        } catch (SQLException e) {
            e.printStackTrace(System.out);
        }
    }

//    public void updatePost(int post_id, int cate_id, int user_id, String title,
//            String description, String content, String img_thumnail,
//            Date created_date, boolean active) {
//        try {
//            String sql = "UPDATE [Post]\n"
//                    + "   SET [cate_id] = ?\n"
//                    + "      ,[user_id] = ?\n"
//                    + "      ,[title] = ?\n"
//                    + "      ,[description] = ?\n"
//                    + "      ,[content] = ?\n"
//                    + "      ,[img_thumnail] = ?\n"
//                    + "      ,[created_date] = ?\n"
//                    + "      ,[active] = ?\n"
//                    + " WHERE id = ?";
//            PreparedStatement ps = connection.prepareStatement(sql);
//            ps.setInt(1, cate_id);
//            ps.setInt(2, user_id);
//            ps.setString(3, title);
//            ps.setString(4, description);
//            ps.setString(5, content);
//            ps.setString(6, img_thumnail);
//            ps.setDate(7, created_date);
//            ps.setBoolean(8, active);
//            ps.setInt(9, post_id);
//            ResultSet rs = ps.executeQuery();
//        } catch (SQLException e) {
//            e.printStackTrace(System.out);
//        }
//    }
    public void deletePost(int post_id) {
        try {
            String sql = "DELETE Post WHERE post_id = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, post_id);
            stm.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(CategoryDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

   
}
