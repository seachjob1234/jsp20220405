package chap08;
import java.util.Date;
public class MemberInfo {
	private String id;
	private String password;
	private String name;
	private Date ergisterDate;
	private String email;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Date getErgisterDate() {
		return ergisterDate;
	}
	public void setErgisterDate(Date ergisterDate) {
		this.ergisterDate = ergisterDate;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	
}
