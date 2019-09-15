package asd.demo.model.dao;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author liuziming
 */
import org.junit.*;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.firefox.FirefoxDriver;

public class JUnitTest {
    
    public JUnitTest() {
       
    }
    @Test     
    public void testLoginPage() {
        WebDriver driver = new FirefoxDriver();
        System.out.println("------------TEST TEXT------------");
        String baseUrl = "https://asd-hotel-app.herokuapp.com/login.jsp";
        String expectedTitle = "HotelGo-Login";
        String actualTitle = "";
        driver.get(baseUrl);
        actualTitle = driver.getTitle();
        if (actualTitle.contentEquals(expectedTitle)){
            System.out.println("Test Passed!");
        } else {
            System.out.println("Test Failed");
        }
       
    }
    
}
