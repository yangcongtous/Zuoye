package DAO;

/**
 * Task entity. @author MyEclipse Persistence Tools
 */

public class Task implements java.io.Serializable {

	// Fields

	private Integer taskid;
	private String tasktitle;
	private String taskcontent;
	private Boolean outok;
	private Boolean inok;
	private Integer inuserid;
	private Integer outintid;
	private Boolean accept;
	private Float price;

	// Constructors

	/** default constructor */
	public Task() {
	}

	/** minimal constructor */
	public Task(String tasktitle, String taskcontent, Boolean outok,
			Boolean inok, Integer outintid) {
		this.tasktitle = tasktitle;
		this.taskcontent = taskcontent;
		this.outok = outok;
		this.inok = inok;
		this.outintid = outintid;
	}

	/** full constructor */
	public Task(String tasktitle, String taskcontent, Boolean outok,
			Boolean inok, Integer inuserid, Integer outintid, Boolean accept,Float price) {
		this.tasktitle = tasktitle;
		this.taskcontent = taskcontent;
		this.outok = outok;
		this.inok = inok;
		this.inuserid = inuserid;
		this.outintid = outintid;
		this.accept = accept;
		this.price=price;
	}

	// Property accessors

	public Float getPrice() {
		return this.price;
	}

	public void setPrice(Float price) {
		this.price = price;
	}

	public Integer getTaskid() {
		return this.taskid;
	}

	public void setTaskid(Integer taskid) {
		this.taskid = taskid;
	}

	public String getTasktitle() {
		return this.tasktitle;
	}

	public void setTasktitle(String tasktitle) {
		this.tasktitle = tasktitle;
	}

	public String getTaskcontent() {
		return this.taskcontent;
	}

	public void setTaskcontent(String taskcontent) {
		this.taskcontent = taskcontent;
	}

	public Boolean getOutok() {
		return this.outok;
	}

	public void setOutok(Boolean outok) {
		this.outok = outok;
	}

	public Boolean getInok() {
		return this.inok;
	}

	public void setInok(Boolean inok) {
		this.inok = inok;
	}

	public Integer getInuserid() {
		return this.inuserid;
	}

	public void setInuserid(Integer inuserid) {
		this.inuserid = inuserid;
	}

	public Integer getOutintid() {
		return this.outintid;
	}

	public void setOutintid(Integer outintid) {
		this.outintid = outintid;
	}

	public Boolean getAccept() {
		return this.accept;
	}

	public void setAccept(Boolean accept) {
		this.accept = accept;
	}

}