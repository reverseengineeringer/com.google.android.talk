import android.os.Build.VERSION;

public final class jn
{
  public static final jo a = new jp();
  
  static
  {
    if (Build.VERSION.SDK_INT >= 17)
    {
      a = new jq();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     jn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */