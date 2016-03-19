import android.content.IntentSender.SendIntentException;
import com.google.android.gms.common.ConnectionResult;
import java.util.List;

final class fkf
  implements Runnable
{
  private final int b;
  private final ConnectionResult c;
  
  public fkf(fkc paramfkc, int paramInt, ConnectionResult paramConnectionResult)
  {
    b = paramInt;
    c = paramConnectionResult;
  }
  
  public void run()
  {
    if (c.a()) {
      try
      {
        int i = a.getActivity().C_().d().indexOf(a);
        c.a(a.getActivity(), (i + 1 << 16) + 1);
        return;
      }
      catch (IntentSender.SendIntentException localSendIntentException)
      {
        fkc.a(a);
        return;
      }
    }
    if (fhr.b(c.c()))
    {
      fhr.a(c.c(), a.getActivity(), a, 2, a);
      return;
    }
    fkc.a(a, b, c);
  }
}

/* Location:
 * Qualified Name:     fkf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */