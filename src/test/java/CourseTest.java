import com.team.pojo.Course;
import com.team.service.CourseService;
import javafx.application.Application;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * Data 2021-12-31 21:07
 *
 * @author Liu_Yan
 */
public class CourseTest {
  ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
  CourseService bean = context.getBean("courseService", CourseService.class);

  @Test
  public void SelectCourseByProperties() {
    for (Course course : bean.SelectCourseByProperties("计算机 必修")) {
      System.out.println(course);
    }
  }

  @Test
  public void selectCourseById() {
    System.out.println(bean.selectCourseById(5));
  }

  @Test
  public void insertCourse() {
    bean.insertCourse(new Course(101, "hello", 3, 10.0, "hello", "emm", 100, 5, "no"));

  }

  @Test
  public void updateCourse() {
    bean.updateCourse(new Course(100, "hello", 3, 10.0, "hello", "emm", 100, 5, "yes"));
  }


  @Test
  public void deleteCourseById() {
    bean.deleteCourseById(100);
  }


}
