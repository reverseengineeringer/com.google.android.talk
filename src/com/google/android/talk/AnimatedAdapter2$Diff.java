package com.google.android.talk;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public class AnimatedAdapter2$Diff
{
  private long mCutoffTime;
  private long[] mNewValues;
  private long[] mOldValues;
  
  public AnimatedAdapter2$Diff(AnimatedAdapter2 paramAnimatedAdapter2, long[] paramArrayOfLong1, long[] paramArrayOfLong2)
  {
    mOldValues = paramArrayOfLong1;
    mNewValues = paramArrayOfLong2;
  }
  
  private Node computePath()
  {
    int n = mOldValues.length;
    int i1 = mNewValues.length;
    int i2 = n + i1 + 1;
    int i = i2 * 2 + 1;
    int i3 = (i + 1) / 2;
    Node[] arrayOfNode = new Node[i];
    arrayOfNode[(i3 + 1)] = new Node(0, -1, null, true);
    int j = 0;
    while (j < i2)
    {
      int k = -j;
      while (k <= j)
      {
        int i4 = i3 + k;
        if ((k == -j) || ((k != j) && (1x < 1x))) {
          i = 1x;
        }
        int m;
        Node localNode;
        for (Object localObject = arrayOfNode[(i4 + 1)];; localObject = arrayOfNode[(i4 - 1)])
        {
          arrayOfNode[(i4 - 1)] = null;
          m = i - k;
          localNode = new Node(i, m, (Node)localObject, false);
          while ((i < n) && (m < i1) && (mOldValues[i] == mNewValues[m]))
          {
            i += 1;
            m += 1;
          }
          i = 1x + 1;
        }
        localObject = localNode;
        if (i > x) {
          localObject = new Node(i, m, localNode, true);
        }
        arrayOfNode[i4] = localObject;
        if ((i >= n) && (m >= i1)) {
          return arrayOfNode[i4];
        }
        k += 2;
      }
      arrayOfNode[(i3 + j - 1)] = null;
      if (System.currentTimeMillis() > mCutoffTime) {
        throw new AnimatedAdapter2.TooLongException(null);
      }
      j += 1;
    }
    return null;
  }
  
  private EditList expandPath(Node paramNode)
  {
    EditList localEditList = new EditList();
    Node localNode = paramNode;
    if (isSnake) {
      localNode = prev;
    }
    while ((localNode != null) && (prev != null) && (prev.y >= 0))
    {
      if (isSnake) {
        throw new IllegalStateException("bad diffpath: found snake when looking for diff");
      }
      int i = x;
      int j = y;
      paramNode = prev;
      int k = x;
      int m = y;
      localEditList.insert(new Delta(new Chunk(mOldValues, k, i - k), new Chunk(mNewValues, m, j - m), null));
      localNode = paramNode;
      if (isSnake) {
        localNode = prev;
      }
    }
    return localEditList;
  }
  
  public Mapping compute(long paramLong)
  {
    if (paramLong == 0L) {}
    for (paramLong = Long.MAX_VALUE;; paramLong = System.currentTimeMillis() + paramLong)
    {
      mCutoffTime = paramLong;
      try
      {
        Mapping localMapping = new Mapping(expandPath(computePath()), null);
        return localMapping;
      }
      catch (AnimatedAdapter2.TooLongException localTooLongException)
      {
        TalkApp.LOGV("talk", localTooLongException.toString());
      }
    }
    return null;
  }
  
  private class Chunk
  {
    private int mCount;
    private long[] mData;
    private int mStart;
    
    public Chunk(long[] paramArrayOfLong, int paramInt1, int paramInt2)
    {
      mStart = paramInt1;
      if (paramInt2 >= 0) {}
      for (;;)
      {
        mCount = paramInt2;
        mData = paramArrayOfLong;
        return;
        paramInt2 = 0;
      }
    }
    
    public int getCount()
    {
      return mCount;
    }
    
    public int getStart()
    {
      return mStart;
    }
    
    public String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder();
      int i = getStart();
      while (i < getStart() + getCount())
      {
        localStringBuilder.append(String.valueOf(mData[i]) + ";");
        i += 1;
      }
      return localStringBuilder.toString();
    }
    
    public long valueAt(int paramInt)
    {
      return mData[(getStart() + paramInt)];
    }
  }
  
  private class Delta
  {
    public AnimatedAdapter2.Diff.Chunk mOrig;
    public AnimatedAdapter2.Diff.Chunk mRev;
    
    private Delta(AnimatedAdapter2.Diff.Chunk paramChunk1, AnimatedAdapter2.Diff.Chunk paramChunk2)
    {
      mOrig = paramChunk1;
      mRev = paramChunk2;
    }
  }
  
  private class EditList
  {
    List<AnimatedAdapter2.Diff.Delta> mDiffs = new ArrayList();
    
    public EditList() {}
    
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
  
  public class Mapping
  {
    ArrayList<Integer> mMainMap = new ArrayList();
    HashMap<Integer, TransformationData> mTransitions = new HashMap();
    ArrayList<Integer> mTransitionsList = new ArrayList();
    
    private Mapping(AnimatedAdapter2.Diff.EditList paramEditList)
    {
      mTransitions.clear();
      mMainMap.clear();
      int k = -1;
      int i = 0;
      while (i < mNewValues.length)
      {
        mMainMap.add(Integer.valueOf(i));
        i += 1;
      }
      int m = paramEditList.size();
      int j = 0;
      Object localObject;
      if (j < m)
      {
        this$1 = paramEditList.getDelta(j);
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
            this$1 = new TransformationData(-1, mOrig.valueAt(0), true);
            mTransitions.put(Integer.valueOf(i), AnimatedAdapter2.Diff.this);
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
              this$1 = new TransformationData(0, mRev.valueAt(0), false);
              mTransitions.put(Integer.valueOf(i), AnimatedAdapter2.Diff.this);
              mTransitionsList.add(Integer.valueOf(i));
            }
          }
        }
      }
      this$1 = new HashMap();
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
          put(Long.valueOf(mRowId), Integer.valueOf(k));
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
        if ((mAnimatingOut) && (containsKey(Long.valueOf(mRowId)))) {
          mRowPosition = ((Integer)get(Long.valueOf(mRowId))).intValue();
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
  
  private class Node
  {
    public final boolean isSnake;
    public final Node prev;
    public final int x;
    public final int y;
    
    public Node(int paramInt1, int paramInt2, Node paramNode, boolean paramBoolean)
    {
      x = paramInt1;
      y = paramInt2;
      prev = paramNode;
      isSnake = paramBoolean;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.AnimatedAdapter2.Diff
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */