package com.google.android.apps.hangouts.realtimechat;

import aal;
import android.content.Context;
import android.content.Intent;
import android.os.SystemClock;
import android.text.TextUtils;
import awm;
import bfd;
import cfc;
import com.google.android.apps.hangouts.hangout.IncomingInviteService;
import com.google.android.apps.hangouts.serverupdate.ReceiveServerUpdateService;
import ctl;
import czb;
import dir;
import dml;
import dvd;
import dvp;
import ebq;
import eeb;
import exo;
import exr;
import ezi;
import ilh;
import imx;
import knq;

public class GcmIntentService
  extends eeb
{
  private static final boolean a = false;
  
  static
  {
    imx localimx = ezi.o;
  }
  
  public GcmIntentService()
  {
    super("GcmIntentService");
  }
  
  public GcmIntentService(String paramString)
  {
    super(paramString);
  }
  
  public static String a(Intent paramIntent)
  {
    return paramIntent.getStringExtra("proto");
  }
  
  public final void a(Intent paramIntent, knq<Intent> paramknq)
  {
    if (paramIntent == null) {}
    Object localObject1;
    Object localObject2;
    long l1;
    boolean bool1;
    int i;
    label252:
    label270:
    boolean bool2;
    for (;;)
    {
      try
      {
        ezi.e("Babel_GcmIntentService", "GcmIntentService.handleMessage called with null intent", new Object[0]);
        if (exo.b) {
          exo.d();
        }
        return;
      }
      catch (Throwable paramIntent)
      {
        dir.a(getApplicationContext());
        throw paramIntent;
      }
      if (paramIntent.getAction().equals("com.google.android.c2dm.intent.RECEIVE"))
      {
        if (a)
        {
          localObject1 = String.valueOf(paramIntent);
          localObject2 = String.valueOf("com.google.android.c2dm.intent.RECEIVE");
          new StringBuilder(String.valueOf(localObject1).length() + 15 + String.valueOf(localObject2).length()).append("handleMessage ").append((String)localObject1).append(" ").append((String)localObject2);
        }
        localObject1 = (ctl)ilh.b(getApplicationContext(), ctl.class);
        if ((localObject1 == null) || (!((ctl)localObject1).a()))
        {
          l1 = SystemClock.elapsedRealtime() * 1000L;
          localObject1 = paramIntent.getStringExtra("message_type");
          if (!TextUtils.equals((CharSequence)localObject1, "send_event")) {
            if (TextUtils.equals((CharSequence)localObject1, "deleted_messages"))
            {
              if (exo.b) {
                new exr().a("gcm_dirty_ping").b();
              }
              ezi.a("Babel_GcmIntentService", "got deleted_messages tickle from GCM", new Object[0]);
              RealTimeChatService.e();
            }
            else
            {
              localObject2 = paramIntent.getStringExtra("type");
              bool1 = TextUtils.equals((CharSequence)localObject2, "hangout");
              if ((localObject2 == null) || (!((String)localObject2).startsWith("call/"))) {
                break label1140;
              }
              i = 1;
              if (localObject2 == null) {
                break label1134;
              }
              if (!TextUtils.equals((CharSequence)localObject2, "babel:proto")) {
                break label1145;
              }
              break label1134;
              bool2 = TextUtils.equals((CharSequence)localObject2, "babel:synctickle");
              if (!bool1) {
                break label1151;
              }
              localObject1 = paramIntent.getStringExtra("focus_account_id");
              label292:
              if (!TextUtils.isEmpty((CharSequence)localObject1)) {
                break label468;
              }
              paramIntent = String.valueOf(localObject2);
              if (paramIntent.length() == 0) {
                break;
              }
              paramIntent = "gcm push received for empty recipient in type:".concat(paramIntent);
              label320:
              ezi.e("Babel_GcmIntentService", paramIntent, new Object[0]);
              aal.a(null, 1837);
              if (exo.b) {
                new exr().a("gcm_error_missing_participant").b();
              }
            }
          }
        }
      }
    }
    for (;;)
    {
      label361:
      localObject1 = paramIntent.getStringExtra("recipient");
      break label292;
      label468:
      label675:
      label725:
      label832:
      label930:
      label964:
      label979:
      label1134:
      label1140:
      label1145:
      label1151:
      do
      {
        paramIntent = String.valueOf("gcm push with unknown type = ");
        paramknq = String.valueOf(localObject2);
        if (paramknq.length() != 0) {}
        for (paramIntent = paramIntent.concat(paramknq);; paramIntent = new String(paramIntent))
        {
          ezi.e("Babel_GcmIntentService", paramIntent, new Object[0]);
          aal.a(null, 2139);
          if (!exo.b) {
            break;
          }
          new exr().a("gcm_error_unknown").b((String)localObject2).b();
          break;
        }
        paramIntent = new String("gcm push received for empty recipient in type:");
        break label320;
        czb localczb = czb.a((String)localObject1);
        localObject2 = dvd.a(localczb);
        if (localObject2 == null)
        {
          paramIntent = String.valueOf(ezi.b((String)localObject1));
          if (paramIntent.length() != 0) {}
          for (paramIntent = "gcm push received for invalid account: ".concat(paramIntent);; paramIntent = new String("gcm push received for invalid account: "))
          {
            ezi.e("Babel_GcmIntentService", paramIntent, new Object[0]);
            aal.a(null, 1838);
            if (exo.b) {
              new exr().a("gcm_error_unknown_participant").a(localczb).b();
            }
            RealTimeChatService.b((String)localObject1);
            break;
          }
        }
        if (dvd.d((bfd)localObject2))
        {
          if (ezi.a("Babel_GcmIntentService", 3))
          {
            paramIntent = String.valueOf(((bfd)localObject2).a());
            if (paramIntent.length() == 0) {
              break label675;
            }
          }
          for (paramIntent = "gcm push received for logged off account: ".concat(paramIntent);; paramIntent = new String("gcm push received for logged off account: "))
          {
            ezi.b("Babel_GcmIntentService", paramIntent, new Object[0]);
            if (exo.b) {
              new exr().a("gcm_error_logged_out_participant").a((bfd)localObject2).b();
            }
            ((awm)ilh.a(getApplicationContext(), awm.class)).c(((bfd)localObject2).g());
            break;
          }
        }
        if (a)
        {
          if (!bool1) {
            break label832;
          }
          localObject1 = String.valueOf(((bfd)localObject2).a());
          if (((String)localObject1).length() != 0) {
            "gcm hangout push received for account: ".concat((String)localObject1);
          }
        }
        else if (exo.b)
        {
          localObject1 = new exr();
          if (!bool1) {
            break label930;
          }
          ((exr)localObject1).a("gcm_video_ring");
        }
        long l2;
        for (;;)
        {
          ((exr)localObject1).a((bfd)localObject2).b();
          if (j == 0) {
            break label979;
          }
          localObject1 = paramIntent.getStringExtra("proto");
          l2 = paramIntent.getLongExtra("timestamp", 0L);
          i = ((bfd)localObject2).g();
          if (!dvp.y.b(i)) {
            break label964;
          }
          ReceiveServerUpdateService.a((String)localObject1, ((bfd)localObject2).g(), l2, l1, paramknq);
          break;
          new String("gcm hangout push received for account: ");
          break label725;
          if (j != 0)
          {
            localObject1 = String.valueOf(((bfd)localObject2).a());
            if (((String)localObject1).length() != 0)
            {
              "gcm heavy tickle push received for account: ".concat((String)localObject1);
              break label725;
            }
            new String("gcm heavy tickle push received for account: ");
            break label725;
          }
          if (!bool2) {
            break label725;
          }
          localObject1 = String.valueOf(((bfd)localObject2).a());
          if (((String)localObject1).length() != 0)
          {
            "gcm sync tickle push received for account: ".concat((String)localObject1);
            break label725;
          }
          new String("gcm sync tickle push received for account: ");
          break label725;
          if (j != 0) {
            ((exr)localObject1).a("gcm_heavy");
          } else if (bool2) {
            ((exr)localObject1).a("gcm_sync");
          }
        }
        RealTimeChatService.a((String)localObject1, (bfd)localObject2, l2, l1, paramknq);
        break;
        if (bool2)
        {
          RealTimeChatService.a(((bfd)localObject2).g(), false, ebq.a);
          break;
        }
        if (bool1)
        {
          if (dvd.d((bfd)localObject2))
          {
            paramIntent = String.valueOf(ezi.b(((bfd)localObject2).a()));
            if (paramIntent.length() != 0) {}
            for (paramIntent = "Hangout notification for account that is not setup yet: ".concat(paramIntent);; paramIntent = new String("Hangout notification for account that is not setup yet: "))
            {
              ezi.d("Babel_GcmIntentService", paramIntent, new Object[0]);
              break;
            }
          }
          IncomingInviteService.b();
          ezi.b("Babel_IncomingInviteSvc", "acquiring wakelock for startService %s %s", new Object[] { paramIntent, paramIntent.getAction() });
          paramknq = aal.oJ;
          IncomingInviteService.a(paramknq);
          paramIntent.setClass(paramknq, IncomingInviteService.class);
          paramknq.startService(paramIntent);
          break;
        }
        if (i == 0) {
          break;
        }
        cfc.a().a(paramIntent);
        break;
        int j = 1;
        break label270;
        i = 0;
        break label252;
        j = 0;
        break label270;
        if ((i != 0) || (j != 0)) {
          break label361;
        }
      } while (!bool2);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.realtimechat.GcmIntentService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */