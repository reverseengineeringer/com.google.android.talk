package com.google.android.talk.fragments;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Resources;
import android.database.Cursor;
import android.widget.AbsListView;
import android.widget.BaseAdapter;
import com.google.android.talk.AnimatedAdapter2;
import com.google.android.talk.IRosterListAdapter;
import com.google.android.talk.IRosterListAdapter.VideoButtonClickHandler;
import com.google.android.talk.RosterListAdapter.CallState;
import com.google.android.talk.loaders.RosterListLoader.FilterMode;
import com.google.android.talk.loaders.RosterListLoader.SortMode;

class BuddyListFragment$AnimatedRosterAdapter
  extends AnimatedAdapter2
  implements IRosterListAdapter
{
  private IRosterListAdapter mAdapter;
  
  public BuddyListFragment$AnimatedRosterAdapter(BuddyListFragment paramBuddyListFragment, IRosterListAdapter paramIRosterListAdapter)
  {
    super((BaseAdapter)paramIRosterListAdapter, paramBuddyListFragment.getResources().getInteger(2131361796));
    mAdapter = paramIRosterListAdapter;
  }
  
  public void changeCursor(Cursor paramCursor, String paramString)
  {
    mAdapter.changeCursor(paramCursor, paramString);
  }
  
  public RosterListAdapter.CallState getActiveCallState()
  {
    return mAdapter.getActiveCallState();
  }
  
  public Cursor getCursor()
  {
    return mAdapter.getCursor();
  }
  
  public boolean hasActiveChats()
  {
    return mAdapter.hasActiveChats();
  }
  
  public void init(long paramLong, Activity paramActivity, Runnable paramRunnable)
  {
    mAdapter.init(paramLong, paramActivity, paramRunnable);
  }
  
  public boolean isScrolling()
  {
    return mAdapter.isScrolling();
  }
  
  public void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3)
  {
    mAdapter.onScroll(paramAbsListView, paramInt1, paramInt2, paramInt3);
  }
  
  public void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
  {
    mAdapter.onScrollStateChanged(paramAbsListView, paramInt);
  }
  
  public void setAccountId(long paramLong)
  {
    mAdapter.setAccountId(paramLong);
  }
  
  public void setActiveCallState(RosterListAdapter.CallState paramCallState)
  {
    mAdapter.setActiveCallState(paramCallState);
  }
  
  public void setFilterMode(RosterListLoader.FilterMode paramFilterMode, RosterListLoader.SortMode paramSortMode)
  {
    mAdapter.setFilterMode(paramFilterMode, paramSortMode);
  }
  
  public void setFocus(Intent paramIntent)
  {
    mAdapter.setFocus(paramIntent);
  }
  
  public void setIncludeSelfItem(boolean paramBoolean)
  {
    mAdapter.setIncludeSelfItem(paramBoolean);
  }
  
  public boolean setIsOnline(boolean paramBoolean)
  {
    return mAdapter.setIsOnline(paramBoolean);
  }
  
  public void setNarrowLayout(boolean paramBoolean)
  {
    mAdapter.setNarrowLayout(paramBoolean);
  }
  
  public void setNeedForceLoad(boolean paramBoolean)
  {
    mAdapter.setNeedForceLoad(paramBoolean);
  }
  
  public void setOnVideoButtonClickedListener(IRosterListAdapter.VideoButtonClickHandler paramVideoButtonClickHandler)
  {
    mAdapter.setOnVideoButtonClickedListener(paramVideoButtonClickHandler);
  }
  
  public void setSelfStatusCursor(Cursor paramCursor)
  {
    mAdapter.setSelfStatusCursor(paramCursor);
  }
  
  public void suppressIndent()
  {
    mAdapter.suppressIndent();
  }
  
  public void suppressVideoButton(boolean paramBoolean)
  {
    mAdapter.suppressVideoButton(paramBoolean);
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.fragments.BuddyListFragment.AnimatedRosterAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */