package com.xxl.tx.pojo;

import java.lang.reflect.Type;
import java.util.Map;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.reflect.TypeToken;

public class ReceivePO {
	private boolean isFinish;
	private String data;

	public ReceivePO() {
	}

	public ReceivePO(String data) {
		this.data = data;
	}

	public boolean isFinish() {
		return isFinish;
	}

	public void setFinish(boolean isFinish) {
		this.isFinish = isFinish;
	}

	public String getData() {
		Gson gson2 = new GsonBuilder().enableComplexMapKeySerialization().create();
		
		Type type = new TypeToken<Map<String, String>>() {}.getType();
		Map<String, String> map2 = gson2.fromJson(data, type);
	 
		String showString = "?";
		for (String keyString : map2.keySet()) {
			showString += keyString + "=" + map2.get(keyString)+"&";
		}
		String substring = showString.substring(0,showString.length() - 1);
		
		return substring;
	}

	public void setData(String data) {
		this.data = data;
	}

	@Override
	public String toString() {
		return "ReceivePO [isFinish=" + isFinish + ", data=" + data + "]";
	}

}
