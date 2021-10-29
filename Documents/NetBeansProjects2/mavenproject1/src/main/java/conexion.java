
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;


public class conexion {
    
    Connection cnn;
    
    public Connection conexiondb(){
        
        
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException ex) {
          System.out.println("Error en driver"+ ex);
        }
        
        
        try {
            cnn=DriverManager.getConnection("jdbc:mysql://localhost/tiendavariedad","root","Colombia*2021");
             JOptionPane.showMessageDialog(null, "Conexion ok");
        } catch (SQLException ex) {
             System.out.println("Error en url"+ex);
            JOptionPane.showMessageDialog(null, "error en conecxxion"+ex);
            
        }
        return cnn;
    }
    
    
}
