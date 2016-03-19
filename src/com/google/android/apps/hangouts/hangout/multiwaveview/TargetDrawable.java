package com.google.android.apps.hangouts.hangout.multiwaveview;

import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;

public class TargetDrawable
{
  private static final boolean DEBUG = false;
  public static final int[] STATE_ACTIVE = { 16842910, 16842914 };
  public static final int[] STATE_FOCUSED = { 16842910, -16842914, 16842908 };
  public static final int[] STATE_INACTIVE = { 16842910, -16842914 };
  private static final String TAG = "Babel_TargetDrawable";
  private float mAlpha = 1.0F;
  private Drawable mDrawable;
  private boolean mEnabled = true;
  private float mPositionX = 0.0F;
  private float mPositionY = 0.0F;
  private final int mResourceId;
  private float mScaleX = 1.0F;
  private float mScaleY = 1.0F;
  private float mTranslationX = 0.0F;
  private float mTranslationY = 0.0F;
  
  public TargetDrawable(Resources paramResources, int paramInt)
  {
    mResourceId = paramInt;
    setDrawable(paramResources, paramInt);
  }
  
  public TargetDrawable(TargetDrawable paramTargetDrawable)
  {
    mResourceId = mResourceId;
    if (mDrawable != null) {}
    for (paramTargetDrawable = mDrawable.mutate();; paramTargetDrawable = null)
    {
      mDrawable = paramTargetDrawable;
      resizeDrawables();
      setState(STATE_INACTIVE);
      return;
    }
  }
  
  private void resizeDrawables()
  {
    if (mDrawable != null) {
      mDrawable.setBounds(0, 0, mDrawable.getIntrinsicWidth(), mDrawable.getIntrinsicHeight());
    }
  }
  
  public void draw(Canvas paramCanvas)
  {
    if ((mDrawable == null) || (!mEnabled)) {
      return;
    }
    paramCanvas.save(1);
    paramCanvas.scale(mScaleX, mScaleY, mPositionX, mPositionY);
    paramCanvas.translate(mTranslationX + mPositionX, mTranslationY + mPositionY);
    paramCanvas.translate(getWidth() * -0.5F, getHeight() * -0.5F);
    mDrawable.setAlpha(Math.round(mAlpha * 255.0F));
    mDrawable.draw(paramCanvas);
    paramCanvas.restore();
  }
  
  public float getAlpha()
  {
    return mAlpha;
  }
  
  public int getHeight()
  {
    if (mDrawable != null) {
      return mDrawable.getIntrinsicHeight();
    }
    return 0;
  }
  
  public float getPositionX()
  {
    return mPositionX;
  }
  
  public float getPositionY()
  {
    return mPositionY;
  }
  
  public int getResourceId()
  {
    return mResourceId;
  }
  
  public float getScaleX()
  {
    return mScaleX;
  }
  
  public float getScaleY()
  {
    return mScaleY;
  }
  
  public int getWidth()
  {
    if (mDrawable != null) {
      return mDrawable.getIntrinsicWidth();
    }
    return 0;
  }
  
  public float getX()
  {
    return mTranslationX;
  }
  
  public float getY()
  {
    return mTranslationY;
  }
  
  public boolean hasState(int[] paramArrayOfInt)
  {
    return (mDrawable instanceof StateListDrawable);
  }
  
  public boolean isActive()
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    int[] arrayOfInt;
    int i;
    if ((mDrawable instanceof StateListDrawable))
    {
      arrayOfInt = ((StateListDrawable)mDrawable).getState();
      i = 0;
    }
    for (;;)
    {
      bool1 = bool2;
      if (i < arrayOfInt.length)
      {
        if (arrayOfInt[i] == 16842908) {
          bool1 = true;
        }
      }
      else {
        return bool1;
      }
      i += 1;
    }
  }
  
  public boolean isEnabled()
  {
    return (mDrawable != null) && (mEnabled);
  }
  
  public void setAlpha(float paramFloat)
  {
    mAlpha = paramFloat;
  }
  
  public void setDrawable(Resources paramResources, int paramInt)
  {
    Drawable localDrawable = null;
    if (paramInt == 0) {}
    for (paramResources = null;; paramResources = paramResources.getDrawable(paramInt))
    {
      if (paramResources != null) {
        localDrawable = paramResources.mutate();
      }
      mDrawable = localDrawable;
      resizeDrawables();
      setState(STATE_INACTIVE);
      return;
    }
  }
  
  public void setEnabled(boolean paramBoolean)
  {
    mEnabled = paramBoolean;
  }
  
  public void setPositionX(float paramFloat)
  {
    mPositionX = paramFloat;
  }
  
  public void setPositionY(float paramFloat)
  {
    mPositionY = paramFloat;
  }
  
  public void setScaleX(float paramFloat)
  {
    mScaleX = paramFloat;
  }
  
  public void setScaleY(float paramFloat)
  {
    mScaleY = paramFloat;
  }
  
  public void setState(int[] paramArrayOfInt)
  {
    if ((mDrawable instanceof StateListDrawable)) {
      ((StateListDrawable)mDrawable).setState(paramArrayOfInt);
    }
  }
  
  public void setX(float paramFloat)
  {
    mTranslationX = paramFloat;
  }
  
  public void setY(float paramFloat)
  {
    mTranslationY = paramFloat;
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.hangout.multiwaveview.TargetDrawable
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */