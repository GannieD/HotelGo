/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package asd.demo.model.dao;
import org.junit.runner.JUnitCore;
/**
 *
 * @author liuziming
 */
public class JUnitRunner {
    public static void main(String[] args){
        System.out.println("------------TEST TEXT------------");
        org.junit.runner.Result result = JUnitCore.runClasses(JUnitTest.class);
        result.getFailures().forEach((failure) -> {
            System.out.println(failure.toString());
        });
    }
}
