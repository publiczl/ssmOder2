package cn.cxh.service.impl;

import cn.cxh.dao.UserDao;
import cn.cxh.entry.User;
import cn.cxh.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    @Resource
    private UserDao userDao;
    @Override
    public boolean login(User user,HttpSession session) {
        boolean flag=false;
        String inputPasswor=user.getUserPassword();
         user=userDao.findByCode(user.getUserCode());
         System.out.println("service---"+user.getUserName());
          if(user.getUserPassword()!=null){
              if(user.getUserPassword().equals(inputPasswor)){
                  session.setAttribute("loginUser",user);
                  flag=true;

              }
          }

        return flag;
    }

    @Override
    public List<User> getUserList() {

        return userDao.findAll();
    }


}
