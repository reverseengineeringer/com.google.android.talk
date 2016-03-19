import android.os.Build.VERSION;

public final class iy
{
  public static final iz a = new ja();
  
  static
  {
    if (Build.VERSION.SDK_INT >= 17)
    {
      a = new jb();
      return;
    }
  }
  
  public static int a(int paramInt1, int paramInt2)
  {
    return a.a(paramInt1, paramInt2);
  }
}

/* Location:
 * Qualified Name:     iy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */