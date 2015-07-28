package com.google.android.talk;

import android.app.ActionBar;
import android.app.Activity;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.app.ListFragment;
import android.content.AsyncQueryHandler;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import android.widget.SearchView;
import android.widget.SearchView.OnCloseListener;
import android.widget.SearchView.OnQueryTextListener;
import android.widget.TextView;
import com.google.android.talk.fragments.SearchChatResultFragment;

public class SearchActivity
  extends Activity
{
  private static String CHAT_RESULT_FRAGMENT_TAG = "chat_result_fragment";
  private static String RESULTS_FRAGMENT_TAG = "results_fragment";
  private long mConversationId;
  MenuItem mSearchItem;
  SearchView mSearchView;
  private boolean mSinglePane;
  private String mUsername;
  
  private void clearChatResult()
  {
    SearchChatResultFragment localSearchChatResultFragment = (SearchChatResultFragment)getFragmentManager().findFragmentByTag(CHAT_RESULT_FRAGMENT_TAG);
    if (localSearchChatResultFragment != null) {
      localSearchChatResultFragment.clear();
    }
  }
  
  private void setConversationId(long paramLong)
  {
    mConversationId = paramLong;
  }
  
  private void setupActionBar()
  {
    ActionBar localActionBar = getActionBar();
    localActionBar.setDisplayOptions(4, 12);
    localActionBar.setDisplayOptions(16, 16);
  }
  
  private void setupSearchUI(ActionBar paramActionBar)
  {
    paramActionBar = new SearchView.OnQueryTextListener()
    {
      public boolean onQueryTextChange(String paramAnonymousString)
      {
        return true;
      }
      
      public boolean onQueryTextSubmit(String paramAnonymousString)
      {
        SearchActivity.SearchResultsFragment localSearchResultsFragment = (SearchActivity.SearchResultsFragment)getFragmentManager().findFragmentByTag(SearchActivity.RESULTS_FRAGMENT_TAG);
        if (localSearchResultsFragment != null)
        {
          SearchActivity.this.clearChatResult();
          Intent localIntent = new Intent();
          localIntent.putExtra("query", paramAnonymousString);
          localSearchResultsFragment.doSearchQuery(localIntent, "SearchActivity");
        }
        return true;
      }
    };
    SearchView.OnCloseListener local2 = new SearchView.OnCloseListener()
    {
      public boolean onClose()
      {
        return false;
      }
    };
    mSearchView.setOnQueryTextListener(paramActionBar);
    mSearchView.setOnCloseListener(local2);
    mSearchView.setQueryHint(getString(2131493025));
    mSearchView.setQuery(getIntent().getStringExtra("query"), false);
  }
  
  public long getConversationId()
  {
    return mConversationId;
  }
  
  public String getUsername()
  {
    return mUsername;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    mUsername = getIntent().getStringExtra("from");
    boolean bool;
    label45:
    FragmentTransaction localFragmentTransaction;
    if (!ActivityUtils.isTablet(this))
    {
      bool = true;
      mSinglePane = bool;
      if (!mSinglePane) {
        break label106;
      }
      setContentView(2130968624);
      paramBundle = getIntent().getStringExtra("show_fragment");
      if (mSinglePane)
      {
        localFragmentTransaction = getFragmentManager().beginTransaction();
        if (paramBundle == null) {
          break label115;
        }
        localFragmentTransaction.replace(2131755127, new SearchChatResultFragment(), CHAT_RESULT_FRAGMENT_TAG);
      }
    }
    for (;;)
    {
      localFragmentTransaction.commit();
      setupActionBar();
      return;
      bool = false;
      break;
      label106:
      setContentView(2130968625);
      break label45;
      label115:
      localFragmentTransaction.replace(2131755127, new SearchResultsFragment(), RESULTS_FRAGMENT_TAG);
    }
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    getMenuInflater().inflate(2131689479, paramMenu);
    mSearchItem = paramMenu.findItem(2131755191);
    mSearchView = ((SearchView)mSearchItem.getActionView());
    setupSearchUI(getActionBar());
    return true;
  }
  
  public void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    clearChatResult();
    SearchResultsFragment localSearchResultsFragment = (SearchResultsFragment)getFragmentManager().findFragmentByTag(RESULTS_FRAGMENT_TAG);
    if (localSearchResultsFragment != null) {
      localSearchResultsFragment.doSearchQuery(paramIntent, "onNewIntent");
    }
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return super.onOptionsItemSelected(paramMenuItem);
    case 16908332: 
      finish();
      return true;
    case 2131755183: 
      paramMenuItem = new Intent(this, GTalkPreferencesActivity.class);
      paramMenuItem.putExtra("accountId", getIntent().getLongExtra("accountId", 0L));
      paramMenuItem.putExtra("username", paramMenuItem.getStringExtra("username"));
      startActivity(paramMenuItem);
      return true;
    }
    HelpUtils.showHelp(this, "talk_search");
    return true;
  }
  
  public boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    return true;
  }
  
  public static class SearchResultsFragment
    extends ListFragment
  {
    public static final String EXTRA_USERNAME = "username";
    private static final String LOG_TAG = "talk";
    private TalkApp mApp;
    private TextView mCountView;
    private SearchHeaderCursorAdapter mCursorAdapter;
    private TextView mEmptyView;
    private GmailProviderWrapper mGmail;
    private View mLastActivatedView;
    private boolean mMustRequeryCursor = false;
    private QueryHandler mQueryHandler;
    private String mQueryString;
    private boolean mSinglePane;
    private TextView mTitleView;
    private String mUserName;
    
    private void maybeRequery()
    {
      if (mMustRequeryCursor)
      {
        GmailProviderWrapper.ConversationCursor localConversationCursor = mCursorAdapter.getCursor();
        if (localConversationCursor != null)
        {
          mMustRequeryCursor = false;
          localConversationCursor.becomeActiveNetworkCursor();
          localConversationCursor.getCursor().requery();
        }
      }
    }
    
    private void openConversation(int paramInt)
    {
      Object localObject2 = mCursorAdapter.getCursor();
      if (((GmailProviderWrapper.ConversationCursor)localObject2).moveTo(paramInt))
      {
        mCursorAdapter.setActivatedItem(paramInt);
        localObject1 = (SearchActivity)getActivity();
        ((SearchActivity)localObject1).setConversationId(((GmailProviderWrapper.ConversationCursor)localObject2).getConversationId());
        if (mSinglePane)
        {
          localObject2 = getActivity().getIntent();
          ((Intent)localObject2).setClass((Context)localObject1, localObject1.getClass());
          ((Intent)localObject2).putExtra("show_fragment", "SearchChatResultFragment");
          ((Intent)localObject2).putExtra("thread-id", ((SearchActivity)localObject1).getConversationId());
          ((Intent)localObject2).putExtra("query", mQueryString);
          startActivity((Intent)localObject2);
        }
      }
      else
      {
        return;
      }
      Object localObject1 = getFragmentManager().beginTransaction();
      ((FragmentTransaction)localObject1).replace(2131755127, new SearchChatResultFragment(), SearchActivity.CHAT_RESULT_FRAGMENT_TAG);
      ((FragmentTransaction)localObject1).commit();
    }
    
    private void updateTitle(String paramString, int paramInt)
    {
      Activity localActivity = getActivity();
      mTitleView.setText(localActivity.getString(2131492976, new Object[] { paramString }));
      mCountView.setText(Integer.toString(paramInt));
    }
    
    public void contentChanged()
    {
      Object localObject = getActivity();
      if (localObject == null) {
        return;
      }
      if (mEmptyView != null) {
        if (mQueryString != null) {
          break label103;
        }
      }
      label103:
      for (localObject = "";; localObject = ((Activity)localObject).getString(2131493043, new Object[] { mQueryString }))
      {
        mEmptyView.setText((CharSequence)localObject);
        TalkApp.LOGV("talk", "SearchActivity.onContentChanged");
        if (mCursorAdapter == null) {
          break;
        }
        int i = mCursorAdapter.getCount();
        updateTitle(mQueryString, i);
        localObject = getListView();
        if ((i <= 0) || (((ListView)localObject).getSelectedItem() != null) || (mSinglePane)) {
          break;
        }
        getListView().setSelection(0);
        openConversation(0);
        return;
      }
    }
    
    public void doSearchQuery(Intent paramIntent, String paramString)
    {
      mQueryString = paramIntent.getStringExtra("query");
      updateTitle(mQueryString, mCursorAdapter.getCount());
      if (mQueryString == null)
      {
        paramString = paramIntent.getData();
        if ("content".equals(paramString.getScheme()))
        {
          paramIntent = paramString.getLastPathSegment();
          paramString = new Intent("android.intent.action.VIEW", paramString);
          paramString.putExtra("from", paramIntent);
          paramString.putExtra("accountId", getActivity().getIntent().getLongExtra("accountId", 0L));
          startActivity(paramString);
          getActivity().finish();
          return;
        }
        mQueryString = paramString.toString();
      }
      mQueryString.trim();
      paramIntent = mApp.getActiveAccount();
      if ((paramIntent == null) || (TextUtils.isEmpty(username)))
      {
        Log.w("talk", "No AccountInfo & no username, bailing from search.");
        getActivity().finish();
        return;
      }
      mUserName = username;
      if (TalkApp.verboseLoggable()) {
        Log.v("talk", "doSearchQuery queryString: " + mQueryString + " userName: " + mUserName);
      }
      paramIntent = "in:chats " + mQueryString;
      mCursorAdapter.setSearch(mQueryString);
      mQueryHandler.setAdapter(mCursorAdapter);
      mGmail.runQueryForConversations(mUserName, mQueryHandler, 0, paramIntent, GmailProviderWrapper.BecomeActiveNetworkCursor.YES);
    }
    
    public boolean isSelected(long paramLong)
    {
      return false;
    }
    
    public void onActivityCreated(Bundle paramBundle)
    {
      super.onActivityCreated(paramBundle);
      paramBundle = getListView();
      paramBundle.setItemsCanFocus(true);
      Activity localActivity = getActivity();
      mQueryHandler = new QueryHandler(localActivity);
      mApp = TalkApp.getApplication(localActivity);
      mGmail = mApp.getGmailProvider();
      Intent localIntent = localActivity.getIntent();
      String str = localIntent.getAction();
      if (TalkApp.verboseLoggable()) {
        Log.v("talk", "SearchActivity.onCreate queryAction: " + str);
      }
      mCursorAdapter = new SearchHeaderCursorAdapter(this, new NetworkProgressMonitor(localActivity, new Runnable()
      {
        public void run() {}
      }));
      setListAdapter(mCursorAdapter);
      paramBundle.setFocusable(true);
      paramBundle.setClickable(true);
      registerForContextMenu(paramBundle);
      mEmptyView = ((TextView)getView().findViewById(2131755136));
      paramBundle.setEmptyView(mEmptyView);
      mTitleView = ((TextView)getView().findViewById(2131755118));
      mCountView = ((TextView)getView().findViewById(2131755135));
      doSearchQuery(localIntent, "onCreate");
    }
    
    public void onCreate(Bundle paramBundle)
    {
      super.onCreate(paramBundle);
      if (!ActivityUtils.isTablet(getActivity())) {}
      for (boolean bool = true;; bool = false)
      {
        mSinglePane = bool;
        setHasOptionsMenu(true);
        return;
      }
    }
    
    public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
    {
      return paramLayoutInflater.inflate(2130968631, paramViewGroup, false);
    }
    
    public void onDestroy()
    {
      if (mCursorAdapter != null)
      {
        GmailProviderWrapper.ConversationCursor localConversationCursor = mCursorAdapter.getCursor();
        if (localConversationCursor != null) {
          localConversationCursor.getCursor().close();
        }
      }
      super.onDestroy();
    }
    
    public void onListItemClick(ListView paramListView, View paramView, int paramInt, long paramLong)
    {
      openConversation(paramInt);
      paramView.setActivated(true);
      if (mLastActivatedView == null) {
        mLastActivatedView = paramListView.getChildAt(0);
      }
      if (mLastActivatedView != null) {
        mLastActivatedView.setActivated(false);
      }
      mLastActivatedView = paramView;
    }
    
    public void onPause()
    {
      super.onPause();
      mMustRequeryCursor = true;
    }
    
    public void onResume()
    {
      super.onResume();
      maybeRequery();
    }
    
    public void onStop()
    {
      GmailProviderWrapper.ConversationCursor localConversationCursor = mCursorAdapter.getCursor();
      if (localConversationCursor != null) {
        localConversationCursor.getCursor().deactivate();
      }
      mMustRequeryCursor = true;
      super.onStop();
    }
    
    private final class QueryHandler
      extends AsyncQueryHandler
    {
      private SearchHeaderCursorAdapter mAdapter;
      
      public QueryHandler(Context paramContext)
      {
        super();
      }
      
      protected void onQueryComplete(int paramInt, Object paramObject, Cursor paramCursor)
      {
        if (TalkApp.verboseLoggable()) {
          Log.v("talk", "onQueryComplete cursor: " + paramCursor + " isEmpty: " + mAdapter.isEmpty() + " count: " + mAdapter.getCount());
        }
        if (paramCursor != null)
        {
          paramObject = mGmail.getConversationCursorForCursor(mUserName, paramCursor);
          mAdapter.changeCursor((GmailProviderWrapper.ConversationCursor)paramObject);
          if (TalkApp.verboseLoggable()) {
            Log.v("talk", "onQueryComplete conversationCursor count: " + ((GmailProviderWrapper.ConversationCursor)paramObject).count() + " status: " + ((GmailProviderWrapper.ConversationCursor)paramObject).getStatus());
          }
          paramObject = ((GmailProviderWrapper.ConversationCursor)paramObject).getStatus();
          if ((paramObject == GmailProviderWrapper.CursorStatus.LOADED) || (paramObject == GmailProviderWrapper.CursorStatus.COMPLETE)) {
            contentChanged();
          }
          return;
        }
        contentChanged();
      }
      
      public void setAdapter(SearchHeaderCursorAdapter paramSearchHeaderCursorAdapter)
      {
        mAdapter = paramSearchHeaderCursorAdapter;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.SearchActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */