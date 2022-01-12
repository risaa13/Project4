
package Query;


public class BranchQuery {
    public String get = "SELECT * FROM party WHERE role ='Branch'";
    public String create = "INSERT INTO party (name, address, city, zip,"
            + "contact, note, role) VALUES (?,?,?,?,?,?,'Branch')";
    public String show = "SELECT * FROM party WHERE id = ?";
    public String update = "UPDATE party SET name = ?,address = ?,city = ?,"
            + "zip = ?,contact = ?,note = ? WHERE id = ?";
    public String delete = "DELETE FROM party WHERE id = ?";
}
