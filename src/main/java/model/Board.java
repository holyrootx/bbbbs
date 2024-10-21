package model;

import java.time.LocalDateTime;

public class Board {

	//	id,title,contents,author_id,created_at,updated_at,deleted_at,is_deleted,views,likes,hates
	
	private int id;
	private String title;
	private String content;
	private String author_id;
	private LocalDateTime created_at;
	private LocalDateTime updated_at;
	private LocalDateTime deleted_at;
	private Boolean is_updated;
	private Boolean is_deleted;
	private int view_count;
	private int like_count;
	private int hate_count;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
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
	public String getAuthor_id() {
		return author_id;
	}
	public void setAuthor_id(String author_id) {
		this.author_id = author_id;
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
	
	
}