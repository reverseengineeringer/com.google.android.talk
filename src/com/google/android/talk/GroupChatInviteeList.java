package com.google.android.talk;

import android.app.ActionBar;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.inputmethod.InputMethodManager;
import com.google.android.talk.fragments.GroupChatInviteeListFragment;
import com.google.android.talk.fragments.GroupChatInviteeListFragment.Controller;

public class GroupChatInviteeList
  extends GtalkServiceActivity
{
  private long mAccountId;
  private TalkApp.AccountInfo mAccountInfo;
  private TalkApp mApp;
  GroupChatInviteeListFragment.Controller mController = new GroupChatInviteeListFragment.Controller()
  {
    public void onInviteePicked(String paramAnonymousString)
    {
      Bundle localBundle = new Bundle();
      localBundle.putString("invitee", paramAnonymousString);
      setResult(-1, new Intent().setAction(getIntent().toString()).putExtras(localBundle));
      finish();
    }
  };
  GroupChatInviteeListFragment mList;
  
  private String[] getParticipants(Intent paramIntent)
  {
    paramIntent = paramIntent.getStringArrayExtra("from");
    if (TalkApp.verboseLoggable())
    {
      log("mParticipants.length = " + paramIntent.length);
      int i = 0;
      while (i < paramIntent.length)
      {
        log("mParticipants[" + i + "]=" + paramIntent[i]);
        i += 1;
      }
    }
    return paramIntent;
  }
  
  private void initAccount(Bundle paramBundle)
  {
    if (mAccountId == 0L)
    {
      mAccountId = getIntent().getLongExtra("accountId", 0L);
      if ((mAccountId == 0L) && (paramBundle != null)) {
        mAccountId = paramBundle.getLong("accountId");
      }
    }
    mAccountInfo = mApp.getAccountInfo(mAccountId);
    if (mAccountInfo == null) {
      finish();
    }
  }
  
  private void log(String paramString)
  {
    if (TalkApp.debugLoggable()) {
      Log.d("talk", "[GroupChatInviteeList] " + paramString);
    }
  }
  
  private void registerOnSessionCreatedListeners()
  {
    addOnSessionCreatedListener(mList);
  }
  
  protected long getAccountId()
  {
    return mAccountId;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    if (!ActivityUtils.isTablet(this)) {
      setTheme(16974105);
    }
    super.onCreate(paramBundle);
    setContentView(2130968608);
    mApp = TalkApp.getApplication(this);
    initAccount(paramBundle);
    mList = new GroupChatInviteeListFragment(mAccountInfo, mController, getParticipants(getIntent()));
    registerOnSessionCreatedListeners();
    paramBundle = getFragmentManager().beginTransaction();
    paramBundle.add(2131755047, mList);
    paramBundle.commit();
    paramBundle = findViewById(2131755029);
    if (paramBundle != null) {
      paramBundle.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          finish();
        }
      });
    }
    paramBundle = getActionBar();
    if (paramBundle != null) {
      paramBundle.setDisplayOptions(4, 4);
    }
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return false;
    }
    onBackPressed();
    return true;
  }
  
  public boolean onSearchRequested()
  {
    InputMethodManager localInputMethodManager = (InputMethodManager)getSystemService("input_method");
    if (localInputMethodManager != null) {
      localInputMethodManager.showSoftInput(getCurrentFocus(), 0);
    }
    return false;
  }
  
  public void onStop()
  {
    super.onStop();
    finish();
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.GroupChatInviteeList
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */