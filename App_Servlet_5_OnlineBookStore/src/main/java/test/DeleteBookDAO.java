package test;
import java.sql.*;
import java.util.ArrayList;
public class DeleteBookDAO
{
   public int k=0;
   public ArrayList<BookBean> al = new ArrayList<BookBean>();
   public int update(BookBean bb)
   {
	   try {
		   
		   Connection con = DBConnection.getCon();
		   PreparedStatement ps = con.prepareStatement
		   ("delete from Book62 where bcode=?");
		   ps.setString(1, bb.getCode());
		   k = ps.executeUpdate();
		   al.remove(bb);
	   }catch(Exception e) {
		   e.printStackTrace();
	   }
	   return k;
   }
}
