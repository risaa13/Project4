
package Config;
import java.sql.*;

public class DBConnection {
    public Connection open(){
        Connection con;
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
    // nama database yang ada di php adalah inventorry//
            String url = "jdbc:mysql://localhost:3306/inventoryy";
            
            con = DriverManager.getConnection(url, "root", "");
            
            return con;
        } catch(Exception e){
            System.out.println(e);
            return null;
        }
    }
}
