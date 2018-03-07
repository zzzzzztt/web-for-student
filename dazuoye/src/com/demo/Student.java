package com.demo;

public class Student{
// 属性声明
private Double id;
private Double age;
private Double math;
private Double phy;
private String name;
private String college;
private String xi;
private String banji;
private String password;

// 构造方法的定义
public Student(){}
public Student(Double id, Double age, Double math,Double phy,String name,String xuanyuan,String xi,String banji){
       this.id = id;
       this.age = age;
       this.math = math;
       this.phy = phy;
       this.name = name;
       this.college = college;
       this.xi = xi;
       this.banji = banji;
}
// getter方法
public Double getid(){ return this.id; }
public Double getAge(){ return this.age; }
public Double getmath(){ return this.math; }
public Double getphy(){ return this.phy; }
public String getname(){ return this.name; }
public String getcollege(){ return this.college; }
public String getxi(){ return this.xi; }
public String getbanji(){ return this.banji; }
public String getpassword(){ return this.password; }
// setter方法
public void setid(Double id){ this.id = id; }
public void setAge(Double age){ this.age = age; }
public void setmath(Double math){ this.math = math; }
public void setphy(Double phy){ this.phy = phy; }
public void setname(String name){ this.name = name; }
public void setcollege(String college){ this.college = college; }
public void setxi(String xi){ this.xi= xi; }
public void setbanji(String banji){ this.banji = banji; }
public void setpassword(String password){ this.password =password; }
}

 