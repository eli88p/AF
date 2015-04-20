

import javax.xml.crypto.Data;
import java.sql.*;
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
                return true;
            }

            st.close();
            con.close();

            con = DriverManager.getConnection("jdbc:odbc:db", "", "");
            st = con.createStatement();
            rs =  st.executeQuery("Select * from Admin where userName='" + user + "'");
            if(rs.next())
            {
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
                return true;
            }

            st.close();
            con.close();

            con = DriverManager.getConnection("jdbc:odbc:db", "", "");
            st = con.createStatement();
            rs =  st.executeQuery("Select * from Admin where email='" + mail + "'");
            if(rs.next())
            {
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
                String query ="insert into User values ('" + newUser.getUserName() + "','" + newUser.getPassword() + "','" + newUser.getfName() + "','" + newUser.getlName() + "','" +newUser.getEmail() + "','" + newUser.getDepartment() + "','" + newUser.getsYear() + "')";
                st.execute(query);

                st.close();
                con.close();
                ;
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
}
