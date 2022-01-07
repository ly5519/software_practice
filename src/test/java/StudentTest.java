import com.team.pojo.Student;
import com.team.service.StudentService;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.Date;

/**
 * Data 2021-12-31 22:57
 *
 * @author Liu_Yan
 */
public class StudentTest {
    ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
    StudentService bean = context.getBean("studentService", StudentService.class);

    @Test
    public void testSelect() {
        for (Student student : bean.selectAll()) {
            System.out.println(student);
        }
    }

    @Test
    public void addStudent() {
        bean.addStudent(new Student(2000, "good", "male", 200, "drfasdf", "asdasas", 10, new Date()));
    }

    @Test
    public void updateStudent() {
        bean.updateStudent(new Student(2000, "fuck", "male", 200, "drfasdf", "asdasas", 10, new Date()));
    }

    @Test
    public void deleteStudentById() {
        bean.deleteStudentById(2000);
    }

    @Test
    public void selectOneStudent() {
        System.out.println(bean.selectStudentById(1000));
    }
}
