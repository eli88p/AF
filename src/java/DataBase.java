

import javax.xml.crypto.Data;
import java.sql.*;
import java.util.ArrayList;
public class DataBase {

    public static User FindUser(String user,String Password)
    {
        try
        {
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            Connection con = DriverManager.getConnection("jdbc:odbc:db", "", "");
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("Select * from User where userName='" + user + "' and pass='" + Password + "'");

            if(rs.next())
            {
                String columnUser = rs.getString(1);
                String columnPassword = rs.getString(2);
                if(columnUser.equals(user) && columnPassword.equals(Password))
                {
                    String fn = rs.getString(3);
                    String ln = rs.getString(4);
                    String email = rs.getString(5);
                    String dept = rs.getString(6);
                    int year = Integer.parseInt(rs.getString(7));
                    st.close();
                    con.close();
                    return new User(fn,ln,columnUser,columnPassword,email,dept,year);
                }

            }

            st.close();
            con.close();

        }

        catch (Exception e)
        {

        }

        return null;
    }
    
    public static boolean ValidtionUser(User user)
    {
        user.setVaild();
        try
        {
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            Connection con = DriverManager.getConnection("jdbc:odbc:db", "", "");
            Statement st = con.createStatement();
            st.executeUpdate("update User set valid='Yes' where userName='" + user.getUserName() + "' and pass='" + user.getPassword() + "'");
            st.close();
            con.close();
        }

        catch (Exception e)
        {
            return false;
        }
        
        return true;
        
    }
    

    public static boolean checkValid(User user)
    {
        try
        {
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            Connection con = DriverManager.getConnection("jdbc:odbc:db", "", "");
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("Select valid from User where userName='" + user.getUserName() + "'"+" and pass='"+user.getPassword()+"'");

            
            
            if(rs.next()){
                if(rs.getString(1).equals("Yes"))
                {
                    st.close();
                    con.close();
                    return true;
                }
                    
            }
            st.close();
            con.close();
            
        }

        catch (Exception e)
        {

        }

        return false;
    }
    
    public static Admin FindAdmin(String user ,String Password)
    {
        try
        {
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            Connection con = DriverManager.getConnection("jdbc:odbc:db","","");
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("Select * from Admin where userName='" + user + "' and pass='" + Password + "'");

            if(rs.next())
            {
                String columnUser = rs.getString(1);
                String columnPassword = rs.getString(2);
                if(columnUser.equals(user) && columnPassword.equals(Password))
                {
                    String fn = rs.getString(3);
                    String ln = rs.getString(4);
                    String email = rs.getString(5);
                    st.close();
                    con.close();
                    return new Admin(fn,ln,columnUser,columnPassword,email);
                }

            }

            st.close();
            con.close();

        }

        catch (Exception e)
        {

        }

        return null;
    }


    /** isUserTaken returns True if the user name is taken
        and False if not
     */
    public static boolean isUserTaken(String user)
    {
        try
        {
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            Connection con = DriverManager.getConnection("jdbc:odbc:db", "", "");
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("Select * from User where userName='" + user + "'");


            if(rs.next())
            {
                st.close();
                con.close();
                return true;
            }
            
            st.close();
            con.close();
          
            con = DriverManager.getConnection("jdbc:odbc:db", "", "");
            st = con.createStatement();
            rs =  st.executeQuery("Select * from Admin where userName='" + user + "'");

            if(rs.next())
            {
                st.close();
                con.close();
                return true;
            }
            
            st.close();
            con.close();


        }

        catch (Exception e)
        {

        }

        return false;
    }

    /** isEmailTaken returns True if the email is taken
        and False if not
     */
    public static boolean isEmailTaken(String mail)
    {
        try
        {
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            Connection con = DriverManager.getConnection("jdbc:odbc:db", "", "");
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("Select * from User where email='" + mail + "'");


            
            if(rs.next())
            {
                st.close();
                con.close();
                return true;
            }
            st.close();
            con.close();


            con = DriverManager.getConnection("jdbc:odbc:db", "", "");
            st = con.createStatement();
            rs =  st.executeQuery("Select * from Admin where email='" + mail + "'");

            if(rs.next())
            {
                st.close();
                con.close();
                return true;
            }
            st.close();
            con.close();


        }

        catch (Exception e)
        {

        }

        return false;
    }


    public static boolean AddUser(User newUser)
    {
        if(!DataBase.isUserTaken(newUser.getUserName()) && !DataBase.isEmailTaken(newUser.getEmail()))
        {
            try
            {
                Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
                Connection con = DriverManager.getConnection("jdbc:odbc:db", "", "");
                Statement st = con.createStatement();
                String query ="insert into User values ('" + newUser.getUserName() + "','" + newUser.getPassword() + "','" + newUser.getfName() + "','" + newUser.getlName() + "','" +newUser.getEmail() + "','" + newUser.getDepartment() + "','" + newUser.getsYear() + "','" + newUser.getValid() + "')";
                st.execute(query);

                st.close();
                con.close();
                
            }
            catch (Exception e)
            {
               return false;
            }
        }
        else
            return false;
        return true;
    }
    
    public static ArrayList<String> findCourses(String depart ,String year)
    {
        try
        {
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            Connection con = DriverManager.getConnection("jdbc:odbc:db", "", "");
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("Select cName from Courses where depart='" + depart + "' and cYear='"+ year + "'");
            ArrayList<String> Courses = new ArrayList<String>();
            while(rs.next())
            {
                Courses.add(rs.getString(1));
            }
            st.close();
            con.close();
            return Courses;
            
        }
        catch(Exception e)
        {
            
        }
        
        return null;
    }
}
