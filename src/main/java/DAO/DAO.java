package DAO;

import Context.DBConnect;
import Entity.PcComponent;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class DAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    Statement stmt = null;

    public List<PcComponent> getAllpc(){
        List<PcComponent> list = new ArrayList<>();
        String query = "SELECT * FROM pccomponent";
        try {
            conn = new DBConnect().getConnection(); // ket noi mysql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new PcComponent(rs.getInt(1)
                        ,rs.getString(2)));
            }
        } catch (Exception e) {

        }

        return list;
    }

    public static void main(String[] args) {
        DAO dao = new DAO();
        List<PcComponent> list = dao.getAllpc();

        for (PcComponent o : list) {
            System.out.println(o);
        }
    }
}
