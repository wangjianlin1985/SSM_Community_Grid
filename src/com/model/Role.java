package com.model;

public class Role {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_role.roleId
     *
     * @mbggenerated
     */
    private Integer roleId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_role.roleName
     *
     * @mbggenerated
     */
    private String roleName;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_role.roleMark
     *
     * @mbggenerated
     */
    private String roleMark;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_role.roleMark1
     *
     * @mbggenerated
     */
    private String roleMark1;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_role.roleMark2
     *
     * @mbggenerated
     */
    private Integer roleMark2;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_role.roleId
     *
     * @return the value of t_role.roleId
     *
     * @mbggenerated
     */
    public Integer getRoleId() {
        return roleId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_role.roleId
     *
     * @param roleId the value for t_role.roleId
     *
     * @mbggenerated
     */
    public void setRoleId(Integer roleId) {
        this.roleId = roleId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_role.roleName
     *
     * @return the value of t_role.roleName
     *
     * @mbggenerated
     */
    public String getRoleName() {
        return roleName;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_role.roleName
     *
     * @param roleName the value for t_role.roleName
     *
     * @mbggenerated
     */
    public void setRoleName(String roleName) {
        this.roleName = roleName == null ? null : roleName.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_role.roleMark
     *
     * @return the value of t_role.roleMark
     *
     * @mbggenerated
     */
    public String getRoleMark() {
        return roleMark;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_role.roleMark
     *
     * @param roleMark the value for t_role.roleMark
     *
     * @mbggenerated
     */
    public void setRoleMark(String roleMark) {
        this.roleMark = roleMark == null ? null : roleMark.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_role.roleMark1
     *
     * @return the value of t_role.roleMark1
     *
     * @mbggenerated
     */
    public String getRoleMark1() {
        return roleMark1;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_role.roleMark1
     *
     * @param roleMark1 the value for t_role.roleMark1
     *
     * @mbggenerated
     */
    public void setRoleMark1(String roleMark1) {
        this.roleMark1 = roleMark1 == null ? null : roleMark1.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_role.roleMark2
     *
     * @return the value of t_role.roleMark2
     *
     * @mbggenerated
     */
    public Integer getRoleMark2() {
        return roleMark2;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_role.roleMark2
     *
     * @param roleMark2 the value for t_role.roleMark2
     *
     * @mbggenerated
     */
    public void setRoleMark2(Integer roleMark2) {
        this.roleMark2 = roleMark2;
    }
}