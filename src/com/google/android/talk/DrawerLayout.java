package com.google.android.talk;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;

public class DrawerLayout
  extends ViewGroup
  implements Animator.AnimatorListener
{
  private int mAnimationCount;
  private boolean mAnimationRunning;
  private long mAnimationStartTime;
  private ObjectAnimator mAnimator;
  private long mContractAnimationDuration;
  private boolean mDefaultToExpandedMode;
  private int mDividerWidth;
  private long mExpandAnimationDuration;
  private ExpandStateChangedListener mExpandStateChangedListener;
  private boolean mExpandedState;
  private View mLeftView;
  private boolean mResizeLeftViewDuringAnimation;
  private View mRightView;
  
  public DrawerLayout(Context paramContext)
  {
    super(paramContext);
    initializeFromAttributes(null);
  }
  
  public DrawerLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    initializeFromAttributes(paramAttributeSet);
  }
  
  public DrawerLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    initializeFromAttributes(paramAttributeSet);
  }
  
  private void animate(long paramLong, int paramInt1, int paramInt2)
  {
    if (mAnimator == null)
    {
      mAnimator = ObjectAnimator.ofInt(this, "animate", new int[] { paramInt1, paramInt2 });
      mAnimator.addListener(this);
    }
    for (;;)
    {
      mAnimator.setDuration(paramLong);
      mAnimationCount = 0;
      mAnimationRunning = true;
      mAnimationStartTime = System.currentTimeMillis();
      mAnimator.start();
      return;
      mAnimator.setIntValues(new int[] { paramInt1, paramInt2 });
    }
  }
  
  private int computeWidthTarget()
  {
    return getLayoutParamsmLeftView).contractedWidth;
  }
  
  private LayoutParams getLayoutParams(View paramView)
  {
    return (LayoutParams)paramView.getLayoutParams();
  }
  
  private void initializeFromAttributes(AttributeSet paramAttributeSet)
  {
    paramAttributeSet = getContext().obtainStyledAttributes(paramAttributeSet, R.styleable.DrawerLayout);
    mExpandAnimationDuration = paramAttributeSet.getInt(0, 0);
    mContractAnimationDuration = paramAttributeSet.getInt(1, 0);
    boolean bool = paramAttributeSet.getBoolean(2, true);
    mExpandedState = bool;
    mDefaultToExpandedMode = bool;
    mResizeLeftViewDuringAnimation = paramAttributeSet.getBoolean(3, true);
    paramAttributeSet.recycle();
  }
  
  private void logV(String paramString)
  {
    Log.v("DrawerLayout", paramString);
  }
  
  private void onExpandStateChanged()
  {
    mLeftView.bringToFront();
    if (mExpandStateChangedListener != null) {
      mExpandStateChangedListener.onExpandStateCompleted(this);
    }
  }
  
  private void onExpandStateChanging(boolean paramBoolean)
  {
    if (mExpandStateChangedListener != null) {
      mExpandStateChangedListener.onExpandStateStarted(this, paramBoolean);
    }
  }
  
  private void setAnimate(int paramInt)
  {
    mRightView.setTranslationX(paramInt);
    mAnimationCount += 1;
  }
  
  private boolean setDividerWidth(int paramInt)
  {
    if (mDividerWidth != paramInt)
    {
      mDividerWidth = paramInt;
      requestLayout();
      return true;
    }
    return false;
  }
  
  public LayoutParams generateLayoutParams(AttributeSet paramAttributeSet)
  {
    return new LayoutParams(getContext(), paramAttributeSet);
  }
  
  public void gotoDefaultExpandedState()
  {
    setExpanded(mDefaultToExpandedMode);
  }
  
  public boolean isExpanded()
  {
    return mExpandedState;
  }
  
  public void onAnimationCancel(Animator paramAnimator)
  {
    mLeftView.setLayerType(0, null);
    mRightView.setLayerType(0, null);
  }
  
  public void onAnimationEnd(Animator paramAnimator)
  {
    logV("animation frames count: " + mAnimationCount + " in " + (System.currentTimeMillis() - mAnimationStartTime));
    onExpandStateChanged();
    mAnimationRunning = false;
    mLeftView.setLayerType(0, null);
    mRightView.setLayerType(0, null);
  }
  
  public void onAnimationRepeat(Animator paramAnimator) {}
  
  public void onAnimationStart(Animator paramAnimator)
  {
    mAnimationCount = 0;
    mAnimationStartTime = System.currentTimeMillis();
    mLeftView.setLayerType(2, null);
    mRightView.setLayerType(2, null);
  }
  
  protected void onFinishInflate()
  {
    super.onFinishInflate();
    if (getChildCount() != 2) {
      throw new IllegalArgumentException("DrawerLayout must have exactly two children");
    }
    mLeftView = getChildAt(0);
    mRightView = getChildAt(1);
    mLeftView.bringToFront();
    findViewById(2131755045).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        paramAnonymousView = DrawerLayout.this;
        if (!isExpanded()) {}
        for (boolean bool = true;; bool = false)
        {
          paramAnonymousView.setExpanded(bool);
          return;
        }
      }
    });
    onExpandStateChanged();
    setDividerWidth(getLayoutParamsmLeftView).contractedWidth);
  }
  
  public void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    paramInt1 = mLeftView.getMeasuredWidth();
    paramInt2 = mRightView.getMeasuredWidth();
    paramInt3 = mLeftView.getMeasuredHeight();
    mLeftView.layout(0, 0, paramInt1, paramInt3);
    LayoutParams localLayoutParams = (LayoutParams)mRightView.getLayoutParams();
    mRightView.layout(mDividerWidth + leftMargin, 0, mDividerWidth + paramInt2 - leftMargin, paramInt3);
  }
  
  public void onMeasure(int paramInt1, int paramInt2)
  {
    int i = View.MeasureSpec.getSize(paramInt1);
    LayoutParams localLayoutParams1 = getLayoutParams(mLeftView);
    LayoutParams localLayoutParams2 = getLayoutParams(mRightView);
    if (i != getWidth())
    {
      if (width == 0)
      {
        float f3 = weight;
        float f2 = f3 + weight;
        float f1 = f2;
        if (f2 == 0.0F) {
          f1 = 1.0F;
        }
        width = ((int)(f3 / f1 * i));
      }
      width -= leftMargin;
      if (mDefaultToExpandedMode)
      {
        width = (i - width);
        width -= leftMargin;
        setDividerWidth(computeWidthTarget());
      }
    }
    else
    {
      if (!mResizeLeftViewDuringAnimation) {
        break label229;
      }
      i = mDividerWidth;
    }
    for (;;)
    {
      mLeftView.measure(i | 0x40000000, paramInt2);
      i = mRightView.getLayoutParams().width;
      mRightView.measure(i | 0x40000000, paramInt2);
      setMeasuredDimension(View.MeasureSpec.getSize(paramInt1), View.MeasureSpec.getSize(paramInt2));
      return;
      width = (i - contractedWidth);
      break;
      label229:
      if ((!mExpandedState) && (!mAnimationRunning)) {
        i = contractedWidth;
      } else {
        i = mLeftView.getLayoutParams().width;
      }
    }
  }
  
  public void setDefaultToExpanded(boolean paramBoolean)
  {
    mDefaultToExpandedMode = paramBoolean;
    requestLayout();
  }
  
  public void setExpanded(boolean paramBoolean)
  {
    setExpandedState(paramBoolean, false);
  }
  
  public void setExpandedState(boolean paramBoolean1, boolean paramBoolean2)
  {
    if ((mExpandedState == paramBoolean1) && (!paramBoolean2)) {
      return;
    }
    mExpandedState = paramBoolean1;
    onExpandStateChanging(paramBoolean1);
    int i = getLayoutParamsmLeftView).width - getLayoutParamsmLeftView).contractedWidth;
    if (!paramBoolean2)
    {
      mRightView.bringToFront();
      if (paramBoolean1)
      {
        animate(mExpandAnimationDuration, 0, i);
        return;
      }
      animate(mContractAnimationDuration, i, 0);
      return;
    }
    setDividerWidth(computeWidthTarget());
    View localView = mRightView;
    if (mExpandedState) {}
    for (float f = i;; f = 0.0F)
    {
      localView.setTranslationX(f);
      return;
    }
  }
  
  public void setOnExpandStateChangedListener(ExpandStateChangedListener paramExpandStateChangedListener)
  {
    mExpandStateChangedListener = paramExpandStateChangedListener;
    if (paramExpandStateChangedListener != null) {
      paramExpandStateChangedListener.onExpandStateCompleted(this);
    }
  }
  
  public static abstract interface ExpandStateChangedListener
  {
    public abstract void onExpandStateCompleted(DrawerLayout paramDrawerLayout);
    
    public abstract void onExpandStateStarted(DrawerLayout paramDrawerLayout, boolean paramBoolean);
  }
  
  public static class LayoutParams
    extends ViewGroup.LayoutParams
  {
    public int contractedWidth;
    public int leftMargin;
    public float weight;
    
    public LayoutParams(int paramInt1, int paramInt2)
    {
      super(paramInt2);
      weight = 0.0F;
    }
    
    public LayoutParams(Context paramContext, AttributeSet paramAttributeSet)
    {
      super(paramAttributeSet);
      paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.DrawerLayoutChild);
      contractedWidth = paramContext.getDimensionPixelOffset(0, 100);
      weight = paramContext.getFloat(1, 0.0F);
      leftMargin = paramContext.getDimensionPixelOffset(2, 0);
      paramContext.recycle();
    }
    
    public LayoutParams(ViewGroup.LayoutParams paramLayoutParams)
    {
      super();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.DrawerLayout
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */