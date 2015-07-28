package com.google.android.talk.fragments;

import android.app.Activity;
import android.app.Fragment;
import android.app.LoaderManager;
import android.app.LoaderManager.LoaderCallbacks;
import android.content.Loader;
import android.database.Cursor;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcelable;
import android.os.RemoteException;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;
import com.google.android.gtalkservice.IGTalkService;
import com.google.android.gtalkservice.IImSession;
import com.google.android.talk.ActivityUtils;
import com.google.android.talk.GtalkServiceActivity.OnImSessionCreatedListener;
import com.google.android.talk.IRosterListAdapter;
import com.google.android.talk.ServiceAvailableRunnable;
import com.google.android.talk.TalkApp;
import com.google.android.talk.TalkApp.AccountInfo;

public abstract class RosterListFragment
  extends Fragment
  implements GtalkServiceActivity.OnImSessionCreatedListener, LoaderManager.LoaderCallbacks<Cursor>
{
  protected TalkApp.AccountInfo mAccountInfo;
  protected TalkApp mApp;
  protected boolean mCreated;
  protected boolean mDontRestoreListViewState;
  protected final Handler mHandler = new Handler();
  protected IImSession mImSession;
  protected ListView mList;
  private Parcelable mListState = null;
  private LoaderManager mLoaderManager;
  protected IRosterListAdapter mRosterListAdapter;
  protected boolean mTabletMode;
  
  private void addRemoteListenersIfReady()
  {
    if ((mImSession != null) && (mCreated)) {
      addRemoteListeners();
    }
  }
  
  private void log(String paramString)
  {
    if (TalkApp.debugLoggable()) {
      Log.d("talk", "[RosterListFragment] " + paramString);
    }
  }
  
  private void logv(String paramString)
  {
    if (TalkApp.verboseLoggable()) {
      Log.v("talk", "[RosterListFragment] " + paramString);
    }
  }
  
  protected abstract void addRemoteListeners();
  
  public void forceLoad()
  {
    if (getActivity() == null) {
      return;
    }
    if (mRosterListAdapter.isScrolling())
    {
      if (TalkApp.verboseLoggable()) {
        log("defer requery cursor");
      }
      mRosterListAdapter.setNeedForceLoad(true);
      return;
    }
    startLoading(1, null);
  }
  
  protected TalkApp.AccountInfo getAccountInfo()
  {
    return mAccountInfo;
  }
  
  protected Cursor getCursor()
  {
    if (mRosterListAdapter == null) {
      return null;
    }
    return mRosterListAdapter.getCursor();
  }
  
  public ListView getListView()
  {
    return mList;
  }
  
  protected Loader<Cursor> getLoader(int paramInt)
  {
    return mLoaderManager.getLoader(paramInt);
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    mApp = TalkApp.getApplication(paramActivity);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    getActivity().setDefaultKeyMode(3);
    if (paramBundle != null) {
      mListState = paramBundle.getParcelable("liststate");
    }
    mTabletMode = ActivityUtils.isTablet(getActivity());
    mLoaderManager = getLoaderManager();
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(2130968621, paramViewGroup, false);
    mList = ((ListView)paramLayoutInflater.findViewById(2131755119));
    mList.setOnItemClickListener(new AdapterView.OnItemClickListener()
    {
      public void onItemClick(AdapterView paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        onListItemClick((ListView)paramAnonymousAdapterView, paramAnonymousView, paramAnonymousInt, paramAnonymousLong);
      }
    });
    mList.setTextFilterEnabled(false);
    if (mTabletMode)
    {
      mList.setVerticalScrollbarPosition(1);
      mList.setScrollBarStyle(50331648);
    }
    mList.setDivider(null);
    mList.setSelector(new ColorDrawable(0));
    return paramLayoutInflater;
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    Cursor localCursor = getCursor();
    if (localCursor != null) {
      localCursor.close();
    }
  }
  
  protected abstract void onListItemClick(ListView paramListView, View paramView, int paramInt, long paramLong);
  
  public void onResume()
  {
    super.onResume();
    if ((getCursor() != null) && (!mDontRestoreListViewState)) {
      restoreListViewState();
    }
    forceLoad();
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    mListState = mList.onSaveInstanceState();
    paramBundle.putParcelable("liststate", mListState);
    if (mImSession != null) {}
    try
    {
      paramBundle.putLong("accountId", mImSession.getAccountId());
      return;
    }
    catch (RemoteException paramBundle)
    {
      Log.e("talk", "onSaveInstanceState: caught ", paramBundle);
    }
  }
  
  public void onSessionCreated(IImSession paramIImSession)
  {
    mImSession = paramIImSession;
    addRemoteListenersIfReady();
  }
  
  public void onStart()
  {
    mCreated = true;
    super.onStart();
    addRemoteListenersIfReady();
  }
  
  public void onStop()
  {
    super.onStop();
    Cursor localCursor = getCursor();
    if (localCursor != null) {
      localCursor.close();
    }
    removeRemoteListeners();
    mLoaderManager.destroyLoader(1);
    mCreated = false;
    mImSession = null;
  }
  
  protected abstract void removeRemoteListeners();
  
  protected void restoreListViewState()
  {
    if (mListState != null)
    {
      getListView().onRestoreInstanceState(mListState);
      mListState = null;
      if (TalkApp.debugLoggable()) {
        log("restoreListViewState: pos=" + getListView().getSelectedItemPosition());
      }
    }
  }
  
  public void setListAdapter(IRosterListAdapter paramIRosterListAdapter)
  {
    mList.setAdapter(paramIRosterListAdapter);
  }
  
  protected void startLoading(final int paramInt, final Bundle paramBundle)
  {
    mApp.addServiceAvailableCallback(mHandler, new ServiceAvailableRunnable()
    {
      public void run(IGTalkService paramAnonymousIGTalkService)
      {
        RosterListFragment.this.logv("startLoading serviceAvailable runnable");
        paramAnonymousIGTalkService = mLoaderManager.getLoader(paramInt);
        if (paramAnonymousIGTalkService != null)
        {
          paramAnonymousIGTalkService.forceLoad();
          return;
        }
        mLoaderManager.initLoader(paramInt, paramBundle, RosterListFragment.this);
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.fragments.RosterListFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */