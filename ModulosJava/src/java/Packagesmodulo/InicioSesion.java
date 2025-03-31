package Packagesmodulo;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/procesarInicioSesion")
public class InicioSesion extends HttpServlet {

   private static final String Usuario_Validado = "JENIFER";
   private static final String Clave_Validado = "1622";
   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       response.sendRedirect("index.jsp");
    }
 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       String Usuario = request.getParameter ("Usuario");
       String Clave = request.getParameter ("Clave");
       
       if (Usuario_Validado.equals(Usuario) && Clave_Validado.equals(Clave)){
           request.getRequestDispatcher("bienvenidos.jsp").forward(request, response);
                  
       }else {
           request.setAttribute("error", "Usuario o Clave Incorrecta");
           request.setAttribute("error exist", true);
           request.getRequestDispatcher("Error.jsp").forward(request, response);
       }
       
    }

   }
