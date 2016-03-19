import java.util.Locale;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicLong;

public final class lbm
{
  private String a = null;
  private Boolean b = null;
  private Integer c = null;
  private Thread.UncaughtExceptionHandler d = null;
  private ThreadFactory e = null;
  
  static String a(String paramString, Object... paramVarArgs)
  {
    return String.format(Locale.ROOT, paramString, paramVarArgs);
  }
  
  public lbm a()
  {
    b = Boolean.valueOf(true);
    return this;
  }
  
  public lbm a(String paramString)
  {
    a(paramString, new Object[] { Integer.valueOf(0) });
    a = paramString;
    return this;
  }
  
  public lbm a(ThreadFactory paramThreadFactory)
  {
    e = ((ThreadFactory)fii.a(paramThreadFactory));
    return this;
  }
  
  public ThreadFactory b()
  {
    String str = a;
    Boolean localBoolean = b;
    Integer localInteger = c;
    Thread.UncaughtExceptionHandler localUncaughtExceptionHandler = d;
    ThreadFactory localThreadFactory;
    if (e != null)
    {
      localThreadFactory = e;
      if (str == null) {
        break label72;
      }
    }
    label72:
    for (AtomicLong localAtomicLong = new AtomicLong(0L);; localAtomicLong = null)
    {
      return new lbn(localThreadFactory, str, localAtomicLong, localBoolean, localInteger, localUncaughtExceptionHandler);
      localThreadFactory = Executors.defaultThreadFactory();
      break;
    }
  }
}

/* Location:
 * Qualified Name:     lbm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */