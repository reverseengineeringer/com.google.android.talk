package com.google.android.apps.hangouts.phone;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.SystemClock;
import android.telephony.SmsMessage;
import android.text.TextUtils;
import android.view.Window;
import bfd;
import com.google.android.apps.hangouts.R.drawable;
import com.google.android.apps.hangouts.hangout.StressMode;
import deh;
import dei;
import dej;
import dvd;
import ezi;
import hbs;
import hpu;
import hqo;
import ils;
import imx;
import java.util.ArrayList;

public class ClassZeroActivity
  extends ils
{
  private static final boolean f = false;
  public SmsMessage a = null;
  public boolean b = false;
  public AlertDialog c = null;
  public ArrayList<SmsMessage> d = null;
  public bfd e;
  private final hpu g = new hqo(this, k).a(j);
  private long h = 0L;
  private Handler i = new dej(this);
  private final DialogInterface.OnClickListener l = new deh(this);
  private final DialogInterface.OnClickListener m = new dei(this);
  
  static
  {
    imx localimx = ezi.k;
  }
  
  private boolean a(Intent paramIntent)
  {
    byte[] arrayOfByte = paramIntent.getByteArrayExtra("pdu");
    paramIntent.getStringExtra("format");
    paramIntent = SmsMessage.createFromPdu(arrayOfByte);
    if (TextUtils.isEmpty(paramIntent.getMessageBody()))
    {
      if (d.size() == 0) {
        finish();
      }
      return false;
    }
    d.add(paramIntent);
    return true;
  }
  
  public void a(SmsMessage paramSmsMessage)
  {
    String str = paramSmsMessage.getMessageBody();
    a = paramSmsMessage;
    paramSmsMessage = str.toString();
    c = new AlertDialog.Builder(this, 2).setMessage(paramSmsMessage).setPositiveButton(StressMode.jd, m).setNegativeButton(17039360, l).setCancelable(false).show();
    h = (SystemClock.uptimeMillis() + 300000L);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    getWindow().setBackgroundDrawableResource(R.drawable.c);
    e = dvd.e(g.a());
    if (d == null) {
      d = new ArrayList();
    }
    if (!a(getIntent())) {
      return;
    }
    if (d.size() == 1) {}
    for (boolean bool = true;; bool = false)
    {
      hbs.a("Expected condition to be true", bool);
      if (d.size() == 1) {
        a((SmsMessage)d.get(0));
      }
      if (paramBundle == null) {
        break;
      }
      h = paramBundle.getLong("timer_fire", h);
      return;
    }
  }
  
  protected void onNewIntent(Intent paramIntent)
  {
    a(paramIntent);
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putLong("timer_fire", h);
    if (f)
    {
      paramBundle = String.valueOf(Long.toString(h));
      String str = String.valueOf(toString());
      new StringBuilder(String.valueOf(paramBundle).length() + 28 + String.valueOf(str).length()).append("onSaveInstanceState time = ").append(paramBundle).append(" ").append(str);
    }
  }
  
  protected void onStart()
  {
    super.onStart();
    long l1 = SystemClock.uptimeMillis();
    if (h <= l1) {
      i.sendEmptyMessage(1);
    }
    do
    {
      return;
      i.sendEmptyMessageAtTime(1, h);
    } while (!f);
    String str1 = String.valueOf(Long.toString(h));
    String str2 = String.valueOf(toString());
    new StringBuilder(String.valueOf(str1).length() + 18 + String.valueOf(str2).length()).append("onRestart time = ").append(str1).append(" ").append(str2);
  }
  
  protected void onStop()
  {
    super.onStop();
    i.removeMessages(1);
    if (f)
    {
      String str1 = String.valueOf(Long.toString(h));
      String str2 = String.valueOf(toString());
      new StringBuilder(String.valueOf(str1).length() + 15 + String.valueOf(str2).length()).append("onStop time = ").append(str1).append(" ").append(str2);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.phone.ClassZeroActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */