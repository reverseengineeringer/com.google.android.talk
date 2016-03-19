import android.content.Context;
import com.google.android.apps.hangouts.hangout.StressMode;
import com.google.android.apps.hangouts.service.GcmStateReceiver;

final class dja
  extends djc
{
  dja(diu paramdiu)
  {
    super(paramdiu);
  }
  
  boolean a()
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (aal.a(a.e, "babel_gcm_change_notification", false))
    {
      bool1 = bool2;
      if (!GcmStateReceiver.a) {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  epa b()
  {
    return new epb(a.e).a(a.e.getString(StressMode.cg)).b();
  }
}

/* Location:
 * Qualified Name:     dja
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */