import android.os.Build.VERSION;

public final class pv
{
  public static final py a = new py();
  
  static
  {
    int i = Build.VERSION.SDK_INT;
    if (i >= 18)
    {
      a = new px();
      return;
    }
    if (i >= 17)
    {
      a = new pw();
      return;
    }
    if (i >= 16)
    {
      a = new py((byte)0);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     pv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */