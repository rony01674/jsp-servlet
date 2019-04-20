package jsf.controller;

import java.util.List;
import javax.faces.bean.ManagedBean;
import jsf.dao.StudentDao;
import jsf.daoImplementation.StudentsDaoImple;
import jsf.model.Student;

/**
 *
 * @author User
 */
@ManagedBean
public class StudentController {

    private Student student;
    private List<Student> studentList;
    private StudentDao studentDao;

    public void saveStudent() {
        studentDao = new StudentsDaoImple();
        studentDao.add(student);
        System.out.println("Successfully saved");
    }

    public Student getStudent() {
        if (student == null) {
            student = new Student();
        }
        return student;
    }

    public void setStudent(Student student) {
        this.student = student;
    }

    public List<Student> getStudentList() {
        studentDao = new StudentsDaoImple();
        studentList = studentDao.getStudents();
        return studentList;
    }

    public void setStudentList(List<Student> studentList) {
        this.studentList = studentList;
    }

}
