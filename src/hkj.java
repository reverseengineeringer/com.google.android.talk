import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import java.util.Set;

final class hkj
  extends BroadcastReceiver
{
  hkj(hjz paramhjz) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    int i;
    if (paramIntent.getAction().equals("android.intent.action.HEADSET_PLUG"))
    {
      i = paramIntent.getIntExtra("state", 0);
      boolean bool = isInitialStickyBroadcast();
      hlk.a(3, "vclib", 81 + "WiredHeadsetReceiver.onReceive: state=" + i + ", isInitialStickyBroadcast=" + bool);
    }
    switch (i)
    {
    default: 
      return;
    case 0: 
      a.i.remove(hkd.d);
      if (a.l()) {
        a.i.add(hkd.b);
      }
      a.i.add(hkd.a);
      if (a.h == hke.c)
      {
        a.a(a.g);
        return;
      }
      a.e();
      return;
    }
    a.i.add(hkd.d);
    a.i.remove(hkd.b);
    a.i.remove(hkd.a);
    a.a(hkd.d);
  }
}

/* Location:
 * Qualified Name:     hkj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */