package com.board.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.board.beans.Board;

public class BoardDao extends CommonDao {
    public static BoardDao getInstance() {
        BoardDao _instance = new BoardDao();
        return _instance;
    }

    public ArrayList<Board> getArticleList() throws SQLException {
        ResultSet rs = null;
        String sql = "SELECT a.*, b.user_name AS writer FROM BOARD AS a LEFT JOIN USER AS b ON a.user_id = b.idx ORDER BY a.idx desc";
        rs = openConnection().executeQuery(sql);

        ArrayList<Board> articleList = new ArrayList<Board>();
        while (rs.next()) {
            Board article = new Board();
            article.setIdx(rs.getInt("idx"));
            article.setTitle(rs.getString("title"));
            article.setWriter(rs.getString("writer"));
            article.setReg_date(rs.getString("reg_date"));
            article.setMod_date(rs.getString("mod_date"));
            article.setHit_count(rs.getInt("hit_count"));
            article.setCategory(rs.getString("category"));

            articleList.add(article);
        }
        closeConnection();
        return articleList;
    }
    
    public ArrayList<Board> getArticleList(int idx) throws SQLException {
        ResultSet rs = null;
        String sql = "SELECT a.*, b.user_name AS writer FROM BOARD AS a LEFT JOIN USER AS b ON a.user_id=b.idx WHERE a.idx="+idx ;
        rs = openConnection().executeQuery(sql);

        ArrayList<Board> articleList = new ArrayList<Board>();
        while (rs.next()) {
            Board article = new Board();

            article.setIdx(rs.getInt("idx"));
            article.setTitle(rs.getString("title"));
            article.setWriter(rs.getString("writer"));
            article.setReg_date(rs.getString("reg_date"));
            article.setMod_date(rs.getString("mod_date"));
            article.setContent(rs.getString("content"));
            article.setCount(rs.getInt("hit_count"));
            article.setCategory(rs.getString("category"));
            articleList.add(article);
        }
        closeConnection();
        return articleList;
    }
    
    public void deleteArticle(int idx) throws SQLException {
        String sql = "DELETE FROM BOARD WHERE idx="+idx;
        openConnection().executeQuery(sql);
    }

    public void insertArticle(Board article) throws SQLException {
        String sql = "INSERT INTO BOARD "+
            "(title, user_id, content, category, writer) "+
            "VALUES ('"+article.getTitle()+"', '"+article.getWriter()+"', '"+article.getContent()+"', '"+article.getCategory()+"', '"+article.getWriter()+"' )";
        openConnection().executeQuery(sql);
    }

    public void modifyArticle(Board article) throws SQLException {
        String sql = "UPDATE BOARD SET "+
            "title = '"+article.getTitle()+
            "', content = '"+article.getContent()+
            "' "+ "WHERE idx = "+article.getIdx();
        openConnection().executeQuery(sql);
    }
}
