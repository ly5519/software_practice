
import com.team.service.SwCService;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * Data 2021-12-31 23:09
 *
 * @author Liu_Yan
 */
public class SwCTest {
  ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
  SwCService bean = context.getBean("swcService", SwCService.class);



  @Test
  public void updatedCourse() {
    bean.updatedCourse(1000, 1, 95);
  }

}
