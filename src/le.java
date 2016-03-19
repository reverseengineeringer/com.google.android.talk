import android.os.Build.VERSION;

public final class le
{
  public static final li a = new li();
  
  static
  {
    if (Build.VERSION.SDK_INT >= 14)
    {
      a = new lh();
      return;
    }
    if (Build.VERSION.SDK_INT >= 11)
    {
      a = new lg();
      return;
    }
    if (Build.VERSION.SDK_INT >= 8)
    {
      a = new lf();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     le
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */