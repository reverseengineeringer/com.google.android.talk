package com.google.android.apps.hangouts.hangout.multiwaveview;

import aal;
import android.animation.Animator.AnimatorListener;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Vibrator;
import android.provider.Settings.System;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.accessibility.AccessibilityManager;
import awl;
import ezc;
import java.util.ArrayList;

public class GlowPadView
  extends View
{
  private static final boolean DEBUG = false;
  private static final int HIDE_ANIMATION_DELAY = 200;
  private static final int HIDE_ANIMATION_DURATION = 200;
  private static final int INITIAL_SHOW_HANDLE_DURATION = 200;
  private static final int RETURN_TO_HOME_DELAY = 1200;
  private static final int RETURN_TO_HOME_DURATION = 200;
  private static final int REVEAL_GLOW_DELAY = 0;
  private static final int REVEAL_GLOW_DURATION = 0;
  private static final float RING_SCALE_COLLAPSED = 0.5F;
  private static final float RING_SCALE_EXPANDED = 1.0F;
  private static final int SHOW_ANIMATION_DELAY = 50;
  private static final int SHOW_ANIMATION_DURATION = 200;
  private static final float SNAP_MARGIN_DEFAULT = 20.0F;
  private static final int STATE_FINISH = 5;
  private static final int STATE_FIRST_TOUCH = 2;
  private static final int STATE_IDLE = 0;
  private static final int STATE_SNAP = 4;
  private static final int STATE_START = 1;
  private static final int STATE_TRACKING = 3;
  private static final String TAG = "Babel_GlowPadView";
  private static final float TAP_RADIUS_SCALE_ACCESSIBILITY_ENABLED = 1.3F;
  private static final float TARGET_SCALE_COLLAPSED = 0.8F;
  private static final float TARGET_SCALE_EXPANDED = 1.0F;
  private static final int WAVE_ANIMATION_DURATION = 1350;
  private int mActiveTarget = -1;
  private boolean mAlwaysTrackFinger;
  private boolean mAnimatingTargets;
  private Tweener mBackgroundAnimator;
  private ArrayList<String> mDirectionDescriptions;
  private int mDirectionDescriptionsResourceId;
  private boolean mDragging;
  private int mFeedbackCount = 3;
  private GlowPadView.AnimationBundle mGlowAnimations = new GlowPadView.AnimationBundle(this, null);
  private float mGlowRadius;
  private int mGrabbedState;
  private int mGravity = 48;
  private TargetDrawable mHandleDrawable;
  private int mHorizontalInset;
  private boolean mInitialLayout = true;
  private float mInnerRadius;
  private int mMaxTargetHeight;
  private int mMaxTargetWidth;
  private int mNewTargetResources;
  private GlowPadView.OnTriggerListener mOnTriggerListener;
  private float mOuterRadius = 0.0F;
  private TargetDrawable mOuterRing;
  private PointCloud mPointCloud;
  private int mPointerId;
  private Animator.AnimatorListener mResetListener = new GlowPadView.1(this);
  private Animator.AnimatorListener mResetListenerWithPing = new GlowPadView.2(this);
  private float mSnapMargin = 0.0F;
  private GlowPadView.AnimationBundle mTargetAnimations = new GlowPadView.AnimationBundle(this, null);
  private ArrayList<String> mTargetDescriptions;
  private int mTargetDescriptionsResourceId;
  private ArrayList<TargetDrawable> mTargetDrawables = new ArrayList();
  private int mTargetResourceId;
  private Animator.AnimatorListener mTargetUpdateListener = new GlowPadView.4(this);
  private ValueAnimator.AnimatorUpdateListener mUpdateListener = new GlowPadView.3(this);
  private int mVerticalInset;
  private int mVibrationDuration = 0;
  private Vibrator mVibrator;
  private GlowPadView.AnimationBundle mWaveAnimations = new GlowPadView.AnimationBundle(this, null);
  private float mWaveCenterX;
  private float mWaveCenterY;
  
  public GlowPadView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public GlowPadView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    Object localObject = paramContext.getResources();
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, awl.K);
    mInnerRadius = localTypedArray.getDimension(awl.Q, mInnerRadius);
    mOuterRadius = localTypedArray.getDimension(awl.R, mOuterRadius);
    mSnapMargin = localTypedArray.getDimension(awl.U, mSnapMargin);
    mVibrationDuration = localTypedArray.getInt(awl.X, mVibrationDuration);
    mFeedbackCount = localTypedArray.getInt(awl.N, mFeedbackCount);
    TypedValue localTypedValue = localTypedArray.peekValue(awl.P);
    int i;
    if (localTypedValue != null)
    {
      i = resourceId;
      mHandleDrawable = new TargetDrawable((Resources)localObject, i);
      mHandleDrawable.setState(TargetDrawable.STATE_INACTIVE);
      mOuterRing = new TargetDrawable((Resources)localObject, getResourceId(localTypedArray, awl.S));
      mAlwaysTrackFinger = localTypedArray.getBoolean(awl.L, false);
      i = getResourceId(localTypedArray, awl.T);
      if (i == 0) {
        break label418;
      }
    }
    label418:
    for (localObject = ((Resources)localObject).getDrawable(i);; localObject = null)
    {
      mGlowRadius = localTypedArray.getDimension(awl.O, 0.0F);
      localTypedValue = new TypedValue();
      if (localTypedArray.getValue(awl.W, localTypedValue)) {
        internalSetTargetResources(resourceId);
      }
      if ((mTargetDrawables != null) && (mTargetDrawables.size() != 0)) {
        break label424;
      }
      throw new IllegalStateException("Must specify at least one target drawable");
      i = 0;
      break;
    }
    label424:
    if (localTypedArray.getValue(awl.V, localTypedValue))
    {
      i = resourceId;
      if (i == 0) {
        throw new IllegalStateException("Must specify target descriptions");
      }
      setTargetDescriptionsResourceId(i);
    }
    if (localTypedArray.getValue(awl.M, localTypedValue))
    {
      i = resourceId;
      if (i == 0) {
        throw new IllegalStateException("Must specify direction descriptions");
      }
      setDirectionDescriptionsResourceId(i);
    }
    localTypedArray.recycle();
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, new int[] { 16842931 });
    mGravity = paramContext.getInt(0, 48);
    paramContext.recycle();
    if (mVibrationDuration > 0) {
      bool = true;
    }
    setVibrateEnabled(bool);
    assignDefaultsIfNeeded();
    mPointCloud = new PointCloud((Drawable)localObject);
    mPointCloud.makePointCloud(mInnerRadius, mOuterRadius);
    mPointCloud.glowManager.setRadius(mGlowRadius);
  }
  
  private void announceTargets()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    int j = mTargetDrawables.size();
    int i = 0;
    while (i < j)
    {
      String str1 = getTargetDescription(i);
      String str2 = getDirectionDescription(i);
      if ((!TextUtils.isEmpty(str1)) && (!TextUtils.isEmpty(str2))) {
        localStringBuilder.append(String.format(str2, new Object[] { str1 }));
      }
      i += 1;
    }
    if (localStringBuilder.length() > 0) {
      ezc.a(this, null, localStringBuilder.toString());
    }
  }
  
  private void assignDefaultsIfNeeded()
  {
    if (mOuterRadius == 0.0F) {
      mOuterRadius = (Math.max(mOuterRing.getWidth(), mOuterRing.getHeight()) / 2.0F);
    }
    if (mSnapMargin == 0.0F) {
      mSnapMargin = TypedValue.applyDimension(1, 20.0F, getContext().getResources().getDisplayMetrics());
    }
    if (mInnerRadius == 0.0F) {
      mInnerRadius = (mHandleDrawable.getWidth() / 10.0F);
    }
  }
  
  private void computeInsets(int paramInt1, int paramInt2)
  {
    int i = mGravity;
    switch (i & 0x7)
    {
    case 4: 
    default: 
      mHorizontalInset = (paramInt1 / 2);
    }
    for (;;)
    {
      switch (i & 0x70)
      {
      default: 
        mVerticalInset = (paramInt2 / 2);
        return;
        mHorizontalInset = 0;
        continue;
        mHorizontalInset = paramInt1;
      }
    }
    mVerticalInset = 0;
    return;
    mVerticalInset = paramInt2;
  }
  
  private void deactivateTargets()
  {
    int j = mTargetDrawables.size();
    int i = 0;
    while (i < j)
    {
      ((TargetDrawable)mTargetDrawables.get(i)).setState(TargetDrawable.STATE_INACTIVE);
      i += 1;
    }
    mActiveTarget = -1;
  }
  
  private void dispatchOnFinishFinalAnimation()
  {
    if (mOnTriggerListener != null) {
      mOnTriggerListener.onFinishFinalAnimation();
    }
  }
  
  private void dispatchTriggerEvent(int paramInt)
  {
    vibrate();
    if (mOnTriggerListener != null) {
      mOnTriggerListener.onTrigger(this, paramInt);
    }
  }
  
  private float dist2(float paramFloat1, float paramFloat2)
  {
    return paramFloat1 * paramFloat1 + paramFloat2 * paramFloat2;
  }
  
  private void doFinish()
  {
    int j = mActiveTarget;
    int i;
    if (j != -1)
    {
      i = 1;
      if (i == 0) {
        break label66;
      }
      highlightSelected(j);
      hideGlow(200, 1200, 0.0F, mResetListener);
      dispatchTriggerEvent(j);
      if (!mAlwaysTrackFinger) {
        mTargetAnimations.stop();
      }
    }
    for (;;)
    {
      setGrabbedState(0);
      return;
      i = 0;
      break;
      label66:
      hideGlow(200, 0, 0.0F, mResetListenerWithPing);
      hideTargets(true, false);
    }
  }
  
  private void dump()
  {
    float f = mOuterRadius;
    new StringBuilder(30).append("Outer Radius = ").append(f);
    f = mSnapMargin;
    new StringBuilder(28).append("SnapMargin = ").append(f);
    int i = mFeedbackCount;
    new StringBuilder(27).append("FeedbackCount = ").append(i);
    i = mVibrationDuration;
    new StringBuilder(31).append("VibrationDuration = ").append(i);
    f = mGlowRadius;
    new StringBuilder(28).append("GlowRadius = ").append(f);
    f = mWaveCenterX;
    new StringBuilder(29).append("WaveCenterX = ").append(f);
    f = mWaveCenterY;
    new StringBuilder(29).append("WaveCenterY = ").append(f);
  }
  
  private String getDirectionDescription(int paramInt)
  {
    if ((mDirectionDescriptions == null) || (mDirectionDescriptions.isEmpty()))
    {
      mDirectionDescriptions = loadDescriptions(mDirectionDescriptionsResourceId);
      if (mTargetDrawables.size() != mDirectionDescriptions.size()) {
        return null;
      }
    }
    return (String)mDirectionDescriptions.get(paramInt);
  }
  
  private int getResourceId(TypedArray paramTypedArray, int paramInt)
  {
    paramTypedArray = paramTypedArray.peekValue(paramInt);
    if (paramTypedArray == null) {
      return 0;
    }
    return resourceId;
  }
  
  private float getScaledGlowRadiusSquared()
  {
    if (((AccessibilityManager)getContext().getSystemService("accessibility")).isEnabled()) {}
    for (float f = 1.3F * mGlowRadius;; f = mGlowRadius) {
      return square(f);
    }
  }
  
  private String getTargetDescription(int paramInt)
  {
    if ((mTargetDescriptions == null) || (mTargetDescriptions.isEmpty()))
    {
      mTargetDescriptions = loadDescriptions(mTargetDescriptionsResourceId);
      if (mTargetDrawables.size() != mTargetDescriptions.size()) {
        return null;
      }
    }
    return (String)mTargetDescriptions.get(paramInt);
  }
  
  private void handleCancel(MotionEvent paramMotionEvent)
  {
    mActiveTarget = -1;
    int j = paramMotionEvent.findPointerIndex(mPointerId);
    int i = j;
    if (j == -1) {
      i = 0;
    }
    switchToState(5, paramMotionEvent.getX(i), paramMotionEvent.getY(i));
  }
  
  private void handleDown(MotionEvent paramMotionEvent)
  {
    int i = paramMotionEvent.getActionIndex();
    float f1 = paramMotionEvent.getX(i);
    float f2 = paramMotionEvent.getY(i);
    switchToState(1, f1, f2);
    if (!trySwitchToFirstTouchState(f1, f2))
    {
      mDragging = false;
      return;
    }
    mPointerId = paramMotionEvent.getPointerId(i);
    updateGlowPosition(f1, f2);
  }
  
  private void handleMove(MotionEvent paramMotionEvent)
  {
    int n = paramMotionEvent.getHistorySize();
    ArrayList localArrayList = mTargetDrawables;
    int i1 = localArrayList.size();
    int i2 = paramMotionEvent.findPointerIndex(mPointerId);
    if (i2 == -1) {
      return;
    }
    int k = 0;
    float f1 = 0.0F;
    float f2 = 0.0F;
    int i = -1;
    label48:
    label74:
    label91:
    float f5;
    float f4;
    float f3;
    label143:
    int m;
    int j;
    if (k < n + 1) {
      if (k < n)
      {
        f1 = paramMotionEvent.getHistoricalX(i2, k);
        if (k >= n) {
          break label353;
        }
        f2 = paramMotionEvent.getHistoricalY(i2, k);
        f5 = f1 - mWaveCenterX;
        f4 = f2 - mWaveCenterY;
        f3 = (float)Math.sqrt(dist2(f5, f4));
        if (f3 <= mOuterRadius) {
          break label364;
        }
        f3 = mOuterRadius / f3;
        double d1 = Math.atan2(-f4, f5);
        if (!mDragging) {
          trySwitchToFirstTouchState(f1, f2);
        }
        m = i;
        if (!mDragging) {
          break label376;
        }
        f1 = mOuterRadius - mSnapMargin;
        j = 0;
        label195:
        m = i;
        if (j >= i1) {
          break label376;
        }
        TargetDrawable localTargetDrawable = (TargetDrawable)localArrayList.get(j);
        double d2 = (j - 0.5D) * 2.0D * 3.141592653589793D / i1;
        double d3 = (j + 0.5D) * 2.0D * 3.141592653589793D / i1;
        if (!localTargetDrawable.isEnabled()) {
          break label573;
        }
        if (((d1 <= d2) || (d1 > d3)) && ((6.283185307179586D + d1 <= d2) || (6.283185307179586D + d1 > d3))) {
          break label370;
        }
        m = 1;
        label307:
        if ((m == 0) || (dist2(f5, f4) <= f1 * f1)) {
          break label573;
        }
        i = j;
      }
    }
    label353:
    label364:
    label370:
    label376:
    label573:
    for (;;)
    {
      j += 1;
      break label195;
      f1 = paramMotionEvent.getX(i2);
      break label74;
      f2 = paramMotionEvent.getY(i2);
      break label91;
      f3 = 1.0F;
      break label143;
      m = 0;
      break label307;
      k += 1;
      f2 = f5 * f3;
      f1 = f4 * f3;
      i = m;
      break label48;
      if (!mDragging) {
        break;
      }
      if (i != -1)
      {
        switchToState(4, f2, f1);
        updateGlowPosition(f2, f1);
      }
      for (;;)
      {
        if (mActiveTarget != i)
        {
          if (mActiveTarget != -1)
          {
            paramMotionEvent = (TargetDrawable)localArrayList.get(mActiveTarget);
            if (paramMotionEvent.hasState(TargetDrawable.STATE_FOCUSED)) {
              paramMotionEvent.setState(TargetDrawable.STATE_INACTIVE);
            }
          }
          if (i != -1)
          {
            paramMotionEvent = (TargetDrawable)localArrayList.get(i);
            if (paramMotionEvent.hasState(TargetDrawable.STATE_FOCUSED)) {
              paramMotionEvent.setState(TargetDrawable.STATE_FOCUSED);
            }
            paramMotionEvent = (AccessibilityManager)getContext().getSystemService("accessibility");
            if (paramMotionEvent.isEnabled()) {
              ezc.a(this, paramMotionEvent, getTargetDescription(i));
            }
          }
        }
        mActiveTarget = i;
        return;
        switchToState(3, f2, f1);
        updateGlowPosition(f2, f1);
      }
    }
  }
  
  private void handleUp(MotionEvent paramMotionEvent)
  {
    int i = paramMotionEvent.getActionIndex();
    if (paramMotionEvent.getPointerId(i) == mPointerId) {
      switchToState(5, paramMotionEvent.getX(i), paramMotionEvent.getY(i));
    }
  }
  
  private void hideGlow(int paramInt1, int paramInt2, float paramFloat, Animator.AnimatorListener paramAnimatorListener)
  {
    mGlowAnimations.cancel();
    mGlowAnimations.add(Tweener.to(mPointCloud.glowManager, paramInt1, new Object[] { "ease", Ease.Quart.easeOut, "delay", Integer.valueOf(paramInt2), "alpha", Float.valueOf(paramFloat), "x", Float.valueOf(0.0F), "y", Float.valueOf(0.0F), "onUpdate", mUpdateListener, "onComplete", paramAnimatorListener }));
    mGlowAnimations.start();
  }
  
  private void hideTargets(boolean paramBoolean1, boolean paramBoolean2)
  {
    mTargetAnimations.cancel();
    mAnimatingTargets = paramBoolean1;
    int i;
    int j;
    if (paramBoolean1)
    {
      i = 200;
      if (!paramBoolean1) {
        break label201;
      }
      j = 200;
      label30:
      if (!paramBoolean2) {
        break label207;
      }
    }
    TimeInterpolator localTimeInterpolator;
    label201:
    label207:
    for (float f = 1.0F;; f = 0.8F)
    {
      int m = mTargetDrawables.size();
      localTimeInterpolator = Ease.Cubic.easeOut;
      int k = 0;
      while (k < m)
      {
        TargetDrawable localTargetDrawable = (TargetDrawable)mTargetDrawables.get(k);
        localTargetDrawable.setState(TargetDrawable.STATE_INACTIVE);
        mTargetAnimations.add(Tweener.to(localTargetDrawable, i, new Object[] { "ease", localTimeInterpolator, "alpha", Float.valueOf(0.0F), "scaleX", Float.valueOf(f), "scaleY", Float.valueOf(f), "delay", Integer.valueOf(j), "onUpdate", mUpdateListener }));
        k += 1;
      }
      i = 0;
      break;
      j = 0;
      break label30;
    }
    if (paramBoolean2) {}
    for (f = 1.0F;; f = 0.5F)
    {
      mTargetAnimations.add(Tweener.to(mOuterRing, i, new Object[] { "ease", localTimeInterpolator, "alpha", Float.valueOf(0.0F), "scaleX", Float.valueOf(f), "scaleY", Float.valueOf(f), "delay", Integer.valueOf(j), "onUpdate", mUpdateListener, "onComplete", mTargetUpdateListener }));
      mTargetAnimations.start();
      return;
    }
  }
  
  private void hideUnselected(int paramInt)
  {
    int i = 0;
    while (i < mTargetDrawables.size())
    {
      if (i != paramInt) {
        ((TargetDrawable)mTargetDrawables.get(i)).setAlpha(0.0F);
      }
      i += 1;
    }
  }
  
  private void highlightSelected(int paramInt)
  {
    ((TargetDrawable)mTargetDrawables.get(paramInt)).setState(TargetDrawable.STATE_ACTIVE);
    hideUnselected(paramInt);
  }
  
  private void internalSetTargetResources(int paramInt)
  {
    ArrayList localArrayList = loadDrawableArray(paramInt);
    mTargetDrawables = localArrayList;
    mTargetResourceId = paramInt;
    Object localObject = getContext().getResources();
    int i = ((Resources)localObject).getDimensionPixelOffset(aal.eI);
    paramInt = ((Resources)localObject).getDimensionPixelOffset(aal.es);
    int k = localArrayList.size();
    int j = 0;
    if (j < k)
    {
      localObject = (TargetDrawable)localArrayList.get(j);
      if (j % 2 == 0) {
        i = Math.max(i, ((TargetDrawable)localObject).getWidth());
      }
      for (;;)
      {
        j += 1;
        break;
        paramInt = Math.max(paramInt, ((TargetDrawable)localObject).getHeight());
      }
    }
    if ((mMaxTargetWidth != i) || (mMaxTargetHeight != paramInt))
    {
      mMaxTargetWidth = i;
      mMaxTargetHeight = paramInt;
      requestLayout();
      return;
    }
    updateTargetPositions(mWaveCenterX, mWaveCenterY);
    updatePointCloudPosition(mWaveCenterX, mWaveCenterY);
  }
  
  private ArrayList<String> loadDescriptions(int paramInt)
  {
    TypedArray localTypedArray = getContext().getResources().obtainTypedArray(paramInt);
    int i = localTypedArray.length();
    ArrayList localArrayList = new ArrayList(i);
    paramInt = 0;
    while (paramInt < i)
    {
      localArrayList.add(localTypedArray.getString(paramInt));
      paramInt += 1;
    }
    localTypedArray.recycle();
    return localArrayList;
  }
  
  private ArrayList<TargetDrawable> loadDrawableArray(int paramInt)
  {
    Resources localResources = getContext().getResources();
    TypedArray localTypedArray = localResources.obtainTypedArray(paramInt);
    int j = localTypedArray.length();
    ArrayList localArrayList = new ArrayList(j);
    paramInt = 0;
    if (paramInt < j)
    {
      TypedValue localTypedValue = localTypedArray.peekValue(paramInt);
      if (localTypedValue != null) {}
      for (int i = resourceId;; i = 0)
      {
        localArrayList.add(new TargetDrawable(localResources, i));
        paramInt += 1;
        break;
      }
    }
    localTypedArray.recycle();
    return localArrayList;
  }
  
  private boolean replaceTargetDrawables(Resources paramResources, int paramInt1, int paramInt2)
  {
    boolean bool3 = false;
    boolean bool1 = false;
    boolean bool2 = bool1;
    if (paramInt1 != 0)
    {
      if (paramInt2 == 0) {
        bool2 = bool1;
      }
    }
    else {
      return bool2;
    }
    ArrayList localArrayList = mTargetDrawables;
    int j = localArrayList.size();
    int i = 0;
    bool1 = bool3;
    label45:
    if (i < j)
    {
      TargetDrawable localTargetDrawable = (TargetDrawable)localArrayList.get(i);
      if ((localTargetDrawable == null) || (localTargetDrawable.getResourceId() != paramInt1)) {
        break label113;
      }
      localTargetDrawable.setDrawable(paramResources, paramInt2);
      bool1 = true;
    }
    label113:
    for (;;)
    {
      i += 1;
      break label45;
      bool2 = bool1;
      if (!bool1) {
        break;
      }
      requestLayout();
      return bool1;
    }
  }
  
  private int resolveMeasured(int paramInt1, int paramInt2)
  {
    int j = View.MeasureSpec.getSize(paramInt1);
    int i = paramInt2;
    switch (View.MeasureSpec.getMode(paramInt1))
    {
    default: 
      i = j;
    case 0: 
      return i;
    }
    return Math.min(j, paramInt2);
  }
  
  private void setGrabbedState(int paramInt)
  {
    if (paramInt != mGrabbedState)
    {
      if (paramInt != 0) {
        vibrate();
      }
      mGrabbedState = paramInt;
      if (mOnTriggerListener != null)
      {
        if (paramInt != 0) {
          break label55;
        }
        mOnTriggerListener.onReleased(this, 1);
      }
    }
    for (;;)
    {
      mOnTriggerListener.onGrabbedStateChange(this, paramInt);
      return;
      label55:
      mOnTriggerListener.onGrabbed(this, 1);
    }
  }
  
  private void showGlow(int paramInt1, int paramInt2, float paramFloat, Animator.AnimatorListener paramAnimatorListener)
  {
    mGlowAnimations.cancel();
    mGlowAnimations.add(Tweener.to(mPointCloud.glowManager, paramInt1, new Object[] { "ease", Ease.Cubic.easeIn, "delay", Integer.valueOf(paramInt2), "alpha", Float.valueOf(paramFloat), "onUpdate", mUpdateListener, "onComplete", paramAnimatorListener }));
    mGlowAnimations.start();
  }
  
  private void showTargets(boolean paramBoolean)
  {
    mTargetAnimations.stop();
    mAnimatingTargets = paramBoolean;
    int i;
    if (paramBoolean)
    {
      i = 50;
      if (!paramBoolean) {
        break label185;
      }
    }
    label185:
    for (int j = 200;; j = 0)
    {
      int m = mTargetDrawables.size();
      int k = 0;
      while (k < m)
      {
        TargetDrawable localTargetDrawable = (TargetDrawable)mTargetDrawables.get(k);
        localTargetDrawable.setState(TargetDrawable.STATE_INACTIVE);
        mTargetAnimations.add(Tweener.to(localTargetDrawable, j, new Object[] { "ease", Ease.Cubic.easeOut, "alpha", Float.valueOf(1.0F), "scaleX", Float.valueOf(1.0F), "scaleY", Float.valueOf(1.0F), "delay", Integer.valueOf(i), "onUpdate", mUpdateListener }));
        k += 1;
      }
      i = 0;
      break;
    }
    mTargetAnimations.add(Tweener.to(mOuterRing, j, new Object[] { "ease", Ease.Cubic.easeOut, "alpha", Float.valueOf(1.0F), "scaleX", Float.valueOf(1.0F), "scaleY", Float.valueOf(1.0F), "delay", Integer.valueOf(i), "onUpdate", mUpdateListener, "onComplete", mTargetUpdateListener }));
    mTargetAnimations.start();
  }
  
  private float square(float paramFloat)
  {
    return paramFloat * paramFloat;
  }
  
  private void startBackgroundAnimation(int paramInt, float paramFloat)
  {
    Drawable localDrawable = getBackground();
    if ((mAlwaysTrackFinger) && (localDrawable != null))
    {
      if (mBackgroundAnimator != null) {
        mBackgroundAnimator.animator.cancel();
      }
      mBackgroundAnimator = Tweener.to(localDrawable, paramInt, new Object[] { "ease", Ease.Cubic.easeIn, "alpha", Integer.valueOf((int)(255.0F * paramFloat)), "delay", Integer.valueOf(50) });
      mBackgroundAnimator.animator.start();
    }
  }
  
  private void startWaveAnimation()
  {
    mWaveAnimations.cancel();
    mPointCloud.waveManager.setAlpha(1.0F);
    mPointCloud.waveManager.setRadius(mHandleDrawable.getWidth() / 2.0F);
    mWaveAnimations.add(Tweener.to(mPointCloud.waveManager, 1350L, new Object[] { "ease", Ease.Quad.easeOut, "delay", Integer.valueOf(0), "radius", Float.valueOf(mOuterRadius * 2.0F), "onUpdate", mUpdateListener, "onComplete", new GlowPadView.5(this) }));
    mWaveAnimations.start();
  }
  
  private void stopAndHideWaveAnimation()
  {
    mWaveAnimations.cancel();
    mPointCloud.waveManager.setAlpha(0.0F);
  }
  
  private void switchToState(int paramInt, float paramFloat1, float paramFloat2)
  {
    switch (paramInt)
    {
    default: 
    case 0: 
    case 1: 
    case 2: 
      do
      {
        return;
        deactivateTargets();
        hideGlow(0, 0, 0.0F, null);
        startBackgroundAnimation(0, 0.0F);
        mHandleDrawable.setState(TargetDrawable.STATE_INACTIVE);
        mHandleDrawable.setAlpha(1.0F);
        return;
        startBackgroundAnimation(0, 0.0F);
        return;
        mHandleDrawable.setAlpha(0.0F);
        deactivateTargets();
        showTargets(true);
        startBackgroundAnimation(200, 1.0F);
        setGrabbedState(1);
      } while (!((AccessibilityManager)getContext().getSystemService("accessibility")).isEnabled());
      announceTargets();
      return;
    case 3: 
      mHandleDrawable.setAlpha(0.0F);
      showGlow(0, 0, 1.0F, null);
      return;
    case 4: 
      mHandleDrawable.setAlpha(0.0F);
      showGlow(0, 0, 0.0F, null);
      return;
    }
    doFinish();
  }
  
  private boolean trySwitchToFirstTouchState(float paramFloat1, float paramFloat2)
  {
    float f1 = paramFloat1 - mWaveCenterX;
    float f2 = paramFloat2 - mWaveCenterY;
    if ((mAlwaysTrackFinger) || (dist2(f1, f2) <= getScaledGlowRadiusSquared()))
    {
      switchToState(2, paramFloat1, paramFloat2);
      updateGlowPosition(f1, f2);
      mDragging = true;
      return true;
    }
    return false;
  }
  
  private void updateGlowPosition(float paramFloat1, float paramFloat2)
  {
    mPointCloud.glowManager.setX(paramFloat1);
    mPointCloud.glowManager.setY(paramFloat2);
  }
  
  private void updatePointCloudPosition(float paramFloat1, float paramFloat2)
  {
    mPointCloud.setCenter(paramFloat1, paramFloat2);
  }
  
  private void updateTargetPositions(float paramFloat1, float paramFloat2)
  {
    ArrayList localArrayList = mTargetDrawables;
    int j = localArrayList.size();
    float f1 = (float)(-6.283185307179586D / j);
    int i = 0;
    while (i < j)
    {
      TargetDrawable localTargetDrawable = (TargetDrawable)localArrayList.get(i);
      float f2 = i * f1;
      localTargetDrawable.setPositionX(paramFloat1);
      localTargetDrawable.setPositionY(paramFloat2);
      localTargetDrawable.setX(mOuterRadius * (float)Math.cos(f2));
      float f3 = mOuterRadius;
      localTargetDrawable.setY((float)Math.sin(f2) * f3);
      i += 1;
    }
  }
  
  private void vibrate()
  {
    int i = 1;
    if (Settings.System.getInt(getContext().getContentResolver(), "haptic_feedback_enabled", 1) != 0) {}
    for (;;)
    {
      if ((mVibrator != null) && (i != 0)) {
        mVibrator.vibrate(mVibrationDuration);
      }
      return;
      i = 0;
    }
  }
  
  public int getDirectionDescriptionsResourceId()
  {
    return mDirectionDescriptionsResourceId;
  }
  
  public int getResourceIdForTarget(int paramInt)
  {
    TargetDrawable localTargetDrawable = (TargetDrawable)mTargetDrawables.get(paramInt);
    if (localTargetDrawable == null) {
      return 0;
    }
    return localTargetDrawable.getResourceId();
  }
  
  protected int getSuggestedMinimumHeight()
  {
    return (int)(Math.max(mOuterRing.getHeight(), 2.0F * mOuterRadius) + mMaxTargetHeight);
  }
  
  protected int getSuggestedMinimumWidth()
  {
    return (int)(Math.max(mOuterRing.getWidth(), 2.0F * mOuterRadius) + mMaxTargetWidth);
  }
  
  public int getTargetDescriptionsResourceId()
  {
    return mTargetDescriptionsResourceId;
  }
  
  public int getTargetPosition(int paramInt)
  {
    int i = 0;
    while (i < mTargetDrawables.size())
    {
      if (((TargetDrawable)mTargetDrawables.get(i)).getResourceId() == paramInt) {
        return i;
      }
      i += 1;
    }
    return -1;
  }
  
  public int getTargetResourceId()
  {
    return mTargetResourceId;
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    mPointCloud.draw(paramCanvas);
    mOuterRing.draw(paramCanvas);
    int j = mTargetDrawables.size();
    int i = 0;
    while (i < j)
    {
      TargetDrawable localTargetDrawable = (TargetDrawable)mTargetDrawables.get(i);
      if (localTargetDrawable != null) {
        localTargetDrawable.draw(paramCanvas);
      }
      i += 1;
    }
    mHandleDrawable.draw(paramCanvas);
  }
  
  public boolean onHoverEvent(MotionEvent paramMotionEvent)
  {
    int i;
    if (((AccessibilityManager)getContext().getSystemService("accessibility")).isTouchExplorationEnabled())
    {
      i = paramMotionEvent.getAction();
      switch (i)
      {
      }
    }
    for (;;)
    {
      onTouchEvent(paramMotionEvent);
      paramMotionEvent.setAction(i);
      return super.onHoverEvent(paramMotionEvent);
      paramMotionEvent.setAction(0);
      continue;
      paramMotionEvent.setAction(2);
      continue;
      paramMotionEvent.setAction(1);
    }
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    float f2 = Math.max(mOuterRing.getWidth(), mOuterRadius * 2.0F);
    float f1 = Math.max(mOuterRing.getHeight(), mOuterRadius * 2.0F);
    float f3 = mHorizontalInset;
    f2 = Math.max(paramInt3 - paramInt1, f2 + mMaxTargetWidth) / 2.0F + f3;
    f3 = mVerticalInset;
    f1 = Math.max(paramInt4 - paramInt2, f1 + mMaxTargetHeight) / 2.0F + f3;
    if (mInitialLayout)
    {
      stopAndHideWaveAnimation();
      hideTargets(false, false);
      mInitialLayout = false;
    }
    mOuterRing.setPositionX(f2);
    mOuterRing.setPositionY(f1);
    mHandleDrawable.setPositionX(f2);
    mHandleDrawable.setPositionY(f1);
    updateTargetPositions(f2, f1);
    updatePointCloudPosition(f2, f1);
    updateGlowPosition(f2, f1);
    mWaveCenterX = f2;
    mWaveCenterY = f1;
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i = getSuggestedMinimumWidth();
    int j = getSuggestedMinimumHeight();
    paramInt1 = resolveMeasured(paramInt1, i);
    paramInt2 = resolveMeasured(paramInt2, j);
    computeInsets(paramInt1 - i, paramInt2 - j);
    setMeasuredDimension(paramInt1, paramInt2);
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    int k = paramMotionEvent.getActionMasked();
    int j = 0;
    int i = j;
    switch (k)
    {
    default: 
      i = j;
    }
    for (;;)
    {
      invalidate();
      if (i == 0) {
        break;
      }
      return true;
      handleDown(paramMotionEvent);
      handleMove(paramMotionEvent);
      i = 1;
      continue;
      handleMove(paramMotionEvent);
      i = 1;
      continue;
      handleMove(paramMotionEvent);
      handleUp(paramMotionEvent);
      i = 1;
      continue;
      handleMove(paramMotionEvent);
      handleCancel(paramMotionEvent);
      i = 1;
    }
    return super.onTouchEvent(paramMotionEvent);
  }
  
  public void ping()
  {
    if (mFeedbackCount > 0)
    {
      GlowPadView.AnimationBundle localAnimationBundle = mWaveAnimations;
      if ((localAnimationBundle.size() <= 0) || (!get0animator.isRunning()) || (get0animator.getCurrentPlayTime() >= 675L)) {
        break label68;
      }
    }
    label68:
    for (int i = 0;; i = 1)
    {
      if (i != 0) {
        startWaveAnimation();
      }
      return;
    }
  }
  
  public boolean replaceTargetDrawablesIfPresent(ComponentName paramComponentName, String paramString, int paramInt)
  {
    bool2 = false;
    bool1 = false;
    if (paramInt == 0) {
      bool2 = bool1;
    }
    do
    {
      return bool2;
      bool1 = bool2;
      if (paramComponentName != null) {}
      try
      {
        PackageManager localPackageManager = getContext().getPackageManager();
        Bundle localBundle = getActivityInfo128metaData;
        bool1 = bool2;
        if (localBundle != null)
        {
          int i = localBundle.getInt(paramString);
          bool1 = bool2;
          if (i != 0) {
            bool1 = replaceTargetDrawables(localPackageManager.getResourcesForActivity(paramComponentName), paramInt, i);
          }
        }
      }
      catch (PackageManager.NameNotFoundException paramString)
      {
        for (;;)
        {
          paramComponentName = String.valueOf(paramComponentName.flattenToShortString());
          new StringBuilder(String.valueOf(paramComponentName).length() + 35).append("Failed to swap drawable; ").append(paramComponentName).append(" not found");
          bool1 = bool2;
        }
      }
      catch (Resources.NotFoundException paramString)
      {
        for (;;)
        {
          paramComponentName = String.valueOf(paramComponentName.flattenToShortString());
          if (paramComponentName.length() != 0)
          {
            "Failed to swap drawable from ".concat(paramComponentName);
            bool1 = bool2;
          }
          else
          {
            new String("Failed to swap drawable from ");
            bool1 = bool2;
          }
        }
      }
      bool2 = bool1;
    } while (bool1);
    replaceTargetDrawables(getContext().getResources(), paramInt, paramInt);
    return bool1;
  }
  
  public void reset(boolean paramBoolean)
  {
    mGlowAnimations.stop();
    mTargetAnimations.stop();
    startBackgroundAnimation(0, 0.0F);
    stopAndHideWaveAnimation();
    hideTargets(paramBoolean, false);
    hideGlow(0, 0, 0.0F, null);
    Tweener.reset();
  }
  
  public void resumeAnimations()
  {
    mWaveAnimations.setSuspended(false);
    mTargetAnimations.setSuspended(false);
    mGlowAnimations.setSuspended(false);
    mWaveAnimations.start();
    mTargetAnimations.start();
    mGlowAnimations.start();
  }
  
  public void setDirectionDescriptionsResourceId(int paramInt)
  {
    mDirectionDescriptionsResourceId = paramInt;
    if (mDirectionDescriptions != null) {
      mDirectionDescriptions.clear();
    }
  }
  
  public void setEnableTarget(int paramInt, boolean paramBoolean)
  {
    int i = 0;
    for (;;)
    {
      if (i < mTargetDrawables.size())
      {
        TargetDrawable localTargetDrawable = (TargetDrawable)mTargetDrawables.get(i);
        if (localTargetDrawable.getResourceId() == paramInt) {
          localTargetDrawable.setEnabled(paramBoolean);
        }
      }
      else
      {
        return;
      }
      i += 1;
    }
  }
  
  public void setHandleDrawable(Resources paramResources, int paramInt)
  {
    if (mHandleDrawable != null) {
      mHandleDrawable.setDrawable(paramResources, paramInt);
    }
  }
  
  public void setOnTriggerListener(GlowPadView.OnTriggerListener paramOnTriggerListener)
  {
    mOnTriggerListener = paramOnTriggerListener;
  }
  
  public void setTargetDescriptionsResourceId(int paramInt)
  {
    mTargetDescriptionsResourceId = paramInt;
    if (mTargetDescriptions != null) {
      mTargetDescriptions.clear();
    }
  }
  
  public void setTargetResources(int paramInt)
  {
    if (mAnimatingTargets)
    {
      mNewTargetResources = paramInt;
      return;
    }
    internalSetTargetResources(paramInt);
  }
  
  public void setVibrateEnabled(boolean paramBoolean)
  {
    if ((paramBoolean) && (mVibrator == null))
    {
      mVibrator = ((Vibrator)getContext().getSystemService("vibrator"));
      return;
    }
    mVibrator = null;
  }
  
  public void suspendAnimations()
  {
    mWaveAnimations.setSuspended(true);
    mTargetAnimations.setSuspended(true);
    mGlowAnimations.setSuspended(true);
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.hangout.multiwaveview.GlowPadView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */