
package Controller;

import Model.ProductModel;
import Query.ProductQuery;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;


public class ProductController extends BaseController {
    ProductQuery query = new ProductQuery();
    ArrayList arraylist = new ArrayList(); 
    
    public ArrayList get() throws SQLException{
        String query = this.query.get;
        ResultSet rs = this.get(query);
        
        while(rs.next()) {
            ProductModel model = new ProductModel();
            model.setId(rs.getString("id"));
            model.setName(rs.getString("name"));
            model.setSize(rs.getString("size"));
            model.setLabel(rs.getString("label"));
            model.setType(rs.getString("type"));
            model.setStock(rs.getInt("stock"));
            model.setReceived(rs.getInt("received"));
            model.setShipped(rs.getInt("shipped"));
            model.setNote(rs.getString("note"));
            
            arraylist.add(model);
        }
        
        return arraylist;
    }
    
    public boolean create(ProductModel model) throws SQLException {
        Map<Integer, Object> map = new HashMap<>();
        map.put(1, model.getName());
        map.put(2, model.getSize());
        map.put(3, model.getLabel());
        map.put(4, model.getType());
        map.put(5, model.getStock());
        map.put(6, model.getReceived());
        map.put(7, model.getShipped());
        map.put(8, model.getNote());
        
        String sql = this.query.create;
        
        return this.preparedStatement(map, sql);
    }
    
    public ProductModel show(String id) throws SQLException {
        ProductModel model = new ProductModel();
        
        Map<Integer,Object> map = new HashMap<>();
        map.put(1, id);
        
        String sql = this.query.show;
        ResultSet rs = this.getWithParameter(map, sql);
        //untuk menyatukan table html ke dalam database//
        if (rs.next()) {
            model.setId(rs.getString("id"));
            model.setName(rs.getString("name"));
            model.setSize(rs.getString("size"));
            model.setLabel(rs.getString("label"));
            model.setType(rs.getString("type"));
            model.setStock(rs.getInt("stock"));
            model.setReceived(rs.getInt("received"));
            model.setShipped(rs.getInt("shipped"));
            model.setNote(rs.getString("note"));
        }
        
        return model;
    }
    
    public boolean delete(ProductModel model) throws SQLException {
        Map<Integer, Object> map = new HashMap<>();
        map.put(1, model.getId());
        
        String sql = this.query.delete;
        
        return this.preparedStatement(map, sql);
    }
    
    public boolean update(ProductModel model) throws SQLException {
        Map<Integer, Object> map = new HashMap<>();
        map.put(1, model.getName());
        map.put(2, model.getSize());
        map.put(3, model.getLabel());
        map.put(4, model.getType());
        map.put(5, model.getNote());
        map.put(6, model.getId());
        
        String sql = this.query.update;
        
        return this.preparedStatement(map, sql);
    }
    
    public ProductModel stock() throws SQLException{
        ProductModel model = new ProductModel();
        
        String query = this.query.stock;
        ResultSet rs = this.get(query);
        
        while(rs.next()) {
            model.setStock(rs.getInt(1));
            model.setReceived(rs.getInt(2));
            model.setShipped(rs.getInt(3));
        } 
        
        return model;
    }
}
