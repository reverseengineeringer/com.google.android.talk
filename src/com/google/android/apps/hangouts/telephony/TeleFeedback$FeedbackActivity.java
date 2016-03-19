package com.google.android.apps.hangouts.telephony;

import android.app.NotificationManager;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import ba;
import bfd;
import bg;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;
import dvd;
import erp;
import erq;
import ezi;
import gyu;
import ilh;
import jur;
import kju;

public class TeleFeedback$FeedbackActivity
  extends ba
{
  String j;
  
  private void b(int paramInt)
  {
    kju localkju = new kju();
    p = Integer.valueOf(59);
    c = getIntent().getStringExtra("participant_log_id");
    g = new jur();
    Object localObject = getIntent().getStringExtra("local_session_id");
    String str = getIntent().getStringExtra("remote_session_id");
    d = ((String)localObject);
    jur localjur = g;
    if (TextUtils.isEmpty(str)) {}
    for (;;)
    {
      a = ((String)localObject);
      g.c = Integer.valueOf(paramInt);
      localObject = dvd.e(getIntent().getIntExtra("account_id", -1));
      if (localObject != null) {
        RealTimeChatService.a((bfd)localObject, g.a, localkju);
      }
      finish();
      return;
      localObject = str;
    }
  }
  
  private void b(boolean paramBoolean)
  {
    int i = getIntent().getIntExtra("telephony_rating", 0);
    boolean bool = getIntent().getBooleanExtra("is_incoming", false);
    erp localerp = new erp();
    Object localObject = new Bundle();
    ((Bundle)localObject).putInt("rating", i);
    ((Bundle)localObject).putBoolean("should_show_audio_issues", paramBoolean);
    ((Bundle)localObject).putBoolean("is_incoming", bool);
    localerp.setArguments((Bundle)localObject);
    bg localbg = C_();
    if (paramBoolean) {}
    for (localObject = "audio_issue_chooser";; localObject = "call_issue_chooser")
    {
      localerp.a(localbg, (String)localObject);
      return;
    }
  }
  
  public void a(String paramString)
  {
    ezi.c("Babel_telephony", "TeleFeedback.FeedbackActivity.onAudioIssueSelected, sending feedback", new Object[0]);
    Object localObject2 = j;
    label41:
    label50:
    label69:
    int i;
    if (getIntent().getBooleanExtra("handoff_attempted", false))
    {
      localObject1 = "[HANDOFF] ";
      if (!TextUtils.isEmpty((CharSequence)localObject2)) {
        break label215;
      }
      if (!TextUtils.isEmpty(paramString)) {
        break label274;
      }
      paramString = (String)localObject1;
      localObject1 = String.valueOf(paramString);
      if (((String)localObject1).length() == 0) {
        break label312;
      }
      localObject1 = "TeleFeedback.FeedbackActivity.sendFeedback: ".concat((String)localObject1);
      ezi.c("Babel_telephony", (String)localObject1, new Object[0]);
      localObject2 = getIntent().getBundleExtra("telephony_call_info");
      i = getIntent().getIntExtra("telephony_rating", 0);
      if (erq.d == null) {
        break label325;
      }
    }
    label215:
    label274:
    label312:
    label325:
    for (Object localObject1 = erq.d;; localObject1 = new erq(this))
    {
      String str = dvd.a(this, getIntent().getIntExtra("account_id", -1));
      ((erq)localObject1).a(((gyu)ilh.a(this, gyu.class)).a((Bundle)localObject2).a("rating", Integer.toString(i)).b(paramString).c("com.google.android.talk.telephony").a(str).b());
      b(1);
      return;
      if (getIntent().getIntExtra("call_type", 0) == 2)
      {
        localObject1 = "[WIFI] ";
        break;
      }
      localObject1 = "[CELL] ";
      break;
      if (TextUtils.isEmpty(paramString))
      {
        paramString = (String)localObject2;
        break label41;
      }
      paramString = String.valueOf(localObject2).length() + 2 + String.valueOf(paramString).length() + (String)localObject2 + ", " + paramString;
      break label41;
      localObject1 = String.valueOf(localObject1);
      paramString = String.valueOf(paramString);
      if (paramString.length() != 0)
      {
        paramString = ((String)localObject1).concat(paramString);
        break label50;
      }
      paramString = new String((String)localObject1);
      break label50;
      localObject1 = new String("TeleFeedback.FeedbackActivity.sendFeedback: ");
      break label69;
    }
  }
  
  public void a(String paramString, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      ezi.c("Babel_telephony", "TeleFeedback.FeedbackActivity.onCallIssueSelected, good call, closing", new Object[0]);
      b(5);
      return;
    }
    ezi.c("Babel_telephony", "TeleFeedback.FeedbackActivity.onCallIssueSelected, showing audio issues", new Object[0]);
    j = paramString;
    b(true);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    ezi.c("Babel_telephony", "TeleFeedback.FeedbackActivity.onCreate", new Object[0]);
    super.onCreate(paramBundle);
    ((NotificationManager)getSystemService("notification")).cancel("telephony_call_feedback", getIntent().getIntExtra("telephony_id", 0));
    int i = getIntent().getIntExtra("telephony_rating", 0);
    if (i == 5)
    {
      ezi.c("Babel_telephony", "TeleFeedback.FeedbackActivity.onCreate, rated good, doing nothing", new Object[0]);
      b(i);
      return;
    }
    b(false);
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.telephony.TeleFeedback.FeedbackActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */