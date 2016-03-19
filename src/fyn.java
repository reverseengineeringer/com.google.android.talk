import android.content.Context;
import java.util.regex.Pattern;

public final class fyn
{
  private static fyn a;
  private static final Pattern c = Pattern.compile("/topics/[a-zA-Z0-9-_.~%]{1,900}");
  private gar b;
  
  private fyn(Context paramContext)
  {
    b = gar.b(paramContext);
  }
  
  public static fyn a(Context paramContext)
  {
    try
    {
      if (a == null) {
        a = new fyn(paramContext);
      }
      paramContext = a;
      return paramContext;
    }
    finally {}
  }
}

/* Location:
 * Qualified Name:     fyn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */