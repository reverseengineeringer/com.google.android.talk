package com.google.android.talk.videochat;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TypeEvaluator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Handler;
import android.util.Log;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import com.google.android.talk.TalkApp;

public class VideoAnimator
{
  private static final int BACKGROUND_FINAL_COLOR = -16777216;
  private static float CLIP_THRESHOLD = 0.1F;
  private static final int FADE_SELF_FRAME_DURATION = 500;
  private static final int FADE_TO_BLACK_DURATION = 500;
  private static final float SELF_FRAME_VANITY_FINAL_RELATIVE_SIZE = 0.3F;
  private static final float SELF_FRAME_VANITY_INITIAL_RELATIVE_SIZE = 0.27F;
  private static final int STATE_REMOTE_FRAME_CORNER = 1;
  private static final int STATE_REMOTE_FRAME_FULLSCREEN = 0;
  private static final String TAG = "talk:VideoAnimator";
  private int mBackgroundColor;
  private ObjectAnimator mBackgroundFadeAnimator;
  private float mBackgroundImageAlpha;
  private Position mCenterScreenPosition;
  private int mCornerFrameMarginBottom;
  private int mCornerFrameMarginLeftRight;
  private int mCornerFrameWidth;
  private DecelerateInterpolator mDecelerateQuintInterp = new DecelerateInterpolator(2.5F);
  private int mFadeInDuration;
  private boolean mFlipZOrder;
  private ObjectAnimator mFlipZOrderAnimator;
  private boolean mFreezeFrame;
  private ObjectAnimator mFreezeFrameAnimator;
  private Handler mHandler;
  private RectSize mLeftCornerFrameSize;
  private int mLeftCornerFrameWidthLandscape;
  private int mLeftCornerFrameWidthPortrait;
  private Position mLeftCornerPosition;
  private boolean mNeedToAnimateFramesToStandardPosition;
  private boolean mNeedToAnimateFramesToSwappedPosition;
  private boolean mNeedToAnimateToCorner;
  private boolean mNeedToAnimateToVanity;
  private boolean mNeedToPlaceFramesInStandardPosition;
  private boolean mNeedToPlaceFramesInSwappedPosition;
  private boolean mNeedToPlaceInCorner;
  private boolean mNeedToPlaceInVanity;
  private boolean mNeedToPlaceRemoteInFullscreen;
  private float mRemoteFrameAlpha = 0.0F;
  private ObjectAnimator mRemoteFrameFadeInAnimator;
  private ClippingParams mRemoteFrameFullscreenClippingParams;
  private float mRemoteFrameRawAspectRatio;
  private Rect mRemoteFrameRect = new Rect(0, 0, 0, 0);
  private RectSize mRemoteFrameSize;
  private int mRemoteFrameState;
  private int mRemoteFrameX = 0;
  private float mRemoteFrameXClip;
  private int mRemoteFrameY = 0;
  private float mRemoteFrameYClip;
  private ObjectAnimator mReverseFlipZOrderAnimator;
  private AnimatorSet mReverseSwapFramesAnimation;
  private RectSize mRightCornerFrameSize;
  private Position mRightCornerPosition;
  private float mSelfFrameAlpha = 0.0F;
  private ObjectAnimator mSelfFrameFadeInAnimator;
  private ObjectAnimator mSelfFrameFadeOutAnimator;
  private AnimatorSet mSelfFrameFlyInAnimator;
  private ClippingParams mSelfFrameFullscreenClippingParams;
  private AnimatorSet mSelfFrameMoveToCornerAnimator;
  private float mSelfFrameRawAspectRatio;
  private Rect mSelfFrameRect = new Rect(0, 0, 0, 0);
  private RectSize mSelfFrameSize;
  private int mSelfFrameToCornerAnimDuration;
  private int mSelfFrameX = 0;
  private float mSelfFrameXClip;
  private int mSelfFrameY = 0;
  private float mSelfFrameYClip;
  private boolean mSelfFramesAvailable;
  private int mSwapFramesAnimDuration;
  private AnimatorSet mSwapFramesAnimation;
  private boolean mUnhideSelfFrameIfAvailable;
  private RectSize mVanityFrameSize;
  private int mViewportHeight;
  private int mViewportWidth;
  
  public VideoAnimator(Context paramContext, boolean paramBoolean)
  {
    mSelfFrameToCornerAnimDuration = paramContext.getResources().getInteger(2131361793);
    mSwapFramesAnimDuration = paramContext.getResources().getInteger(2131361795);
    mFadeInDuration = paramContext.getResources().getInteger(2131361794);
    mRemoteFrameFadeInAnimator = ObjectAnimator.ofFloat(this, "remoteFrameAlpha", new float[] { 0.0F, 1.0F });
    mRemoteFrameFadeInAnimator.setInterpolator(new DecelerateInterpolator(1.5F));
    mRemoteFrameFadeInAnimator.setDuration(paramContext.getResources().getInteger(2131361794));
    if (paramBoolean) {}
    for (mBackgroundColor = paramContext.getResources().getColor(2131296294);; mBackgroundColor = -16777216)
    {
      mBackgroundFadeAnimator = ObjectAnimator.ofInt(this, "backgroundColor", new int[] { mBackgroundColor, -16777216 });
      mBackgroundFadeAnimator.setEvaluator(new RgbEvaluator(null));
      mBackgroundFadeAnimator.setInterpolator(new AccelerateDecelerateInterpolator());
      mBackgroundFadeAnimator.setDuration(500L);
      mCornerFrameMarginBottom = paramContext.getResources().getDimensionPixelSize(2131427368);
      mCornerFrameMarginLeftRight = paramContext.getResources().getDimensionPixelSize(2131427369);
      mCornerFrameWidth = paramContext.getResources().getDimensionPixelSize(2131427400);
      mLeftCornerFrameWidthLandscape = paramContext.getResources().getDimensionPixelSize(2131427370);
      mLeftCornerFrameWidthPortrait = paramContext.getResources().getDimensionPixelSize(2131427371);
      mSelfFrameFadeInAnimator = ObjectAnimator.ofFloat(this, "selfFrameAlpha", new float[] { 0.0F, 1.0F });
      mSelfFrameFadeInAnimator.setDuration(500L);
      mSelfFrameFadeInAnimator.setInterpolator(new DecelerateInterpolator(1.5F));
      mSelfFrameFadeOutAnimator = ObjectAnimator.ofFloat(this, "selfFrameAlpha", new float[] { 1.0F, 0.0F });
      mSelfFrameFadeOutAnimator.setDuration(500L);
      mSelfFrameFadeOutAnimator.setInterpolator(new DecelerateInterpolator(1.5F));
      mSelfFrameFadeOutAnimator.addListener(new Animator.AnimatorListener()
      {
        public void onAnimationCancel(Animator paramAnonymousAnimator) {}
        
        public void onAnimationEnd(Animator paramAnonymousAnimator)
        {
          VideoAnimator.access$102(VideoAnimator.this, true);
          if (mSelfFramesAvailable)
          {
            mSelfFrameFadeInAnimator.start();
            VideoAnimator.access$102(VideoAnimator.this, false);
          }
        }
        
        public void onAnimationRepeat(Animator paramAnonymousAnimator) {}
        
        public void onAnimationStart(Animator paramAnonymousAnimator) {}
      });
      mFlipZOrderAnimator = ObjectAnimator.ofInt(this, "flipZOrder", new int[] { 0, 1 });
      mFlipZOrderAnimator.setStartDelay(10L);
      mFlipZOrderAnimator.setDuration(0L);
      mReverseFlipZOrderAnimator = ObjectAnimator.ofInt(this, "flipZOrder", new int[] { 1, 0 });
      mReverseFlipZOrderAnimator.setStartDelay(10L);
      mReverseFlipZOrderAnimator.setDuration(0L);
      mFreezeFrameAnimator = ObjectAnimator.ofInt(this, "freezeFrame", new int[] { 1, 0 });
      return;
    }
  }
  
  public static ClippingParams calculateClippingParams(int paramInt1, int paramInt2, float paramFloat)
  {
    ClippingParams localClippingParams = new ClippingParams();
    float f3 = paramInt1 / paramInt2;
    float f2 = 0.0F;
    float f1 = 0.0F;
    int i = 0;
    int j = 0;
    if (f3 > paramFloat)
    {
      f3 = (1.0F / paramFloat - 1.0F / f3) * paramFloat;
      if (f3 > CLIP_THRESHOLD)
      {
        i = paramInt1 - Math.round(paramInt2 * paramFloat);
        paramFloat = f2;
      }
    }
    for (;;)
    {
      mXClipPercentage = paramFloat;
      mYClipPercentage = f1;
      mClippedSize = new RectSize(paramInt1 - i, paramInt2 - j);
      return localClippingParams;
      f1 = f3;
      paramFloat = f2;
      continue;
      f3 = (paramFloat - f3) / paramFloat;
      if (f3 > CLIP_THRESHOLD)
      {
        j = paramInt2 - Math.round(paramInt1 / paramFloat);
        paramFloat = f2;
      }
      else
      {
        paramFloat = f3;
      }
    }
  }
  
