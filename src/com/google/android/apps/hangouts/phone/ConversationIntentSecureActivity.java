package com.google.android.apps.hangouts.phone;

import android.app.PendingIntent;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import cfc;
import ezi;
import haw;
import hax;
import hba;
import hpv;
import hpw;
import hpz;
import hzy;
import iaj;
import iap;
import ilh;
import imi;
import java.util.Locale;

public class ConversationIntentSecureActivity
  extends imi
  implements hpw
{
  private hzy j = new hzy(this, m).a("active-hangouts-account").a(l).b(this);
  
  private void b(int paramInt)
  {
    Intent localIntent = getIntent();
    Object localObject1 = localIntent.getAction();
    Object localObject2 = localIntent.getStringExtra("conversation_id");
    String str1 = localIntent.getStringExtra("participant_gaia");
    String str2 = localIntent.getStringExtra("participant_name");
    String str3 = localIntent.getStringExtra("auto_join_call_policy");
    String str4 = localIntent.getStringExtra("android.intent.extra.TEXT");
    long l = localIntent.getLongExtra("watermark", 0L);
    boolean bool = localIntent.getBooleanExtra("requires_mms", false);
    Uri localUri = (Uri)localIntent.getParcelableExtra("hangout_uri");
    int i = localIntent.getIntExtra("opened_from_impression", -1);
    if (i != -1) {
      ((hba)this.l.a(hba.class)).a(paramInt).a(i).d();
    }
    PendingIntent localPendingIntent = (PendingIntent)localIntent.getParcelableExtra("hangout_call_end_intent");
    if ((str1 != null) && (localUri != null))
    {
      String str5 = String.valueOf(localUri);
      ezi.d("Babel_ConvIntSecureAct", String.valueOf(str5).length() + 36 + "Got intent with non-null gaiaId and " + str5, new Object[0]);
      i = 0;
    }
    while (i == 0)
    {
      setResult(0);
      finish();
      return;
      if (("android.intent.action.SENDTO".equals(localObject1)) && (TextUtils.isEmpty(str4)))
      {
        ezi.d("Babel_ConvIntSecureAct", "SENDTO action must include message text", new Object[0]);
        i = 0;
      }
      else
      {
        i = 1;
      }
    }
    if (localIntent.getBooleanExtra("end_video", false))
    {
      localObject1 = cfc.a();
      if (((cfc)localObject1).r() != null) {
        ((cfc)localObject1).a(1004);
      }
      for (;;)
      {
        setResult(-1);
        finish();
        return;
        ezi.d("Babel_ConvIntSecureAct", "invalid request to end video call", new Object[0]);
      }
    }
    int k;
    if ((localUri != null) || (localIntent.getBooleanExtra("start_video", false)))
    {
      i = localIntent.getIntExtra("hangout_start_source", 59);
      k = localIntent.getIntExtra("media_type", 0);
      if ("never".equals(str3))
      {
        localObject1 = BabelGatewayActivity.a(paramInt, str1, str2, localUri, localPendingIntent, i, k);
        ((Intent)localObject1).putExtra("hangout_video_source", localIntent.getIntExtra("hangout_video_source", 0));
        ((Intent)localObject1).putExtra("hangout_mute_playback", localIntent.getBooleanExtra("hangout_mute_playback", false));
        ((Intent)localObject1).putExtra("hangout_mute_microphone", localIntent.getBooleanExtra("hangout_mute_microphone", false));
      }
    }
    for (;;)
    {
      ((Intent)localObject1).putExtra("account_id", paramInt);
      ((Intent)localObject1).addFlags(67108864);
      setResult(-1);
      startActivity((Intent)localObject1);
      finish();
      return;
      localObject1 = BabelGatewayActivity.b(paramInt, str1, str2, localUri, localPendingIntent, i, k);
      break;
      if ("android.intent.action.SENDTO".equals(localObject1))
      {
        localObject2 = BabelGatewayActivity.a(this, paramInt, (String)localObject2, str1, str2, str4, l, bool);
        localObject1 = localObject2;
        if (localIntent.hasExtra("otr_state"))
        {
          ((Intent)localObject2).putExtra("otr_state", localIntent.getBooleanExtra("otr_state", false));
          localObject1 = localObject2;
        }
      }
      else if ("com.google.android.apps.babel.realtimechat.update-watermark".equals(localObject1))
      {
        localObject1 = BabelGatewayActivity.a(paramInt, (String)localObject2);
      }
      else if (!TextUtils.isEmpty((CharSequence)localObject2))
      {
        localObject1 = BabelGatewayActivity.a(this, paramInt, (String)localObject2, str4);
      }
      else if (!TextUtils.isEmpty(str1))
      {
        localObject1 = BabelGatewayActivity.a(paramInt, str1, str2, str4, false, null);
      }
      else
      {
        localObject1 = BabelGatewayActivity.a(this, paramInt);
      }
    }
  }
  
  public void a(boolean paramBoolean, hpv paramhpv1, hpv paramhpv2, int paramInt1, int paramInt2)
  {
    if (paramhpv2 == hpv.c)
    {
      b(paramInt2);
      return;
    }
    finish();
  }
  
  protected boolean g()
  {
    return true;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (!g())
    {
      setResult(0);
      finish();
      return;
    }
    paramBundle = getIntent();
    if (paramBundle == null)
    {
      ezi.d("Babel_ConvIntSecureAct", "No intent attached", new Object[0]);
      setResult(0);
      finish();
      return;
    }
    paramBundle = paramBundle.getStringExtra("account_name");
    if (TextUtils.isEmpty(paramBundle)) {
      ezi.e("Babel_ConvIntSecureAct", "No account name provided", new Object[0]);
    }
    paramBundle = paramBundle.toLowerCase(Locale.US);
    hpz localhpz = (hpz)l.a(hpz.class);
    int i = localhpz.b(paramBundle);
    if (localhpz.d(i))
    {
      b(i);
      return;
    }
    paramBundle = new iaj().b().a(paramBundle).a(iap.class);
    j.a(paramBundle);
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.phone.ConversationIntentSecureActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */