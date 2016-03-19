import android.content.Context;
import java.util.concurrent.TimeUnit;

public final class brs
  extends ech
{
  private final int c;
  
  public brs(Context paramContext, bfd parambfd, String paramString, int paramInt)
  {
    super(paramContext, a(paramString), parambfd, paramString, TimeUnit.SECONDS.toMillis(10L));
    c = paramInt;
  }
  
  public static String a(String paramString)
  {
    String str = String.valueOf("SetTypingTask");
    paramString = String.valueOf(paramString);
    if (paramString.length() != 0) {
      return str.concat(paramString);
    }
    return new String(str);
  }
  
  protected dom<?, ?> b()
  {
    return new dte(a, b, c);
  }
  
  public String toString()
  {
    int i = c;
    return a("SetTypingTask", 16 + "type=" + i);
  }
}

/* Location:
 * Qualified Name:     brs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */