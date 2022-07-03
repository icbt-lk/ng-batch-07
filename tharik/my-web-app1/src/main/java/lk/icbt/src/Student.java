/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package lk.icbt.src;

/**
 *
 * @author tharik
 */
public class Student extends Person{
    private String no;

    public Student() {
        this.no = "";
    }

    public Student(String no, String nic, String name) {
        super(nic, name);
        this.no = no;
    }

    public String getNo() {
        return no;
    }

    public void setNo(String no) {
        this.no = no;
    }
    
    
}
