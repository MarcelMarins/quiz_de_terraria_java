package quiz;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.swing.JOptionPane;

public class Conexao {

    public static Connection con = null;
    public static PreparedStatement ps = null;
    public static ResultSet rs = null;

    public Conexao() {
        
    }

    public static void Conectar() {
        try {
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bd_quiz", "root", "root");
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, ex.getMessage());
        }
    }

}
