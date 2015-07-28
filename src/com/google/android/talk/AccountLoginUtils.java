package com.google.android.talk;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.app.DialogFragment;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gtalkservice.ConnectionState;
import com.google.android.gtalkservice.IGTalkConnection;
import com.google.android.gtalkservice.IGTalkConnectionListener.Stub;
import com.google.android.gtalkservice.IGTalkService;
import com.google.android.gtalkservice.IImSession;

public class AccountLoginUtils
{
  public static void asyncCreateConnectionForAccount(IGTalkService paramIGTalkService, String paramString, final ConnectionCreatedListener paramConnectionCreatedListener)
  {
    logd("asyncCreateConnectionForAccount: " + paramString);
    try
    {
      paramIGTalkService.createGTalkConnection(paramString, new IGTalkConnectionListener.Stub()
      {
        public void onConnectionCreated(IGTalkConnection paramAnonymousIGTalkConnection)
        {
          AccountLoginUtils.signInForConnection(paramAnonymousIGTalkConnection, val$username, paramConnectionCreatedListener);
        }
        
        public void onConnectionCreationFailed(String paramAnonymousString)
        {
          AccountLoginUtils.loge("asyncCreateConnectionForAccount: creating connection failed");
        }
      });
      return;
    }
    catch (RemoteException paramIGTalkService)
    {
      Log.e("talk", "asyncCreateConnectionForAccount caught ", paramIGTalkService);
    }
  }
  
  public static void clearActiveAccountPrefs(Context paramContext)
  {
    paramContext = paramContext.getSharedPreferences("gtalk_prefs", 0).edit();
    paramContext.remove("accountId");
    paramContext.remove("username");
    paramContext.apply();
  }
  
  public static boolean isSignedIn(String paramString, IGTalkService paramIGTalkService)
  {
    if (paramIGTalkService == null) {}
    for (;;)
    {
      return false;
      try
      {
        paramString = paramIGTalkService.getConnectionForUser(paramString);
        if (paramString != null)
        {
          boolean bool = paramString.getDefaultImSession().getConnectionState().isOnline();
          return bool;
        }
      }
      catch (RemoteException paramString)
      {
        loge("### isSignedIn caught " + paramString);
      }
    }
    return false;
  }
  
  private static void logd(String paramString)
  {
    if (TalkApp.debugLoggable()) {
      Log.d("talk", "[AccountLoginUtils] " + paramString);
    }
  }
  
  private static void loge(String paramString)
  {
    Log.e("talk", "[AccountLoginUtils] " + paramString);
  }
  
  public static void setActiveAccount(TalkApp.AccountInfo paramAccountInfo, Activity paramActivity)
  {
    TalkApp.getApplication(paramActivity).setCurrentAccount(username);
    paramActivity = paramActivity.getSharedPreferences("gtalk_prefs", 0).edit();
    paramActivity.putLong("accountId", accountId);
    paramActivity.putString("username", username);
    paramActivity.apply();
  }
  
  public static void setInactiveAccount(TalkApp.AccountInfo paramAccountInfo, TalkApp paramTalkApp)
  {
    paramTalkApp.setInactiveAccount(accountId);
    clearActiveAccountPrefs(paramTalkApp);
  }
  
  public static boolean showDialogIfLowStorage(TalkApp paramTalkApp, Activity paramActivity)
  {
    paramTalkApp = paramTalkApp.getGTalkService();
    if (paramTalkApp != null) {}
    try
    {
      boolean bool = paramTalkApp.getDeviceStorageLow();
      if (!bool) {
        return false;
      }
    }
    catch (RemoteException paramTalkApp)
    {
      Log.e("talk", "checkForLowStorage caught ", paramTalkApp);
      return false;
    }
    new LowStorageDialogFragment().show(paramActivity.getFragmentManager(), "LowStorageDialog");
    return true;
  }
  
  public static boolean showDialogIfNoDataAccess(TalkApp paramTalkApp, Activity paramActivity)
  {
    if (paramTalkApp.isBackgroundDataEnabled()) {
      return false;
    }
    new NoBackgroundDataDialogFragment().show(paramActivity.getFragmentManager(), "NoBackgroundDataDialog");
    return true;
  }
  
  public static boolean signIn(String paramString, IGTalkService paramIGTalkService, ConnectionCreatedListener paramConnectionCreatedListener)
  {
    try
    {
      IGTalkConnection localIGTalkConnection = paramIGTalkService.getConnectionForUser(paramString);
      if (localIGTalkConnection == null)
      {
        asyncCreateConnectionForAccount(paramIGTalkService, paramString, paramConnectionCreatedListener);
        return true;
      }
      signInForConnection(localIGTalkConnection, paramString, paramConnectionCreatedListener);
    }
    catch (RemoteException paramString)
    {
      for (;;)
      {
        loge("### signin caught " + paramString);
      }
    }
    return false;
  }
  
  private static void signInForConnection(IGTalkConnection paramIGTalkConnection, String paramString, ConnectionCreatedListener paramConnectionCreatedListener)
  {
    logd("signInForConnection");
    try
    {
      paramIGTalkConnection = paramIGTalkConnection.getDefaultImSession();
      paramConnectionCreatedListener.connectionCreated(paramString, paramIGTalkConnection);
      logd("signInForConnection: login for " + paramString);
      paramIGTalkConnection.login(paramString, true);
      return;
    }
    catch (RemoteException paramIGTalkConnection)
    {
      logd("signInForConnection: caught " + paramIGTalkConnection);
    }
  }
  
  static abstract interface ConnectionCreatedListener
  {
    public abstract void connectionCreated(String paramString, IImSession paramIImSession);
  }
  
  public static class LowStorageDialogFragment
    extends DialogFragment
  {
    public void onCancel(DialogInterface paramDialogInterface)
    {
      paramDialogInterface = getActivity();
      paramDialogInterface.setResult(0);
      paramDialogInterface.finish();
    }
    
    public Dialog onCreateDialog(final Bundle paramBundle)
    {
      paramBundle = getActivity();
      new AlertDialog.Builder(paramBundle).setTitle(2131492956).setIconAttribute(16843605).setMessage(2131492957).setCancelable(true).setPositiveButton(2131492958, new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          paramAnonymousDialogInterface = new Intent("android.settings.INTERNAL_STORAGE_SETTINGS");
          paramAnonymousDialogInterface.addCategory("android.intent.category.DEFAULT");
          paramAnonymousDialogInterface.setFlags(524288);
          startActivityForResult(paramAnonymousDialogInterface, 100);
        }
      }).setNegativeButton(2131492959, new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          paramBundle.setResult(0);
          paramBundle.finish();
        }
      }).create();
    }
  }
  
  public static class NoBackgroundDataDialogFragment
    extends DialogFragment
  {
    public void onCancel(DialogInterface paramDialogInterface)
    {
      paramDialogInterface = getActivity();
      paramDialogInterface.setResult(0);
      paramDialogInterface.finish();
    }
    
    public Dialog onCreateDialog(final Bundle paramBundle)
    {
      paramBundle = getActivity();
      new AlertDialog.Builder(paramBundle).setTitle(2131492952).setIconAttribute(16843605).setMessage(2131492953).setCancelable(true).setPositiveButton(2131492954, new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          paramAnonymousDialogInterface = new Intent("android.settings.SYNC_SETTINGS");
          paramAnonymousDialogInterface.addCategory("android.intent.category.DEFAULT");
          paramAnonymousDialogInterface.setFlags(524288);
          startActivityForResult(paramAnonymousDialogInterface, 100);
        }
      }).setNegativeButton(2131492955, new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          paramBundle.setResult(0);
          paramBundle.finish();
        }
      }).create();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.AccountLoginUtils
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */