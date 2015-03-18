
/**
 *
 * @author Indra
 */
import java.io.*;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.*;

public class Database {

    private Connection conn;

    public Database() {

    }

    public void initConnection() throws SQLException {

        System.setProperty("jdbc.drivers", "jdbc.mysql.Driver");

        conn = DriverManager.getConnection("jdbc:mysql:coordinatentestdb", "root", "");
    }

    public void closeConnection() {
        try {
            conn.close();
            conn = null;
        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
        }
    }
}
