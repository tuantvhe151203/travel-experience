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
            String sql = "select p.*, c.category_id as cid, c.name from Post p inner join Category c \n" +
        "on p.category_id = c.category_id ";
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Post post = new Post();
                post.setPost_id(rs.getInt("post_id"));
                post.setTitle(rs.getString("title"));
                post.setContent(rs.getString("content"));
                post.setImages(rs.getString("images"));
                post.setCreate_date(rs.getDate("created_date"));
             
                Category cate = new Category();
                cate.setCategory_id(rs.getInt("cid"));
                cate.setName(rs.getString("name"));
               
                list.add(post);
            }
            return list;
        } catch (Exception e) {
            e.printStackTrace(System.out);
        }
        return null;
    }

//    public List<Post> getTop5NewestPost() {
//        try {
//            List<Post> list = new ArrayList<>();
//            String sql = "select top(5) p.*, c.id as cid, c.name, a.id as aid, a.username\n"
//                    + "                    from Post p inner join Category c\n"
//                    + "                    on p.cate_id = c.id\n"
//                    + "                    inner join Account a\n"
//                    + "                    on p.user_id = a.id\n"
//                    + "                    where p.active = 1\n"
//                    + "			   order by created_date desc;";
//            PreparedStatement ps = connection.prepareStatement(sql);
//            ResultSet rs = ps.executeQuery();
//            while (rs.next()) {
//                Post post = new Post();
//                post.setId(rs.getInt("id"));
//                post.setTitle(rs.getString("title"));
//                post.setContent(rs.getString("content"));
//                post.setImg_thumnail(rs.getString("img_thumnail"));
//                post.setCreated_date(rs.getDate("created_date"));
//                post.setActive(rs.getBoolean("active"));
//                Category cate = new Category();
//                cate.setId(rs.getInt("cid"));
//                cate.setName(rs.getString("name"));
//                Account account = new Account();
//                account.setId(rs.getInt("aid"));
//                account.setUsername(rs.getString("username"));
//                post.setCate_id(cate);
//                post.setUser_id(account);
//                list.add(post);
//            }
//            return list;
//        } catch (Exception e) {
//            e.printStackTrace(System.out);
//        }
//        return null;
//    }

//    public Post getPostById(int post_id) {
//        try {
//            String sql = "select p.*, c.id as cid, c.name, a.id as aid, a.username\n"
//                    + "from Post p inner join Category c\n"
//                    + "on p.cate_id = c.id\n"
//                    + "inner join Account a\n"
//                    + "on p.user_id = a.id\n"
//                    + "where p.id = ? and p.active = 1";
//            PreparedStatement ps = connection.prepareStatement(sql);
//            ps.setInt(1, post_id);
//            ResultSet rs = ps.executeQuery();
//            while (rs.next()) {
//                Post post = new Post();
//                post.setId(rs.getInt("id"));
//                post.setTitle(rs.getString("title"));
//                post.setDescription(rs.getString("description"));
//                post.setContent(rs.getString("content"));
//                post.setImg_thumnail(rs.getString("img_thumnail"));
//                post.setCreated_date(rs.getDate("created_date"));
//                post.setActive(rs.getBoolean("active"));
//                Category cate = new Category();
//                cate.setId(rs.getInt("cid"));
//                cate.setName(rs.getString("name"));
//                Account account = new Account();
//                account.setId(rs.getInt("aid"));
//                account.setUsername(rs.getString("username"));
//                post.setCate_id(cate);
//                post.setUser_id(account);
//                return post;
//            }
//        } catch (SQLException e) {
//            e.printStackTrace(System.out);
//        }
//        return null;
//    }

//    public List<Post> getPostByCateId(int cate_id) {
//        try {
//            List<Post> list = new ArrayList<>();
//            String sql = "select p.*, c.id as cid, c.name, a.id as aid, a.username\n"
//                    + "from Post p inner join Category c\n"
//                    + "on p.cate_id = c.id\n"
//                    + "inner join Account a\n"
//                    + "on p.user_id = a.id\n"
//                    + "where c.id = ? and p.active = 1";
//            PreparedStatement ps = connection.prepareStatement(sql);
//            ps.setInt(1, cate_id);
//            ResultSet rs = ps.executeQuery();
//            while (rs.next()) {
//                Post post = new Post();
//                post.setId(rs.getInt("id"));
//                post.setTitle(rs.getString("title"));
//                post.setContent(rs.getString("content"));
//                post.setImg_thumnail(rs.getString("img_thumnail"));
//                post.setCreated_date(rs.getDate("created_date"));
//                post.setActive(rs.getBoolean("active"));
//                Category cate = new Category();
//                cate.setId(rs.getInt("cid"));
//                cate.setName(rs.getString("name"));
//                Account account = new Account();
//                account.setId(rs.getInt("aid"));
//                account.setUsername(rs.getString("username"));
//                post.setCate_id(cate);
//                post.setUser_id(account);
//                list.add(post);
//            }
//            return list;
//        } catch (SQLException e) {
//            e.printStackTrace(System.out);
//        }
//        return null;
//    }

//    public List<Post> getPostByCateIdLimit(int cate_id) {
//        try {
//            List<Post> list = new ArrayList<>();
//            String sql = "select top(5) p.*, c.id as cid, c.name, a.id as aid, a.username\n"
//                    + "from Post p inner join Category c\n"
//                    + "on p.cate_id = c.id\n"
//                    + "inner join Account a\n"
//                    + "on p.user_id = a.id\n"
//                    + "where c.id = ? and p.active = 1";
//            PreparedStatement ps = connection.prepareStatement(sql);
//            ps.setInt(1, cate_id);
//            ResultSet rs = ps.executeQuery();
//            while (rs.next()) {
//                Post post = new Post();
//                post.setId(rs.getInt("id"));
//                post.setTitle(rs.getString("title"));
//                post.setContent(rs.getString("content"));
//                post.setImg_thumnail(rs.getString("img_thumnail"));
//                post.setCreated_date(rs.getDate("created_date"));
//                post.setActive(rs.getBoolean("active"));
//                Category cate = new Category();
//                cate.setId(rs.getInt("cid"));
//                cate.setName(rs.getString("name"));
//                Account account = new Account();
//                account.setId(rs.getInt("aid"));
//                account.setUsername(rs.getString("username"));
//                post.setCate_id(cate);
//                post.setUser_id(account);
//                list.add(post);
//            }
//            return list;
//        } catch (SQLException e) {
//            e.printStackTrace(System.out);
//        }
//        return null;
//    }

//    public List<Post> getPostTop3C1() {
//        try {
//            List<Post> list = new ArrayList<>();
//            String sql = "select top(3) p.*, c.id as cid, c.name, a.id as aid, a.username\n"
//                    + "from Post p inner join Category c\n"
//                    + "on p.cate_id = c.id\n"
//                    + "inner join Account a\n"
//                    + "on p.user_id = a.id\n"
//                    + "where c.id = 7 and p.active = 1\n"
//                    + "order by created_date desc";
//            PreparedStatement ps = connection.prepareStatement(sql);
//            ResultSet rs = ps.executeQuery();
//            while (rs.next()) {
//                Post post = new Post();
//                post.setId(rs.getInt("id"));
//                post.setTitle(rs.getString("title"));
//                post.setContent(rs.getString("content"));
//                post.setImg_thumnail(rs.getString("img_thumnail"));
//                post.setCreated_date(rs.getDate("created_date"));
//                post.setActive(rs.getBoolean("active"));
//                Category cate = new Category();
//                cate.setId(rs.getInt("cid"));
//                cate.setName(rs.getString("name"));
//                Account account = new Account();
//                account.setId(rs.getInt("aid"));
//                account.setUsername(rs.getString("username"));
//                post.setCate_id(cate);
//                post.setUser_id(account);
//                list.add(post);
//            }
//            return list;
//        } catch (SQLException e) {
//            e.printStackTrace(System.out);
//        }
//        return null;
//    }

//    public List<Post> getPostTop3Anh() {
//        try {
//            List<Post> list = new ArrayList<>();
//            String sql = "select top(3) p.*, c.id as cid, c.name, a.id as aid, a.username\n"
//                    + "from Post p inner join Category c\n"
//                    + "on p.cate_id = c.id\n"
//                    + "inner join Account a\n"
//                    + "on p.user_id = a.id\n"
//                    + "where c.id = 5 and p.active = 1\n"
//                    + "order by created_date desc";
//            PreparedStatement ps = connection.prepareStatement(sql);
//            ResultSet rs = ps.executeQuery();
//            while (rs.next()) {
//                Post post = new Post();
//                post.setId(rs.getInt("id"));
//                post.setTitle(rs.getString("title"));
//                post.setContent(rs.getString("content"));
//                post.setImg_thumnail(rs.getString("img_thumnail"));
//                post.setCreated_date(rs.getDate("created_date"));
//                post.setActive(rs.getBoolean("active"));
//                Category cate = new Category();
//                cate.setId(rs.getInt("cid"));
//                cate.setName(rs.getString("name"));
//                Account account = new Account();
//                account.setId(rs.getInt("aid"));
//                account.setUsername(rs.getString("username"));
//                post.setCate_id(cate);
//                post.setUser_id(account);
//                list.add(post);
//            }
//            return list;
//        } catch (SQLException e) {
//            e.printStackTrace(System.out);
//        }
//        return null;
//    }

//    public List<Post> getPostTop3VietNam() {
//        try {
//            List<Post> list = new ArrayList<>();
//            String sql = "select top(3) p.*, c.id as cid, c.name, a.id as aid, a.username\n"
//                    + "from Post p inner join Category c\n"
//                    + "on p.cate_id = c.id\n"
//                    + "inner join Account a\n"
//                    + "on p.user_id = a.id\n"
//                    + "where c.id = 4 and p.active = 1\n"
//                    + "order by created_date desc";
//            PreparedStatement ps = connection.prepareStatement(sql);
//            ResultSet rs = ps.executeQuery();
//            while (rs.next()) {
//                Post post = new Post();
//                post.setId(rs.getInt("id"));
//                post.setTitle(rs.getString("title"));
//                post.setContent(rs.getString("content"));
//                post.setImg_thumnail(rs.getString("img_thumnail"));
//                post.setCreated_date(rs.getDate("created_date"));
//                post.setActive(rs.getBoolean("active"));
//                Category cate = new Category();
//                cate.setId(rs.getInt("cid"));
//                cate.setName(rs.getString("name"));
//                Account account = new Account();
//                account.setId(rs.getInt("aid"));
//                account.setUsername(rs.getString("username"));
//                post.setCate_id(cate);
//                post.setUser_id(account);
//                list.add(post);
//            }
//            return list;
//        } catch (SQLException e) {
//            e.printStackTrace(System.out);
//        }
//        return null;
//    }

//    public List<Post> getPostTop6GiaiDauKhac() {
//        try {
//            List<Post> list = new ArrayList<>();
//            String sql = "select top(6) p.*, c.id as cid, c.name, a.id as aid, a.username\n"
//                    + "from Post p inner join Category c\n"
//                    + "on p.cate_id = c.id\n"
//                    + "inner join Account a\n"
//                    + "on p.user_id = a.id\n"
//                    + "where c.id = 9 and p.active = 1\n"
//                    + "order by created_date desc";
//
//            PreparedStatement ps = connection.prepareStatement(sql);
//            ResultSet rs = ps.executeQuery();
//            while (rs.next()) {
//                Post post = new Post();
//                post.setId(rs.getInt("id"));
//                post.setTitle(rs.getString("title"));
//                post.setContent(rs.getString("content"));
//                post.setImg_thumnail(rs.getString("img_thumnail"));
//                post.setCreated_date(rs.getDate("created_date"));
//                post.setActive(rs.getBoolean("active"));
//                Category cate = new Category();
//                cate.setId(rs.getInt("cid"));
//                cate.setName(rs.getString("name"));
//                Account account = new Account();
//                account.setId(rs.getInt("aid"));
//                account.setUsername(rs.getString("username"));
//                post.setCate_id(cate);
//                post.setUser_id(account);
//                list.add(post);
//            }
//            return list;
//        } catch (SQLException e) {
//            e.printStackTrace(System.out);
//        }
//        return null;
//    }

