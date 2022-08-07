/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package lk.icbt.ng.web.client;

import icbt.Student;
import java.io.IOException;
import javax.servlet.jsp.JspWriter;

/**
 *
 * @author tharik
 */
public class UIUtils {
    public static void printStudentRows(Student st, JspWriter out) {    
        try  {
            out.print("<tr>");
            out.print("<td>" + st.getId()+ "</td>");
            out.print("<td>" + st.getName() + "</td>");
            out.print("</tr>");
        } catch(IOException e) {
            // Ignore
        }
    }
}
