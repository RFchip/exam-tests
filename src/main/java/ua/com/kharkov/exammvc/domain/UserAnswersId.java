package ua.com.kharkov.exammvc.domain;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * 
 * @author Ru
 *
 */

/**
 * "useranswersid" - the table, which contains Answers id from user
 */

@Entity
@Table(name = "useranswersid") 
public class UserAnswersId implements Serializable {
	
	public UserAnswersId() {}
	
	
	public UserAnswersId(Long ua_id, Integer id) {
		
	
		this.id = id;
		
		/**
		 * user answer id
		 */
		this.ua_id = ua_id;
	}
	
	
	private Integer id;
	private Long ua_id;
	
	@Id
	@Column(name = "id")
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}
	
	@Column(name = "ua_id")
	public void setUa_Id(Long id) {
		ua_id = id;
	}
	
	public Long getUa_Id() {
		return ua_id;
	}

}
