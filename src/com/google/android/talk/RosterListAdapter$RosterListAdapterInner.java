package com.google.android.talk;

import android.content.Context;
import android.database.Cursor;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.LayoutInflater.Factory;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.AbsListView.RecyclerListener;
import android.widget.CursorAdapter;

public class RosterListAdapter$RosterListAdapterInner
  extends CursorAdapter
  implements AbsListView.OnScrollListener, AbsListView.RecyclerListener
{
  private Runnable mForceLoadRunnable;
  private boolean mNeedForceLoad;
  private int mScrollState;
  
  public RosterListAdapter$RosterListAdapterInner(RosterListAdapter paramRosterListAdapter, Context paramContext, Cursor paramCursor)
  {
    super(paramContext, paramCursor, false);
  }
  
  public void bindView(View paramView, Context paramContext, Cursor paramCursor)
  {
    paramContext = paramCursor.getString(RosterListAdapter.access$200(this$0));
    boolean bool = false;
    if (RosterListAdapter.access$300(this$0)) {
      if ((RosterListAdapter.access$400(this$0) != RosterListAdapter.access$500(this$0)) || (!TextUtils.equals(paramContext, RosterListAdapter.access$600(this$0)))) {
        break label131;
      }
    }
    label131:
    for (bool = true;; bool = false)
    {
      paramView.setActivated(bool);
      ((RosterListItem)paramView).bind(paramCursor, RosterListAdapter.access$500(this$0), isScrolling(), RosterListAdapter.access$700(this$0), true, RosterListAdapter.access$800(this$0), RosterListAdapter.access$900(this$0), RosterListAdapter.access$1000(this$0), RosterListAdapter.access$300(this$0), RosterListAdapter.access$1100(this$0));
      return;
    }
  }
  
  public void changeCursor(Cursor paramCursor)
  {
    super.changeCursor(paramCursor);
  }
  
  public int getItemViewType(int paramInt)
  {
    Cursor localCursor = (Cursor)getItem(paramInt);
    if (localCursor == null) {
      return -1;
    }
    return RosterListItem.getItemViewType(RosterListAdapter.access$1200(this$0), localCursor);
  }
  
  public int getViewTypeCount()
  {
    return 4;
  }
  
  public boolean hasActiveChats()
  {
    Cursor localCursor = getCursor();
    if (localCursor == null) {}
    int i;
    do
    {
      int j;
      do
      {
        return false;
        i = localCursor.getColumnIndexOrThrow("is_active");
        j = localCursor.getColumnIndexOrThrow("subscriptionType");
        localCursor.moveToPosition(-1);
      } while (!localCursor.moveToNext());
      switch (localCursor.getInt(j))
      {
      }
    } while (localCursor.getInt(i) == 0);
    return true;
  }
  
  public void init(Runnable paramRunnable)
  {
    mForceLoadRunnable = paramRunnable;
    RosterListAdapter.access$100(this$0).setFactory(new RosterListItemFactory(null));
  }
  
  public final boolean isScrolling()
  {
    return mScrollState == 2;
  }
  
  public View newView(Context paramContext, Cursor paramCursor, ViewGroup paramViewGroup)
  {
    return (RosterListItem)RosterListAdapter.access$100(this$0).inflate(2130968622, paramViewGroup, false);
  }
  
  public void onMovedToScrapHeap(View paramView)
  {
    paramView = paramView.findViewById(2131755120);
    if (paramView != null) {
      ((RosterListItem)paramView).onMovedToScrapHeap();
    }
  }
  
  public final void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3) {}
  
  public final void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
  {
    int i = mScrollState;
    mScrollState = paramInt;
    if (i == 2)
    {
      if (mNeedForceLoad)
      {
        mNeedForceLoad = false;
        mForceLoadRunnable.run();
      }
    }
    else {
      return;
    }
    notifyDataSetChanged();
  }
  
  public void setNeedForceLoad(boolean paramBoolean)
  {
    mNeedForceLoad = paramBoolean;
  }
  
  private class RosterListItemFactory
    implements LayoutInflater.Factory
  {
    private RosterListItemFactory() {}
    
    public View onCreateView(String paramString, Context paramContext, AttributeSet paramAttributeSet)
    {
      if ((paramString != null) && (paramString.equals(RosterListItem.class.getName()))) {
        return new RosterListItem(RosterListAdapter.access$1300(this$0), paramContext);
      }
      return null;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.RosterListAdapter.RosterListAdapterInner
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */