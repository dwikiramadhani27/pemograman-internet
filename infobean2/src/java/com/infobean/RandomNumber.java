package com.infobean;
import java.util.Random ;
        
public class RandomNumber {
    private int rndNumber2;

    public RandomNumber() {
        rndNumber2 = (int)(Math.random() * 100);
    }

    public int getRandomNumber() {
        return (int)(Math.random() * 100);
    }

    public int getRndNumber2() {
        return rndNumber2;
    }
}