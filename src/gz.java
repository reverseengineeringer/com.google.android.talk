import android.os.Build.VERSION;

public final class gz
{
  static final ha a = new hb();
  
  static
  {
    int i = Build.VERSION.SDK_INT;
    if (i >= 21)
    {
      a = new hd();
      return;
    }
    if (i >= 14)
    {
      a = new hc();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     gz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */