package com.google.android.talk;

import android.content.AsyncQueryHandler;
import android.content.Context;
import android.database.Cursor;
import android.util.Log;

final class SearchActivity$SearchResultsFragment$QueryHandler
  extends AsyncQueryHandler
{
  private SearchHeaderCursorAdapter mAdapter;
  
  public SearchActivity$SearchResultsFragment$QueryHandler(SearchActivity.SearchResultsFragment paramSearchResultsFragment, Context paramContext)
  {
    super(paramContext.getContentResolver());
  }
  
  protected void onQueryComplete(int paramInt, Object paramObject, Cursor paramCursor)
  {
    if (TalkApp.verboseLoggable()) {
      Log.v("talk", "onQueryComplete cursor: " + paramCursor + " isEmpty: " + mAdapter.isEmpty() + " count: " + mAdapter.getCount());
    }
    if (paramCursor != null)
    {
      paramObject = SearchActivity.SearchResultsFragment.access$500(this$0).getConversationCursorForCursor(SearchActivity.SearchResultsFragment.access$400(this$0), paramCursor);
      mAdapter.changeCursor((GmailProviderWrapper.ConversationCursor)paramObject);
      if (TalkApp.verboseLoggable()) {
        Log.v("talk", "onQueryComplete conversationCursor count: " + ((GmailProviderWrapper.ConversationCursor)paramObject).count() + " status: " + ((GmailProviderWrapper.ConversationCursor)paramObject).getStatus());
      }
      paramObject = ((GmailProviderWrapper.ConversationCursor)paramObject).getStatus();
      if ((paramObject == GmailProviderWrapper.CursorStatus.LOADED) || (paramObject == GmailProviderWrapper.CursorStatus.COMPLETE)) {
        this$0.contentChanged();
      }
      return;
    }
    this$0.contentChanged();
  }
  
  public void setAdapter(SearchHeaderCursorAdapter paramSearchHeaderCursorAdapter)
  {
    mAdapter = paramSearchHeaderCursorAdapter;
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.SearchActivity.SearchResultsFragment.QueryHandler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */