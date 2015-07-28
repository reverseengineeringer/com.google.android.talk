package com.google.android.talk;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.RemoteException;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.gtalkservice.IGTalkService;
import com.google.android.gtalkservice.IImSession;

public class SubscriptionScreen
  extends Activity
{
  private long mAccountId;
  private TalkApp mApp;
  private Dialog mDialog;
  private Handler mHandler = new Handler();
  private IImSession mImSession;
  private String mNickname;
  private IGTalkService mService;
  private String mUsername;
  
  private void dismissSubscriptionNotifications(IGTalkService paramIGTalkService)
  {
    try
    {
      paramIGTalkService.dismissNotificationsForAccount(mAccountId);
      return;
    }
    catch (RemoteException paramIGTalkService) {}
  }
  
  private IImSession getImSession()
  {
    if (mImSession == null) {
      mImSession = mApp.getImSessionFromActivityIntent(getIntent());
    }
    return mImSession;
  }
  
  private void loadAvatar()
  {
    final ContactInfoQuery localContactInfoQuery = new ContactInfoQuery(this, mAccountId, mUsername, null, true);
    localContactInfoQuery.setContactInfoCallback(new ContactInfoQuery.ContactInfoQueryCallback()
    {
      public void onContactInfoLoaded()
      {
        if (!isFinishing())
        {
          Drawable localDrawable = localContactInfoQuery.getAvatar();
          SubscriptionScreen.access$302(SubscriptionScreen.this, SubscriptionScreen.this.makeDialog(localDrawable));
          mDialog.show();
        }
      }
    });
    localContactInfoQuery.startQueryForContactInfo();
  }
  
  private Dialog makeDialog(Drawable paramDrawable)
  {
    DialogInterface.OnClickListener local1 = new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        for (;;)
        {
          try
          {
            paramAnonymousDialogInterface = SubscriptionScreen.this.getImSession();
            switch (paramAnonymousInt)
            {
            case -1: 
              finish();
              return;
            }
          }
          catch (RemoteException paramAnonymousDialogInterface)
          {
            finish();
            return;
          }
          paramAnonymousDialogInterface.approveSubscriptionRequest(mUsername, mNickname, null);
          continue;
          paramAnonymousDialogInterface.declineSubscriptionRequest(mUsername);
          continue;
          paramAnonymousDialogInterface.declineSubscriptionRequest(mUsername);
          paramAnonymousDialogInterface.blockContact(mUsername);
        }
      }
    };
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this, 3);
    View localView = ((LayoutInflater)localBuilder.getContext().getSystemService("layout_inflater")).inflate(2130968593, null);
    ((ImageView)localView.findViewById(2131755018)).setImageDrawable(paramDrawable);
    ((TextView)localView.findViewById(2131755057)).setText(String.format(getString(2131492951), new Object[] { mUsername }));
    localBuilder.setView(localView).setTitle(2131492950).setPositiveButton(2131492972, local1).setNeutralButton(2131492974, local1).setNegativeButton(2131492973, local1).setCancelable(true).setOnCancelListener(new DialogInterface.OnCancelListener()
    {
      public void onCancel(DialogInterface paramAnonymousDialogInterface)
      {
        finish();
      }
    }).create();
  }
  
  private void registerForServiceStateChanged()
  {
    mApp.addImSessionAvailableCallback(mHandler, mApp.getAccountIdFromActivityIntent(getIntent()), new SessionAvailableRunnable()
    {
      public void run(IGTalkService paramAnonymousIGTalkService, IImSession paramAnonymousIImSession)
      {
        SubscriptionScreen.this.serviceStateChanged(paramAnonymousIGTalkService, paramAnonymousIImSession);
      }
    });
  }
  
  private void serviceStateChanged(IGTalkService paramIGTalkService, IImSession paramIImSession)
  {
    mService = paramIGTalkService;
    mImSession = paramIImSession;
    dismissSubscriptionNotifications(paramIGTalkService);
  }
  
  private void unregisterForServiceStateChanged()
  {
    mApp.removeImSessionAvailableCallback(mHandler);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    resolveIntent();
    mApp = TalkApp.getApplication(this);
    registerForServiceStateChanged();
    loadAvatar();
  }
  
  protected void onRestart()
  {
    super.onRestart();
    IGTalkService localIGTalkService = mApp.getGTalkService();
    if ((localIGTalkService == null) || (mService != localIGTalkService)) {
      mApp.ensureServiceBound();
    }
    registerForServiceStateChanged();
    if (mDialog != null) {
      mDialog.show();
    }
  }
  
  protected void onStop()
  {
    super.onStop();
    unregisterForServiceStateChanged();
    if (mDialog != null) {
      mDialog.dismiss();
    }
    finish();
  }
  
  void resolveIntent()
  {
    mUsername = getIntent().getStringExtra("from").toLowerCase();
    mAccountId = getIntent().getLongExtra("accountId", 0L);
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.SubscriptionScreen
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */