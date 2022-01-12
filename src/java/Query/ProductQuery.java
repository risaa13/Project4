
package Query;


public class ProductQuery {
    public String get = "SELECT * FROM products";
    public String create = "INSERT INTO products (name, size, label, type, stock,"
            + "received, shipped, note) VALUES (?,?,?,?,?,?,?,?)";
    public String show = "SELECT * FROM products WHERE id = ?";
    public String update = "UPDATE products SET name = ?,size = ?,label = ?,"
            + "type = ?,note = ? WHERE id = ?";
    public String delete = "DELETE FROM products WHERE id = ?";
    public String stock = "SELECT SUM(stock), SUM(received), SUM(shipped) FROM products";
}
