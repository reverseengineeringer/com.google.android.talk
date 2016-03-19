import android.os.Build.VERSION;

public final class ki
{
  public static final kl a = new kj();
  
  static
  {
    if (Build.VERSION.SDK_INT >= 19)
    {
      a = new kk();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     ki
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */