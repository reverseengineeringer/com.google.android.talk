package com.google.android.talk.fragments;

import android.app.Activity;
import android.content.Loader;
import android.database.Cursor;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import com.google.android.gtalkservice.IImSession;
import com.google.android.gtalkservice.IRosterListener.Stub;
import com.google.android.talk.IRosterListAdapter;
import com.google.android.talk.RosterListAdapter;
import com.google.android.talk.TalkApp;
import com.google.android.talk.TalkApp.AccountInfo;
import com.google.android.talk.loaders.GroupChatInviteeListLoader;

public class GroupChatInviteeListFragment
  extends RosterListFragment
{
  private Controller mController;
  private String[] mParticipants;
  private final RosterListener mRosterListener = new RosterListener();
  private int mUsernameColumn;
  
  public GroupChatInviteeListFragment(TalkApp.AccountInfo paramAccountInfo, Controller paramController, String[] paramArrayOfString)
  {
    mAccountInfo = paramAccountInfo;
    mParticipants = paramArrayOfString;
    setController(paramController);
  }
  
  private void initializeLoader()
  {
    Bundle localBundle = new Bundle();
    localBundle.putStringArray("participants", mParticipants);
    startLoading(1, localBundle);
  }
  
  private void log(String paramString)
  {
    Log.d("talk", "[GroupChatInviteeList] " + paramString);
  }
  
  protected void addRemoteListeners()
  {
    try
    {
      mImSession.addRemoteRosterListener(mRosterListener);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      Log.e("talk", "addRemoteListeners caught ", localRemoteException);
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    mRosterListAdapter = new RosterListAdapter(getActivity());
    mRosterListAdapter.suppressIndent();
    mRosterListAdapter.suppressVideoButton(true);
    mRosterListAdapter.init(getAccountInfoaccountId, getActivity(), new Runnable()
    {
      public void run()
      {
        forceLoad();
      }
    });
    initializeLoader();
  }
  
  public Loader<Cursor> onCreateLoader(int paramInt, Bundle paramBundle)
  {
    if (paramInt == 1)
    {
      paramBundle = paramBundle.getStringArray("participants");
      return new GroupChatInviteeListLoader(getActivity(), paramBundle, getAccountInfoaccountId);
    }
    return null;
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    getActivity().registerForContextMenu(mList);
    mList.setTextFilterEnabled(true);
    setListAdapter(mRosterListAdapter);
    return paramLayoutInflater;
  }
  
  protected void onListItemClick(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    paramListView = ((Cursor)getListView().getItemAtPosition(paramInt)).getString(mUsernameColumn);
    mController.onInviteePicked(paramListView);
  }
  
  public void onLoadFinished(Loader<Cursor> paramLoader, Cursor paramCursor)
  {
    if (TalkApp.verboseLoggable()) {
      log("onLoadFinished");
    }
    mRosterListAdapter.changeCursor(paramCursor, null);
    mUsernameColumn = paramCursor.getColumnIndexOrThrow("username");
    restoreListViewState();
    getListView().requestFocus();
  }
  
  public void onLoaderReset(Loader<Cursor> paramLoader) {}
  
  protected void removeRemoteListeners()
  {
    try
    {
      if (mImSession != null) {
        mImSession.removeRemoteRosterListener(mRosterListener);
      }
      return;
    }
    catch (RemoteException localRemoteException)
    {
      Log.e("talk", "removeRemoteListeners caught ", localRemoteException);
    }
  }
  
  public void setController(Controller paramController)
  {
    mController = paramController;
  }
  
  public static abstract interface Controller
  {
    public abstract void onInviteePicked(String paramString);
  }
  
  class RosterListener
    extends IRosterListener.Stub
  {
    RosterListener() {}
    
    public void presenceChanged(String paramString)
    {
      if (TalkApp.verboseLoggable()) {
        GroupChatInviteeListFragment.this.log("RosterListener.presenceChanged for " + paramString);
      }
      forceLoad();
    }
    
    public void rosterChanged()
    {
      forceLoad();
    }
    
    public void selfPresenceChanged() {}
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.fragments.GroupChatInviteeListFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */