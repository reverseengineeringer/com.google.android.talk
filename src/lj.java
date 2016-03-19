import android.os.Build.VERSION;

public final class lj
{
  public static final ll a = new ll();
  
  static
  {
    int i = Build.VERSION.SDK_INT;
    if (i >= 21)
    {
      a = new lk((byte)0, (byte)0);
      return;
    }
    if (i >= 18)
    {
      a = new lk('\000');
      return;
    }
    if (i >= 14)
    {
      a = new lk((byte)0);
      return;
    }
    if (i >= 11)
    {
      a = new lk();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     lj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */