package my.webapp.dao;

import my.webapp.entity.Money;
import my.webapp.entity.MoneyInfo;
import my.webapp.entity.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;


public interface UserDao {

    int insertUser(User user);
    List<User> queryUser(User user);
    int updateUser(@Param("userName")String userName,@Param("passWord")String passWord,
                   @Param("sex")String sex,@Param("email")String email,@Param("id") Integer id);
    int addMoney(Money money);
    int insertMoneyInfo(MoneyInfo moneyInfo);
}
