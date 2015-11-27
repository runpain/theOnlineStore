package cn.zucc.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.omg.CORBA.INTERNAL;

import cn.zucc.entity.Book;
import cn.zucc.entity.ShoppingCar;

public class ShoppingCarBiz extends BaseBiz {
	public void AddShoppingCar(ShoppingCar shoppingCar) {
		try {
			addressUrl();
			String sql = "insert into shoppingcar(c_bid,c_uid) value(?,?)";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, shoppingCar.getC_bid());
			psmt.setInt(2, shoppingCar.getC_uid());
			System.out.println(psmt);
			psmt.execute();
		} catch (SQLException e) {
			System.out.println("����ʧ��");
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally{
			myClose();
		}
	}
	
	public void DeleteById(int cid){
		try {
			addressUrl();
			String sql = "delete from shoppingcar where cid =?";			
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, cid);
			psmt.execute();	
		} catch (SQLException e) {
			System.out.println("ɾ��ʧ��");
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally{
			myClose();
		}
	}
	public ShoppingCar  UpdateShoppingCar(ShoppingCar shoppingCar){
		try {
			addressUrl();
			String sql = "update shoppingcar set c_bid=?,c_uid=? where cid =?";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, shoppingCar.getC_bid());
			psmt.setInt(2, shoppingCar.getC_uid());
			psmt.setInt(3, shoppingCar.getCid());
			System.out.println(psmt);
			psmt.execute();	
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("����ʧ��");
		}
		finally{
			myClose();
		}
		return shoppingCar;
	}
	
	public ShoppingCar FindById(int cid){
		ShoppingCar shoppingCar = new ShoppingCar();
		try {
			addressUrl();
			String sql = "select * from shoppingcar where cid =?";	
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, cid);
			rs = psmt.executeQuery();
			if(rs.next()){
				shoppingCar.setCid(rs.getInt("cid"));
				shoppingCar.setC_bid(rs.getInt("c_bid"));
				shoppingCar.setC_uid(rs.getInt("c_uid"));
		
			}
		} catch (Exception e) {
			System.out.println("��ѯʧ��");
			// TODO: handle exception
		}
		finally{
			myClose();
		}
		return shoppingCar;
	}
	
	
	public List<ShoppingCar> FindAll(int num) {
		List list = new ArrayList<ShoppingCar>();
		try {
			addressUrl();
			String sql = "select * from shoppingcar inner join book on book.bid = shoppingcar.c_bid where c_uid = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, num);
			psmt.execute();
			rs = psmt.executeQuery();
			System.out.println(psmt);
			while (rs.next()) {
				Book book = new Book();
				book.setBid(rs.getInt("bid"));
				book.setBookName(rs.getString("bookName"));
				book.setPrice(rs.getDouble("price"));
				book.setImages(rs.getString("images"));
				book.setStock(rs.getInt("stock"));
				list.add(book);
			}
		} catch (Exception e) {
			System.out.println("ʧ��");
			// TODO: handle exception
		} finally {
			myClose();
		}
		return list;
	}

	public int findCount(ShoppingCar car) {
		int count = 0;
		try {
			addressUrl();
			String sql = "select count(*) as totalCount from shoppingcar";
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			if (rs.next()) {
				count = rs.getInt("totalCount");
			}
		} catch (Exception e) {
			System.out.println("��ѯʧ��");
			// TODO: handle exception
		} finally {
			myClose();
		}
		return count;
	}
}
	