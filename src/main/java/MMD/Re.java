package MMD;

public class Re {
	private String yourname,email,message;

	public Re(String yourname, String email, String message) {
		super();
		this.yourname = yourname;
		this.email = email;
		this.message = message;
	}

	public Re() {
		super();
	}

	public String getYourname() {
		return yourname;
	}

	public void setYourname(String yourname) {
		this.yourname = yourname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

}
