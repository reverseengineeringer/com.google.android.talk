import android.os.Build.VERSION;
import android.view.LayoutInflater;

public final class jg
{
  static final jh a = new jh();
  
  static
  {
    int i = Build.VERSION.SDK_INT;
    if (i >= 21)
    {
      a = new jj();
      return;
    }
    if (i >= 11)
    {
      a = new ji();
      return;
    }
  }
  
  public static void a(LayoutInflater paramLayoutInflater, jm paramjm)
  {
    a.a(paramLayoutInflater, paramjm);
  }
}

/* Location:
 * Qualified Name:     jg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */