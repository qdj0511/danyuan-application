package org.danyuan.application.dbms.chart.po;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * 文件名 ： SysChartNodeCols.java
 * 包 名 ： com.shumeng.application.chart.po
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： Administrator
 * 时 间 ： 2018年4月3日 下午1:53:18
 * 版 本 ： V1.0
 */
@Entity
@Table(name = "sys_chart_node_cols")
@NamedQuery(name = "SysChartNodeCols.findAll", query = "SELECT s FROM SysChartNodeCols s")
public class SysChartNodeCols implements Serializable {

	/**
	 * @Fields serialVersionUID : TODO(用一句话描述这个变量表示什么)
	 */
	private static final long	serialVersionUID	= 8672817596949085839L;

	@Id
	@Column(name = "UUID", columnDefinition = "varchar(50) COMMENT '主键'")
	private String				uuid;

	@Column(name = "create_time", updatable = false, columnDefinition = " timestamp default sysdate COMMENT '录入时间'")
	@Temporal(TemporalType.TIMESTAMP)
	@org.hibernate.annotations.CreationTimestamp
	private Date				createTime;									// create_time
	// 插入时间

	@Column(name = "create_user", updatable = false, columnDefinition = " varchar(50) default 'system' COMMENT '录入人员'")
	private String				createUser;									// create_user
	// 插入人

	@Column(name = "update_time", columnDefinition = " timestamp  default sysdate  COMMENT '更新时间'")
	@Temporal(TemporalType.TIMESTAMP)
	@org.hibernate.annotations.UpdateTimestamp
	private Date				updateTime;									// updata_time
	// 更新时间

	@Column(name = "update_user", columnDefinition = " varchar(50) default 'system'  COMMENT '更新人员'")
	private String				updateUser;									// updata_user
	// 更新人

	@Column(name = "delete_flag", columnDefinition = " Integer default 0 COMMENT '停用标记'")
	private Integer				deleteFlag;									// delete_flag
	// 标记

	@Column(name = "node_uuid", columnDefinition = " varchar(50)  COMMENT '外键'")
	private String				nodeUuid;

	@Column(name = "column_name", columnDefinition = " varchar(50) COMMENT '属性名称'")
	private String				columName;

	@Column(name = "COLUMN_DESC", columnDefinition = " varchar(50)  COMMENT '中文含义'")
	private String				columnDesc;
	@Column(name = "COLUMN_ORDER", columnDefinition = " int  COMMENT '排序'")
	private Integer				columnOrder;

	@Column(name = "COLUMN_TYPE", columnDefinition = " varchar(36)  COMMENT '属性类型'")
	private String				columnType;

	@Column(name = "COLUMN_TITLE", columnDefinition = " int  COMMENT '作为标题展示'")
	private Integer				columnTitle;

	@Column(name = "user_index", columnDefinition = " varchar(50)  COMMENT '类型'")
	private String				userIndex;

	public SysChartNodeCols() {
		super();
	}

	/**
	 * 方法名 ： getUuid
	 * 功 能 ： 返回变量 uuid 的值
	 *
	 * @return: String
	 */
	public String getUuid() {
		return uuid;
	}

	/**
	 * 方法名 ： setUuid
	 * 功 能 ： 设置变量 uuid 的值
	 */
	public void setUuid(String uuid) {
		this.uuid = uuid;
	}

	/**
	 * 方法名 ： getCreateTime
	 * 功 能 ： 返回变量 createTime 的值
	 *
	 * @return: Date
	 */
	public Date getCreateTime() {
		return createTime;
	}

	/**
	 * 方法名 ： setCreateTime
	 * 功 能 ： 设置变量 createTime 的值
	 */
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	/**
	 * 方法名 ： getCreateUser
	 * 功 能 ： 返回变量 createUser 的值
	 *
	 * @return: String
	 */
	public String getCreateUser() {
		return createUser;
	}

	/**
	 * 方法名 ： setCreateUser
	 * 功 能 ： 设置变量 createUser 的值
	 */
	public void setCreateUser(String createUser) {
		this.createUser = createUser;
	}

	/**
	 * 方法名 ： getUpdateTime
	 * 功 能 ： 返回变量 updateTime 的值
	 *
	 * @return: Date
	 */
	public Date getUpdateTime() {
		return updateTime;
	}

	/**
	 * 方法名 ： setUpdateTime
	 * 功 能 ： 设置变量 updateTime 的值
	 */
	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}

	/**
	 * 方法名 ： getUpdateUser
	 * 功 能 ： 返回变量 updateUser 的值
	 *
	 * @return: String
	 */
	public String getUpdateUser() {
		return updateUser;
	}

	/**
	 * 方法名 ： setUpdateUser
	 * 功 能 ： 设置变量 updateUser 的值
	 */
	public void setUpdateUser(String updateUser) {
		this.updateUser = updateUser;
	}

	/**
	 * 方法名 ： getDeleteFlag
	 * 功 能 ： 返回变量 deleteFlag 的值
	 *
	 * @return: Integer
	 */
	public Integer getDeleteFlag() {
		return deleteFlag;
	}

	/**
	 * 方法名 ： setDeleteFlag
	 * 功 能 ： 设置变量 deleteFlag 的值
	 */
	public void setDeleteFlag(Integer deleteFlag) {
		this.deleteFlag = deleteFlag;
	}

	/**
	 * 方法名 ： getNodeUuid
	 * 功 能 ： 返回变量 nodeUuid 的值
	 *
	 * @return: String
	 */
	public String getNodeUuid() {
		return nodeUuid;
	}

	/**
	 * 方法名 ： setNodeUuid
	 * 功 能 ： 设置变量 nodeUuid 的值
	 */
	public void setNodeUuid(String nodeUuid) {
		this.nodeUuid = nodeUuid;
	}

	/**
	 * 方法名 ： getColumName
	 * 功 能 ： 返回变量 columName 的值
	 *
	 * @return: String
	 */
	public String getColumName() {
		return columName;
	}

	/**
	 * 方法名 ： setColumName
	 * 功 能 ： 设置变量 columName 的值
	 */
	public void setColumName(String columName) {
		this.columName = columName;
	}

	/**
	 * 方法名 ： getColumnDesc
	 * 功 能 ： 返回变量 columnDesc 的值
	 *
	 * @return: String
	 */
	public String getColumnDesc() {
		return columnDesc;
	}

	/**
	 * 方法名 ： setColumnDesc
	 * 功 能 ： 设置变量 columnDesc 的值
	 */
	public void setColumnDesc(String columnDesc) {
		this.columnDesc = columnDesc;
	}

	/**
	 * 方法名 ： getUserIndex
	 * 功 能 ： 返回变量 userIndex 的值
	 *
	 * @return: String
	 */
	public String getUserIndex() {
		return userIndex;
	}

	/**
	 * 方法名 ： setUserIndex
	 * 功 能 ： 设置变量 userIndex 的值
	 */
	public void setUserIndex(String userIndex) {
		this.userIndex = userIndex;
	}
	
	/**
	 * @方法名 getColumnOrder
	 * @功能 返回变量 columnOrder 的值
	 * @return Integer
	 */
	public Integer getColumnOrder() {
		return columnOrder;
	}

	/**
	 * @方法名 setColumnOrder
	 * @功能 设置变量 columnOrder 的值
	 */
	public void setColumnOrder(Integer columnOrder) {
		this.columnOrder = columnOrder;
	}

	/**
	 * @方法名 getColumnType
	 * @功能 返回变量 columnType 的值
	 * @return String
	 */
	public String getColumnType() {
		return columnType;
	}

	/**
	 * @方法名 setColumnType
	 * @功能 设置变量 columnType 的值
	 */
	public void setColumnType(String columnType) {
		this.columnType = columnType;
	}

	/**
	 * @方法名 getColumnTitle
	 * @功能 返回变量 columnTitle 的值
	 * @return Integer
	 */
	public Integer getColumnTitle() {
		return columnTitle;
	}
	
	/**
	 * @方法名 setColumnTitle
	 * @功能 设置变量 columnTitle 的值
	 */
	public void setColumnTitle(Integer columnTitle) {
		this.columnTitle = columnTitle;
	}
	
	/**
	 * 方法名 ： toString
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @return
	 * 参 考 ： @see java.lang.Object#toString()
	 * 作 者 ： Administrator
	 */
	@Override
	public String toString() {
		return "SysChartNodeCols [uuid=" + uuid + ", createTime=" + createTime + ", createUser=" + createUser + ", updateTime=" + updateTime + ", updateUser=" + updateUser + ", deleteFlag=" + deleteFlag + ", nodeUuid=" + nodeUuid + ", columName=" + columName + ", columnDesc=" + columnDesc + ", userIndex=" + userIndex + "]";
	}

}
