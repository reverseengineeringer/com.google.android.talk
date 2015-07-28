package com.google.android.talk;

import android.content.Context;
import android.util.AttributeSet;
import com.google.android.videochat.CallState.AudioDeviceState;

public class BluetoothButton
  extends AnimatedBackgroundImageButton
{
  public BluetoothButton(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    mStartAlpha = 55;
    mEndAlpha = 255;
    mDurationMs = 350;
  }
  
  public void handleBluetoothStateChange(CallState.AudioDeviceState paramAudioDeviceState)
  {
    switch (paramAudioDeviceState)
    {
    default: 
      return;
    case ???: 
    case ???: 
      setImageResource(2130837569);
      setImageAlpha(0);
      startImageAnimation();
      return;
    case ???: 
      stopImageAnimation();
      setImageResource(2130837568);
      setImageAlpha(255);
      return;
    case ???: 
      stopImageAnimation();
      setImageResource(2130837571);
      setImageAlpha(255);
      return;
    case ???: 
      stopImageAnimation();
      setImageResource(2130837570);
      setImageAlpha(255);
      return;
    }
    stopImageAnimation();
    setImageResource(2130837572);
    setImageAlpha(255);
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.BluetoothButton
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */