package MMD;

public class Book {
	private String cname,contact,email,location,gender,servicetype,timingslot;

	public Book(String cname, String contact, String email, String location, String gender, String servicetype,
			String timingslot) {
		super();
		this.cname = cname;
		this.contact = contact;
		this.email = email;
		this.location = location;
		this.gender = gender;
		this.servicetype = servicetype;
		this.timingslot = timingslot;
	}

	public Book() {
		super();
	}

	public String getCname() {
		return cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getServicetype() {
		return servicetype;
	}

	public void setServicetype(String servicetype) {
		this.servicetype = servicetype;
	}

	public String getTimingslot() {
		return timingslot;
	}

	public void setTimingslot(String timingslot) {
		this.timingslot = timingslot;
	}
	
	
}

	
