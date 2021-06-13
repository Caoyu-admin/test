package my.webapp.service;

import my.webapp.entity.Money;
import my.webapp.entity.MoneyInfo;
import my.webapp.entity.User;

import java.util.List;


public interface ServiceUser {

    int addUser(User user);
    List<User> userLogin(User user);
    int saveMoney(Money money);
    int changeUserInfo(String userName,String passWord,String sex,String email,Integer id);
    int addMoneyInfo(MoneyInfo moneyInfo);
}
