import java.util.ArrayList;

/**
 * Data 2022-01-01 17:34
 *
 * @author Liu_Yan
 */
public class OtherTest {

  public static void main(String[] args) {

    ArrayList<Integer> list = new ArrayList<>();
    list.add(1);
    list.add(2);
    list.add(3);
    list.add(4);

    ArrayList<Integer> list1 = new ArrayList<>();
    list1.add(5);
    list1.add(2);
    list1.add(7);
    list1.add(9);


    list.removeAll(list1);

    System.out.println(list);
  }
}
