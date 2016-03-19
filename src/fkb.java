import android.content.IntentSender.SendIntentException;
import com.google.android.gms.common.ConnectionResult;
import java.util.List;

final class fkb
  implements Runnable
{
  private final int b;
  private final ConnectionResult c;
  
  public fkb(fjz paramfjz, int paramInt, ConnectionResult paramConnectionResult)
  {
    b = paramInt;
    c = paramConnectionResult;
  }
  
  public void run()
  {
    if ((!fjz.a(a)) || (fjz.b(a))) {
      return;
    }
    fjz.c(a);
    fjz.a(a, b);
    fjz.a(a, c);
    if (c.a()) {
      try
      {
        int i = a.getActivity().C_().d().indexOf(a);
        c.a(a.getActivity(), (i + 1 << 16) + 1);
        return;
      }
      catch (IntentSender.SendIntentException localSendIntentException)
      {
        fjz.d(a);
        return;
      }
    }
    if (fhr.b(c.c()))
    {
      fhr.a(c.c(), a.getActivity(), a, 2, a);
      return;
    }
    fjz.a(a, b, c);
  }
}

/* Location:
 * Qualified Name:     fkb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */