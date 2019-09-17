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
        int randomNumber = 1+(int)(Math.random()*999999999);
        String randomTestEmail = String.valueOf(randomNumber) + "@test.com";
        System.setProperty("webdriver.chrome.driver", "chromedriver");
        WebDriver driver = new ChromeDriver();
        driver.get("https://asd-hotel-app.herokuapp.com/login.jsp");
        driver.findElement(By.id("goSignUpBtn")).click();
        driver.findElement(By.id("email")).sendKeys("testemail@test.com");
        driver.findElement(By.id("firstPw")).sendKeys("12345678");
        driver.findElement(By.id("confirmPw")).sendKeys("1234567");
        driver.findElement(By.id("signUpNowBtn")).click();
        //System.out.println(driver.switchTo().alert().getText());
        if (driver.switchTo().alert().getText().equals("Please confirm your password")){
            System.out.println("Password confirmation passed test!");
        }else{
            System.out.println("Password confirmation did not pass test!");
        }
        driver.switchTo().alert().accept();
        driver.findElement(By.id("email")).clear();
        driver.findElement(By.id("firstPw")).clear();
        driver.findElement(By.id("confirmPw")).clear();
        
        driver.findElement(By.id("email")).sendKeys(randomTestEmail);
        driver.findElement(By.id("firstPw")).sendKeys("12345678");
        driver.findElement(By.id("confirmPw")).sendKeys("12345678");
        driver.findElement(By.id("signUpNowBtn")).click();
        System.out.println(driver.getTitle());
        driver.close();
        
    }
}
           
   
