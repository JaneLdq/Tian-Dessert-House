package edu.nju.dessert.service;

import java.util.List;

import edu.nju.dessert.model.Order;
import edu.nju.dessert.vo.OrderVO;

public interface OrderService {

    public List<OrderVO> getOrderVO(int storeId, int type);

    public OrderVO getOrderById(int id);

    public List<Order> getOrderByUser(int uid);

    public List<OrderVO> getOrderVOByUser(int uid, int page);

    public int cancelOrder(int uid, int id);

    public int orderAgain(int id, String date, int type);

    public int getTotalOrdersPage(int uid);
    
}
