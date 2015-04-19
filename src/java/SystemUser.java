
public class SystemUser {

    private String fName;
    private String lName;
    private String userName;
    private String password;
    private String email;


    public SystemUser(String fn,String ln,String un,String pass,String email)
    {
        this.fName=fn;
        this.lName=ln;
        this.userName=un;
        this.password=pass;
        this.email=email;

    }

    public String getlName() {
        return lName;
    }

    public void setlName(String lName) {
        this.lName = lName;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getfName() {

        return fName;
    }

    public void setfName(String fName) {
        this.fName = fName;
    }




}
