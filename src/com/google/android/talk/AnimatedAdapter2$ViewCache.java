package com.google.android.talk;

import android.view.View;
import android.view.ViewGroup;
import java.lang.ref.SoftReference;
import java.util.ArrayList;
import java.util.HashMap;

class AnimatedAdapter2$ViewCache
{
  private ArrayList<ArrayList<SoftReference<View>>> mScrapHeap = new ArrayList();
  private HashMap<View, Long> mViewCacheIds = new HashMap();
  private HashMap<Long, CacheItem> mViewMapping = new HashMap();
  
  AnimatedAdapter2$ViewCache(AnimatedAdapter2 paramAnimatedAdapter2) {}
  
  public View getScrap(int paramInt)
  {
    if (paramInt >= mScrapHeap.size()) {
      return null;
    }
    ArrayList localArrayList = (ArrayList)mScrapHeap.get(paramInt);
    View localView;
    do
    {
      paramInt = localArrayList.size();
      if (paramInt == 0) {
        return null;
      }
      localView = (View)((SoftReference)localArrayList.remove(paramInt - 1)).get();
    } while (localView == null);
    return localView;
  }
  
  public View getView(long paramLong)
  {
    CacheItem localCacheItem = (CacheItem)mViewMapping.get(Long.valueOf(paramLong));
    if (localCacheItem != null) {
      return mView;
    }
    return null;
  }
  
  public void onMovedToScrapHeap(View paramView)
  {
    paramView = (Long)mViewCacheIds.get(paramView);
    if (paramView == null) {}
    View localView;
    do
    {
      return;
      Object localObject = (CacheItem)mViewMapping.get(paramView);
      mViewMapping.remove(Long.valueOf(mId));
      mViewCacheIds.remove(mView);
      while (mViewType >= mScrapHeap.size()) {
        mScrapHeap.add(new ArrayList());
      }
      paramView = (ArrayList)mScrapHeap.get(mViewType);
      localObject = (ViewGroup)mView;
      localView = ((ViewGroup)localObject).getChildAt(0);
      ((ViewGroup)localObject).removeAllViews();
    } while (localView == null);
    paramView.add(new SoftReference(localView));
  }
  
  public void put(long paramLong, int paramInt1, View paramView, int paramInt2)
  {
    CacheItem localCacheItem = (CacheItem)mViewMapping.get(Long.valueOf(paramLong));
    if (localCacheItem != null) {
      mViewCacheIds.remove(mView);
    }
    mViewMapping.put(Long.valueOf(paramLong), new CacheItem(paramView, paramLong, paramInt2));
    mViewCacheIds.put(paramView, Long.valueOf(paramLong));
  }
  
  private class CacheItem
  {
    long mId;
    View mView;
    int mViewType;
    
    CacheItem(View paramView, long paramLong, int paramInt)
    {
      mView = paramView;
      mId = paramLong;
      mViewType = paramInt;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.AnimatedAdapter2.ViewCache
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */