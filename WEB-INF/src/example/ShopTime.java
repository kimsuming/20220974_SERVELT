package example;
import java.util.Date;

public class ShopTime{
    public String timenow(){
        Date day = new java.util.Date();
        String am_pm;
        int hour = day.getHours();
        int minute = day.getMinutes();
        int second = day.getSeconds();
        if (hour / 12 == 0) am_pm = "오전";
        else {
            am_pm = "오후";
            hour = hour-12;
        }
        String CT = "현재 시간은 " + am_pm + " " + hour + "시 " + minute + "분 " + second + "초 입니다.";
        return CT;
    }
}