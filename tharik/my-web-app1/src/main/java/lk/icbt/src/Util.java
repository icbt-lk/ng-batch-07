/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package lk.icbt.src;

/**
 *
 * @author tharik
 */
public class Util {
    
    public static Student[] getStudents() {
        Student[] students = new Student[3];
        
        students[0] = new Student("st01", "123V", "John");
        students[1] = new Student("st02", "124V", "Geroge");
        students[2] = new Student("st03", "125V", "James");
        
        return students;
    }
    
}
