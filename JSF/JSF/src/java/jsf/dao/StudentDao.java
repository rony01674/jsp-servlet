package jsf.dao;

import java.util.List;
import jsf.model.Student;

/**
 *
 * @author Asaduzzaman Rony
 */
public interface StudentDao {

    void add(Student student);

    List<Student> getStudents();
}
