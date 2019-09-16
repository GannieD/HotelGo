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

public class JUnitTest {
    private static MongoDBConnector db;
    public JUnitTest() {
       
    }
    @BeforeClass
    public static void setUpClass() throws UnknownHostException{
        System.out.println("\n Start test MondoDB");
        String name = "Christian";
        String password = "Abclzm123";
        db = new MongoDBConnector(name, password);
    }
    @Test     
    public void testMongoDB() {
        Assert.assertNotNull("Cannot connect with MongoDB", db.getMongoDB());
        System.out.println("MongoDB Connection passed the test!");
       
    }
    @Test
    public void testLoginPage() {
       
    }
    
}
