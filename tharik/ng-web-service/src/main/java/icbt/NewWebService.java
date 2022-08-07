/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/WebServices/WebService.java to edit this template
 */
package icbt;

import java.util.List;
import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;

/**
 *
 * @author tharik
 */
@WebService(serviceName = "NewWebService")
public class NewWebService {

    /**
     * This is a sample web service operation
     */
    @WebMethod(operationName = "hello")
    public String hello(@WebParam(name = "name") String txt) {
        return "Hello " + txt + " !!!!!";
    }
    
    @WebMethod(operationName = "getStudent")
    public Student getStudent(@WebParam(name = "id") int id) {
        DBUtil util = new DBUtil();
        return util.getStudent(id);
    }
    
    @WebMethod(operationName = "getStudents")
    public List<Student> getStudents() {
        DBUtil util = new DBUtil();
        return util.getStudents();
    }
    
    @WebMethod(operationName = "addStudent")
    public boolean addStudent(@WebParam(name = "st") Student st){
        DBUtil util = new DBUtil();
        return util.addStudent(st);
    }
    
    @WebMethod(operationName = "updateStudent")
    public boolean updateStudent(@WebParam(name = "st") Student st) {
        DBUtil util = new DBUtil();
        return util.updateStudent(st);
    }
    
    @WebMethod(operationName = "deleteStudent")
    public boolean deleteStudent(@WebParam(name = "id") int id) {
        DBUtil util = new DBUtil();
        return util.deleteStudent(id);
    }
}
