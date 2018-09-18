package com.xxl.tx.pojo;

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
		return data;
	}

	public void setData(String data) {
		this.data = data;
	}

	@Override
	public String toString() {
		return "ReceivePO [isFinish=" + isFinish + ", data=" + data + "]";
	}

}
