package com.google.android.talk;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

public class AnimatedAdapter2$Diff$Mapping
{
  ArrayList<Integer> mMainMap = new ArrayList();
  HashMap<Integer, TransformationData> mTransitions = new HashMap();
  ArrayList<Integer> mTransitionsList = new ArrayList();
  
  private AnimatedAdapter2$Diff$Mapping(AnimatedAdapter2.Diff paramDiff, AnimatedAdapter2.Diff.EditList paramEditList)
  {
    mTransitions.clear();
    mMainMap.clear();
    int k = -1;
    int i = 0;
    while (i < AnimatedAdapter2.Diff.access$500(paramDiff).length)
    {
      mMainMap.add(Integer.valueOf(i));
      i += 1;
    }
    int m = paramEditList.size();
    int j = 0;
    Object localObject;
    if (j < m)
    {
      paramDiff = paramEditList.getDelta(j);
      if ((mOrig.getCount() > 0) && (mRev.getCount() > 0)) {
        i = k;
      }
      for (;;)
      {
        j += 1;
        k = i;
        break;
        int n;
        if (mOrig.getCount() > 0)
        {
          localObject = mMainMap;
          n = mRev.getStart();
          i = k - 1;
          ((ArrayList)localObject).add(n, Integer.valueOf(i));
          paramDiff = new TransformationData(-1, mOrig.valueAt(0), true);
          mTransitions.put(Integer.valueOf(i), paramDiff);
          mTransitionsList.add(Integer.valueOf(i));
        }
        else
        {
          i = k;
          if (mRev.getCount() > 0)
          {
            localObject = mMainMap;
            n = mRev.getStart();
            i = k - 1;
            ((ArrayList)localObject).set(n, Integer.valueOf(i));
            paramDiff = new TransformationData(0, mRev.valueAt(0), false);
            mTransitions.put(Integer.valueOf(i), paramDiff);
            mTransitionsList.add(Integer.valueOf(i));
          }
        }
      }
    }
    paramDiff = new HashMap();
    j = 0;
    i = 0;
    if (i < mMainMap.size())
    {
      m = ((Integer)mMainMap.get(i)).intValue();
      k = j;
      if (m < 0)
      {
        paramEditList = (TransformationData)mTransitions.get(Integer.valueOf(m));
        if (mAnimatingOut) {
          break label443;
        }
        k = i - j;
        paramDiff.put(Long.valueOf(mRowId), Integer.valueOf(k));
        mRowPosition = k;
      }
      label443:
      for (k = j;; k = j + 1)
      {
        i += 1;
        j = k;
        break;
      }
    }
    paramEditList = mTransitions.keySet().iterator();
    while (paramEditList.hasNext())
    {
      i = ((Integer)paramEditList.next()).intValue();
      localObject = (TransformationData)mTransitions.get(Integer.valueOf(i));
      if ((mAnimatingOut) && (paramDiff.containsKey(Long.valueOf(mRowId)))) {
        mRowPosition = ((Integer)paramDiff.get(Long.valueOf(mRowId))).intValue();
      }
    }
  }
  
  public int getAddingCount()
  {
    int j = 0;
    int i = 0;
    while (i < mTransitionsList.size())
    {
      int k = j;
      if (!mTransitions.get(mTransitionsList.get(i))).mAnimatingOut) {
        k = j + 1;
      }
      i += 1;
      j = k;
    }
    return j;
  }
  
  public int getCount()
  {
    return mMainMap.size();
  }
  
  public long getDeletingRowId(int paramInt)
  {
    paramInt = ((Integer)mMainMap.get(paramInt)).intValue();
    if (paramInt < 0) {
      return mTransitions.get(Integer.valueOf(paramInt))).mRowId;
    }
    return 0L;
  }
  
  public int getDeletionCount()
  {
    int j = 0;
    int i = 0;
    while (i < mTransitionsList.size())
    {
      int k = j;
      if (mTransitions.get(mTransitionsList.get(i))).mAnimatingOut) {
        k = j + 1;
      }
      i += 1;
      j = k;
    }
    return j;
  }
  
  public AnimatedAdapter2.Status getStatus(int paramInt)
  {
    paramInt = ((Integer)mMainMap.get(paramInt)).intValue();
    if (paramInt < 0)
    {
      if (mTransitions.get(Integer.valueOf(paramInt))).mAnimatingOut) {
        return AnimatedAdapter2.Status.Deleted;
      }
      return AnimatedAdapter2.Status.Added;
    }
    return AnimatedAdapter2.Status.Normal;
  }
  
  public boolean isAddedOrDeleted(int paramInt)
  {
    AnimatedAdapter2.Status localStatus = getStatus(paramInt);
    return (localStatus == AnimatedAdapter2.Status.Added) || (localStatus == AnimatedAdapter2.Status.Deleted);
  }
  
  public int translate(int paramInt)
  {
    int i = ((Integer)mMainMap.get(paramInt)).intValue();
    paramInt = i;
    if (i < 0) {
      paramInt = mTransitions.get(Integer.valueOf(i))).mRowPosition;
    }
    return paramInt;
  }
  
  private class TransformationData
  {
    boolean mAnimatingOut;
    long mRowId;
    int mRowPosition;
    
    TransformationData(int paramInt, long paramLong, boolean paramBoolean)
    {
      mRowPosition = paramInt;
      mRowId = paramLong;
      mAnimatingOut = paramBoolean;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.AnimatedAdapter2.Diff.Mapping
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */