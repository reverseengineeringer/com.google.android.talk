import android.os.Build.VERSION;

public final class mns
{
  public static final mnv a = new mnt();
  
  static
  {
    if (Build.VERSION.SDK_INT >= 22)
    {
      a = new mnu();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     mns
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */