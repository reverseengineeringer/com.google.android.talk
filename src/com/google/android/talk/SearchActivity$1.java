package com.google.android.talk;

import android.app.FragmentManager;
import android.content.Intent;
import android.widget.SearchView.OnQueryTextListener;

class SearchActivity$1
  implements SearchView.OnQueryTextListener
{
  SearchActivity$1(SearchActivity paramSearchActivity) {}
  
  public boolean onQueryTextChange(String paramString)
  {
    return true;
  }
  
  public boolean onQueryTextSubmit(String paramString)
  {
    SearchActivity.SearchResultsFragment localSearchResultsFragment = (SearchActivity.SearchResultsFragment)this$0.getFragmentManager().findFragmentByTag(SearchActivity.access$000());
    if (localSearchResultsFragment != null)
    {
      SearchActivity.access$100(this$0);
      Intent localIntent = new Intent();
      localIntent.putExtra("query", paramString);
      localSearchResultsFragment.doSearchQuery(localIntent, "SearchActivity");
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.SearchActivity.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */