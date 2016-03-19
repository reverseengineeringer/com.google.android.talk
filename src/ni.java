import android.os.Build.VERSION;
import java.util.List;

public final class ni
{
  private static final nj a = new nj();
  private final Object b;
  
  static
  {
    if (Build.VERSION.SDK_INT >= 19)
    {
      a = new nl();
      return;
    }
    if (Build.VERSION.SDK_INT >= 16)
    {
      a = new nk();
      return;
    }
  }
  
  public ni()
  {
    b = a.a(this);
  }
  
  public ni(Object paramObject)
  {
    b = paramObject;
  }
  
  public static my b()
  {
    return null;
  }
  
  public static boolean c()
  {
    return false;
  }
  
  public static List<my> d(String paramString, int paramInt)
  {
    return null;
  }
  
  public static my e()
  {
    return null;
  }
  
  public Object a()
  {
    return b;
  }
}

/* Location:
 * Qualified Name:     ni
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */