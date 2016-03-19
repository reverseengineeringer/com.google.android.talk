import android.os.Build.VERSION;

public final class oa
{
  public static final oc a = new oc();
  
  static
  {
    int i = Build.VERSION.SDK_INT;
    if (i >= 23)
    {
      a = new ob();
      return;
    }
    if (i >= 21)
    {
      a = new od();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     oa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */