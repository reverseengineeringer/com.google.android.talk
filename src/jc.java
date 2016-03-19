import android.os.Build.VERSION;

public final class jc
{
  public static final jf a = new jf();
  
  static
  {
    if (Build.VERSION.SDK_INT >= 11)
    {
      a = new je();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     jc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */