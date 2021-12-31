import com.team.pojo.Major;
import com.team.service.CourseService;
import com.team.service.MajorService;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * Data 2021-12-31 21:44
 *
 * @author Liu_Yan
 */
public class MajorTest {
  ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
  MajorService bean = context.getBean("majorService", MajorService.class);

  @Test
  public void selectAll() {
    for (Major major : bean.selectAll()) {
      System.out.println(major);
    }
  }

  @Test
  public void selectMajorById() {
    System.out.println(bean.selectMajorById(1));
  }

  @Test
  public void insertMajor() {
    bean.insertMajor(new Major(200, "美术"));
  }


  @Test
  public void updateMajor() {
    bean.updateMajor(new Major(200, "体育"));
  }


  @Test
  public void deleteMajorById() {
    bean.deleteMajorById(102);

  }


}
