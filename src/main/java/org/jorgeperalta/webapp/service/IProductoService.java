package org.jorgeperalta.webapp.service;

import java.util.List;
import org.jorgeperalta.webapp.model.Producto;


public interface IProductoService {
    
    public List<Producto> listarProductos();
    
    public void agregarProducto(Producto producto);
    
    public void eliminarProducto(int productoId);
    
    public Producto buscarPorductoPorId(int productoId);
    
    public void editarProducto(Producto producto);

    
}
