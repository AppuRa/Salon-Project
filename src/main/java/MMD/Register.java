package MMD;

public class Register {
	private String uname,password;

	

	public Register(String uname, String password) {
		super();
		this.uname = uname;
		this.password = password;
	}
	public Register() {
		super();
	}
	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	

}
