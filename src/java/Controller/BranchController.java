
package Controller;

import Model.BranchModel;
import Query.BranchQuery;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;


public class BranchController extends BaseController {
    BranchQuery query = new BranchQuery();
    ArrayList arraylist = new ArrayList(); 
    
    public ArrayList get() throws SQLException{
        String query = this.query.get;
        ResultSet rs = this.get(query);
        
        while(rs.next()) {
            BranchModel model = new BranchModel();
            model.setId(rs.getString("id"));
            model.setName(rs.getString("name"));
            model.setAddress(rs.getString("address"));
            model.setCity(rs.getString("city"));
            model.setZip(rs.getString("zip"));
            model.setContact(rs.getString("contact"));
            model.setNote(rs.getString("note"));
            
            arraylist.add(model);
        }
        
        return arraylist;
    }
    
    public boolean create(BranchModel model) throws SQLException {
        Map<Integer, Object> map = new HashMap<>();
        map.put(1, model.getName());
        map.put(2, model.getAddress());
        map.put(3, model.getCity());
        map.put(4, model.getZip());
        map.put(5, model.getContact());
        map.put(6, model.getNote());
        
        String sql = this.query.create;
        
        return this.preparedStatement(map, sql);
    }
    
    public BranchModel show(String id) throws SQLException {
        BranchModel model = new BranchModel();
        
        Map<Integer,Object> map = new HashMap<>();
        map.put(1, id);
        
        String sql = this.query.show;
        ResultSet rs = this.getWithParameter(map, sql);
        
        if (rs.next()) {
            model.setId(rs.getString("id"));
            model.setName(rs.getString("name"));
            model.setAddress(rs.getString("address"));
            model.setCity(rs.getString("city"));
            model.setZip(rs.getString("zip"));
            model.setContact(rs.getString("contact"));
            model.setNote(rs.getString("note"));
        }
        
        return model;
    }
    
    public boolean delete(BranchModel model) throws SQLException {
        Map<Integer, Object> map = new HashMap<>();
        map.put(1, model.getId());
        
        String sql = this.query.delete;
        
        return this.preparedStatement(map, sql);
    }
    
    public boolean update(BranchModel model) throws SQLException {
        Map<Integer, Object> map = new HashMap<>();
        map.put(1, model.getName());
        map.put(2, model.getAddress());
        map.put(3, model.getCity());
        map.put(4, model.getZip());
        map.put(5, model.getContact());
        map.put(6, model.getNote());
        map.put(7, model.getId());
        
        String sql = this.query.update;
        
        return this.preparedStatement(map, sql);
    }
}
