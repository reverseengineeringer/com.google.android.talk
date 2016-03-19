import android.content.Context;
import java.util.concurrent.TimeUnit;

public final class brr
  extends ech
{
  private final boolean c;
  private final int d;
  
  public brr(Context paramContext, bfd parambfd, String paramString, boolean paramBoolean, int paramInt)
  {
    super(paramContext, a(paramString), parambfd, paramString, TimeUnit.SECONDS.toMillis(30L));
    c = paramBoolean;
    d = paramInt;
  }
  
  public static String a(String paramString)
  {
    String str = String.valueOf("SetFocusTask");
    paramString = String.valueOf(paramString);
    if (paramString.length() != 0) {
      return str.concat(paramString);
    }
    return new String(str);
  }
  
  protected dom<?, ?> b()
  {
    return new dtd(a, b, c, d);
  }
  
  public String toString()
  {
    boolean bool = c;
    int i = d;
    return a("SetFocusTask", 34 + "focused=" + bool + ", timeout=" + i);
  }
}

/* Location:
 * Qualified Name:     brr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */