package com.google.android.talk;

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
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import android.widget.TextView;
import com.google.android.talk.fragments.SearchChatResultFragment;

public class SearchActivity$SearchResultsFragment
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
      SearchActivity.access$200((SearchActivity)localObject1, ((GmailProviderWrapper.ConversationCursor)localObject2).getConversationId());
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
    ((FragmentTransaction)localObject1).replace(2131755127, new SearchChatResultFragment(), SearchActivity.access$300());
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

/* Location:
 * Qualified Name:     com.google.android.talk.SearchActivity.SearchResultsFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */