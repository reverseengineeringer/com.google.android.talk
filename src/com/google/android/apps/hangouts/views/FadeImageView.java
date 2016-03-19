package com.google.android.apps.hangouts.views;

import android.content.Context;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.util.AttributeSet;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.widget.ImageView;
import awl;
import fbz;

public class FadeImageView
  extends ImageView
{
  public Animation a;
  public Animation b;
  public BitmapDrawable c;
  private Animation.AnimationListener d;
  private int e;
  private int f;
  private float g;
  
  public FadeImageView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    paramContext = paramContext.getTheme().obtainStyledAttributes(paramAttributeSet, awl.x, 0, 0);
    try
    {
      e = paramContext.getInt(awl.z, 0);
      f = paramContext.getInt(awl.y, 250);
      g = paramContext.getFloat(awl.A, 0.25F);
      paramContext.recycle();
      a = new AlphaAnimation(g, 1.0F);
      a.setDuration(f);
      b = new AlphaAnimation(1.0F, g);
      b.setDuration(e);
      d = new fbz(this);
      return;
    }
    finally
    {
      paramContext.recycle();
    }
  }
  
  public void a(boolean paramBoolean, Bitmap paramBitmap)
  {
    b.setAnimationListener(null);
    clearAnimation();
    c = new BitmapDrawable(getResources(), paramBitmap);
    if (!paramBoolean)
    {
      setBackgroundDrawable(c);
      return;
    }
    if (e > 0)
    {
      b.setAnimationListener(d);
      startAnimation(b);
      return;
    }
    setBackgroundDrawable(c);
    startAnimation(a);
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.views.FadeImageView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */