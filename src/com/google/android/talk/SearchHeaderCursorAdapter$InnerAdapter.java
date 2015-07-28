package com.google.android.talk;

import android.content.Context;
import android.database.Cursor;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CursorAdapter;

class SearchHeaderCursorAdapter$InnerAdapter
  extends CursorAdapter
{
  public SearchHeaderCursorAdapter$InnerAdapter(SearchHeaderCursorAdapter paramSearchHeaderCursorAdapter, Context paramContext, Cursor paramCursor)
  {
    super(paramContext, paramCursor);
  }
  
  public final void bindView(View paramView, Context paramContext, Cursor paramCursor)
  {
    paramView = (SearchResultsItem)paramView;
    paramCursor = SearchHeaderCursorAdapter.access$000(this$0);
    if (SearchHeaderCursorAdapter.access$000(this$0).position() == SearchHeaderCursorAdapter.access$100(this$0)) {}
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
    return (SearchResultsItem)SearchHeaderCursorAdapter.access$200(this$0).inflate(2130968632, paramViewGroup, false);
  }
  
  public void notifyDataSetChanged()
  {
    if (SearchHeaderCursorAdapter.access$000(this$0) != null) {
      SearchHeaderCursorAdapter.access$300(this$0, SearchHeaderCursorAdapter.access$000(this$0).getStatus());
    }
    super.notifyDataSetChanged();
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.SearchHeaderCursorAdapter.InnerAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */