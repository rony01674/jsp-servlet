package jsf.daoImplementation;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import jsf.dao.StudentDao;
import jsf.model.Student;

/**
 *
 * @author Asaduzzaman Rony
 */
public class StudentsDaoImple implements StudentDao {

    List<Student> list = new ArrayList<>();

    public StudentsDaoImple() {
        list.add(new Student(1, "Rony", "Male", "Round-39", new Date(), true,
                new String[]{"HTML", "JAVA", "Swing"}, "OK"));
    }

    @Override
    public void add(Student student) {
        list.add(student);
    }

    @Override
    public List<Student> getStudents() {
        return list;
    }

}