  private boolean fullySpecified()
  {
    return (mSelfFrameRawAspectRatio > 0.0F) && (mViewportWidth > 0) && (mViewportHeight > 0) && (mRemoteFrameRawAspectRatio > 0.0F);
  }
  
  private void initializeFullScreenValues()
  {
    mCenterScreenPosition = new Position(Math.round(mViewportWidth / 2.0F), Math.round(mViewportHeight / 2.0F));
  }
  
  private void initializeLeftCornerValues()
  {
    if (mRemoteFrameRawAspectRatio > 1.0F) {}
    for (int i = mLeftCornerFrameWidthLandscape;; i = mLeftCornerFrameWidthPortrait)
    {
      int j = Math.round(i / 2.0F);
      mLeftCornerPosition = new Position(mCornerFrameMarginLeftRight + j, mViewportHeight - mCornerFrameMarginBottom - Math.round(i / mRemoteFrameRawAspectRatio / 2.0F));
      mLeftCornerFrameSize = new RectSize(i, Math.round(i / mRemoteFrameRawAspectRatio));
      return;
    }
  }
  
  private void initializeRightCornerValues()
  {
    int i = Math.round(mCornerFrameWidth / 2.0F);
    mRightCornerPosition = new Position(mViewportWidth - mCornerFrameMarginLeftRight - i, mViewportHeight - mCornerFrameMarginBottom - Math.round(mCornerFrameWidth / mSelfFrameRawAspectRatio / 2.0F));
    mRightCornerFrameSize = new RectSize(mCornerFrameWidth, Math.round(mCornerFrameWidth / mSelfFrameRawAspectRatio));
  }
  
  private void initializeStartupAnimators()
  {
    Object localObject1 = new RectSize();
    Object localObject2 = new RectSize();
    if (mViewportWidth / mViewportHeight > mSelfFrameRawAspectRatio)
    {
      h = Math.round(mViewportHeight * 0.27F);
      w = Math.round(h * mSelfFrameRawAspectRatio);
      h = Math.round(0.3F * mViewportHeight);
      w = Math.round(h * mSelfFrameRawAspectRatio);
    }
    for (;;)
    {
      mVanityFrameSize = ((RectSize)localObject2);
      localObject1 = ObjectAnimator.ofObject(this, "selfFrameSize", new RectSizeEvaluator(null), new Object[] { localObject1, localObject2 });
      ((ObjectAnimator)localObject1).setInterpolator(new DecelerateInterpolator(2.5F));
      localObject2 = ObjectAnimator.ofObject(this, "selfFramePosition", new PositionEvaluator(null), new Object[] { mCenterScreenPosition, mCenterScreenPosition });
      mSelfFrameFlyInAnimator = new AnimatorSet();
      mSelfFrameFlyInAnimator.playTogether(new Animator[] { mSelfFrameFadeInAnimator, localObject1, localObject2 });
      mSelfFrameFlyInAnimator.setDuration(mFadeInDuration);
      localObject1 = ObjectAnimator.ofObject(this, "selfFramePosition", new PositionEvaluator(null), new Object[] { mCenterScreenPosition, mRightCornerPosition });
      localObject2 = ObjectAnimator.ofObject(this, "selfFrameSize", new RectSizeEvaluator(null), new Object[] { mVanityFrameSize, mRightCornerFrameSize });
      mSelfFrameMoveToCornerAnimator = new AnimatorSet();
      mSelfFrameMoveToCornerAnimator.playTogether(new Animator[] { localObject1, localObject2 });
      mSelfFrameMoveToCornerAnimator.setInterpolator(new DecelerateInterpolator());
      mSelfFrameMoveToCornerAnimator.setDuration(mSelfFrameToCornerAnimDuration);
      return;
      w = Math.round(mViewportWidth * 0.27F);
      h = Math.round(w / mSelfFrameRawAspectRatio);
      w = Math.round(0.3F * mViewportWidth);
      h = Math.round(w / mSelfFrameRawAspectRatio);
    }
  }
  
  private void initializeSwapAnimators()
  {
    ObjectAnimator localObjectAnimator1 = ObjectAnimator.ofObject(this, "selfFramePosition", new PositionEvaluator(null), new Object[] { mRightCornerPosition, mCenterScreenPosition });
    ObjectAnimator localObjectAnimator2 = ObjectAnimator.ofObject(this, "selfFrameSize", new RectSizeEvaluator(null), new Object[] { mRightCornerFrameSize, mSelfFrameFullscreenClippingParams.mClippedSize });
    ObjectAnimator localObjectAnimator3 = ObjectAnimator.ofFloat(this, "selfFrameXClip", new float[] { 0.0F, mSelfFrameFullscreenClippingParams.mXClipPercentage });
    ObjectAnimator localObjectAnimator4 = ObjectAnimator.ofFloat(this, "selfFrameYClip", new float[] { 0.0F, mSelfFrameFullscreenClippingParams.mYClipPercentage });
    ObjectAnimator localObjectAnimator5 = ObjectAnimator.ofObject(this, "remoteFramePosition", new PositionEvaluator(null), new Object[] { mCenterScreenPosition, mLeftCornerPosition });
    ObjectAnimator localObjectAnimator6 = ObjectAnimator.ofObject(this, "remoteFrameSize", new RectSizeEvaluator(null), new Object[] { mRemoteFrameFullscreenClippingParams.mClippedSize, mLeftCornerFrameSize });
    ObjectAnimator localObjectAnimator7 = ObjectAnimator.ofFloat(this, "remoteFrameXClip", new float[] { mRemoteFrameFullscreenClippingParams.mXClipPercentage, 0.0F });
    ObjectAnimator localObjectAnimator8 = ObjectAnimator.ofFloat(this, "remoteFrameYClip", new float[] { mRemoteFrameFullscreenClippingParams.mYClipPercentage, 0.0F });
    mSwapFramesAnimation = new AnimatorSet();
    mSwapFramesAnimation.playTogether(new Animator[] { localObjectAnimator1, localObjectAnimator2, localObjectAnimator3, localObjectAnimator4, localObjectAnimator5, localObjectAnimator6, localObjectAnimator7, localObjectAnimator8 });
    mSwapFramesAnimation.setInterpolator(mDecelerateQuintInterp);
    mSwapFramesAnimation.setDuration(mSwapFramesAnimDuration);
    localObjectAnimator1 = ObjectAnimator.ofObject(this, "selfFramePosition", new PositionEvaluator(null), new Object[] { mCenterScreenPosition, mRightCornerPosition });
    localObjectAnimator2 = ObjectAnimator.ofObject(this, "selfFrameSize", new RectSizeEvaluator(null), new Object[] { mSelfFrameFullscreenClippingParams.mClippedSize, mRightCornerFrameSize });
    localObjectAnimator3 = ObjectAnimator.ofFloat(this, "selfFrameXClip", new float[] { mSelfFrameFullscreenClippingParams.mXClipPercentage, 0.0F });
    localObjectAnimator4 = ObjectAnimator.ofFloat(this, "selfFrameYClip", new float[] { mSelfFrameFullscreenClippingParams.mYClipPercentage, 0.0F });
    localObjectAnimator5 = ObjectAnimator.ofObject(this, "remoteFramePosition", new PositionEvaluator(null), new Object[] { mLeftCornerPosition, mCenterScreenPosition });
    localObjectAnimator6 = ObjectAnimator.ofObject(this, "remoteFrameSize", new RectSizeEvaluator(null), new Object[] { mLeftCornerFrameSize, mRemoteFrameFullscreenClippingParams.mClippedSize });
    localObjectAnimator7 = ObjectAnimator.ofFloat(this, "remoteFrameXClip", new float[] { 0.0F, mRemoteFrameFullscreenClippingParams.mXClipPercentage });
    localObjectAnimator8 = ObjectAnimator.ofFloat(this, "remoteFrameYClip", new float[] { 0.0F, mRemoteFrameFullscreenClippingParams.mYClipPercentage });
    mReverseSwapFramesAnimation = new AnimatorSet();
    mReverseSwapFramesAnimation.playTogether(new Animator[] { localObjectAnimator1, localObjectAnimator2, localObjectAnimator3, localObjectAnimator4, localObjectAnimator5, localObjectAnimator6, localObjectAnimator7, localObjectAnimator8 });
    mReverseSwapFramesAnimation.setInterpolator(mDecelerateQuintInterp);
    mReverseSwapFramesAnimation.setDuration(mSwapFramesAnimDuration);
  }
  