//    public List<Post> getPostByKeyTitle(String title) {
//        try {
//            List<Post> list = new ArrayList<>();
//            String sql = "select p.*, c.id as cid, c.name, a.id as aid, a.username\n"
//                    + "from Post p inner join Category c\n"
//                    + "on p.cate_id = c.id\n"
//                    + "inner join Account a\n"
//                    + "on p.user_id = a.id\n"
//                    + "where p.active = 1 and title like '%' + ? + '%'";
//            PreparedStatement ps = connection.prepareStatement(sql);
//            ps.setString(1, title);
//            ResultSet rs = ps.executeQuery();
//            while (rs.next()) {
//                Post post = new Post();
//                post.setId(rs.getInt("id"));
//                post.setTitle(rs.getString("title"));
//                post.setContent(rs.getString("content"));
//                post.setImg_thumnail(rs.getString("img_thumnail"));
//                post.setCreated_date(rs.getDate("created_date"));
//                post.setActive(rs.getBoolean("active"));
//                Category cate = new Category();
//                cate.setId(rs.getInt("cid"));
//                cate.setName(rs.getString("name"));
//                Account account = new Account();
//                account.setId(rs.getInt("aid"));
//                account.setUsername(rs.getString("username"));
//                post.setCate_id(cate);
//                post.setUser_id(account);
//                list.add(post);
//            }
//            return list;
//        } catch (SQLException e) {
//            e.printStackTrace(System.out);
//        }
//        return null;
//    }

    public void addPost(int cate_id, int user_id, String title,
            String description, String content, String img_thumnail,
            Date created_date, boolean active) {
        try {
            String sql = "INSERT INTO [Post]\n"
                    + "           ([cate_id]\n"
                    + "           ,[user_id]\n"
                    + "           ,[title]\n"
                    + "           ,[description]\n"
                    + "           ,[content]\n"
                    + "           ,[img_thumnail]\n"
                    + "           ,[created_date]\n"
                    + "           ,[active])\n"
                    + "     VALUES\n"
                    + "           (?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?)";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, cate_id);
            ps.setInt(2, user_id);
            ps.setString(3, title);
            ps.setString(4, description);
            ps.setString(5, content);
            ps.setString(6, img_thumnail);
            ps.setDate(7, created_date);
            ps.setBoolean(8, active);
            ResultSet rs = ps.executeQuery();
        } catch (SQLException e) {
            e.printStackTrace(System.out);
        }
    }

    public void updatePost(int post_id, int cate_id, int user_id, String title,
            String description, String content, String img_thumnail,
            Date created_date, boolean active) {
        try {
            String sql = "UPDATE [Post]\n"
                    + "   SET [cate_id] = ?\n"
                    + "      ,[user_id] = ?\n"
                    + "      ,[title] = ?\n"
                    + "      ,[description] = ?\n"
                    + "      ,[content] = ?\n"
                    + "      ,[img_thumnail] = ?\n"
                    + "      ,[created_date] = ?\n"
                    + "      ,[active] = ?\n"
                    + " WHERE id = ?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, cate_id);
            ps.setInt(2, user_id);
            ps.setString(3, title);
            ps.setString(4, description);
            ps.setString(5, content);
            ps.setString(6, img_thumnail);
            ps.setDate(7, created_date);
            ps.setBoolean(8, active);
            ps.setInt(9, post_id);
            ResultSet rs = ps.executeQuery();
        } catch (SQLException e) {
            e.printStackTrace(System.out);
        }
    }

    public void deletePost(int post_id) {
        try {
            String sql = "DELETE Post WHERE id = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, post_id);
            stm.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(CategoryDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
