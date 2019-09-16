/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author liuziming
 */
import java.util.List;
import java.util.Random;
import java.util.concurrent.TimeUnit;

import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;

public class AutoTester {
   
    public static void main(String[] args){
        System.setProperty("webdriver.chrome.driver", "chromedriver");
        WebDriver driver = new ChromeDriver();
        driver.get("https://asd-hotel-app.herokuapp.com/login.jsp");
        driver.findElement(By.id("goSignUpBtn")).click();
        driver.findElement(By.id("email")).sendKeys("testemail@test.com");
        driver.findElement(By.id("firstPw")).sendKeys("12345678");
        driver.findElement(By.id("confirmPw")).sendKeys("12345678");
        driver.findElement(By.id("signUpNowBtn")).click();
        System.out.println(driver.getTitle());
        //driver.close();
        
    }
}
           
   
