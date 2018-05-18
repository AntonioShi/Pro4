package com.Bean;

public class ComputerBean {
    private double numberOne;
    private double numberTwo;
    private double result ;
    private String operator = "+" ;//默认值

    public ComputerBean(double numberOne, double numberTwo,  String operator) {
        this.numberOne = numberOne;
        this.numberTwo = numberTwo;
        this.operator = operator;
    }

    public double getNumberOne() {
        return numberOne;
    }

    public void setNumberOne(double numberOne) {
        this.numberOne = numberOne;
    }

    public double getNumberTwo() {
        return numberTwo;
    }

    public void setNumberTwo(double numberTwo) {
        this.numberTwo = numberTwo;
    }

    public double getResult() {
        switch (operator){
            case "+":
                result = numberOne + numberTwo;
                break;
            case "-":
                result = numberOne - numberTwo ;
                break;
            case "*":
                result = numberOne * numberTwo ;
                break;
            case "/":
                result = numberOne / numberTwo ;
                break;
            default:
                System.out.println("元算符号");
                result = 0 ;
        }
        return result;
    }

    public String getOperator() {
        return operator;
    }

    public void setOperator(String operator) {
        this.operator = operator;
    }
}

