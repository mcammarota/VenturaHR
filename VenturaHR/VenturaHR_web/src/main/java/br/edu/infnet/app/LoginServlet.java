package br.edu.infnet.app;

import br.edu.infnet.domain.Usuario;
import br.edu.infnet.domain.Vaga;
import br.edu.infnet.infra.UsuarioService;
import br.edu.infnet.infra.VagaService;
import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/usuarios"})
public class LoginServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
//        String email = request.getRemoteUser();
        String email = request.getParameter("email");
        UsuarioService us = new UsuarioService();
        Usuario user = us.getByEmail(email);
        request.setAttribute("usuario", user);
        String caixaDeEntrada = "";
        if(user.getTipo() == Usuario.EMPRESA){
            VagaService vs = new VagaService();
            List<Vaga> vagas = vs.getByIdUsuario(user.getId());
            request.setAttribute("vagas", vagas);
            caixaDeEntrada = "/empresas/index.jsp";

//        } else if (request.isUserInRole("candidato")){
        } else if (user.getTipo() == Usuario.CANDIDATO){
            caixaDeEntrada = "/candidatos/index.jsp";
        } else {
            caixaDeEntrada = "/administradores/index.jsp";
        }
        RequestDispatcher rd = request.getRequestDispatcher(caixaDeEntrada);
        rd.forward(request, response);
    }


    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
