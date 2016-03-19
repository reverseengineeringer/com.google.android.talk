package com.google.android.apps.hangouts.hangout;

import aal;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.os.PowerManager;
import android.os.PowerManager.WakeLock;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Base64;
import bfd;
import cfc;
import cgs;
import cgu;
import cgw;
import chi;
import chj;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;
import czb;
import dvd;
import eaw;
import ekq;
import ezc;
import ezi;
import haw;
import hax;
import hba;
import hbs;
import hbw;
import ilh;
import itg;
import ith;
import itj;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kkp;
import lyg;
import lyi;

public final class IncomingInviteService
  extends eaw
{
  public static PowerManager.WakeLock a;
  private static final long f = TimeUnit.SECONDS.toMillis(15L);
  private static final Object g = new Object();
  
  private static cgs a(ith paramith, bfd parambfd)
  {
    int i = ezc.a(d);
    ezi.a("Babel_IncomingInviteSvc", "Using start context hangout type=%d", new Object[] { Integer.valueOf(i) });
    parambfd = new cgu(parambfd.a(), i).a(aal.a(K, 1)).e(a);
    if (!TextUtils.isEmpty(z))
    {
      parambfd.a("conversation");
      parambfd.b(z);
    }
    if (!TextUtils.isEmpty(q)) {
      parambfd.h(q);
    }
    return parambfd.a();
  }
  
  private static itg a(Intent paramIntent)
  {
    String str = paramIntent.getStringExtra("notification");
    if (str == null)
    {
      ezi.d("Babel_IncomingInviteSvc", "Missing HangoutInviteNotification: %s", new Object[] { paramIntent });
      return null;
    }
    paramIntent = Base64.decode(str, 0);
    try
    {
      paramIntent = (itg)lyi.b(new itg(), paramIntent, paramIntent.length);
      return paramIntent;
    }
    catch (lyg paramIntent)
    {
      ezi.d("Babel_IncomingInviteSvc", "Invalid BatchCommand message received", new Object[0]);
    }
    return null;
  }
  
  public static void a(Context paramContext)
  {
    a.acquire();
    ((hba)ilh.a(paramContext, hba.class)).a().a(3017).d();
  }
  
  private static void a(bfd parambfd, itg paramitg, int paramInt)
  {
    kkp localkkp = new kkp();
    if (paramitg != null)
    {
      a = a;
      if (b != null) {
        b = b.a;
      }
    }
    c = Long.valueOf(System.currentTimeMillis() * 1000L);
    e = Integer.valueOf(paramInt);
    RealTimeChatService.a(parambfd, localkkp);
  }
  
  public static void b(Context paramContext)
  {
    a.release();
    ((hba)ilh.a(paramContext, hba.class)).a().a(3018).d();
  }
  
  public static boolean b()
  {
    synchronized (g)
    {
      if (a == null)
      {
        ezi.b("Babel_IncomingInviteSvc", "initializing wakelock", new Object[0]);
        a = ((PowerManager)aal.oJ.getSystemService("power")).newWakeLock(1, "babel_hoinv");
        return true;
      }
      return false;
    }
  }
  
  public boolean J_()
  {
    if (super.J_())
    {
      a(getApplicationContext());
      return true;
    }
    return false;
  }
  
  protected int a()
  {
    return (int)f;
  }
  
  public void d()
  {
    super.d();
    b(getApplicationContext());
  }
  
  protected void e()
  {
    super.e();
    if (a.isHeld())
    {
      ezi.d("Babel_IncomingInviteSvc", "Wake lock held when shutting down.", new Object[0]);
      Context localContext = getApplicationContext();
      ((hba)ilh.a(localContext, hba.class)).a().a(3016).d();
      b(localContext);
      hbs.b("Expected condition to be false", a.isHeld());
    }
  }
  
  public IBinder onBind(Intent paramIntent)
  {
    return null;
  }
  
  public void onCreate()
  {
    super.onCreate();
    IncomingRing.b(getPackageName());
    IncomingRing.o();
  }
  
  public int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2)
  {
    ezi.b("Babel_IncomingInviteSvc", "onStartCommand with intent %s %s", new Object[] { paramIntent, paramIntent.getAction() });
    if (b())
    {
      ezi.b("Babel_IncomingInviteSvc", "acquiring wakelock in onStartCommand %s %s", new Object[] { paramIntent, paramIntent.getAction() });
      a(getApplicationContext());
    }
    hbs.a("Expected condition to be true", a.isHeld());
    a(paramInt2);
    hbs.b("Expected non-null", paramIntent);
    ezi.c("Babel_IncomingInviteSvc", "Hangout Invitation Receiver got invitation GCM", new Object[0]);
    Object localObject3 = dvd.a(czb.a(paramIntent.getStringExtra("focus_account_id")));
    if (paramIntent.getStringExtra("id") == null)
    {
      ezi.a("Babel_IncomingInviteSvc", "Missing hangoutInviteId", new Object[0]);
      a((bfd)localObject3, null, 2);
      paramInt1 = 1;
    }
    ith localith;
    cgs localcgs;
    Object localObject1;
    Object localObject2;
    itj localitj;
    String str;
    long l1;
    for (;;)
    {
      if (paramInt1 != 0) {
        b(getApplicationContext());
      }
      d();
      return 2;
      itg localitg = a(paramIntent);
      if (localitg == null)
      {
        ezi.a("Babel_IncomingInviteSvc", "Ignoring null hangoutInviteNotification", new Object[0]);
        a((bfd)localObject3, null, 2);
        paramInt1 = 1;
      }
      else
      {
        localith = b;
        localcgs = a(localith, (bfd)localObject3);
        if (d == null)
        {
          ezi.a("Babel_IncomingInviteSvc", "Ignoring hangoutInviteNotification without any command", new Object[0]);
          a((bfd)localObject3, localitg, 2);
          paramInt1 = 1;
        }
        else
        {
          if (aal.a(d, 0) == 1)
          {
            ezi.a("Babel_IncomingInviteSvc", "Ignoring due to dismiss", new Object[0]);
            paramIntent = b;
            ezi.c("Babel_IncomingInviteSvc", "Got hangoutInviteNotification DISMISS: reason: %s HangoutId: %s", new Object[] { g, a });
            paramIntent = a(paramIntent, (bfd)localObject3);
            paramInt1 = aal.a(g, 0);
            localObject1 = ilh.c(this, chj.class).iterator();
            while (((Iterator)localObject1).hasNext())
            {
              localObject2 = (chj)((Iterator)localObject1).next();
              if (((chj)localObject2).a(this, ((bfd)localObject3).g(), paramIntent, paramInt1)) {
                ezi.c("Babel_IncomingInviteSvc", "Hangout ringing cancelled by handler: %s", new Object[] { localObject2 });
              }
            }
            for (;;)
            {
              paramInt1 = 1;
              break;
              localObject1 = IncomingRing.b;
              if ((localObject1 != null) && (((IncomingRing)localObject1).d().equals(paramIntent)))
              {
                ezi.c("Babel_IncomingInviteSvc", "Cancelling hangout ringing.", new Object[0]);
                hbs.a("Expected null", paramIntent.n());
                ((IncomingRing)localObject1).m();
              }
              else
              {
                localObject1 = cfc.a().r();
                if ((paramInt1 == 3) && (localObject1 != null) && (((cgw)localObject1).e().equals(paramIntent)))
                {
                  paramInt1 = ((cgw)localObject1).H();
                  if (((cgw)localObject1).H() == 0)
                  {
                    ezi.c("Babel_IncomingInviteSvc", "Ending hangout because inviter canceled and hangout is empty.", new Object[0]);
                    ((cgw)localObject1).b(1009);
                  }
                  ezi.c("Babel_IncomingInviteSvc", "Ignoring canceled notification because %d remote end points are already connected.", new Object[] { Integer.valueOf(paramInt1) });
                }
                else
                {
                  ezi.c("Babel_IncomingInviteSvc", "Ignoring dismiss command because no matching ring activity or hangout found.", new Object[0]);
                }
              }
            }
          }
          localitj = o;
          if (localitj == null)
          {
            ezi.a("Babel_IncomingInviteSvc", "Ignoring hangoutStartContext without invitation", new Object[0]);
            a((bfd)localObject3, localitg, 2);
            paramInt1 = 1;
          }
          else
          {
            str = b;
            if ((TextUtils.isEmpty(str)) || (a == null))
            {
              ezi.a("Babel_IncomingInviteSvc", "Ignoring hangoutStartContext without invitation data", new Object[0]);
              a((bfd)localObject3, localitg, 2);
              paramInt1 = 1;
            }
            else
            {
              paramInt1 = aal.a(c, 0);
              if ((paramInt1 != 0) && (paramInt1 != 1) && (paramInt1 != 2))
              {
                ezi.d("Babel_IncomingInviteSvc", "Ignoring unsupported InvitationType %s", new Object[] { c });
                a((bfd)localObject3, localitg, 4);
                paramInt1 = 1;
              }
              else if (localcgs.n() == null)
              {
                ezi.a("Babel_IncomingInviteSvc", "Ignoring null invitee nick", new Object[0]);
                a((bfd)localObject3, localitg, 2);
                paramInt1 = 1;
              }
              else if (!((bfd)localObject3).T())
              {
                ezi.a("Babel_IncomingInviteSvc", "Ignoring calling not enabled", new Object[0]);
                a((bfd)localObject3, localitg, 2);
                paramInt1 = 1;
              }
              else
              {
                if (!TextUtils.isEmpty(z)) {}
                for (localObject1 = z;; localObject1 = null)
                {
                  l1 = aal.a(a, 0L);
                  long l2 = aal.a(a, 0L);
                  if (aal.a(e, 0) == 0) {
                    break label845;
                  }
                  hbw.a(new chi(this, (bfd)localObject3, localitg, str, (String)localObject1, l1, l2 * 1000L));
                  paramInt1 = 0;
                  break;
                }
                label845:
                if (aal.a(h, false)) {}
                for (localObject2 = g;; localObject2 = null)
                {
                  if (!str.equals("105250506097979753968")) {
                    break label959;
                  }
                  Iterator localIterator = ilh.c(this, chj.class).iterator();
                  chj localchj;
                  do
                  {
                    if (!localIterator.hasNext()) {
                      break;
                    }
                    localchj = (chj)localIterator.next();
                  } while (!localchj.a(this, this, (bfd)localObject3, localcgs, (String)localObject2, l1));
                  ezi.a("Babel_IncomingInviteSvc", "Incoming PSTN ring handled by handler: %s", new Object[] { localchj });
                  paramInt1 = 1;
                  break;
                }
                label959:
                if ((cfc.a().c()) && (cfc.a().r() != null)) {
                  paramInt1 = 1;
                }
                for (;;)
                {
                  if (paramInt1 == 0) {
                    break label1045;
                  }
                  ezi.a("Babel_IncomingInviteSvc", "Downgrading ring to ding because of ongoing ring/call", new Object[0]);
                  a((bfd)localObject3, localitg, 1);
                  paramInt1 = 1;
                  break;
                  if (IncomingRing.b != null) {
                    paramInt1 = 1;
                  } else if (((TelephonyManager)getSystemService("phone")).getCallState() != 0) {
                    paramInt1 = 1;
                  } else {
                    paramInt1 = 0;
                  }
                }
                label1045:
                if (((ekq)ilh.a(aal.oJ, ekq.class)).c(((bfd)localObject3).g())) {
                  break;
                }
                ezi.a("Babel_IncomingInviteSvc", "Downgrading ring to ding because of user does not want to be notified", new Object[0]);
                a((bfd)localObject3, localitg, 9);
                paramInt1 = 1;
              }
            }
          }
        }
      }
    }
    ezi.a("Babel_IncomingInviteSvc", "Got ring hangoutInviteNotification: InviterGaiaId: %s HangoutId: %s", new Object[] { str, a });
    if (aal.a(h, false)) {}
    for (localObject3 = null;; localObject3 = d)
    {
      IncomingRing.a(this, l1, localcgs, str, (String)localObject1, (String)localObject2, (String)localObject3, paramIntent.getStringExtra("inviter_jid"));
      paramInt1 = 1;
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.hangout.IncomingInviteService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */