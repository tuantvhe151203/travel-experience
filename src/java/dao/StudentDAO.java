/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import context.DBContext;
import entity.Student;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


public class StudentDAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;


    public List<Student> getAllStudent() {
        tttt
        List<Student> list = new ArrayList<>();
        String query = "select*from student";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Student(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getDate(4)
                ));
            }
        } catch (Exception e) {
        }

        return list;
    }

    public void deleteStudent(String id) {
        String query = "delete from student\n"
                + "where ID=?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void insertStudent(String name, String gender, String dob) {
        String query = "insert into student\n"
                + "values(?,?,?)";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, gender);
            ps.setString(3, dob);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public Student getStudentByID(String id) {
        String query = "select * from student\n"
                + "where ID=?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Student(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getDate(4));
            }
        } catch (Exception e) {
        }
        return null;
    }
    public void updateStudent(String id, String name, String gender, String dob) {
        String query = "update student\n"
                + "set [name]=?,\n"
                + "gender=?,\n"
                + "dob=?\n"
                + "where ID=?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, gender);
            ps.setString(3, dob);
            ps.setString(4, id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

}
