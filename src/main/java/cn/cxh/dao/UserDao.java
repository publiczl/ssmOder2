package cn.cxh.dao;

import cn.cxh.entry.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserDao {
   User findByCode(@Param("userCode") String userCode);
   List<User> findAll();
}
