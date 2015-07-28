package com.google.android.talk;

import android.app.ActionBar;
import android.app.Dialog;
import android.content.Intent;
import android.os.Bundle;
import android.preference.PreferenceActivity;
import android.preference.PreferenceActivity.Header;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.webkit.WebView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class GTalkPreferencesActivity
  extends PreferenceActivity
  implements TalkApp.AccountListChangeListener
{
  private long mAccountId;
  private PreferenceActivity.Header mActiveAccount;
  private TalkApp mApp;
  
  private Dialog createOpenSourceLicensesDialog()
  {
    Dialog localDialog = new Dialog(this);
    localDialog.setContentView(2130968617);
    localDialog.setTitle(2131493101);
    ((WebView)localDialog.findViewById(2131755111)).loadUrl("file:///android_asset/licenses.html");
    return localDialog;
  }
  
  private void registerForAccountListChanged()
  {
    mApp.addAccountListChangedListener(this);
  }
  
  private boolean shouldShowNewAccount()
  {
    return (onIsMultiPane()) || (!isMultiPane());
  }
  
  private void unregisterForAccountListChanged()
  {
    mApp.removeAccountListChangedListener(this);
  }
  
  public void onAccountListChanged()
  {
    if (mApp.getAccountList().size() == 0)
    {
      finish();
      return;
    }
    invalidateHeaders();
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if ((paramInt1 == 0) && (paramInt2 == -1)) {
      AccountSelectionActivity.startAccountSelectionActivity(this);
    }
  }
  
  public void onBuildHeaders(List<PreferenceActivity.Header> paramList)
  {
    Object localObject = mApp.getAccountList();
    if (localObject == null) {
      return;
    }
    mActiveAccount = null;
    localObject = ((ArrayList)localObject).iterator();
    while (((Iterator)localObject).hasNext())
    {
      TalkApp.AccountInfo localAccountInfo = (TalkApp.AccountInfo)((Iterator)localObject).next();
      if (accountId > 0L)
      {
        PreferenceActivity.Header localHeader = new PreferenceActivity.Header();
        title = username;
        fragment = "com.google.android.talk.fragments.SettingsFragment";
        Bundle localBundle = new Bundle();
        localBundle.putLong("accountId", accountId);
        fragmentArguments = localBundle;
        paramList.add(localHeader);
        if (accountId == mAccountId) {
          mActiveAccount = localHeader;
        }
      }
    }
    loadHeadersFromResource(2131099649, paramList);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    mApp = TalkApp.getApplication(this);
    mAccountId = getIntent().getLongExtra("accountId", 0L);
    super.onCreate(paramBundle);
    getActionBar().setDisplayOptions(4, 4);
  }
  
  protected Dialog onCreateDialog(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return super.onCreateDialog(paramInt);
    }
    return createOpenSourceLicensesDialog();
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    getMenuInflater().inflate(2131689480, paramMenu);
    return true;
  }
  
  public PreferenceActivity.Header onGetInitialHeader()
  {
    if (mActiveAccount == null) {
      return super.onGetInitialHeader();
    }
    return mActiveAccount;
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return super.onOptionsItemSelected(paramMenuItem);
    case 2131755028: 
      AccountSelectionActivity.startAddAccountActivity(this);
      return true;
    case 16908332: 
      finish();
      return true;
    }
    HelpUtils.showHelp(this, "talk_settings");
    return true;
  }
  
  public boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    paramMenu = paramMenu.findItem(2131755028);
    boolean bool = shouldShowNewAccount();
    paramMenu.setVisible(bool);
    return bool;
  }
  
  protected void onResume()
  {
    super.onResume();
    registerForAccountListChanged();
  }
  
  protected void onStop()
  {
    super.onStop();
    unregisterForAccountListChanged();
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.GTalkPreferencesActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */