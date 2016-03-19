package com.google.android.apps.hangouts.views;

import aen;
import android.content.Context;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import bhv;
import com.google.android.apps.hangouts.R.drawable;
import com.google.android.apps.hangouts.hangout.StressMode;
import ezc;
import fbf;
import fbg;

public final class ConversationListItemView
  extends fbg
  implements bhv
{
  private FadeImageView n;
  private ConversationNameView o;
  private TextView p;
  private ImageView q;
  private TextView r;
  private ImageView s;
  private View t;
  private View u;
  private View v;
  private ImageView w;
  private TextView x;
  
  public ConversationListItemView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public ConversationListItemView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public void a(int paramInt)
  {
    if (q.getVisibility() == 0) {
      paramInt = 8;
    }
    p.setVisibility(paramInt);
  }
  
  public void a(int paramInt1, int paramInt2, int paramInt3)
  {
    o.b(paramInt1);
    o.a(paramInt3);
    p.setTextColor(paramInt2);
    p.setTypeface(null, paramInt3);
    r.setTextColor(paramInt2);
    r.setTypeface(null, paramInt3);
  }
  
  protected void a(int paramInt, Cursor paramCursor)
  {
    int j = 0;
    int i;
    if (h != paramInt)
    {
      h = paramInt;
      l();
      if ((!q()) || (h == 5)) {
        break label135;
      }
      i = 0;
      f(i);
      t.setVisibility(8);
      u.setVisibility(8);
      v.setVisibility(8);
      w.setVisibility(8);
      i = j;
      if (this.i == 1) {
        i = 1;
      }
      switch (h)
      {
      }
    }
    for (;;)
    {
      super.a(paramInt, paramCursor);
      return;
      label135:
      i = 8;
      break;
      ImageView localImageView = s;
      Resources localResources = getResources();
      if (i != 0)
      {
        j = StressMode.ax;
        label162:
        localImageView.setContentDescription(localResources.getString(j));
        localImageView = s;
        if (i == 0) {
          break label205;
        }
      }
      label205:
      for (i = R.drawable.bd;; i = R.drawable.be)
      {
        localImageView.setImageResource(i);
        break;
        j = StressMode.aw;
        break label162;
      }
      s.setContentDescription(getResources().getString(StressMode.au));
      s.setImageResource(R.drawable.be);
      continue;
      s.setContentDescription(getResources().getString(StressMode.av));
      s.setImageResource(R.drawable.bd);
    }
  }
  
  public void a(Bitmap paramBitmap)
  {
    q.setImageBitmap(paramBitmap);
  }
  
  public void a(Drawable paramDrawable)
  {
    if (ezc.c())
    {
      p.setCompoundDrawables(null, null, paramDrawable, null);
      return;
    }
    p.setCompoundDrawables(paramDrawable, null, null, null);
  }
  
  public void a(CharSequence paramCharSequence)
  {
    p.setText(paramCharSequence);
  }
  
  public void a(boolean paramBoolean)
  {
    p.setSingleLine(paramBoolean);
  }
  
  public void a(boolean paramBoolean1, Bitmap paramBitmap, boolean paramBoolean2, Object paramObject)
  {
    n.a(paramBoolean1, paramBitmap);
  }
  
  public CharSequence b()
  {
    return o.getContentDescription();
  }
  
  public void b(int paramInt)
  {
    p.setMaxLines(paramInt);
  }
  
  public void b(Drawable paramDrawable)
  {
    q.setImageDrawable(paramDrawable);
  }
  
  public void b(CharSequence paramCharSequence)
  {
    r.setText(paramCharSequence);
  }
  
  public void b(String paramString)
  {
    o.a(paramString);
  }
  
  public void c()
  {
    ezc.c();
    p.setCompoundDrawablesWithIntrinsicBounds(0, 0, 0, 0);
  }
  
  public void c(int paramInt)
  {
    if (paramInt == 0) {
      p.setVisibility(8);
    }
    q.setVisibility(paramInt);
  }
  
  public void c(Drawable paramDrawable)
  {
    s.setImageDrawable(paramDrawable);
  }
  
  public void c(CharSequence paramCharSequence)
  {
    r.setContentDescription(paramCharSequence);
  }
  
  public CharSequence d()
  {
    return p.getText();
  }
  
  public void d(int paramInt)
  {
    q.getLayoutParams().height = paramInt;
  }
  
  public void d(CharSequence paramCharSequence)
  {
    x.setText(paramCharSequence);
  }
  
  public TextView e()
  {
    return p;
  }
  
  public void e(int paramInt)
  {
    q.setAlpha(paramInt);
  }
  
  public int f()
  {
    return r.getVisibility();
  }
  
  public void f(int paramInt)
  {
    r.setVisibility(paramInt);
  }
  
  public CharSequence g()
  {
    return r.getText();
  }
  
  public void g(int paramInt)
  {
    t.setVisibility(paramInt);
  }
  
  public CharSequence h()
  {
    return r.getContentDescription();
  }
  
  public void h(int paramInt)
  {
    u.setVisibility(paramInt);
  }
  
  public int i()
  {
    return t.getVisibility();
  }
  
  public void i(int paramInt)
  {
    v.setVisibility(paramInt);
  }
  
  public int j()
  {
    return u.getVisibility();
  }
  
  public void j(int paramInt)
  {
    w.setVisibility(paramInt);
  }
  
  public int k()
  {
    return w.getVisibility();
  }
  
  public void k(int paramInt)
  {
    x.setVisibility(paramInt);
  }
  
  protected void l()
  {
    int i = 0;
    boolean bool;
    ImageView localImageView;
    if ((o()) || (p()))
    {
      bool = true;
      localImageView = s;
      if (!bool) {
        break label46;
      }
    }
    for (;;)
    {
      localImageView.setVisibility(i);
      s.setEnabled(bool);
      return;
      bool = false;
      break;
      label46:
      i = 8;
    }
  }
  
  public void l(int paramInt)
  {
    s.setImageResource(paramInt);
  }
  
  public boolean m()
  {
    return true;
  }
  
  public void onFinishInflate()
  {
    n = ((FadeImageView)findViewById(aen.aA));
    o = ((ConversationNameView)findViewById(aen.bj));
    p = ((TextView)findViewById(aen.en));
    q = ((ImageView)findViewById(aen.dr));
    r = ((TextView)findViewById(aen.gK));
    x = ((TextView)findViewById(aen.hj));
    s = ((ImageView)findViewById(aen.ct));
    s.setOnClickListener(new fbf(this));
    t = findViewById(aen.bn);
    u = findViewById(aen.hd);
    v = findViewById(aen.cd);
    w = ((ImageView)findViewById(aen.cs));
    super.onFinishInflate();
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.views.ConversationListItemView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */