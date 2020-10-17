package com.runjie.response;

public class CommonReturnType {
    private String stats;
    private Object data;

    public static CommonReturnType create(Object result) {
        return CommonReturnType.create(result, "success");
    }

    public static CommonReturnType create(Object result, String stats) {
        CommonReturnType type = new CommonReturnType();
        type.setStats(stats);
        type.setData(result);
        return type;
    }

    public String getStats() {
        return stats;
    }

    public void setStats(String stats) {
        this.stats = stats;
    }

    public Object getData() {
        return data;
    }

    public void setData(Object data) {
        this.data = data;
    }
}