  private void onFullySpecified()
  {
    initializeLeftCornerValues();
    initializeSwapAnimators();
    if (mNeedToPlaceRemoteInFullscreen) {
      placeRemoteFrameInFullscreen();
    }
    while (mRemoteFrameState == 1)
    {
      setRemoteFrameSize(mLeftCornerFrameSize);
      setRemoteFrameXClip(0.0F);
      setRemoteFrameYClip(0.0F);
      setRemoteFramePosition(mLeftCornerPosition);
      return;
      if (mNeedToAnimateFramesToSwappedPosition)
      {
        placeFramesInSwappedPositions(true);
        mNeedToAnimateFramesToSwappedPosition = false;
      }
      else if (mNeedToPlaceFramesInSwappedPosition)
      {
        placeFramesInSwappedPositions(false);
        mNeedToPlaceFramesInSwappedPosition = false;
      }
      else if (mNeedToAnimateFramesToStandardPosition)
      {
        placeFramesInStandardPositions(true);
        mNeedToAnimateFramesToStandardPosition = false;
      }
      else if (mNeedToPlaceFramesInStandardPosition)
      {
        placeFramesInStandardPositions(false);
        mNeedToPlaceFramesInSwappedPosition = false;
      }
    }
    setRemoteFrameSize(mRemoteFrameFullscreenClippingParams.mClippedSize);
    setRemoteFrameXClip(mRemoteFrameFullscreenClippingParams.mXClipPercentage);
    setRemoteFrameYClip(mRemoteFrameFullscreenClippingParams.mYClipPercentage);
    setRemoteFramePosition(mCenterScreenPosition);
  }
  
  private void onStartupValuesSpecified()
  {
    mSelfFrameFullscreenClippingParams = calculateClippingParams(mViewportWidth, mViewportHeight, mSelfFrameRawAspectRatio);
    initializeRightCornerValues();
    initializeFullScreenValues();
    initializeStartupAnimators();
    if (mNeedToAnimateToVanity)
    {
      placeSelfFrameInVanity(true);
      mNeedToAnimateToVanity = false;
    }
    do
    {
      return;
      if (mNeedToPlaceInVanity)
      {
        placeSelfFrameInVanity(false);
        mNeedToPlaceInVanity = false;
        return;
      }
      if (mNeedToAnimateToCorner)
      {
        placeSelfFrameInCorner(true);
        mNeedToAnimateToCorner = false;
        return;
      }
    } while (!mNeedToPlaceInCorner);
    placeSelfFrameInCorner(false);
    mNeedToPlaceInCorner = false;
  }
  
  private void startAnimationsOnMainThread(final Animator... paramVarArgs)
  {
    if (mHandler == null)
    {
      Log.e("talk:VideoAnimator", "Can't run animation. mHandler hasn't been set.");
      return;
    }
    mHandler.post(new Runnable()
    {
      public void run()
      {
        Animator[] arrayOfAnimator = paramVarArgs;
        int j = arrayOfAnimator.length;
        int i = 0;
        while (i < j)
        {
          arrayOfAnimator[i].start();
          i += 1;
        }
      }
    });
  }
  
  private boolean startupValuesSpecified()
  {
    return (mSelfFrameRawAspectRatio > 0.0F) && (mViewportWidth > 0) && (mViewportHeight > 0);
  }
  
  private void unprotectedPlaceFramesInStandardPositions(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      mFreezeFrameAnimator.setDuration(mReverseSwapFramesAnimation.getDuration());
      startAnimationsOnMainThread(new Animator[] { mReverseSwapFramesAnimation, mReverseFlipZOrderAnimator, mFreezeFrameAnimator });
    }
    for (;;)
    {
      mRemoteFrameState = 0;
      return;
      setSelfFrameSize(mRightCornerFrameSize);
      setSelfFramePosition(mRightCornerPosition);
      setSelfFrameXClip(0.0F);
      setSelfFrameYClip(0.0F);
      setRemoteFrameSize(mRemoteFrameFullscreenClippingParams.mClippedSize);
      setRemoteFramePosition(mCenterScreenPosition);
      setRemoteFrameXClip(mRemoteFrameFullscreenClippingParams.mXClipPercentage);
      setRemoteFrameYClip(mRemoteFrameFullscreenClippingParams.mYClipPercentage);
      startAnimationsOnMainThread(new Animator[] { mRemoteFrameFadeInAnimator, mSelfFrameFadeInAnimator });
      setFlipZOrder(0);
    }
  }
  
  private void unprotectedPlaceFramesInSwappedPositions(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      mFreezeFrameAnimator.setDuration(mSwapFramesAnimation.getDuration());
      startAnimationsOnMainThread(new Animator[] { mSwapFramesAnimation, mFlipZOrderAnimator, mFreezeFrameAnimator });
    }
    for (;;)
    {
      mRemoteFrameState = 1;
      return;
      setSelfFrameSize(mSelfFrameFullscreenClippingParams.mClippedSize);
      setSelfFramePosition(mCenterScreenPosition);
      setSelfFrameXClip(mSelfFrameFullscreenClippingParams.mXClipPercentage);
      setSelfFrameYClip(mSelfFrameFullscreenClippingParams.mYClipPercentage);
      setRemoteFrameSize(mLeftCornerFrameSize);
      setRemoteFramePosition(mLeftCornerPosition);
      setRemoteFrameXClip(0.0F);
      setRemoteFrameYClip(0.0F);
      startAnimationsOnMainThread(new Animator[] { mSelfFrameFadeInAnimator, mRemoteFrameFadeInAnimator });
      setFlipZOrder(1);
    }
  }
  
  private void unprotectedPlaceRemoteFrameInFullscreen()
  {
    setRemoteFramePosition(mCenterScreenPosition);
    setRemoteFrameSize(mRemoteFrameFullscreenClippingParams.mClippedSize);
    startAnimationsOnMainThread(new Animator[] { mRemoteFrameFadeInAnimator });
  }
  
  private void unprotectedPlaceSelfFrameInCorner(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      mFreezeFrameAnimator.setDuration(mSelfFrameMoveToCornerAnimator.getDuration());
      startAnimationsOnMainThread(new Animator[] { mSelfFrameMoveToCornerAnimator, mFreezeFrameAnimator });
      return;
    }
    setSelfFrameSize(mRightCornerFrameSize);
    setSelfFramePosition(mRightCornerPosition);
    startAnimationsOnMainThread(new Animator[] { mSelfFrameFadeInAnimator });
  }
  
  private void unprotectedPlaceSelfFrameInVanity(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      mFreezeFrameAnimator.setDuration(mSelfFrameFlyInAnimator.getDuration());
      startAnimationsOnMainThread(new Animator[] { mSelfFrameFlyInAnimator, mFreezeFrameAnimator });
      return;
    }
    setSelfFramePosition(mCenterScreenPosition);
    setSelfFrameSize(mVanityFrameSize);
    startAnimationsOnMainThread(new Animator[] { mSelfFrameFadeInAnimator });
  }
  
  private void updateRemoteFrameRect()
  {
    if ((mRemoteFrameSize == null) || (mRemoteFrameX == 0) || (mRemoteFrameY == 0)) {
      return;
    }
    int i = Math.round(mRemoteFrameSize.w / 2.0F);
    int j = Math.round(mRemoteFrameSize.h / 2.0F);
    mRemoteFrameRect.left = (mRemoteFrameX - i);
    mRemoteFrameRect.top = (mRemoteFrameY - j);
    mRemoteFrameRect.right = (mRemoteFrameX + i);
    mRemoteFrameRect.bottom = (mRemoteFrameY + j);
  }
  
  private void updateSelfFrameRect()
  {
    if (mSelfFrameSize == null) {
      return;
    }
    int i = Math.round(mSelfFrameSize.w / 2.0F);
    int j = Math.round(mSelfFrameSize.h / 2.0F);
    mSelfFrameRect.left = (mSelfFrameX - i);
    mSelfFrameRect.top = (mSelfFrameY - j);
    mSelfFrameRect.right = (mSelfFrameX + i);
    mSelfFrameRect.bottom = (mSelfFrameY + j);
  }
  
  public int getBackgroundColor()
  {
    return mBackgroundColor;
  }
  
  public float getBackgroundImageAlpha()
  {
    return mBackgroundImageAlpha;
  }
  
  public boolean getFlipZOrder()
  {
    return mFlipZOrder;
  }
  
  public boolean getFreezeFrame()
  {
    return mFreezeFrame;
  }
  
  public float getRemoteFrameAlpha()
  {
    return mRemoteFrameAlpha;
  }
  
  public Rect getRemoteFrameRect()
  {
    return mRemoteFrameRect;
  }
  
  public float getRemoteFrameXClip()
  {
    return mRemoteFrameXClip;
  }
  
  public float getRemoteFrameYClip()
  {
    return mRemoteFrameYClip;
  }
  
  public float getSelfFrameAlpha()
  {
    return mSelfFrameAlpha;
  }
  
  public Rect getSelfFrameRect()
  {
    return mSelfFrameRect;
  }
  
  public float getSelfFrameXClip()
  {
    return mSelfFrameXClip;
  }
  
  public float getSelfFrameYClip()
  {
    return mSelfFrameYClip;
  }
  
  public void placeFramesInStandardPositions(boolean paramBoolean)
  {
    if (!fullySpecified())
    {
      if (paramBoolean)
      {
        mNeedToAnimateFramesToStandardPosition = true;
        return;
      }
      mNeedToPlaceFramesInStandardPosition = true;
      return;
    }
    unprotectedPlaceFramesInStandardPositions(paramBoolean);
  }
  
  public void placeFramesInSwappedPositions(boolean paramBoolean)
  {
    if (!fullySpecified())
    {
      if (paramBoolean)
      {
        mNeedToAnimateFramesToSwappedPosition = true;
        return;
      }
      mNeedToPlaceFramesInSwappedPosition = true;
      return;
    }
    unprotectedPlaceFramesInSwappedPositions(paramBoolean);
  }
  
  public void placeRemoteFrameInFullscreen()
  {
    if (!fullySpecified())
    {
      mNeedToPlaceRemoteInFullscreen = true;
      return;
    }
    unprotectedPlaceRemoteFrameInFullscreen();
  }
  
  public void placeSelfFrameInCorner(boolean paramBoolean)
  {
    if (!startupValuesSpecified())
    {
      if (paramBoolean)
      {
        mNeedToAnimateToCorner = true;
        return;
      }
      mNeedToPlaceInCorner = true;
      return;
    }
    unprotectedPlaceSelfFrameInCorner(paramBoolean);
  }
  
  public void placeSelfFrameInVanity(boolean paramBoolean)
  {
    if (!startupValuesSpecified())
    {
      if (paramBoolean)
      {
        mNeedToAnimateToVanity = true;
        return;
      }
      mNeedToPlaceInVanity = true;
      return;
    }
    unprotectedPlaceSelfFrameInVanity(paramBoolean);
  }
  
  public void setBackgroundColor(int paramInt)
  {
    mBackgroundColor = paramInt;
  }
  
  public void setBackgroundImageAlpha(float paramFloat)
  {
    mBackgroundImageAlpha = paramFloat;
  }
  
  public void setBackgroundToBlack(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      mBackgroundFadeAnimator.start();
      return;
    }
    setBackgroundColor(-16777216);
  }
  
  public void setFlipZOrder(int paramInt)
  {
    if (paramInt != 0) {}
    for (boolean bool = true;; bool = false)
    {
      mFlipZOrder = bool;
      return;
    }
  }
  
  public void setFreezeFrame(int paramInt)
  {
    if (paramInt != 0) {}
    for (boolean bool = true;; bool = false)
    {
      mFreezeFrame = bool;
      return;
    }
  }
  
  public void setRemoteFrameAlpha(float paramFloat)
  {
    mRemoteFrameAlpha = paramFloat;
  }
  
  public void setRemoteFrameAspectRatio(float paramFloat)
  {
    if (mRemoteFrameRawAspectRatio == paramFloat) {}
    do
    {
      return;
      mRemoteFrameRawAspectRatio = paramFloat;
      mRemoteFrameFullscreenClippingParams = calculateClippingParams(mViewportWidth, mViewportHeight, mRemoteFrameRawAspectRatio);
    } while (!fullySpecified());
    onFullySpecified();
  }
  
  public void setRemoteFramePosition(Position paramPosition)
  {
    mRemoteFrameX = x;
    mRemoteFrameY = y;
    updateRemoteFrameRect();
  }
  
  public void setRemoteFrameSize(RectSize paramRectSize)
  {
    mRemoteFrameSize = paramRectSize;
    updateRemoteFrameRect();
  }
  
  public void setRemoteFrameXClip(float paramFloat)
  {
    mRemoteFrameXClip = paramFloat;
    updateRemoteFrameRect();
  }
  
  public void setRemoteFrameYClip(float paramFloat)
  {
    mRemoteFrameYClip = paramFloat;
    updateRemoteFrameRect();
  }
  
  public void setSelfFrameAlpha(float paramFloat)
  {
    mSelfFrameAlpha = paramFloat;
  }
  
  public void setSelfFrameAspectRatio(float paramFloat)
  {
    if (mSelfFrameRawAspectRatio == paramFloat) {}
    do
    {
      return;
      mSelfFrameRawAspectRatio = paramFloat;
      if (startupValuesSpecified()) {
        onStartupValuesSpecified();
      }
    } while (!fullySpecified());
    onFullySpecified();
  }
  
  public void setSelfFramePosition(Position paramPosition)
  {
    mSelfFrameX = x;
    mSelfFrameY = y;
    updateSelfFrameRect();
  }
  
  public void setSelfFrameSize(RectSize paramRectSize)
  {
    mSelfFrameSize = paramRectSize;
    updateSelfFrameRect();
  }
  
  public void setSelfFrameXClip(float paramFloat)
  {
    mSelfFrameXClip = paramFloat;
    updateSelfFrameRect();
  }
  
  public void setSelfFrameYClip(float paramFloat)
  {
    mSelfFrameYClip = paramFloat;
    updateSelfFrameRect();
  }
  
  public void setSelfFramesAvailable()
  {
    TalkApp.LOGV("talk:VideoAnimator", "setSelfFramesAvailable " + mUnhideSelfFrameIfAvailable);
    mSelfFramesAvailable = true;
    if (mUnhideSelfFrameIfAvailable)
    {
      mSelfFrameFadeInAnimator.start();
      mUnhideSelfFrameIfAvailable = false;
    }
  }
  
  public void setSelfFramesUnavailable()
  {
    mSelfFramesAvailable = false;
    mSelfFrameFadeOutAnimator.start();
  }
  
  public void setViewportSize(int paramInt1, int paramInt2)
  {
    if ((paramInt1 == mViewportWidth) && (paramInt2 == mViewportHeight)) {}
    do
    {
      return;
      mViewportWidth = paramInt1;
      mViewportHeight = paramInt2;
      if (startupValuesSpecified()) {
        onStartupValuesSpecified();
      }
    } while (!fullySpecified());
    onFullySpecified();
  }
  
  public void supplyMainThreadHandler(Handler paramHandler)
  {
    mHandler = paramHandler;
  }
  
  public static class ClippingParams
  {
    public VideoAnimator.RectSize mClippedSize;
    public float mXClipPercentage;
    public float mYClipPercentage;
  }
  
  private static class Position
  {
    int x;
    int y;
    
    public Position(int paramInt1, int paramInt2)
    {
      x = paramInt1;
      y = paramInt2;
    }
  }
  
  private class PositionEvaluator
    implements TypeEvaluator
  {
    private PositionEvaluator() {}
    
    public Object evaluate(float paramFloat, Object paramObject1, Object paramObject2)
    {
      if (((paramObject1 instanceof VideoAnimator.Position)) && ((paramObject2 instanceof VideoAnimator.Position)))
      {
        paramObject1 = (VideoAnimator.Position)paramObject1;
        paramObject2 = (VideoAnimator.Position)paramObject2;
        return new VideoAnimator.Position(Math.round(x + (x - x) * paramFloat), Math.round(y + (y - y) * paramFloat));
      }
      return null;
    }
  }
  
  public static class RectSize
  {
    public int h;
    public int w;
    
    public RectSize()
    {
      this(0, 0);
    }
    
    public RectSize(int paramInt1, int paramInt2)
    {
      w = paramInt1;
      h = paramInt2;
    }
  }
  
  private class RectSizeEvaluator
    implements TypeEvaluator
  {
    private RectSizeEvaluator() {}
    
    public Object evaluate(float paramFloat, Object paramObject1, Object paramObject2)
    {
      if (((paramObject1 instanceof VideoAnimator.RectSize)) && ((paramObject2 instanceof VideoAnimator.RectSize)))
      {
        paramObject1 = (VideoAnimator.RectSize)paramObject1;
        paramObject2 = (VideoAnimator.RectSize)paramObject2;
        return new VideoAnimator.RectSize(Math.round(w + (w - w) * paramFloat), Math.round(h + (h - h) * paramFloat));
      }
      return null;
    }
  }
  
  private class RgbEvaluator
    implements TypeEvaluator
  {
    private RgbEvaluator() {}
    
    public Object evaluate(float paramFloat, Object paramObject1, Object paramObject2)
    {
      if (((paramObject1 instanceof Integer)) && ((paramObject2 instanceof Integer)))
      {
        float[] arrayOfFloat1 = new float[3];
        float[] arrayOfFloat2 = new float[3];
        int i = ((Integer)paramObject1).intValue();
        int j = ((Integer)paramObject2).intValue();
        arrayOfFloat1[0] = (i >> 16 & 0xFF);
        arrayOfFloat1[1] = (i >> 8 & 0xFF);
        arrayOfFloat1[2] = (i & 0xFF);
        arrayOfFloat2[0] = (j >> 16 & 0xFF);
        arrayOfFloat2[1] = (j >> 8 & 0xFF);
        arrayOfFloat2[2] = (j & 0xFF);
        return Integer.valueOf(Math.round(arrayOfFloat1[0] + (arrayOfFloat2[0] - arrayOfFloat1[0]) * paramFloat) << 16 | Math.round(arrayOfFloat1[1] + (arrayOfFloat2[1] - arrayOfFloat1[1]) * paramFloat) << 8 | Math.round(arrayOfFloat1[2] + (arrayOfFloat2[2] - arrayOfFloat1[2]) * paramFloat));
      }
      return null;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.videochat.VideoAnimator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */