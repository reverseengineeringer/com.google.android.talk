package com.google.android.apps.hangouts.invites.conversationinvitelist.impl;

import aal;
import aen;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.text.Html;
import android.text.TextUtils;
import android.text.TextUtils.TruncateAt;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import awo;
import bfq;
import bg;
import bhs;
import bhv;
import cox;
import coy;
import cpa;
import eit;
import exs;
import ey;
import eyd;
import eys;
import ezi;
import hbs;
import ilh;
import imx;
import xs;

public class InviteItemView
  extends xs
  implements bhv
{
  private static final boolean g = false;
  public String a;
  public bhs b;
  public String c;
  public cpa d;
  public String e;
  public int f;
  private eys h;
  
  static
  {
    imx localimx = ezi.f;
  }
  
  public InviteItemView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  private void a(Bitmap paramBitmap)
  {
    ((ImageView)findViewById(aal.mE)).setImageDrawable(new BitmapDrawable(getResources(), paramBitmap));
  }
  
  private void c()
  {
    if (b != null)
    {
      b.b();
      b = null;
    }
    if (h != null)
    {
      h.b();
      h = null;
    }
    ((ImageView)findViewById(aal.mE)).setImageDrawable(null);
    c = null;
  }
  
  public void a(int paramInt, String paramString1, String paramString2, cpa paramcpa, InviteListFragment paramInviteListFragment)
  {
    f = paramInt;
    a = paramString1;
    d = paramcpa;
    e = paramString2;
    setSelected(false);
    ((ImageView)findViewById(aal.mE)).setVisibility(0);
    a(d.f());
    paramString1 = d.i();
    paramString2 = (TextView)findViewById(aal.mD);
    if (TextUtils.isEmpty(paramString1)) {
      paramString2.setText(getResources().getString(aen.ja));
    }
    for (;;)
    {
      b(d.q());
      c(d.g());
      a(paramInviteListFragment);
      a(paramInviteListFragment.getFragmentManager());
      return;
      paramString2.setText(paramString1);
    }
  }
  
  public void a(bg parambg)
  {
    ((Button)findViewById(aal.mA)).setOnClickListener(new coy(this, parambg));
  }
  
  public void a(InviteListFragment paramInviteListFragment)
  {
    ((Button)findViewById(aal.mv)).setOnClickListener(new cox(this, paramInviteListFragment));
  }
  
  public void a(eys parameys, exs paramexs, boolean paramBoolean1, bhs parambhs, boolean paramBoolean2)
  {
    hbs.a("Expected null", paramexs);
    Object localObject;
    if (g)
    {
      if (parameys == null)
      {
        localObject = null;
        localObject = String.valueOf(localObject);
        if (paramexs != null) {
          break label129;
        }
        paramexs = null;
        label32:
        paramexs = String.valueOf(paramexs);
        new StringBuilder(String.valueOf(localObject).length() + 71 + String.valueOf(paramexs).length()).append("InviteItem setImageBitmap ").append((String)localObject).append("gifImage=").append(paramexs).append(" success=").append(paramBoolean1).append(" loadedFromCache=").append(paramBoolean2);
      }
    }
    else
    {
      if (b == parambhs) {
        break label137;
      }
      if (parameys != null) {
        parameys.b();
      }
    }
    label129:
    label137:
    do
    {
      return;
      localObject = parameys.toString();
      break;
      paramexs = paramexs.toString();
      break label32;
      b = null;
    } while (!paramBoolean1);
    h = parameys;
    if (h != null)
    {
      a(h.e());
      return;
    }
    a("");
  }
  
  public void a(String paramString)
  {
    if (TextUtils.isEmpty(paramString))
    {
      c();
      c = "";
      h = null;
      a(bfq.e());
    }
    do
    {
      return;
      if (TextUtils.equals(paramString, c))
      {
        if (h != null)
        {
          a(h.e());
          return;
        }
        a(bfq.e());
        return;
      }
      c();
      c = paramString;
      b = new bhs(new eyd(paramString, ((awo)ilh.a(getContext(), awo.class)).a(f)).a(bfq.d()).d(true).b(true), this, true, a);
    } while (!((eit)ilh.a(getContext(), eit.class)).a(b));
    b = null;
  }
  
  public void b(String paramString)
  {
    TextView localTextView = (TextView)findViewById(aal.mB);
    localTextView.setLines(1);
    localTextView.setEllipsize(TextUtils.TruncateAt.END);
    localTextView.setText(Html.fromHtml(paramString));
    paramString = findViewById(aal.mC);
    paramString.setBackgroundResource(aal.mu);
    int i = ey.b(getContext(), aen.iK);
    paramString.getBackground().setColorFilter(i, PorterDuff.Mode.SRC_IN);
  }
  
  public void c(String paramString)
  {
    TextView localTextView = (TextView)findViewById(aal.mF);
    localTextView.setText(paramString);
    paramString = d.h();
    if (!TextUtils.isEmpty(paramString))
    {
      localTextView.setMaxLines(1);
      localTextView = (TextView)findViewById(aal.mG);
      localTextView.setVisibility(0);
      localTextView.setText(paramString);
    }
  }
  
  protected void onDetachedFromWindow()
  {
    c();
    super.onDetachedFromWindow();
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.invites.conversationinvitelist.impl.InviteItemView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */