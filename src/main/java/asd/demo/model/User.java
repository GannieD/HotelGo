package asd.demo.model;

import java.io.Serializable;

public class User  implements Serializable{

    private String name;
    private String email;
    private String password;
    private String phone;

    public User() {
    }

    public User(String email, String password) {
        this.email = email;
        this.password = password;

    }

    public boolean match(String email){
        return this.email.equalsIgnoreCase(email.trim());
    }
    
   

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

}
