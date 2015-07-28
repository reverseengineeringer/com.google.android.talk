package com.google.android.talk;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.ImageButton;

public class AnimatedBackgroundImageButton
  extends ImageButton
{
  private boolean mAnimationStarted = false;
  private Animator mCurrentAnimator;
  protected int mDurationMs = 1000;
  protected int mEndAlpha = 255;
  protected int mStartAlpha = 0;
  
  public AnimatedBackgroundImageButton(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  private void resetAnimator()
  {
    ObjectAnimator localObjectAnimator = ObjectAnimator.ofInt(this, "ImageAlpha", new int[] { mStartAlpha, mEndAlpha });
    localObjectAnimator.setDuration(mDurationMs);
    localObjectAnimator.setRepeatCount(-1);
    localObjectAnimator.setRepeatMode(2);
    boolean bool = mAnimationStarted;
    if (mCurrentAnimator != null) {
      stopImageAnimation();
    }
    mCurrentAnimator = localObjectAnimator;
    if (bool) {
      startImageAnimation();
    }
  }
  
  protected void onDetachedFromWindow()
  {
    mCurrentAnimator.cancel();
    super.onDetachedFromWindow();
  }
  
  protected void onFinishInflate()
  {
    super.onFinishInflate();
    resetAnimator();
  }
  
  public void setImageAlpha(int paramInt)
  {
    Drawable localDrawable = getDrawable();
    if (localDrawable != null) {
      localDrawable.setAlpha(paramInt);
    }
  }
  
  public void startImageAnimation()
  {
    if (!mAnimationStarted)
    {
      mCurrentAnimator.start();
      mAnimationStarted = true;
    }
  }
  
  public void stopImageAnimation()
  {
    if (mAnimationStarted)
    {
      mCurrentAnimator.cancel();
      mAnimationStarted = false;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.AnimatedBackgroundImageButton
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */