/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Date;

/**
 *
 * @author User
 */
public class Post {

    private int post_id;
    private String title;
    private String short_new;
    private String images;
    private String content;
    private Date create_date;
    private Category category_id;

    public Post() {
    }

    public Post(int post_id, String title, String short_new, String images, String content, Date create_date, Category category_id) {
        this.post_id = post_id;
        this.title = title;
        this.short_new = short_new;
        this.images = images;
        this.content = content;
        this.create_date = create_date;
        this.category_id = category_id;
    }

    public int getPost_id() {
        return post_id;
    }

    public void setPost_id(int post_id) {
        this.post_id = post_id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getShort_new() {
        return short_new;
    }

    public void setShort_new(String short_new) {
        this.short_new = short_new;
    }

    public String getImages() {
        return images;
    }

    public void setImages(String images) {
        this.images = images;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getCreate_date() {
        return create_date;
    }

    public void setCreate_date(Date create_date) {
        this.create_date = create_date;
    }

    public Category getCategory_id() {
        return category_id;
    }

    public void setCategory_id(Category category_id) {
        this.category_id = category_id;
    }

    
}
