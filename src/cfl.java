import android.telephony.PhoneStateListener;
import com.google.android.apps.hangouts.hangout.IncomingRing;

final class cfl
  extends PhoneStateListener
{
  cfl(cfc paramcfc) {}
  
  public void onCallStateChanged(int paramInt, String paramString)
  {
    if (paramInt == 2)
    {
      if (a.q != null) {
        a.q.b(1006);
      }
      paramString = IncomingRing.b;
      if (paramString != null) {
        paramString.n();
      }
    }
  }
}

/* Location:
 * Qualified Name:     cfl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */