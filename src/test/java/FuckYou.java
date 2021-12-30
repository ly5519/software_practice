import com.team.pojo.Course;
import com.team.pojo.Student;
import com.team.service.CourseService;
import com.team.service.StudentService;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * Data 2021-12-30 11:41
 *
 * @author Liu_Yan
 */
public class FuckYou {

  @Test
  public void fuckEmpty() {
    ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
    CourseService bean = context.getBean("courseService", CourseService.class);

    for (Course course : bean.SelectCourseByProperties("计算机 必修")) {
      System.out.println(course);
    }


  }
}
