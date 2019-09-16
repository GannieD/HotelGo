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
import org.openqa.selenium.firefox.FirefoxDriver;
import java.net.UnknownHostException;
import org.openqa.selenium.chrome.ChromeDriver;

public class JUnitTest {
    private static MongoDBConnector db;
    public JUnitTest() {
       
    }
    @BeforeClass
    public static void setUpClass() throws UnknownHostException{
        
        String name = "Christian";
        String password = "Abclzm123";
        db = new MongoDBConnector(name, password);
    }
    @Test     
    public void testMongoDB() {
        System.out.println("\n Start test MondoDB");
        Assert.assertNotNull("Cannot connect with MongoDB", db.getMongoDB());
        System.out.println("MongoDB Connection passed the test!");
       
    }
    @Test
    public void testLoginPage() {
        System.out.println("\n Start test LoginPage");
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
        Assert.assertEquals("Please confirm your password", driver.switchTo().alert().getText());
        System.out.println("Password confirmation passed test!");

        driver.switchTo().alert().accept();
        driver.findElement(By.id("email")).clear();
        driver.findElement(By.id("firstPw")).clear();
        driver.findElement(By.id("confirmPw")).clear();
        
        driver.findElement(By.id("email")).sendKeys(randomTestEmail);
        driver.findElement(By.id("firstPw")).sendKeys("12345678");
        driver.findElement(By.id("confirmPw")).sendKeys("12345678");
        driver.findElement(By.id("signUpNowBtn")).click();
        Assert.assertEquals("HotelGo", driver.getTitle());
        System.out.println("Registration passed test!");
        System.out.println("Test finish!");
        driver.close();
    }
    
}
