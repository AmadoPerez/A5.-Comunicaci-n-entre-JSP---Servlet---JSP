
package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mi_paquete.Alumno;


public class SProcesar extends HttpServlet 
{

    private Alumno dato[]=new Alumno[10]; 
    int cont=0;
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
         
           if(request.getParameter("btnRegistrar")!=null)
            {
                dato[cont]=new Alumno();
                dato[cont].setMatricula(request.getParameter("txfMatricula"));
                dato[cont].setNombre(request.getParameter("txfNombre"));
                dato[cont].setApellidoP(request.getParameter("txfApellidoP"));
                dato[cont].setApellidoM(request.getParameter("txfApellidoM"));
                dato[cont].setDdi(Integer.parseInt(request.getParameter("txfDDI")));
                dato[cont].setDwi(Integer.parseInt(request.getParameter("txfDWI")));
                dato[cont].setEcbd(Integer.parseInt(request.getParameter("txfECBD")));
   
                cont++;
                
                request.setAttribute("cont",cont);
                request.setAttribute("datos",dato);
          
                 RequestDispatcher rd=request.getRequestDispatcher("/index.jsp");
                 rd.forward(request,response);
                
            }
    }
 
    
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
        
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>



}
