package com.google.android.apps.hangouts.floatingactionbutton.impl;

import aal;
import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.AnimatorInflater;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Shader;
import android.graphics.Shader.TileMode;
import android.graphics.drawable.BitmapDrawable;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.animation.Interpolator;
import axe;
import axi;
import bwt;
import bwu;
import bwv;
import bww;
import bwx;

public class FloatingActionButton
  extends View
{
  public bww a;
  public int b = 0;
  public Bitmap c;
  public int d = -1;
  public Bitmap e;
  public float f;
  public int g;
  private ValueAnimator h;
  private Interpolator i;
  private ValueAnimator.AnimatorUpdateListener j = new bwt(this);
  private Animator.AnimatorListener k = new bwu(this);
  private View.OnClickListener l = new bwv(this);
  
  public FloatingActionButton(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public FloatingActionButton(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public FloatingActionButton(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    if (Build.VERSION.SDK_INT >= 21) {
      a(paramContext);
    }
    setOnClickListener(l);
    i = new axe(axi.a);
    h = ValueAnimator.ofFloat(new float[] { 0.0F, 1.0F });
    h.setInterpolator(i);
    h.setDuration(getResources().getInteger(aal.lA));
    h.setStartDelay(0L);
    h.addUpdateListener(j);
    h.addListener(k);
  }
  
  private void a(int paramInt)
  {
    if (h.isRunning()) {
      h.cancel();
    }
    f = 0.0F;
    d = -1;
    e = null;
    b = paramInt;
    c = ((BitmapDrawable)getResources().getDrawable(paramInt)).getBitmap();
    invalidate();
  }
  
  private void a(Canvas paramCanvas, Bitmap paramBitmap, float paramFloat, int paramInt)
  {
    Object localObject = new BitmapShader(paramBitmap, Shader.TileMode.CLAMP, Shader.TileMode.CLAMP);
    Paint localPaint = new Paint();
    localPaint.setAntiAlias(true);
    localPaint.setShader((Shader)localObject);
    localObject = new Matrix();
    ((Matrix)localObject).preRotate(paramInt * paramFloat, paramBitmap.getWidth() / 2.0F, paramBitmap.getHeight() / 2.0F);
    localPaint.setAlpha((int)((1.0F - paramFloat) * 255.0F));
    ((Matrix)localObject).postTranslate((getWidth() - paramBitmap.getWidth()) / 2.0F, (getHeight() - paramBitmap.getHeight()) / 2.0F);
    paramCanvas.drawBitmap(paramBitmap, (Matrix)localObject, localPaint);
  }
  
  public Animator a(int paramInt1, int paramInt2, int paramInt3)
  {
    setContentDescription(getResources().getText(paramInt2));
    g = paramInt3;
    if (paramInt1 != b)
    {
      if (h.isRunning()) {
        h.cancel();
      }
      f = 0.0F;
      if (paramInt3 != bwx.a) {
        break label89;
      }
      d = paramInt1;
      e = ((BitmapDrawable)getResources().getDrawable(paramInt1)).getBitmap();
      h.start();
    }
    for (;;)
    {
      return h;
      label89:
      d = b;
      e = c;
      b = paramInt1;
      c = ((BitmapDrawable)getResources().getDrawable(paramInt1)).getBitmap();
      h.reverse();
    }
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    setContentDescription(getResources().getText(paramInt2));
    a(paramInt1);
  }
  
  public void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4, float paramFloat)
  {
    Resources localResources = getResources();
    if (paramFloat < 0.5F) {}
    for (;;)
    {
      setContentDescription(localResources.getText(paramInt2));
      if ((paramFloat >= 0.0F) && (paramFloat <= 1.0F)) {
        break;
      }
      throw new IllegalArgumentException("fraction argument to transitionPartlyBetween should be between 0.0 and 1.0");
      paramInt2 = paramInt4;
    }
    if (h.isRunning()) {
      h.cancel();
    }
    if (paramFloat < 0.001F)
    {
      a(paramInt1);
      return;
    }
    if (1.0F - paramFloat < 0.001F)
    {
      a(paramInt3);
      return;
    }
    f = i.getInterpolation(paramFloat);
    b = paramInt1;
    c = ((BitmapDrawable)getResources().getDrawable(paramInt1)).getBitmap();
    d = paramInt3;
    e = ((BitmapDrawable)getResources().getDrawable(paramInt3)).getBitmap();
    g = bwx.a;
    invalidate();
  }
  
  public void a(Animator.AnimatorListener paramAnimatorListener)
  {
    h.addListener(paramAnimatorListener);
  }
  
  public void a(ValueAnimator.AnimatorUpdateListener paramAnimatorUpdateListener)
  {
    h.addUpdateListener(paramAnimatorUpdateListener);
  }
  
  public void a(Context paramContext)
  {
    setStateListAnimator(AnimatorInflater.loadStateListAnimator(paramContext, aal.lj));
  }
  
  public void a(bww parambww)
  {
    a = parambww;
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    if (c != null) {
      a(paramCanvas, c, f, 135);
    }
    if (e != null) {
      a(paramCanvas, e, 1.0F - f, 65401);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.floatingactionbutton.impl.FloatingActionButton
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */