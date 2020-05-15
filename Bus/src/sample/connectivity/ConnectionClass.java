package sample.connectivity;
import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionClass {
public Connection connection;
    public Connection getConnection()
    {
        String dbName ="bus";
        String username = "root";
        String password = "root";

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/"+dbName,username,password);

        } catch (Exception e) {
            e.printStackTrace();
        }
        return connection;
    }
}
