package cn.cxh.controller;

import cn.cxh.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
@Controller
@RequestMapping("/user/")
public class UserController {
    @Resource
    private UserService userService;

    @RequestMapping("list")
    public String list(Model model){
       model.addAttribute("userList",userService.getUserList());
       return "admin/userList";


    }

}
