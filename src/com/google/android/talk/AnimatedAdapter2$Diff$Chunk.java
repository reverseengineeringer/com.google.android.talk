package com.google.android.talk;

class AnimatedAdapter2$Diff$Chunk
{
  private int mCount;
  private long[] mData;
  private int mStart;
  
  public AnimatedAdapter2$Diff$Chunk(AnimatedAdapter2.Diff paramDiff, long[] paramArrayOfLong, int paramInt1, int paramInt2)
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

/* Location:
 * Qualified Name:     com.google.android.talk.AnimatedAdapter2.Diff.Chunk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */