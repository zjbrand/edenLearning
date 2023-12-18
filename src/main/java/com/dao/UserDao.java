package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.db.JDBCUtils;

public class UserDao {
//計算縂的頁數
	public int getPage() {
		int recordCount=0,t1=0,t2=0;
		PreparedStatement pstmt=null;
		ResultSet result=null;
		JDBCUtils jdbc=new JDBCUtils();
		Connection conn=jdbc.connect();
		String sql="select count(*) from bookss";
		
		try {
			pstmt=conn.prepareStatement(sql);
			result=pstmt.executeQuery();
			result.next();
			recordCount=result.getInt(1);
			t1=recordCount % 10;
			t2=recordCount / 10;
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			jdbc.close(conn, pstmt, result);
		}
		if(t1!=0) {
			t2=t2+1;
		}
		return t2;
			
	}
		
	public List<User> listUser(int pageNo){
		PreparedStatement pstmt=null;
		ResultSet result=null;
		List<User> list=new ArrayList<User>();
		int page=(pageNo-1)*10;
		JDBCUtils jdbc=new JDBCUtils();
		Connection conn= jdbc.connect();
		String sql="select * from bookss order by id limit ?,?";
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, page);
			pstmt.setInt(2,10);
			result=pstmt.executeQuery();
			while(result.next()) {
				User user=new User();
				user.setId(result.getInt(1));
				user.setName(result.getString(2));
				user.setNumber(result.getString(3));
				list.add(user);
			}
		} catch (SQLException e) {
			// TODO 自動生成された catch ブロック
			e.printStackTrace();
		}
		
		return list;
	}
}
