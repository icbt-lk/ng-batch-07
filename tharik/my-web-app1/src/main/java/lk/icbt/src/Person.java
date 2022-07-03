/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package lk.icbt.src;

/**
 *
 * @author tharik
 */
public class Person {
    private String nic;
    private String name;

    public Person() {
        this.nic = "";
        this.name = "";
    }

    public Person(String nic, String name) {
        this.nic = nic;
        this.name = name;
    }

    public String getNic() {
        return nic;
    }

    public void setNic(String nic) {
        this.nic = nic;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
    
    
}
