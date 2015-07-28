package com.google.android.talk.videochat;

import android.content.Context;
import android.media.effect.Effect;
import android.media.effect.EffectContext;
import android.media.effect.EffectFactory;
import android.net.Uri;
import android.util.Log;
import com.google.android.talk.TalkApp;

public class FilterFrameworkEffects
{
  private int[] mActiveBuffer = new int[1];
  private int[] mActiveFbo = new int[1];
  private int[] mActiveProgram = new int[1];
  private final Context mContext;
  private Effect mEffect = null;
  private EffectContext mEffectContext;
  private FilterSetupInputParameters mSetupParams = null;
  
  public FilterFrameworkEffects(Context paramContext, FilterSetupInputParameters paramFilterSetupInputParameters)
  {
    mContext = paramContext;
    setupEnvironment();
    activateEffect(paramFilterSetupInputParameters);
  }
  
  private void activateEffect(FilterSetupInputParameters paramFilterSetupInputParameters)
  {
    if ((mSetupParams != null) && (mEffect != null) && (effectId == mSetupParams.effectId)) {}
    switch (effectId)
    {
    default: 
      mSetupParams = paramFilterSetupInputParameters;
      setupEffect(effectId, effectParam);
      return;
    }
    mEffect.setParameter("currentEffect", Integer.valueOf(((Integer)effectParam).intValue()));
    TalkApp.LOGV("Talk:ffw", "Setting funny face effect: " + (Integer)effectParam);
    mSetupParams.effectParam = effectParam;
  }
  
  public static boolean isEffectAvailable(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return false;
    case 2: 
      return EffectFactory.isEffectSupported("com.google.android.media.effect.effects.VCOEffect");
    case 4: 
      return EffectFactory.isEffectSupported("com.google.android.media.effect.effects.GoofyFaceEffect");
    }
    return EffectFactory.isEffectSupported("android.media.effect.effects.BackDropperEffect");
  }
  
  private void setupEffect(int paramInt, Object paramObject)
  {
    if (!isEffectAvailable(paramInt)) {
      TalkApp.LOGW("Talk:ffw", "Effect not available: " + paramInt);
    }
    for (;;)
    {
      return;
      releaseEffect();
      switch (paramInt)
      {
      }
      while (mEffect == null)
      {
        TalkApp.LOGE("Talk:ffw", "Could not initialize the effect " + paramInt);
        return;
        mEffect = mEffectContext.getFactory().createEffect("com.google.android.media.effect.effects.GoofyFaceEffect");
        mEffect.setParameter("currentEffect", Integer.valueOf(((Integer)paramObject).intValue()));
        continue;
        mEffect = mEffectContext.getFactory().createEffect("com.google.android.media.effect.effects.VCOEffect");
        mEffect.setParameter("maxOutputSize", Integer.valueOf(320));
        continue;
        paramObject = (Uri)paramObject;
        mEffect = mEffectContext.getFactory().createEffect("android.media.effect.effects.BackDropperEffect");
        mEffect.setParameter("source", ((Uri)paramObject).toString());
        mEffect.setParameter("context", mContext);
        mEffect.setUpdateListener(mSetupParams.effectCallback);
      }
    }
  }
  
  private void setupEnvironment()
  {
    mEffectContext = EffectContext.createWithCurrentGlContext();
  }
  
  public void release()
  {
    releaseEffect();
    mEffectContext.release();
  }
  
  public void releaseEffect()
  {
    if (mEffect != null)
    {
      mEffect.release();
      mEffect = null;
    }
  }
  
  public boolean renderFrame()
  {
    try
    {
      mEffect.apply(mSetupParams.inputTextureName, mSetupParams.inputTextureWidth, mSetupParams.inputTextureHeight, mSetupParams.outputTextureName);
      return true;
    }
    catch (RuntimeException localRuntimeException)
    {
      Log.e("Talk:ffw", "Error running effect");
      throw localRuntimeException;
    }
  }
  
  public void setInputTextureName(int paramInt)
  {
    mSetupParams.inputTextureName = paramInt;
  }
  
  public void setTimestamp(long paramLong)
  {
    if (mEffect.getName().equals("com.google.android.media.effect.effects.VCOEffect")) {
      mEffect.setParameter("timestamp", Long.valueOf(paramLong));
    }
  }
  
  public int switchEffect(FilterSetupInputParameters paramFilterSetupInputParameters)
  {
    activateEffect(paramFilterSetupInputParameters);
    return mSetupParams.outputTextureName;
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.videochat.FilterFrameworkEffects
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */