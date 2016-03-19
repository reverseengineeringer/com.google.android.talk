package com.google.android.apps.hangouts.quickreply.impl;

import aal;
import android.app.PendingIntent;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.TextView;
import bfz;
import bjk;
import bjl;
import bvg;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;
import dml;
import due;
import duf;
import dug;
import duh;
import dui;
import dvd;
import dvp;
import ee;
import haw;
import hax;
import hba;
import hpu;
import hqo;
import hty;
import hur;
import ilh;
import ilv;

public class QuickReplyActivity
  extends ilv
{
  public hty j;
  public bjl k;
  public boolean l;
  public ImageButton m;
  public int n;
  public String o;
  public boolean p;
  public int q;
  private final hpu r = new hqo(this, B).a(A);
  private hba s;
  private bjk t;
  private boolean u;
  private bvg v;
  
  protected void a(Bundle paramBundle)
  {
    super.a(paramBundle);
    j = ((hty)A.a(hty.class));
    s = ((hba)A.a(hba.class));
    k = ((bjl)A.a(bjl.class));
    t = ((bjk)A.a(bjk.class));
    v = ((bvg)A.a(bvg.class));
  }
  
  public void a(String paramString)
  {
    v.a(n, o, paramString, null, u, q);
    s.a(n).a(2856).d();
  }
  
  public void j()
  {
    m.setBackgroundDrawable(getResources().getDrawable(aal.py));
    m.setColorFilter(getResources().getColor(aal.pv), PorterDuff.Mode.SRC_IN);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    Object localObject = getIntent();
    n = r.a();
    o = ((Intent)localObject).getStringExtra("conversation_id");
    q = ((Intent)localObject).getIntExtra("transport_type", 1);
    u = ((Intent)localObject).getBooleanExtra("is_group", false);
    String str1 = ((Intent)localObject).getStringExtra("conversation_name");
    String str2 = ((Intent)localObject).getStringExtra("send_from_name");
    localObject = (PendingIntent)((Intent)localObject).getParcelableExtra("hangouts_intent");
    j.a(k.a(o), new hur(this));
    if (paramBundle == null) {
      s.a(n).a(2855).d();
    }
    RealTimeChatService.b(dvd.e(n), o, 0L);
    int i = n;
    if (dvp.v.b(i))
    {
      i = n;
      if ((dvp.x.b(i)) && (!TextUtils.isEmpty(o)) && (!bfz.a(o))) {
        j.a(t.a(this, o, n));
      }
    }
    paramBundle = ee.a(getIntent());
    if (paramBundle != null)
    {
      paramBundle = paramBundle.getCharSequence("android.intent.extra.TEXT");
      if (!TextUtils.isEmpty(paramBundle)) {
        a(paramBundle.toString());
      }
    }
    for (i = 1; i != 0; i = 0)
    {
      finish();
      return;
    }
    setContentView(aal.pG);
    ((ImageButton)findViewById(aal.pz)).setOnClickListener(new due(this));
    findViewById(aal.pA).setOnClickListener(new duf(this));
    ((TextView)findViewById(aal.pE)).setText(getResources().getString(aal.pJ, new Object[] { str1 }));
    ((TextView)findViewById(aal.pD)).setText(getResources().getString(aal.pI, new Object[] { str2 }));
    paramBundle = (EditText)findViewById(aal.pB);
    paramBundle.getBackground().setColorFilter(getResources().getColor(17170443), PorterDuff.Mode.SRC_IN);
    paramBundle.addTextChangedListener(new dug(this, paramBundle));
    m = ((ImageButton)findViewById(aal.pF));
    m.setOnClickListener(new duh(this, paramBundle));
    m.setClickable(false);
    findViewById(aal.pC).setOnClickListener(new dui(this, paramBundle, (PendingIntent)localObject));
    j();
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.quickreply.impl.QuickReplyActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */