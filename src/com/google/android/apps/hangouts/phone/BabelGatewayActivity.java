package com.google.android.apps.hangouts.phone;

import aal;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.app.PendingIntent;
import android.app.PendingIntent.CanceledException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import android.widget.Toast;
import axm;
import axt;
import axu;
import bez;
import bfd;
import bfw;
import bgd;
import bzq;
import cbr;
import cgs;
import com.google.android.apps.hangouts.hangout.StressMode;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;
import ddm;
import ddn;
import dtw;
import dvd;
import dwb;
import eap;
import ebi;
import efk;
import ehi;
import ehm;
import ezi;
import haw;
import hax;
import hba;
import hbs;
import hpv;
import hpw;
import hpz;
import hqo;
import ihb;
import ilh;
import imx;

public class BabelGatewayActivity
  extends cbr
  implements DialogInterface.OnCancelListener, DialogInterface.OnClickListener, ehm, hpw
{
  public static final boolean n = false;
  private Intent C;
  private String D;
  private boolean E;
  private boolean F;
  private boolean G;
  private int H;
  private long I;
  private boolean J;
  private Uri K;
  private String L;
  private final eap M;
  public bfd o;
  public String[] p;
  public String[] q;
  public String r;
  public boolean s;
  public boolean t;
  public int u;
  public int v;
  public boolean w;
  public int x;
  public boolean y;
  public int z;
  
  static
  {
    imx localimx = ezi.k;
  }
  
  public BabelGatewayActivity()
  {
    new hqo(this, B).a(A).a(this);
    p = new String[0];
    q = new String[0];
    M = new ddm(this);
  }
  
  public static Intent a(int paramInt, String paramString)
  {
    Intent localIntent = new Intent(aal.oJ, BabelGatewayActivity.class);
    localIntent.setAction("com.google.android.apps.babel.realtimechat.update-watermark");
    localIntent.putExtra("account_id", paramInt);
    localIntent.putExtra("conversation_id", paramString);
    return localIntent;
  }
  
  public static Intent a(int paramInt1, String paramString1, String paramString2, Uri paramUri, PendingIntent paramPendingIntent, int paramInt2, int paramInt3)
  {
    Intent localIntent = new Intent(aal.oJ, BabelGatewayActivity.class);
    localIntent.setAction("android.intent.action.VIEW");
    localIntent.putExtra("account_id", paramInt1);
    if (paramString1 != null)
    {
      localIntent.putExtra("participant_gaia", paramString1);
      localIntent.putExtra("participant_name", paramString2);
      localIntent.putExtra("start_video", true);
    }
    for (;;)
    {
      if (paramPendingIntent != null) {
        localIntent.putExtra("hangout_call_end_intent", paramPendingIntent);
      }
      localIntent.putExtra("hangout_auto_join", false);
      localIntent.putExtra("hangout_start_source", paramInt2);
      localIntent.putExtra("media_type", paramInt3);
      localIntent.putExtra("extra_hangout_start_time", SystemClock.elapsedRealtime());
      return localIntent;
      hbs.b("Expected non-null", paramUri);
      localIntent.putExtra("hangout_uri", paramUri);
    }
  }
  
  public static Intent a(int paramInt, String paramString1, String paramString2, String paramString3, boolean paramBoolean, String paramString4)
  {
    Intent localIntent = new Intent(aal.oJ, BabelGatewayActivity.class);
    localIntent.setAction("android.intent.action.VIEW");
    localIntent.putExtra("account_id", paramInt);
    localIntent.putExtra("participant_gaia", paramString1);
    localIntent.putExtra("participant_name", paramString2);
    localIntent.putExtra("start_video", false);
    localIntent.putExtra("android.intent.extra.TEXT", paramString3);
    localIntent.putExtra("force_group", paramBoolean);
    localIntent.putExtra("invite_token_url", paramString4);
    return localIntent;
  }
  
  public static Intent a(Context paramContext, int paramInt)
  {
    paramContext = new Intent(paramContext, BabelGatewayActivity.class);
    paramContext.setAction("android.intent.action.VIEW");
    paramContext.putExtra("account_id", paramInt);
    return paramContext;
  }
  
  public static Intent a(Context paramContext, int paramInt, String paramString)
  {
    paramContext = new Intent(paramContext, BabelGatewayActivity.class);
    paramContext.setAction("android.intent.action.SENDTO");
    paramContext.putExtra("account_id", paramInt);
    paramContext.putExtra("conversation_id", paramString);
    return paramContext;
  }
  
  public static Intent a(Context paramContext, int paramInt, String paramString, long paramLong, boolean paramBoolean1, boolean paramBoolean2)
  {
    paramContext = new Intent(paramContext, BabelGatewayActivity.class);
    paramContext.setAction("android.intent.action.SENDTO");
    paramContext.putExtra("account_id", paramInt);
    paramContext.putExtra("conversation_id", paramString);
    paramContext.putExtra("watermark", paramLong);
    paramContext.putExtra("otr_state", paramBoolean2);
    paramContext.putExtra("requires_mms", paramBoolean1);
    return paramContext;
  }
  
  public static Intent a(Context paramContext, int paramInt, String paramString1, String paramString2)
  {
    paramContext = new Intent(paramContext, BabelGatewayActivity.class);
    paramContext.setAction("android.intent.action.VIEW");
    paramContext.putExtra("account_id", paramInt);
    paramContext.putExtra("conversation_id", paramString1);
    paramContext.putExtra("android.intent.extra.TEXT", paramString2);
    return paramContext;
  }
  
  public static Intent a(Context paramContext, int paramInt, String paramString1, String paramString2, String paramString3)
  {
    paramContext = new Intent(paramContext, BabelGatewayActivity.class);
    paramContext.setAction("android.intent.action.VIEW");
    paramContext.putExtra("account_id", paramInt);
    if (!TextUtils.isEmpty(paramString1)) {
      paramContext.putExtra("conversation_id", paramString1);
    }
    for (;;)
    {
      paramContext.putExtra("android.intent.extra.TEXT", paramString3);
      return paramContext;
      paramContext.putExtra("participant_name", paramString2);
    }
  }
  
  public static Intent a(Context paramContext, int paramInt, String paramString1, String paramString2, String paramString3, String paramString4, long paramLong, boolean paramBoolean)
  {
    paramContext = new Intent(paramContext, BabelGatewayActivity.class);
    paramContext.setAction("android.intent.action.SENDTO");
    paramContext.putExtra("account_id", paramInt);
    if (!TextUtils.isEmpty(paramString1)) {
      paramContext.putExtra("conversation_id", paramString1);
    }
    for (;;)
    {
      paramContext.putExtra("android.intent.extra.TEXT", paramString4);
      paramContext.putExtra("watermark", paramLong);
      paramContext.putExtra("requires_mms", paramBoolean);
      return paramContext;
      paramContext.putExtra("participant_gaia", paramString2);
      paramContext.putExtra("participant_name", paramString3);
    }
  }
  
  private void a(Intent paramIntent, int paramInt)
  {
    startActivity(paramIntent);
    setResult(paramInt);
    finish();
  }
  
  public static Intent b(int paramInt1, String paramString1, String paramString2, Uri paramUri, PendingIntent paramPendingIntent, int paramInt2, int paramInt3)
  {
    paramString1 = a(paramInt1, paramString1, paramString2, paramUri, paramPendingIntent, paramInt2, paramInt3);
    paramString1.setAction("android.intent.action.VIEW");
    paramString1.putExtra("hangout_auto_join", true);
    return paramString1;
  }
  
  public void a(bez parambez)
  {
    d(StressMode.cc);
  }
  
  public void a(bgd parambgd)
  {
    r = s;
    e(b);
  }
  
  public void a(boolean paramBoolean, hpv paramhpv1, hpv paramhpv2, int paramInt1, int paramInt2)
  {
    if (paramhpv2 == hpv.c)
    {
      o = dvd.e(paramInt2);
      hbs.b("Expected non-null", o);
      paramInt1 = C.getIntExtra("opened_from_impression", 0);
      if (paramInt1 != 0) {
        ((hba)A.a(hba.class)).a(o.g()).a(paramInt1).d();
      }
      if ((!E) && (!F)) {
        ((hpz)A.a(hpz.class)).a("active-hangouts-account", o.g());
      }
      if (K != null)
      {
        paramhpv2 = K;
        paramhpv1 = (PendingIntent)C.getParcelableExtra("hangout_call_end_intent");
        paramhpv2 = cgs.a(paramhpv2, o.a(), paramhpv1);
        if (paramhpv2 == null)
        {
          ezi.e("Babel_GatewayActivity", "invalid hangout request", new Object[0]);
          if (paramhpv1 == null) {}
        }
      }
    }
    do
    {
      do
      {
        try
        {
          paramhpv1.send();
          d(StressMode.cV);
          return;
        }
        catch (PendingIntent.CanceledException paramhpv1)
        {
          for (;;)
          {
            ezi.c("Babel_GatewayActivity", "callCompletionIntent failed", paramhpv1);
          }
        }
        startActivity(aal.a(paramhpv2, null, t, u, SystemClock.elapsedRealtime(), v, w, y));
        setResult(-1);
        finish();
        return;
        if ((!TextUtils.isEmpty(r)) || (p.length > 0) || (q.length > 0))
        {
          hbs.b("Expected non-null", o);
          if (!TextUtils.isEmpty(r))
          {
            ehi.a(o).a(new bez(r, this));
            return;
          }
          if (p.length > 0)
          {
            if (q.length > 0)
            {
              j();
              return;
            }
            ezi.d("Babel_GatewayActivity", "BabelGatewayActivity.createConversation: incoming intent has no participant name", new Object[0]);
            new ddn(this).g();
            return;
          }
          if ((q.length > 0) && (bzq.b(q[0]) != null))
          {
            paramhpv1 = bzq.b(q[0]);
            paramhpv2 = ihb.newBuilder();
            paramhpv2.a(axt.newBuilder().a(paramhpv1).a(dtw.a(paramhpv1)).a());
            RealTimeChatService.a(M);
            if (G) {}
            for (paramhpv1 = bfw.b;; paramhpv1 = bfw.c)
            {
              ebi localebi = ebi.b();
              z = localebi.a();
              RealTimeChatService.a(localebi, new dwb(getApplicationContext()).a(o.g()).a(paramhpv2.a()).a(paramhpv1).a(s).b(G).a(L).a());
              return;
            }
          }
          hbs.a("BabelGatewayActivity.createConversation: Participant id is null and conversation id is null");
          return;
        }
        a(aal.d(o), -1);
        return;
      } while (K == null);
      paramhpv1 = (PendingIntent)C.getParcelableExtra("hangout_call_end_intent");
    } while (paramhpv1 == null);
    try
    {
      paramhpv1.send();
      return;
    }
    catch (PendingIntent.CanceledException paramhpv1)
    {
      ezi.c("Babel", "Call complete intent could not be sent", paramhpv1);
    }
  }
  
  public void d(int paramInt)
  {
    Toast.makeText(this, paramInt, 0).show();
    a(aal.d(o), 0);
  }
  
  public void e(int paramInt)
  {
    if (E)
    {
      boolean bool;
      if (!TextUtils.isEmpty(D))
      {
        bool = true;
        hbs.a("Expected condition to be true", bool);
        if (I > 0L) {
          RealTimeChatService.b(o, r, I);
        }
        if (n)
        {
          localObject = String.valueOf(r);
          if (((String)localObject).length() == 0) {
            break label142;
          }
          "Auto-sending message to conversation ".concat((String)localObject);
        }
      }
      for (;;)
      {
        ((efk)A.a(efk.class)).a(o, r, D, null, 0, null, 0, 0, null, null, J, null, H);
        setResult(-1);
        finish();
        return;
        bool = false;
        break;
        label142:
        new String("Auto-sending message to conversation ");
      }
    }
    if (F)
    {
      RealTimeChatService.b(o, r, I);
      setResult(-1);
      finish();
      return;
    }
    Object localObject = aal.a(o.g(), r, paramInt);
    if (!TextUtils.isEmpty(D))
    {
      Intent localIntent = new Intent();
      localIntent.putExtra("android.intent.extra.TEXT", D);
      localIntent.putExtra("conversation_id", r);
      ((Intent)localObject).putExtra("share_intent", localIntent);
    }
    a((Intent)localObject, -1);
  }
  
  public void j()
  {
    if (p.length != q.length)
    {
      hbs.a("BabelGatewayActivity.createConversationWithParticipants: different number of participant gaia ids and names");
      return;
    }
    axm localaxm = ihb.newBuilder();
    int i = 0;
    while (i < p.length)
    {
      localaxm.a(axt.newBuilder().a(q[i]).a(dtw.a(p[i], q[i])).a());
      i += 1;
    }
    RealTimeChatService.a(M);
    ebi localebi = ebi.b();
    z = localebi.a();
    RealTimeChatService.a(localebi, new dwb(getApplicationContext()).a(o.g()).a(localaxm.a()).a(bfw.c).a(s).b(G).a(L).a());
  }
  
  public void onCancel(DialogInterface paramDialogInterface)
  {
    setResult(0);
    finish();
  }
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    setResult(0);
    finish();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    C = getIntent();
    Object localObject;
    if (n)
    {
      localObject = String.valueOf(C.getType());
      if (((String)localObject).length() != 0) {
        "intent.getType() = ".concat((String)localObject);
      }
    }
    else
    {
      localObject = C.getStringExtra("participant_gaia");
      if (!TextUtils.isEmpty((CharSequence)localObject)) {
        p = ((String)localObject).split("\\|");
      }
      localObject = C.getStringExtra("participant_name");
      if (!TextUtils.isEmpty((CharSequence)localObject)) {
        q = ((String)localObject).split("\\|");
      }
      r = C.getStringExtra("conversation_id");
      Intent localIntent = C;
      String str = localIntent.getStringExtra("android.intent.extra.TEXT");
      localObject = str;
      if (str == null) {
        localObject = aal.a(localIntent, "android.intent.extra.TEXT");
      }
      D = ((String)localObject);
      E = C.getAction().equals("android.intent.action.SENDTO");
      F = C.getAction().equals("com.google.android.apps.babel.realtimechat.update-watermark");
      if (!C.hasExtra("otr_state")) {
        break label405;
      }
      if (!C.getBooleanExtra("otr_state", false)) {
        break label397;
      }
      H = 2;
    }
    for (;;)
    {
      I = C.getLongExtra("watermark", 0L);
      J = C.getBooleanExtra("requires_mms", false);
      s = C.getBooleanExtra("start_video", false);
      G = C.getBooleanExtra("force_group", false);
      K = ((Uri)C.getParcelableExtra("hangout_uri"));
      t = C.getBooleanExtra("hangout_auto_join", false);
      u = C.getIntExtra("hangout_start_source", 51);
      v = C.getIntExtra("hangout_video_source", 0);
      w = C.getBooleanExtra("hangout_mute_microphone", false);
      x = C.getIntExtra("media_type", 0);
      y = C.getBooleanExtra("hangout_mute_playback", false);
      L = C.getStringExtra("invite_token_url");
      super.onCreate(paramBundle);
      return;
      new String("intent.getType() = ");
      break;
      label397:
      H = 1;
      continue;
      label405:
      H = 0;
    }
  }
  
  public Dialog onCreateDialog(int paramInt, Bundle paramBundle)
  {
    String str;
    if (paramBundle == null)
    {
      str = null;
      label6:
      if (paramBundle != null) {
        break label45;
      }
    }
    label45:
    for (paramBundle = null;; paramBundle = paramBundle.getString("error_message")) {
      switch (paramInt)
      {
      default: 
        return null;
        str = paramBundle.getString("error_title");
        break label6;
      }
    }
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this);
    localBuilder.setTitle(str);
    localBuilder.setMessage(paramBundle);
    localBuilder.setNeutralButton(17039370, this);
    localBuilder.setOnCancelListener(this);
    return localBuilder.create();
  }
  
  public void onDestroy()
  {
    RealTimeChatService.b(M);
    super.onDestroy();
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.phone.BabelGatewayActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */