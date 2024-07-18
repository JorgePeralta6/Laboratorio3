package org.jorgeperalta.webapp.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import org.jorgeperalta.webapp.model.Producto;
import org.jorgeperalta.webapp.service.ProductoService;

@WebServlet("/producto-servlet")
@MultipartConfig
public class ProductoServlet extends HttpServlet {

    private ProductoService productoService;

    @Override
    public void init() throws ServletException {
        super.init();
        this.productoService = new ProductoService();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Producto> productos = productoService.listarProductos();
        req.setAttribute("productos", productos);
        req.getRequestDispatcher("./lista-productos/lista-productos.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String path = req.getPathInfo();
        if (path == null || path.equals("/")) {
            agregarProducto(req, resp);
        } else {
            resp.sendError(HttpServletResponse.SC_BAD_REQUEST);

        }
        /*List<String> datosProducto = new ArrayList<>();
        String mensaje = "";

        String nombreProducto = req.getParameter("nombreProducto");
        String marcaProducto = req.getParameter("marcaProducto");
        String descripcionProducto = req.getParameter("descripcionProducto");
        String precioProducto = req.getParameter("precioProducto");

        datosProducto.add(nombreProducto);
        datosProducto.add(marcaProducto);
        datosProducto.add(descripcionProducto);
        datosProducto.add("Q." + precioProducto);
        
        if(nombreProducto.isEmpty()){
           mensaje = "!Error! El campo del nombre esta vacio";
        } else if(marcaProducto.isEmpty()){
           mensaje = "!Error! El campo del marca esta vacio";  
        } else if(descripcionProducto.isEmpty()){
           mensaje = "!Error! El campo de la descripcion esta vacio";
        } else if(precioProducto.isEmpty()){
           mensaje = "!Error! El campo del precio esta vacio";
        } else{
            mensaje = "Los datos fueron enviado con exito";
        }

        req.setAttribute("mensaje", mensaje);
        req.setAttribute("datosProducto", datosProducto);

        getServletContext().getRequestDispatcher("/formulario-productos/formulario-productos.jsp").forward(req, resp);*/
    }

    public void agregarProducto(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String nombre = req.getParameter("nombreProducto");
        String marca = req.getParameter("marcaProducto");
        String descripcionProducto = req.getParameter("descripcionProducto");
        double precio = Double.parseDouble(req.getParameter("precioProducto"));

        productoService.agregarProducto(new Producto(nombre, marca, descripcionProducto, precio));

        resp.sendRedirect(req.getContextPath() + "/");
    }

}
