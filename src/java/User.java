/**
 * Created by Gleb Nisman on 16/04/2015.
 */
public class User extends SystemUser {
    private String department;
    private int sYear;


    public User(String fn, String ln, String un, String pass, String email ,String depat ,int year) {
        super(fn, ln, un, pass, email);
        this.department=depat;
        this.sYear=year;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public int getsYear() {
        return sYear;
    }
    
   

    public void setsYear(int sYear) {
        this.sYear = sYear;
    }
}
