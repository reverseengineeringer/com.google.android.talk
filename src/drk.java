import java.io.Serializable;
import java.util.Calendar;

public final class drk
  implements Serializable
{
  private static final long serialVersionUID = 1L;
  public String a;
  public String b;
  public int c;
  public Calendar d;
  public Calendar e;
  
  public static Calendar a(jan paramjan)
  {
    if (paramjan == null) {
      return Calendar.getInstance();
    }
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.set(aal.a(c, 0), aal.a(b, 0), aal.a(a, 0));
    return localCalendar;
  }
}

/* Location:
 * Qualified Name:     drk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */