package modelos;

import jakarta.persistence.*;

import java.io.Serializable;

@Entity
public class Productos implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id_producto;
    @Basic
    private String nombre;
    @Basic
    private String descripcion;
    private double precio_unitario;
    private String categoria;

    @OneToOne
    @JoinColumn(name = "orden_id_orden")
    private Ordenes orden;

    public Ordenes getOrden() {
        return orden;
    }

    public void setOrden(Ordenes orden) {
        this.orden = orden;
    }

    public Productos() {
    }

    public Productos(int id_producto) {
        this.id_producto = id_producto;
    }

    public Productos(int id_producto, String nombre, String descripcion, double precio_unitario, String categoria, Ordenes orden) {
        this.id_producto = id_producto;
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.precio_unitario = precio_unitario;
        this.categoria = categoria;
        this.orden = orden;
    }

    public int getId_producto() {
        return id_producto;
    }

    public void setId_producto(int id_producto) {
        this.id_producto = id_producto;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public double getPrecio_unitario() {
        return precio_unitario;
    }

    public void setPrecio_unitario(double precio_unitario) {
        this.precio_unitario = precio_unitario;
    }

    public String getCategoria() {
        return categoria;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }
}                                   

