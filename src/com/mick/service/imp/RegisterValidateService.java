package com.mick.service.imp;

import java.text.ParseException;
import java.util.Date;
import java.util.UUID;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.mick.entity.User;
import com.mick.service.UserService;
import com.mick.util.SendEmail;
import com.mick.util.ServiceException;

/**
 * 
 * @author Qixuan.Chen
 */
@Service
public class RegisterValidateService {
	@Resource
	private UserService userService;
	/**
	 * 处理注册
	 */
	public void processregister(User user) {
		user.setId(UUID.randomUUID().toString());
		user.setCreateTime(new Date());
		user.setStatus(0);
		/// 如果处于安全，可以将激活码处理的更复杂点，这里我稍做简单处理
		// user.setValidateCode(MD5Tool.MD5Encrypt(email));
		user.setValidateCode(UUID.randomUUID().toString());
		userService.insert(user);// 保存注册信息
		userService.insertRole(user.getId(), new String[]{"1"});
		/// 邮件的内容
		StringBuffer sb = new StringBuffer("点击下面链接激活账号,否则重新注册账号,48小时后系统自动清除,需重新注册,链接只能使用一次,请尽快激活！</br>");
		sb.append("<a href=\"http://localhost:8080/clientManageSystem/user/activate_email?email=");
		sb.append(user.getEmail());
		sb.append("&validateCode=");
		sb.append(user.getValidateCode());
		sb.append("\">http://localhost:8080/clientManageSystem/user/activate_email?email=");
		sb.append(user.getEmail());
		sb.append("&validateCode=");
		sb.append(user.getValidateCode());
		sb.append("</a>");
		// 发送邮件
		SendEmail.send(user.getEmail(), sb.toString());
	}

	/**
	 * 处理激活
	 * 
	 * @throws ParseException
	 */
	/// 传递激活码和email过来
	public void processActivate(String email, String validateCode) throws ServiceException, ParseException {
		// 数据访问层，通过email获取用户信息
		User user = new User();
		user.setEmail(email);
		if (userService.findMore(user).size() > 0) {
			user = userService.findMore(user).get(0);
		} else {
			user = null;
		}
		// 验证用户是否存在
		if (user != null) {
			// 验证用户激活状态
			if (user.getStatus() == 0) {
				// 验证激活码是否正确
				if (validateCode.equals(user.getValidateCode())) {
					user.setStatus(1);// 把状态改为激活
					userService.update(user);
				} else {
					throw new ServiceException("激活码不正确");
				}
			} else {
				throw new ServiceException("邮箱已激活，请登录！");
			}
		} else
			throw new ServiceException("该邮箱未注册邮箱地址不存在");
	}
}