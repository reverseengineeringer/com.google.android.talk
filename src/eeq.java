import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.NetworkInfo.State;
import android.os.Build.VERSION;
import android.os.SystemClock;
import com.google.android.apps.hangouts.requestwriter.RequestWriter;

public final class eeq
  extends BroadcastReceiver
  implements Runnable
{
  private final eng a;
  private long b = 0L;
  private volatile long c;
  private final RequestWriter d;
  private final ilh e;
  
  public eeq(ilh paramilh, RequestWriter paramRequestWriter)
  {
    d = paramRequestWriter;
    e = paramilh;
    a = new eng();
    c = ((bdp)e.a(bdp.class)).a("babel_retry_on_network_connectivity_ms", 300000L);
    aal.a(aal.oJ).a(this);
  }
  
  public void onReceive(Context arg1, Intent arg2)
  {
    if (!"android.net.conn.CONNECTIVITY_CHANGE".equals(???.getAction())) {}
    int i;
    label109:
    label300:
    do
    {
      for (;;)
      {
        return;
        Object localObject1 = (ConnectivityManager)???.getSystemService("connectivity");
        if (Build.VERSION.SDK_INT >= 17) {
          i = ???.getIntExtra("networkType", -1);
        }
        for (;;)
        {
          if (i == 2)
          {
            synchronized (ene.b)
            {
              if (ba > 0) {
                break label109;
              }
              ezi.c("Babel_SMS", "MmsSendReceiveManager: no sender, skip checking", new Object[0]);
              return;
            }
            Object localObject2 = (NetworkInfo)???.getParcelableExtra("networkInfo");
            if (localObject2 != null)
            {
              i = ((NetworkInfo)localObject2).getType();
            }
            else
            {
              i = -1;
              continue;
              ??? = ((ConnectivityManager)localObject1).getNetworkInfo(2);
              if (??? == null) {
                break;
              }
              localObject2 = String.valueOf(???);
              ezi.c("Babel_SMS", String.valueOf(localObject2).length() + 47 + "MmsSendReceiveManager: MMS connectivity change " + (String)localObject2, new Object[0]);
              if ("2GVoiceCallEnded".equals(???.getReason()))
              {
                try
                {
                  synchronized (ene.b)
                  {
                    ene.a(???);
                    return;
                  }
                  if (???.getState() != NetworkInfo.State.CONNECTED) {
                    break label300;
                  }
                }
                catch (adc ???)
                {
                  ??? = String.valueOf(???);
                  ezi.e("Babel_SMS", String.valueOf(???).length() + 53 + "MmsSendReceiveManager.ConnectivityBroadcastReceiver: " + ???, new Object[0]);
                  return;
                }
              }
              else
              {
                ??? = eol.a(???, ???.getExtraInfo());
                if (!???.b()) {
                  break;
                }
                synchronized (ene.b)
                {
                  localObject1 = ene.b;
                  enh.a(true, null);
                  bd = ???;
                  return;
                }
              }
              if ((???.getState() == NetworkInfo.State.DISCONNECTED) && (!ene.a((ConnectivityManager)localObject1))) {
                synchronized (ene.b)
                {
                  ??? = ene.b;
                  enh.a(false, new end(123, "Mobile data is disabled and can not connect MMS"));
                  bd = null;
                  return;
                }
              }
              if (!???.isAvailable()) {
                break;
              }
              try
              {
                synchronized (ene.b)
                {
                  ene.a(???);
                  return;
                }
                if (b + c >= SystemClock.elapsedRealtime()) {
                  break;
                }
              }
              catch (adc ???)
              {
                ??? = String.valueOf(???);
                ezi.e("Babel_SMS", String.valueOf(???).length() + 53 + "MmsSendReceiveManager.ConnectivityBroadcastReceiver: " + ???, new Object[0]);
                return;
              }
            }
          }
        }
      }
      ??? = (NetworkInfo)???.getParcelableExtra("networkInfo");
    } while (!???.isConnected());
    ??? = String.valueOf(???.getDetailedState());
    new StringBuilder(String.valueOf(???).length() + 43).append("Connected Type: ").append(i).append(" detailedState: ").append(???);
    d.a(500L);
    b = SystemClock.elapsedRealtime();
  }
  
  public void run()
  {
    c = ((bdp)e.a(bdp.class)).a("babel_retry_on_network_connectivity_ms", 300000L);
  }
}

/* Location:
 * Qualified Name:     eeq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */