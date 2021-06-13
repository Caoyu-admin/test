package my.webapp.service.imp;

import my.webapp.dao.UserDao;
import my.webapp.entity.Money;
import my.webapp.entity.MoneyInfo;
import my.webapp.entity.User;
import my.webapp.service.ServiceUser;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class ServiceUserImpl implements ServiceUser {
    @Resource
    private UserDao dao;
    @Override
    public int addUser(User user) {
        int result = dao.insertUser(user);
        return result;
    }

    @Override
    public List<User> userLogin(User user) {
         List<User> list = dao.queryUser(user);
        return list;
    }

    @Override
    public int saveMoney(Money money) {
        int result = dao.addMoney(money);
        return result;
    }

    @Override
    public int changeUserInfo(String userName, String passWord, String sex, String email, Integer id) {
        int result = dao.updateUser(userName,passWord,sex,email,id);
        return result;
    }

    @Override
    public int addMoneyInfo(MoneyInfo moneyInfo) {
        int result = dao.insertMoneyInfo(moneyInfo);
        return result;
    }
}
