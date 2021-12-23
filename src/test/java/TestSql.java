import com.team.service.TestService;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * Data 2021-12-23 11:03
 *
 * @author Liu_Yan
 */
public class TestSql {

  @Test
  public void testSql() {
    ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
    TestService bean = context.getBean("testService", TestService.class);

    for (com.team.pojo.Test test : bean.printAll()) {
      System.out.println(test);
    }

  }
}
