package DAO;

/**
 * Userinfo entity. @author MyEclipse Persistence Tools
 */

public class Userinfo implements java.io.Serializable {

	// Fields

	private Integer userid;
	private String username;
	private Integer outtaskid;
	private Integer intaskid;
	private Integer level;
	private String password;
	private String schoolname;
	private String studentid;

	// Constructors

	/** default constructor */
	public Userinfo() {
	}

	/** minimal constructor */
	public Userinfo(String username, String password, String schoolname,
			String studentid) {
		this.username = username;
		this.password = password;
		this.schoolname = schoolname;
		this.studentid = studentid;
	}

	/** full constructor */
	public Userinfo(String username, Integer outtaskid, Integer intaskid,
			Integer level, String password, String schoolname, String studentid) {
		this.username = username;
		this.outtaskid = outtaskid;
		this.intaskid = intaskid;
		this.level = level;
		this.password = password;
		this.schoolname = schoolname;
		this.studentid = studentid;
	}

	// Property accessors

	public Integer getUserid() {
		return this.userid;
	}

	public void setUserid(Integer userid) {
		this.userid = userid;
	}

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public Integer getOuttaskid() {
		return this.outtaskid;
	}

	public void setOuttaskid(Integer outtaskid) {
		this.outtaskid = outtaskid;
	}

	public Integer getIntaskid() {
		return this.intaskid;
	}

	public void setIntaskid(Integer intaskid) {
		this.intaskid = intaskid;
	}

	public Integer getLevel() {
		return this.level;
	}

	public void setLevel(Integer level) {
		this.level = level;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getSchoolname() {
		return this.schoolname;
	}

	public void setSchoolname(String schoolname) {
		this.schoolname = schoolname;
	}

	public String getStudentid() {
		return this.studentid;
	}

	public void setStudentid(String studentid) {
		this.studentid = studentid;
	}

}