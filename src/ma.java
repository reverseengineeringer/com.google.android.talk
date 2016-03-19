import android.os.Build.VERSION;

public final class ma
{
  static final mb a = new mb();
  
  static
  {
    int i = Build.VERSION.SDK_INT;
    if (i >= 21)
    {
      a = new mc();
      return;
    }
    if (i >= 19)
    {
      a = new mb((byte)0);
      return;
    }
    if (i >= 14)
    {
      a = new mb('\000');
      return;
    }
  }
}

/* Location:
 * Qualified Name:     ma
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */