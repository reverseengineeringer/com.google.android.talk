import android.os.Build.VERSION;

public final class ev
{
  static final ew a = new ew();
  
  static
  {
    if (Build.VERSION.SDK_INT >= 16)
    {
      a = new ex();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     ev
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */