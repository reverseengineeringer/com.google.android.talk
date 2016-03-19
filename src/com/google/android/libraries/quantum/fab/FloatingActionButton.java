package com.google.android.libraries.quantum.fab;

import aal;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.StateListAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import hpp;
import java.lang.reflect.Constructor;

public class FloatingActionButton
  extends ImageView
{
  private int a;
  private int b;
  private int c;
  
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
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, hpp.P, paramInt, aal.tu);
    paramInt = paramContext.getColor(hpp.R, 0);
    int i = paramContext.getColor(hpp.S, 0);
    int j = paramContext.getInt(hpp.T, 0);
    if (Build.VERSION.SDK_INT >= 21) {
      setElevation(paramContext.getDimension(hpp.Q, 0.0F));
    }
    a(paramInt, i);
    a(j);
    paramContext.recycle();
  }
  
  private static Drawable b(int paramInt1, int paramInt2)
  {
    GradientDrawable localGradientDrawable1 = c(paramInt1);
    StateListDrawable localStateListDrawable;
    try
    {
      Drawable localDrawable = (Drawable)Class.forName("android.graphics.drawable.RippleDrawable").getConstructor(new Class[] { ColorStateList.class, Drawable.class, Drawable.class }).newInstance(new Object[] { ColorStateList.valueOf(paramInt2), localGradientDrawable1, null });
      return localDrawable;
    }
    catch (Exception localException)
    {
      localStateListDrawable = new StateListDrawable();
      GradientDrawable localGradientDrawable2 = c(paramInt2);
      localStateListDrawable.addState(new int[] { 16842919 }, localGradientDrawable2);
      localGradientDrawable2 = c(17170445);
      localStateListDrawable.addState(new int[0], localGradientDrawable2);
    }
    return new LayerDrawable(tmp117_113);
  }
  
  private static GradientDrawable c(int paramInt)
  {
    GradientDrawable localGradientDrawable = new GradientDrawable();
    localGradientDrawable.setShape(1);
    localGradientDrawable.setColor(paramInt);
    return localGradientDrawable;
  }
  
  public void a(int paramInt)
  {
    Resources localResources = getResources();
    switch (paramInt)
    {
    default: 
      a = localResources.getDimensionPixelSize(aal.tq);
    }
    for (paramInt = localResources.getDimensionPixelSize(aal.ts);; paramInt = localResources.getDimensionPixelSize(aal.tt))
    {
      setScaleType(ImageView.ScaleType.CENTER_INSIDE);
      setPadding(paramInt, paramInt, paramInt, paramInt);
      requestLayout();
      return;
      a = localResources.getDimensionPixelSize(aal.tr);
    }
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    if ((b == paramInt1) && (c == paramInt2)) {
      return;
    }
    b = paramInt1;
    c = paramInt2;
    Drawable localDrawable = b(paramInt1, paramInt2);
    paramInt1 = getPaddingTop();
    paramInt2 = getPaddingLeft();
    int i = getPaddingRight();
    int j = getPaddingBottom();
    setBackgroundDrawable(localDrawable);
    setPadding(paramInt2, paramInt1, i, j);
  }
  
  public void b(int paramInt)
  {
    a(paramInt, c);
  }
  
  public ViewGroup.LayoutParams getLayoutParams()
  {
    ViewGroup.LayoutParams localLayoutParams = super.getLayoutParams();
    if (localLayoutParams != null)
    {
      height = a;
      width = a;
    }
    return localLayoutParams;
  }
  
  public void setElevation(float paramFloat)
  {
    super.setElevation(paramFloat);
    StateListAnimator localStateListAnimator = new StateListAnimator();
    ObjectAnimator localObjectAnimator = ObjectAnimator.ofPropertyValuesHolder(this, new PropertyValuesHolder[] { PropertyValuesHolder.ofFloat("translationZ", new float[] { getElevation() }), PropertyValuesHolder.ofFloat("scaleX", new float[] { 1.05F }), PropertyValuesHolder.ofFloat("scaleY", new float[] { 1.05F }) });
    localStateListAnimator.addState(new int[] { 16842910, 16842919 }, localObjectAnimator);
    localObjectAnimator = ObjectAnimator.ofPropertyValuesHolder(this, new PropertyValuesHolder[] { PropertyValuesHolder.ofFloat("translationZ", new float[] { 0.0F }), PropertyValuesHolder.ofFloat("scaleX", new float[] { 1.0F }), PropertyValuesHolder.ofFloat("scaleY", new float[] { 1.0F }) });
    localStateListAnimator.addState(new int[0], localObjectAnimator);
    setStateListAnimator(localStateListAnimator);
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.quantum.fab.FloatingActionButton
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */