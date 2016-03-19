import android.os.Build.VERSION;

public final class fb
{
  public static final fc a = new fc();
  
  static
  {
    int i = Build.VERSION.SDK_INT;
    if (i >= 15)
    {
      a = new fd((byte)0);
      return;
    }
    if (i >= 11)
    {
      a = new fd();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     fb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */