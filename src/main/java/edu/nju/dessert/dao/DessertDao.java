package edu.nju.dessert.dao;

import java.util.List;

import edu.nju.dessert.model.Dessert;

public interface DessertDao {

	public List<Dessert> getDessertList(int page, int size);
	
	public Dessert getDessert(int id);
	
	public Integer getDessertQuantity(int id, int storeId, String date);
	
	public int getTotalPages(int size);
	
	public Double getDessertPrice(int id, int storeId, String date);

    public Dessert checkDessert(int id, int storeId);
	
    /**
     * 分页获取某类型的甜品
     * @param type 类型 0-蛋糕， 1-面包，2-甜点，3-咖啡，4-茶饮，5-果汁
     * @param page 
     * @param num
     * @param order 0-不限， 1-销量， 2-上架时间
     * @param store 门店id
     * @return
     */
    public List<Dessert> getDessertByType(int type, int page, int num, int order, int store);
}
