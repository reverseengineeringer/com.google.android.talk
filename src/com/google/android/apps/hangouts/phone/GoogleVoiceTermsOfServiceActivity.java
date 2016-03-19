package com.google.android.apps.hangouts.phone;

import aal;
import aen;
import android.net.Uri;
import android.os.Bundle;
import android.text.Html;
import android.text.Spannable;
import android.text.method.LinkMovementMethod;
import android.text.style.URLSpan;
import android.view.MenuItem;
import android.widget.Button;
import android.widget.TextView;
import bfd;
import cbr;
import com.google.android.apps.hangouts.hangout.StressMode;
import dib;
import did;
import die;
import dvd;
import hpu;
import hqo;
import qe;

public class GoogleVoiceTermsOfServiceActivity
  extends cbr
{
  private static final int[][] r = { { aen.gR, StressMode.te, 0 }, { aen.gT, StressMode.tf, 1 }, { aen.gU, StressMode.tg, 2 } };
  private static final String[] s = { "voice_android_calling", "voice_rates", "voice_legal" };
  public final hpu n = new hqo(this, B).a(A);
  public bfd o;
  private Button p;
  private Button q;
  
  protected boolean a(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 16908332)
    {
      d(0);
      return true;
    }
    return super.a(paramMenuItem);
  }
  
  public void d(int paramInt)
  {
    if (paramInt == -1) {
      aal.a(o, 1098);
    }
    for (;;)
    {
      setResult(paramInt, getIntent());
      finish();
      return;
      if (paramInt == 0) {
        aal.a(o, 1099);
      }
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(aal.gV);
    o = dvd.e(n.a());
    setTitle(getString(StressMode.ff));
    p = ((Button)findViewById(aen.gS));
    q = ((Button)findViewById(aen.gQ));
    paramBundle = r;
    int k = paramBundle.length;
    int i = 0;
    while (i < k)
    {
      Spannable localSpannable = paramBundle[i];
      TextView localTextView = (TextView)findViewById(localSpannable[0]);
      localTextView.setText(Html.fromHtml(getString(localSpannable[1], new Object[] { aal.e("https://www.google.com/support/hangouts/?hl=%locale%", s[localSpannable[2]]).toString() })));
      localTextView.setMovementMethod(LinkMovementMethod.getInstance());
      localSpannable = (Spannable)localTextView.getText();
      URLSpan[] arrayOfURLSpan = (URLSpan[])localSpannable.getSpans(0, localSpannable.length(), URLSpan.class);
      int m = arrayOfURLSpan.length;
      int j = 0;
      while (j < m)
      {
        URLSpan localURLSpan = arrayOfURLSpan[j];
        int i1 = localSpannable.getSpanStart(localURLSpan);
        int i2 = localSpannable.getSpanEnd(localURLSpan);
        localSpannable.removeSpan(localURLSpan);
        localSpannable.setSpan(new die(this, localURLSpan.getURL()), i1, i2, 0);
        j += 1;
      }
      localTextView.setText(localSpannable);
      i += 1;
    }
    q.setSelected(true);
    q.setOnClickListener(new dib(this));
    p.setOnClickListener(new did(this));
  }
  
  protected void onStart()
  {
    super.onStart();
    g().a(true);
    aal.a(o, 1097);
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.phone.GoogleVoiceTermsOfServiceActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */