package com.pm.background.admin.fastdfs;

import java.util.List;

/**
 * fastdfs 常量类
 * @author lxn
 * @version Id: FastDfsConstant.java, v 0.1 2016/11/24 19:20 lxn Exp $$
 */
public class FastDfsConstant {

    private int trackerHttpPort;
    private List<String> trackerServers;
    private int connectTimeout ;
    private int networkTimeout;
    private String charset;
    private boolean antiStealToken;
    private String secretKey;

    /**
     * 获取 trackerHttpPort
     *
     * @return trackerHttpPort
     */
    public int getTrackerHttpPort() {
        return trackerHttpPort;
    }

    /**
     * 设置trackerHttpPort
     *
     * @return trackerHttpPort
     */
    public void setTrackerHttpPort(int trackerHttpPort) {
        this.trackerHttpPort = trackerHttpPort;
    }

    /**
     * 获取 trackerServers
     *
     * @return trackerServers
     */
    public List<String> getTrackerServers() {
        return trackerServers;
    }

    /**
     * 设置trackerServers
     *
     * @return trackerServers
     */
    public void setTrackerServers(List<String> trackerServers) {
        this.trackerServers = trackerServers;
    }

    /**
     * 获取 connectTimeout
     *
     * @return connectTimeout
     */
    public int getConnectTimeout() {
        return connectTimeout;
    }

    /**
     * 设置connectTimeout
     *
     * @return connectTimeout
     */
    public void setConnectTimeout(int connectTimeout) {
        this.connectTimeout = connectTimeout;
    }

    /**
     * 获取 networkTimeout
     *
     * @return networkTimeout
     */
    public int getNetworkTimeout() {
        return networkTimeout;
    }

    /**
     * 设置networkTimeout
     *
     * @return networkTimeout
     */
    public void setNetworkTimeout(int networkTimeout) {
        this.networkTimeout = networkTimeout;
    }

    /**
     * 获取 charset
     *
     * @return charset
     */
    public String getCharset() {
        return charset;
    }

    /**
     * 设置charset
     *
     * @return charset
     */
    public void setCharset(String charset) {
        this.charset = charset;
    }

    /**
     * 获取 antiStealToken
     *
     * @return antiStealToken
     */
    public boolean isAntiStealToken() {
        return antiStealToken;
    }

    /**
     * 设置antiStealToken
     *
     * @return antiStealToken
     */
    public void setAntiStealToken(boolean antiStealToken) {
        this.antiStealToken = antiStealToken;
    }

    /**
     * 获取 secretKey
     *
     * @return secretKey
     */
    public String getSecretKey() {
        return secretKey;
    }

    /**
     * 设置secretKey
     *
     * @return secretKey
     */
    public void setSecretKey(String secretKey) {
        this.secretKey = secretKey;
    }

    @Override
    public String toString() {
        return "FastDfsConstant{" +
                "trackerHttpPort=" + trackerHttpPort +
                ", trackerServers=" + trackerServers +
                ", connectTimeout=" + connectTimeout +
                ", networkTimeout=" + networkTimeout +
                ", charset='" + charset + '\'' +
                ", antiStealToken=" + antiStealToken +
                ", secretKey='" + secretKey + '\'' +
                '}';
    }

}
