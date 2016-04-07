package com.wke.tools.proxy;

public class Proxy {
	private String hostIp;
	private int port;
	public Proxy(String hostIp ,int port) {
		this.hostIp = hostIp;
		this.port = port;
	}
	public String getHostIp() {
		return hostIp;
	}
	public void setHostIp(String hostIp) {
		this.hostIp = hostIp;
	}
	public int getPort() {
		return port;
	}
	public void setPort(int port) {
		this.port = port;
	}
}
