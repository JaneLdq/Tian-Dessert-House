package edu.nju.dessert.service;

import java.util.List;
import java.util.Map;

import edu.nju.dessert.dao.UserDao;
import edu.nju.dessert.model.Payment;
import edu.nju.dessert.model.Point;
import edu.nju.dessert.model.User;

public class UserServiceImpl implements UserService {
	
	private UserDao userDao;
	
	private int pageSize = 10;
	
	public void setUserDao(UserDao userDao){
		this.userDao = userDao;
	}

	@Override
	public void addUser(User user) {
		userDao.addUser(user);
	}

	@Override
	public boolean updateUser(User user) {
		return userDao.updateUser(user);
	}

	@Override
	public void updateUserInfo(int id, String name, String address) {
		userDao.updateUserInfo(id, name, address);
	}

	@Override
	public User getUser(int uid) {
		return userDao.getUser(uid);
	}

	@Override
	public List<Payment> getPayments(int id, int page) {
		return userDao.getPayments(id, page, pageSize);
	}

	@Override
	public int getTotalPaymentPages(int uid) {
		return userDao.getTotalPaymentPage(uid, pageSize);
	}
	
	@Override
	public int getTotalPointPages(int uid) {
		return userDao.getTotalPointPage(uid, pageSize);
	}

	@Override
	public List<Point> getPoints(int uid, int page) {
		return userDao.getPoints(uid, page, pageSize);
	}

	@Override
	public int updatePassword(int uid, String password, String newpwd) {
		return userDao.updatePassword(uid, password, newpwd);
	}

	@Override
	public boolean updateAvatar(int uid, String url) {
		return userDao.updateAvatar(uid, url);
	}

    @Override
    public List<Payment> getAllPayments(int id) {
        return userDao.getAllPayments(id);
    }

    @Override
    public Map<String, Long> getAgeStat(String beginYear){
        return userDao.getAgeStat(beginYear);
    }

    @Override
    public boolean cancel(int uid) {
        return userDao.cancel(uid);
    }

}
