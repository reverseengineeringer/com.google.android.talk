import android.os.Build.VERSION;

public final class gl
{
  public static final gn a = new gm();
  
  static
  {
    if (Build.VERSION.SDK_INT >= 16)
    {
      a = new gq();
      return;
    }
    if (Build.VERSION.SDK_INT >= 13)
    {
      a = new gp();
      return;
    }
    if (Build.VERSION.SDK_INT >= 8)
    {
      a = new go();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     gl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */