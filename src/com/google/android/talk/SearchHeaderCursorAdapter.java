package com.google.android.talk;

import android.app.Activity;
import android.content.Context;
import android.database.Cursor;
import android.database.DataSetObserver;
import android.provider.SearchRecentSuggestions;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.CursorAdapter;

public class SearchHeaderCursorAdapter
  extends BaseAdapter
{
  private int mActivatedItem;
  private Activity mActivity;
  private GmailProviderWrapper.ConversationCursor mConversationCursor;
  private LayoutInflater mFactory;
  private SearchActivity.SearchResultsFragment mFragment;
  private InnerAdapter mInnerAdapter;
  IProgressMonitor mProgressMonitor;
  private String mSearchString;
  private GmailProviderWrapper.CursorStatus mStatus;
  
  public SearchHeaderCursorAdapter(SearchActivity.SearchResultsFragment paramSearchResultsFragment, IProgressMonitor paramIProgressMonitor)
  {
    mFragment = paramSearchResultsFragment;
    mActivity = paramSearchResultsFragment.getActivity();
    mFactory = LayoutInflater.from(paramSearchResultsFragment.getActivity());
    mProgressMonitor = paramIProgressMonitor;
    mStatus = GmailProviderWrapper.CursorStatus.LOADED;
    mInnerAdapter = new InnerAdapter(mActivity, null);
  }
  
  private void cursorStatusChanged(GmailProviderWrapper.CursorStatus paramCursorStatus)
  {
    if (paramCursorStatus != mStatus)
    {
      Log.v("talk", "SearchHeaderCursorAdapter.cursorStatusChanged: " + paramCursorStatus + " count: " + mConversationCursor.count());
      mStatus = paramCursorStatus;
    }
    switch (mStatus)
    {
    default: 
      return;
    case ???: 
    case ???: 
      mProgressMonitor.done();
      mFragment.contentChanged();
      TalkApp.getApplication(mActivity).getRecentSuggestions().saveRecentQuery(mSearchString, mActivity.getString(2131493042, new Object[] { Integer.valueOf(mConversationCursor.count()), mSearchString }));
      return;
    case ???: 
    case ???: 
      mProgressMonitor.beginTask(null, 0);
      return;
    }
    mProgressMonitor.done();
  }
  
  public final void changeCursor(GmailProviderWrapper.ConversationCursor paramConversationCursor)
  {
    mConversationCursor = paramConversationCursor;
    if (mConversationCursor != null)
    {
      mInnerAdapter.changeCursor(mConversationCursor.getCursor());
      cursorStatusChanged(mConversationCursor.getStatus());
      return;
    }
    mInnerAdapter.changeCursor(null);
    cursorStatusChanged(GmailProviderWrapper.CursorStatus.LOADED);
  }
  
  public int getCount()
  {
    int j = 1;
    if (!mInnerAdapter.isValid()) {
      return 0;
    }
    int k;
    if ((mStatus == GmailProviderWrapper.CursorStatus.ERROR) || (mStatus == GmailProviderWrapper.CursorStatus.LOADING))
    {
      i = 1;
      k = mInnerAdapter.getCount();
      if (i == 0) {
        break label59;
      }
    }
    label59:
    for (int i = j;; i = 0)
    {
      return k + i;
      i = 0;
      break;
    }
  }
  
  public final GmailProviderWrapper.ConversationCursor getCursor()
  {
    return mConversationCursor;
  }
  
  public Object getItem(int paramInt)
  {
    if (paramInt < mConversationCursor.count()) {
      return mInnerAdapter.getItem(paramInt);
    }
    return null;
  }
  
  public long getItemId(int paramInt)
  {
    if (paramInt < mConversationCursor.count()) {
      return mInnerAdapter.getItemId(paramInt);
    }
    return -1L;
  }
  
  public int getItemViewType(int paramInt)
  {
    if (paramInt == mInnerAdapter.getCount()) {
      return 1;
    }
    return 0;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramInt == mInnerAdapter.getCount()) {}
    for (int i = 1; i != 0; i = 0)
    {
      paramViewGroup = (SearchFooterView)paramView;
      paramView = paramViewGroup;
      if (paramViewGroup == null) {
        paramView = (SearchFooterView)mFactory.inflate(2130968630, null);
      }
      paramView.bind(mStatus, mConversationCursor);
      return paramView;
    }
    return mInnerAdapter.getView(paramInt, paramView, paramViewGroup);
  }
  
  public int getViewTypeCount()
  {
    return 2;
  }
  
  public boolean hasStableIds()
  {
    return true;
  }
  
  public void notifyDataSetChanged()
  {
    mInnerAdapter.notifyDataSetChanged();
  }
  
  public void registerDataSetObserver(DataSetObserver paramDataSetObserver)
  {
    if (mInnerAdapter != null) {
      mInnerAdapter.registerDataSetObserver(paramDataSetObserver);
    }
  }
  
  public void setActivatedItem(int paramInt)
  {
    mActivatedItem = paramInt;
  }
  
  public final void setSearch(String paramString)
  {
    mSearchString = paramString;
  }
  
  public void unregisterDataSetObserver(DataSetObserver paramDataSetObserver)
  {
    if (mInnerAdapter != null) {
      mInnerAdapter.unregisterDataSetObserver(paramDataSetObserver);
    }
  }
  
  private class InnerAdapter
    extends CursorAdapter
  {
    public InnerAdapter(Context paramContext, Cursor paramCursor)
    {
      super(paramCursor);
    }
    
    public final void bindView(View paramView, Context paramContext, Cursor paramCursor)
    {
      paramView = (SearchResultsItem)paramView;
      paramCursor = mConversationCursor;
      if (mConversationCursor.position() == mActivatedItem) {}
      for (boolean bool = true;; bool = false)
      {
        paramView.bind(paramContext, paramCursor, bool);
        return;
      }
    }
    
    public boolean isValid()
    {
      return getCursor() != null;
    }
    
    public final View newView(Context paramContext, Cursor paramCursor, ViewGroup paramViewGroup)
    {
      return (SearchResultsItem)mFactory.inflate(2130968632, paramViewGroup, false);
    }
    
    public void notifyDataSetChanged()
    {
      if (mConversationCursor != null) {
        SearchHeaderCursorAdapter.this.cursorStatusChanged(mConversationCursor.getStatus());
      }
      super.notifyDataSetChanged();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.SearchHeaderCursorAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */