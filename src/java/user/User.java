package user;


public class User extends SystemUser {
    private String department;
    private int sYear;
    private String valid;


    public User(String fn, String ln, String un, String pass, String email ,String depat ,int year) {
        super(fn, ln, un, pass, email);
        this.department=depat;
        this.sYear=year;
        this.valid="No";
    }
    
    public User(User us) {
        super(us.getfName(), us.getlName(), us.getUserName(), us.getPassword(), us.getEmail());
        this.department=us.getDepartment();
        this.sYear=us.getsYear();
        this.valid=us.getValid();
    }
    

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }
    
    public void setFieldValid(String valid) {
        this.valid = valid;
    }
    
    public String getValid() {
        return valid;
    }

    public void setVaild() {
        this.valid = "Yes";
    }

    public int getsYear() {
        return sYear;
    }
    
   

    public void setsYear(int sYear) {
        this.sYear = sYear;
    }
    
    
    
}
