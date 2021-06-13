package my.webapp.controller;

import my.webapp.entity.Money;
import my.webapp.entity.MoneyInfo;
import my.webapp.service.ServiceUser;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class MoneyManageController {
    @Resource
    private ServiceUser serviceUser;
    @RequestMapping(value = "saveMoney.do")
    public String save(Money money, HttpServletRequest request){
        money = new Money();
        String allMoney = request.getParameter("allMoney");
        money.setAllMoney(Double.valueOf(allMoney));
        HttpSession session = request.getSession();
        Integer uid = (Integer) session.getAttribute("userId");
        money.setUid(uid);
        int result = serviceUser.saveMoney(money);
        if(result == 1){
            return "saveSuccess";
        }else {
            return "saveFail";
        }
    }
    @RequestMapping(value = "/dayMoney.do")
    public String insertMoney(MoneyInfo moneyInfo,HttpServletRequest request){
        HttpSession session = request.getSession();
        Integer id = (Integer) session.getAttribute("userId");
        moneyInfo.setUid(id);
        int result = serviceUser.addMoneyInfo(moneyInfo);
        if(result == 1){
            return "addMoneyInfoSuccess";
        }else {
            return "addMoneyInfoFail";
        }
    }
}
