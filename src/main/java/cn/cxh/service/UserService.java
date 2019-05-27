package cn.cxh.service;

import cn.cxh.entry.User;

import javax.servlet.http.HttpSession;
import java.util.List;

public interface UserService {
    boolean login(User user,HttpSession session);
    List<User> getUserList();
}
