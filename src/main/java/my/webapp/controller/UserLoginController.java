package my.webapp.controller;

import my.webapp.entity.User;
import my.webapp.service.ServiceUser;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;


@Controller
public class UserLoginController {
    @Resource
    private ServiceUser serviceUser;
    @RequestMapping(value = "/login.do",method = RequestMethod.POST)
    public String userLogin(HttpServletRequest request,User user){
        user = new User();
        user.setUserName(request.getParameter("userName"));
        user.setPassWord(request.getParameter("passWord"));
        List<User> list = serviceUser.userLogin(user);
        HttpSession session = request.getSession();
        if(list != null){
            session.setAttribute("userId",list.get(0).getUserId());
            return "system";
        }else
            return "loginError";
    }
    @RequestMapping(value = "/register.do")
    public String register(User user) {
        int result = serviceUser.addUser(user);
        if (result == 1) {
            return "login";
        }else
            return "";
    }
    @RequestMapping(value = "/changeUser.do")
    public String changeUser(User user,HttpServletRequest request){
        HttpSession session = request.getSession();
        Integer id = (Integer) session.getAttribute("userId");
        System.out.println(id);
        int result = serviceUser.changeUserInfo(user.getUserName(),user.getPassWord(),user.getSex(),user.getEmail(),id);
        if(result == 1){
            return "changeSuccess";
        }else
            return "changeFail";
    }
}

