import com.team.service.TestService;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * Data 2021-12-22 10:31
 *
 * @author Liu_Yan
 */
public class TestMapper {

  @Test
  public void test() {
    ApplicationContext con = new ClassPathXmlApplicationContext("applicationContext.xml");
    TestService bean = con.getBean("testService", TestService.class);


    StringBuilder builder = new StringBuilder();


    for (com.team.pojo.Test test : bean.printAll()) {
      builder.append(test);
    }

    System.out.println("hello");
    System.out.println(builder);

  }

}
