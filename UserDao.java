package in.movie.Model;

public interface UserDao {
 boolean isValidUser(String User,String Pass) ;

 boolean addUser(User userObj);
}
