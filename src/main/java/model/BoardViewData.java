package model;

import java.time.LocalDateTime;
import java.time.LocalDate;

public class BoardViewData {

	//	id,title,contents,author_id,created_at,updated_at,deleted_at,is_deleted,views,likes,hates
	//  추가적으로 유저의나이, 유저의 성별
	//  사용자가 글을 볼 때 필요한 데이터들 모음
	private int board_id;
	private String title;
	private String content;
	private String gender;
	private String timeAgo;
	private String ageRange;
	private String author_id;
	private LocalDate birthday;
	private LocalDateTime created_at;
	private LocalDateTime updated_at;
	private LocalDateTime deleted_at;
	private Boolean is_updated;
	private Boolean is_deleted;
	private int view_count;
	private int like_count;
	private int hate_count;
	private int commant_count;
	
	public int getBoard_id() {
		return board_id;
	}
	public void setBoard_id(int board_id) {
		this.board_id = board_id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getTimeAgo() {
		return timeAgo;
	}
	public void setTimeAgo(String timeAgo) {
		this.timeAgo = timeAgo;
	}
	public String getAgeRange() {
		return ageRange;
	}
	public void setAgeRange(String ageRange) {
		this.ageRange = ageRange;
	}
	public String getAuthor_id() {
		return author_id;
	}
	public void setAuthor_id(String author_id) {
		this.author_id = author_id;
	}
	public LocalDate getBirthday() {
		return birthday;
	}
	public void setBirthday(LocalDate birthday) {
		this.birthday = birthday;
	}
	public LocalDateTime getCreated_at() {
		return created_at;
	}
	public void setCreated_at(LocalDateTime created_at) {
		this.created_at = created_at;
	}
	public LocalDateTime getUpdated_at() {
		return updated_at;
	}
	public void setUpdated_at(LocalDateTime updated_at) {
		this.updated_at = updated_at;
	}
	public LocalDateTime getDeleted_at() {
		return deleted_at;
	}
	public void setDeleted_at(LocalDateTime deleted_at) {
		this.deleted_at = deleted_at;
	}
	public Boolean getIs_updated() {
		return is_updated;
	}
	public void setIs_updated(Boolean is_updated) {
		this.is_updated = is_updated;
	}
	public Boolean getIs_deleted() {
		return is_deleted;
	}
	public void setIs_deleted(Boolean is_deleted) {
		this.is_deleted = is_deleted;
	}
	public int getView_count() {
		return view_count;
	}
	public void setView_count(int view_count) {
		this.view_count = view_count;
	}
	public int getLike_count() {
		return like_count;
	}
	public void setLike_count(int like_count) {
		this.like_count = like_count;
	}
	public int getHate_count() {
		return hate_count;
	}
	public void setHate_count(int hate_count) {
		this.hate_count = hate_count;
	}
	public int getCommant_count() {
		return commant_count;
	}
	public void setCommant_count(int commant_count) {
		this.commant_count = commant_count;
	}
	
}