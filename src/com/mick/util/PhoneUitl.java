package com.mick.util;

import com.taobao.api.ApiException;
import com.taobao.api.DefaultTaobaoClient;
import com.taobao.api.TaobaoClient;
import com.taobao.api.request.AlibabaAliqinFcSmsNumSendRequest;
import com.taobao.api.response.AlibabaAliqinFcSmsNumSendResponse;

public class PhoneUitl {
	public static void main(String[] args) throws ApiException {
		TaobaoClient client = new DefaultTaobaoClient("https://eco.taobao.com/router/rest","23404723", "fed95664b679de2f576460a4b30e92bc");
		AlibabaAliqinFcSmsNumSendRequest req = new AlibabaAliqinFcSmsNumSendRequest();
		System.out.println(req.getApiMethodName());
		req.setExtend("123456");
		req.setSmsType("normal");
		req.setSmsFreeSignName("MF");
		req.setSmsParamString("{\"code\":\"0000\",\"product\":\"alidayu\"}");
		req.setRecNum("18523976070");
		req.setSmsTemplateCode("SMS_585014");
		AlibabaAliqinFcSmsNumSendResponse rsp = client.execute(req);
		System.out.println(rsp.getBody());
	}
}
