package com.google.android.talk;

import java.util.ArrayList;
import java.util.List;

class AnimatedAdapter2$Diff$EditList
{
  List<AnimatedAdapter2.Diff.Delta> mDiffs = new ArrayList();
  
  public AnimatedAdapter2$Diff$EditList(AnimatedAdapter2.Diff paramDiff) {}
  
  public AnimatedAdapter2.Diff.Delta getDelta(int paramInt)
  {
    return (AnimatedAdapter2.Diff.Delta)mDiffs.get(paramInt);
  }
  
  public void insert(AnimatedAdapter2.Diff.Delta paramDelta)
  {
    mDiffs.add(paramDelta);
  }
  
  public int size()
  {
    return mDiffs.size();
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.AnimatedAdapter2.Diff.EditList
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */