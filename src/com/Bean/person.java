package com.Bean;

public class person {
    StringBuffer name ;
    int count ;

    public person(){
        count = 0;
    }
    public void judge(){

        if (this.count == 0){
            person person = new person() ;//创建对象
        }
    }
    public void addPerson(String p){
        name.append(p) ;//添加到尾部
        count++ ;
    }

}
