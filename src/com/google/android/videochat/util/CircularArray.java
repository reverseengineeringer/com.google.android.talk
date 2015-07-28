package com.google.android.videochat.util;

public class CircularArray<E>
{
  private boolean mHasWrapped;
  Object[] mList;
  private int mMaxCount;
  private int mNextWriter;
  
  public CircularArray(int paramInt)
  {
    mMaxCount = paramInt;
    clear();
  }
  
  public void add(E paramE)
  {
    mList[mNextWriter] = paramE;
    mNextWriter += 1;
    if (mNextWriter == mMaxCount)
    {
      mNextWriter = 0;
      mHasWrapped = true;
    }
  }
  
  public void clear()
  {
    mNextWriter = 0;
    mHasWrapped = false;
    mList = new Object[mMaxCount];
  }
  
  public int count()
  {
    if (mHasWrapped) {
      return mMaxCount;
    }
    return mNextWriter;
  }
  
  public E get(int paramInt)
  {
    if (mHasWrapped)
    {
      int i = paramInt + mNextWriter;
      paramInt = i;
      if (i >= mMaxCount) {
        paramInt = i - mMaxCount;
      }
      return (E)mList[paramInt];
    }
    return (E)mList[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.videochat.util.CircularArray
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */