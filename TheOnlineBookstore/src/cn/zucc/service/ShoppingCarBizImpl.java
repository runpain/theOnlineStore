package cn.zucc.service;

import java.util.List;


import cn.zucc.dao.ShoppingCarBiz;
import cn.zucc.entity.ShoppingCar;


public class ShoppingCarBizImpl {
	ShoppingCarBiz shoppingCarBiz = new ShoppingCarBiz();

	public void addShoppingCar(ShoppingCar shoppingCar) {
		shoppingCarBiz.AddShoppingCar(shoppingCar);
	}

	public List<ShoppingCar> findAll(int num) {
		return shoppingCarBiz.FindAll(num);
	}

	public ShoppingCar findById(int cid) {
		return shoppingCarBiz.FindById(cid);
	}

	public ShoppingCar updateShoppingCar(ShoppingCar shoppingCar) {
		return shoppingCarBiz.UpdateShoppingCar(shoppingCar);
	}

	public int findCount(ShoppingCar car) {
		// TODO Auto-generated method stub
		return shoppingCarBiz.findCount(car);
	}

	public void updateShoppingCar(int num, int userId) {
		// TODO Auto-generated method stub
		
	}

}

	
	
	
	
	
