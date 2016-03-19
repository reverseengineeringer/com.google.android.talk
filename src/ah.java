import android.os.Build.VERSION;

public final class ah
{
  public static ai a = new gbi();
  
  static
  {
    if (Build.VERSION.SDK_INT >= 12)
    {
      a = new hvu();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     ah
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */