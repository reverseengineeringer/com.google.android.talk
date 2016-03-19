import android.os.Build.VERSION;

public final class mv
{
  public static final mx a = new mx();
  
  static
  {
    if (Build.VERSION.SDK_INT >= 14)
    {
      a = new mw();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     mv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */