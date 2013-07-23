package myBean;
import java.util.Hashtable;

public class login_detail {
    
   private String loginMail;
   private String loginPass;
   Hashtable errors;

   public login_detail() {
       loginMail="";
       loginPass="";
       errors=new Hashtable();
      }

    public String getLoginMail() {
        return loginMail;
    }

    public String getLoginPass() {
        return loginPass;
    }

    public void setLoginMail(String loginMail) {
        this.loginMail = loginMail;
    }

    public void setLoginPass(String loginPass) {
        this.loginPass = loginPass;
    }

public String getErrors(String str) {
        String errmsg=(String)errors.get(str.trim());
    return (errmsg==null)? "" :errmsg;
    }

public boolean Lvalidate()
{
    boolean chk =true;
   
   if(loginMail=="" || loginPass==""){
        errors.put("loginMail","Incorrect EmailId and Password");
        loginPass="";
        chk=false;
   }
    
    return chk;
    
}
}