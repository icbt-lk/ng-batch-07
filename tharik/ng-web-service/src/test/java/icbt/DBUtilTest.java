/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/UnitTests/JUnit4TestClass.java to edit this template
 */
package icbt;

import java.util.List;
import static org.junit.Assert.*;

/**
 *
 * @author tharik
 */
public class DBUtilTest {
    
    public DBUtilTest() {
    }

    @org.junit.BeforeClass
    public static void setUpClass() throws Exception {
    }

    @org.junit.AfterClass
    public static void tearDownClass() throws Exception {
    }

    @org.junit.Before
    public void setUp() throws Exception {
    }

    @org.junit.After
    public void tearDown() throws Exception {
    }

    /**
     * Test of getStudent method, of class DBUtil.
     */
    @org.junit.Test
    public void testGetStudent() {
        System.out.println("getStudent");
        int id = 1;
        DBUtil instance = new DBUtil();
        Student expResult = new Student(1, "John");
        Student result = instance.getStudent(id);
        
        assertEquals(expResult.getId(), result.getId());
        assertEquals(expResult.getName(), result.getName());
    }

    /**
     * Test of getStudents method, of class DBUtil.
     */
    @org.junit.Test
    public void testGetStudents() {
        System.out.println("getStudents");
        DBUtil instance = new DBUtil();
        Student expResult = new Student(2, "James");
        
        List<Student> result = instance.getStudents();
        for(Student st : result) {
            if(st.getId() == expResult.getId()) {
                assertEquals(expResult.getName(), st.getName());
            }
        }
    }

    /**
     * Test of addStudent method, of class DBUtil.
     */
    @org.junit.Test
    public void testCRUDStudent() {
        System.out.println("addStudent");
        Student st = new Student(999, "TestStudent");
        DBUtil instance = new DBUtil();
        boolean expResult = true;
        
        // Test Add Student functionality
        boolean result = instance.addStudent(st);
        assertEquals(expResult, result);
        
        // Test added students attributes
        Student resultStudent = instance.getStudent(st.getId());
        assertEquals(st.getId(), resultStudent.getId());
        assertEquals(st.getName(), resultStudent.getName());
        
        
        // Test Update Student functionality
        st.setName("TestStudent123");
        boolean resultUpdated = instance.updateStudent(st);
        assertEquals(expResult, resultUpdated);
        
        // Test updated students attributes
        Student resultStudentUpdated = instance.getStudent(st.getId());
        assertEquals(st.getId(), resultStudentUpdated.getId());
        assertEquals(st.getName(), resultStudentUpdated.getName());
        
        // Test Delete Student functionality and cleanup above tests
        boolean resultDelete = instance.deleteStudent(st.getId());
        assertEquals(resultDelete, result);
    }    
}
