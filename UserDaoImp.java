package in.movie.Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDaoImp implements UserDao   {

	@Override
	public boolean isValidUser(String User, String Pass)   {
		String Query="Select * from user where username=? and password=?";
		try {
			Connection con=DatabaseConnection.getConnection();
			PreparedStatement ps=con.prepareStatement(Query);
			ps.setString(1,User);
			ps.setString(2, Pass);
			ResultSet rs=ps.executeQuery();
			
			return rs.next();
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public boolean addUser(User userObj) {
		String Query="insert into user values(?,?,?)";
		try {
			Connection con=DatabaseConnection.getConnection();
			PreparedStatement ps=con.prepareStatement(Query);
			ps.setString(1,userObj.getUsername());
			ps.setString(2, userObj.getEmail());
			ps.setString(3, userObj.getPassword());
			int k=ps.executeUpdate();
			
			return k>0;
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		return false;
	}

}
