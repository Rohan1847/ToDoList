package UserNotesHandle;

public class NoteInfo {
	private String note;
	private String date;
	private String noteid;
	public NoteInfo(String note, String date, String noteid) {
		super();
		this.note = note;
		this.date = date;
		this.noteid = noteid;
	}
	public String getNoteid() {
		return noteid;
	}
	public void setNoteid(String noteid) {
		this.noteid = noteid;
	}
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
}
