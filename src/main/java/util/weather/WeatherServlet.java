package util.weather;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Scanner;
import org.json.JSONObject; // JSON 처리를 위한 org.json 라이브러리

@WebServlet("/WeatherServlet")
public class WeatherServlet extends HttpServlet {
    private static final String API_KEY = "49746e66d8eeaa64c70721562973856e";
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGetPost(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGetPost(request, response);
    }
    
    protected void doGetPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setHeader("Access-Control-Allow-Origin", "*");
        
        String city = request.getParameter("city");
        String apiUrl = "https://api.openweathermap.org/data/2.5/weather?q=" + city + "&appid=" + API_KEY + "&units=metric";
        
        URL url = new URL(apiUrl);
        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
        conn.setRequestMethod("GET");
        conn.connect();
        
        int responseCode = conn.getResponseCode();
        
        if (responseCode != 200) {
            throw new RuntimeException("HttpResponseCode: " + responseCode);
        } else {
            StringBuilder inline = new StringBuilder();
            Scanner scanner = new Scanner(url.openStream());
            
            while (scanner.hasNext()) {
                inline.append(scanner.nextLine());
            }
            scanner.close();
            
            // JSON 객체로 변환
            JSONObject jsonResponse = new JSONObject(inline.toString());
            
            // 날씨 상태를 한글로 변환
            String weatherMain = jsonResponse.getJSONArray("weather").getJSONObject(0).getString("main");
            String weatherDescriptionInKorean = translateWeatherToKorean(weatherMain);
            jsonResponse.getJSONArray("weather").getJSONObject(0).put("description", weatherDescriptionInKorean);
            
            // 수정된 JSON 응답을 클라이언트에 보냄
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            response.getWriter().write(jsonResponse.toString());
        }
    }
    
    // 날씨 상태를 한글로 변환하는 메소드
    private String translateWeatherToKorean(String weatherMain) {
        switch (weatherMain) {
            case "Clear":
                return "맑음";
            case "Clouds":
                return "구름";
            case "Rain":
                return "비";
            case "Snow":
                return "눈";
            case "Mist":
            case "Fog":
                return "안개";
            default:
                return weatherMain; // 일치하는 항목이 없을 경우, 기본 값을 그대로 사용
        }
    }
}
