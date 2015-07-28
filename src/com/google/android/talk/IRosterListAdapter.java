package com.google.android.talk;

import android.app.Activity;
import android.content.Intent;
import android.database.Cursor;
import android.widget.AbsListView.OnScrollListener;
import android.widget.ListAdapter;
import com.google.android.talk.loaders.RosterListLoader.FilterMode;
import com.google.android.talk.loaders.RosterListLoader.SortMode;

public abstract interface IRosterListAdapter
  extends AbsListView.OnScrollListener, ListAdapter
{
  public abstract void changeCursor(Cursor paramCursor, String paramString);
  
  public abstract RosterListAdapter.CallState getActiveCallState();
  
  public abstract Cursor getCursor();
  
  public abstract boolean hasActiveChats();
  
  public abstract void init(long paramLong, Activity paramActivity, Runnable paramRunnable);
  
  public abstract boolean isScrolling();
  
  public abstract void setAccountId(long paramLong);
  
  public abstract void setActiveCallState(RosterListAdapter.CallState paramCallState);
  
  public abstract void setFilterMode(RosterListLoader.FilterMode paramFilterMode, RosterListLoader.SortMode paramSortMode);
  
  public abstract void setFocus(Intent paramIntent);
  
  public abstract void setIncludeSelfItem(boolean paramBoolean);
  
  public abstract boolean setIsOnline(boolean paramBoolean);
  
  public abstract void setNarrowLayout(boolean paramBoolean);
  
  public abstract void setNeedForceLoad(boolean paramBoolean);
  
  public abstract void setOnVideoButtonClickedListener(VideoButtonClickHandler paramVideoButtonClickHandler);
  
  public abstract void setSelfStatusCursor(Cursor paramCursor);
  
  public abstract void suppressIndent();
  
  public abstract void suppressVideoButton(boolean paramBoolean);
  
  public static abstract interface VideoButtonClickHandler
  {
    public abstract void onVideoButtonClicked(RosterListItem paramRosterListItem);
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.IRosterListAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */