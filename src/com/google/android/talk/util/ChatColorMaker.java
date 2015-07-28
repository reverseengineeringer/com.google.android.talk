package com.google.android.talk.util;

import android.graphics.Color;
import android.os.Bundle;
import java.util.HashMap;

public class ChatColorMaker
{
  private int mBaseOffset;
  private HashMap<String, int[]> mColors = new HashMap();
  private float mLinkHue;
  private float[] mTempHSV = new float[3];
  
  public ChatColorMaker(int paramInt1, int paramInt2)
  {
    Color.colorToHSV(paramInt2, mTempHSV);
    mLinkHue = mTempHSV[0];
    mBaseOffset = (Math.abs(paramInt1) % 360);
    mTempHSV[2] = 1.0F;
  }
  
  public final void freeze(Bundle paramBundle)
  {
    paramBundle.putInt("colormaker:base", mBaseOffset);
    paramBundle.putSerializable("colormaker:colors", mColors);
    paramBundle.putFloat("colormaker:linkhue", mLinkHue);
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.util.ChatColorMaker
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */