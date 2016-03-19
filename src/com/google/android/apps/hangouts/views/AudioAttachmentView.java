package com.google.android.apps.hangouts.views;

import aal;
import aen;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.text.TextUtils;
import android.text.format.DateUtils;
import android.util.AttributeSet;
import android.view.View.MeasureSpec;
import android.view.ViewTreeObserver;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;
import android.widget.TextView;
import bfd;
import com.google.android.apps.hangouts.R.drawable;
import com.google.android.apps.hangouts.hangout.StressMode;
import ezc;
import ezi;
import fao;
import fap;
import faq;
import far;
import fav;
import fdj;
import imx;

public class AudioAttachmentView
  extends LinearLayout
  implements SeekBar.OnSeekBarChangeListener, fdj
{
  public static final boolean a = false;
  public SeekBar b;
  public fav c;
  public far d;
  private long e;
  private TextView f;
  private TextView g;
  private String h;
  private ImageView i;
  private ImageView j;
  private int k;
  
  static
  {
    imx localimx = ezi.a;
  }
  
  public AudioAttachmentView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public AudioAttachmentView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public AudioAttachmentView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  private void a(TextView paramTextView, int paramInt)
  {
    StringBuilder localStringBuilder = new StringBuilder(DateUtils.formatElapsedTime(paramInt / 1000));
    paramInt = d.h();
    if (paramInt > 0)
    {
      localStringBuilder.append(" / ");
      localStringBuilder.append(DateUtils.formatElapsedTime(paramInt / 1000));
    }
    paramTextView.setText(localStringBuilder.toString());
  }
  
  private void h()
  {
    i.setImageResource(R.drawable.ce);
    i.setContentDescription(getResources().getString(StressMode.hx));
  }
  
  private void i()
  {
    i.setImageResource(R.drawable.cb);
    i.setContentDescription(getResources().getString(StressMode.hl));
  }
  
  private void j()
  {
    if (e != 0L)
    {
      StringBuilder localStringBuilder1 = new StringBuilder(aal.a(e, false));
      StringBuilder localStringBuilder2 = new StringBuilder(aal.a(e, true));
      g.setText(localStringBuilder1.toString());
      h = localStringBuilder2.toString();
      return;
    }
    g.setText("");
    h = "";
  }
  
  private void k()
  {
    f.setTextColor(k);
    g.setTextColor(k);
    i.setColorFilter(k);
    j.setColorFilter(k);
    a(R.drawable.cq, R.drawable.cp);
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    Object localObject = getResources();
    Drawable localDrawable = ((Resources)localObject).getDrawable(paramInt1);
    localDrawable.setColorFilter(k, PorterDuff.Mode.SRC_ATOP);
    b.setThumb(localDrawable);
    localObject = ((Resources)localObject).getDrawable(paramInt2);
    ((Drawable)localObject).setColorFilter(k, PorterDuff.Mode.SRC_ATOP);
    b.setProgressDrawable((Drawable)localObject);
  }
  
  public void a(bfd parambfd, String paramString1, long paramLong1, String paramString2, String paramString3, String paramString4, String paramString5, long paramLong2, int paramInt)
  {
    e = paramLong2;
    setLongClickable(true);
    a(new fav(this, parambfd, paramString2, paramString4));
    parambfd = far.a;
    if ((parambfd != null) && (parambfd.a().equals(paramString3)))
    {
      d = parambfd;
      d.a(paramString1, paramLong1);
    }
    for (;;)
    {
      d.a(this);
      d.a(c);
      f.setText(paramString5);
      j();
      k = paramInt;
      k();
      e();
      return;
      if (d != null)
      {
        if (!d.a().equals(paramString3))
        {
          d.a(null);
          d = new far(this, paramString3, paramString1, paramLong1);
        }
      }
      else {
        d = new far(this, paramString3, paramString1, paramLong1);
      }
    }
  }
  
  public void a(fav paramfav)
  {
    c = paramfav;
  }
  
  public void a(String paramString) {}
  
  public void a(String paramString, long paramLong)
  {
    if (TextUtils.isEmpty(paramString)) {
      return;
    }
    if (d != null)
    {
      d.a(paramString, paramLong);
      return;
    }
    ezi.d("Babel", "updateUrl: audioPlaybackController is null", new Object[0]);
  }
  
  public void b()
  {
    if (d != null)
    {
      d.a(null);
      d = null;
    }
  }
  
  public void b_() {}
  
  public void c_() {}
  
  public void d_() {}
  
  public void e()
  {
    int m = d.b();
    if ("speaker".equals(d.c()))
    {
      j.setImageResource(R.drawable.cg);
      j.setContentDescription(getResources().getString(StressMode.kd));
      label50:
      if ((!d.f()) && (m != 0) && (m != 1)) {
        break label147;
      }
      j.setVisibility(4);
    }
    for (;;)
    {
      switch (m)
      {
      default: 
        return;
        j.setImageResource(R.drawable.bW);
        j.setContentDescription(getResources().getString(StressMode.kc));
        break label50;
        label147:
        j.setVisibility(0);
      }
    }
    h();
    b.setProgress(0);
    j();
    return;
    i();
    b.setProgress(0);
    g.setText(getResources().getString(StressMode.y));
    return;
    i();
    f();
    return;
    h();
    f();
  }
  
  void f()
  {
    int m = d.i();
    int n = d.h();
    if ((d.b() == 4) && (m == 0)) {
      return;
    }
    a(g, m);
    if (n != 0)
    {
      b.setProgress(m * 100 / n);
      return;
    }
    b.setProgress(0);
  }
  
  public String g()
  {
    return h;
  }
  
  public void onFinishInflate()
  {
    f = ((TextView)findViewById(aen.aw));
    g = ((TextView)findViewById(aen.av));
    i = ((ImageView)findViewById(aen.eW));
    j = ((ImageView)findViewById(aen.go));
    b = ((SeekBar)findViewById(aen.eV));
    float f1 = getResources().getDimension(aal.dL);
    b.getViewTreeObserver().addOnGlobalLayoutListener(new fao(this, f1));
    k();
    if ((Build.VERSION.SDK_INT < 21) && (ezc.a(getContext()))) {
      g.setVisibility(8);
    }
    i.setOnClickListener(new fap(this));
    j.setOnClickListener(new faq(this));
    b.setOnSeekBarChangeListener(this);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int n = getContext().getResources().getDimensionPixelSize(aal.el);
    int m = paramInt1;
    if (View.MeasureSpec.getSize(paramInt1) > n) {
      m = View.MeasureSpec.makeMeasureSpec(n, View.MeasureSpec.getMode(paramInt1));
    }
    super.onMeasure(m, paramInt2);
  }
  
  public void onProgressChanged(SeekBar paramSeekBar, int paramInt, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      if (d != null)
      {
        paramInt = d.h() * paramInt / 100;
        a(g, paramInt);
      }
    }
    else {
      return;
    }
    ezi.d("Babel", "onProgressChanged: audioPlaybackController is null", new Object[0]);
  }
  
  public void onStartTrackingTouch(SeekBar paramSeekBar)
  {
    if (d != null)
    {
      d.l();
      return;
    }
    ezi.d("Babel", "onStartTrackingTouch: audioPlaybackController is null", new Object[0]);
  }
  
  public void onStopTrackingTouch(SeekBar paramSeekBar)
  {
    if (d != null)
    {
      far localfar = d;
      int m = paramSeekBar.getProgress() * d.h() / 100;
      if (a) {
        localfar.a("sendSeek", 27 + "new position is " + m);
      }
      int n = localfar.b();
      if ((n == 4) || (n == 5))
      {
        paramSeekBar = localfar.a(4);
        paramSeekBar.putExtra("position_in_milliseconds", m);
        c.startService(paramSeekBar);
      }
      d.k();
      return;
    }
    ezi.d("Babel", "onStopTrackingTouch: audioPlaybackController is null", new Object[0]);
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.views.AudioAttachmentView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */