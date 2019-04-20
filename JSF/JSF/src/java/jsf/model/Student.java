package jsf.model;

import java.util.Date;

/**
 *
 * @author Asaduzzaman Rony
 */
public class Student {
    private int id;
    private String studentName;
    private String gender;
    private String round;
    private Date courseStartDate;
    private boolean courseStatus;
    private String[] completeCourse;
    private String note;

    public Student() {
    }

    public Student(int id, String studentName, String gender, String round, Date courseStartDate, boolean courseStatus, String[] completeCourse, String note) {
        this.id = id;
        this.studentName = studentName;
        this.gender = gender;
        this.round = round;
        this.courseStartDate = courseStartDate;
        this.courseStatus = courseStatus;
        this.completeCourse = completeCourse;
        this.note = note;
    }

    public Student(String studentName, String gender, String round, Date courseStartDate, boolean courseStatus, String[] completeCourse, String note) {
        this.studentName = studentName;
        this.gender = gender;
        this.round = round;
        this.courseStartDate = courseStartDate;
        this.courseStatus = courseStatus;
        this.completeCourse = completeCourse;
        this.note = note;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getStudentName() {
        return studentName;
    }

    public void setStudentName(String studentName) {
        this.studentName = studentName;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getRound() {
        return round;
    }

    public void setRound(String round) {
        this.round = round;
    }

    public Date getCourseStartDate() {
        return courseStartDate;
    }

    public void setCourseStartDate(Date courseStartDate) {
        this.courseStartDate = courseStartDate;
    }

    public boolean isCourseStatus() {
        return courseStatus;
    }

    public void setCourseStatus(boolean courseStatus) {
        this.courseStatus = courseStatus;
    }

    public String[] getCompleteCourse() {
        return completeCourse;
    }

    public void setCompleteCourse(String[] completeCourse) {
        this.completeCourse = completeCourse;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    @Override
    public String toString() {
        return "Student{" + "id=" + id + ", studentName=" + studentName + ", gender=" + gender + ", round=" + round + ", courseStartDate=" + courseStartDate + ", courseStatus=" + courseStatus + ", completeCourse=" + completeCourse + ", note=" + note + '}';
    }
    
    
}
