package com.google.android.talk;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnKeyListener;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.gtalkservice.IGTalkService;
import com.google.android.talk.videochat.RingerService;
import com.google.android.talk.videochat.TalkOngoingNotificationFactory;
import com.google.android.talk.videochat.VideoChatActivity;
import com.google.android.talk.videochat.VideoChatOutputReceiver;
import com.google.android.videochat.CallSession;
import com.google.android.videochat.CallState;
import com.google.android.videochat.VideoChatService.HardBinder;
import com.google.android.videochat.VideoChatServiceBinder;
import com.google.android.videochat.VideoChatServiceBinder.ServiceBoundCallback;

public class AlertNotificationFullScreenActivity
  extends Activity
{
  protected long mAccountId;
  private Bitmap mAvatar;
  private ImageView mAvatarView;
  private AlertDialog.Builder mBuilder;
  private CallSession mCallSession;
  private BroadcastReceiver mCancelBroadcastReceiver;
  private Dialog mDialog;
  private View mDialogRootView;
  protected CallState mExistingCall;
  protected String mExistingCallNickName;
  protected boolean mIsGroupChatInvite;
  protected boolean mIsIncomingCall;
  protected boolean mIsVideo;
  protected String mMessage;
  private TextView mMessage1View;
  private TextView mMessage2View;
  protected String mNickName;
  protected String mRemoteJid;
  private boolean mRingerForceStopped;
  protected Intent mShowChatIntent;
  private boolean mShowDialog = true;
  private final Object mShowDialogLock = new Object();
  protected long mTimestamp;
  private VideoChatServiceBinder mVcBinder;
  
  private void bindToVideoChatServiceAndShowDialog()
  {
    if (mVcBinder == null) {
      mVcBinder = new VideoChatServiceBinder(this, new ComponentName(this, VideoChatOutputReceiver.class));
    }
    mVcBinder.bind(new VideoChatServiceBinder.ServiceBoundCallback()
    {
      public void onServiceBound(VideoChatService.HardBinder paramAnonymousHardBinder)
      {
        AlertNotificationFullScreenActivity.access$102(AlertNotificationFullScreenActivity.this, paramAnonymousHardBinder.getCallSession());
        AlertNotificationFullScreenActivity.this.loadContactInfoAndShowDialog();
      }
    });
  }
  
  private void createViews()
  {
    mBuilder = new AlertDialog.Builder(this, 3);
    mDialogRootView = ((LayoutInflater)mBuilder.getContext().getSystemService("layout_inflater")).inflate(2130968607, null);
    mAvatarView = ((ImageView)mDialogRootView.findViewById(2131755018));
    mMessage1View = ((TextView)mDialogRootView.findViewById(2131755082));
    mMessage2View = ((TextView)mDialogRootView.findViewById(2131755083));
  }
  
  private void declineCall(long paramLong, String paramString)
  {
    mCallSession.declineIncomingCall(paramString);
  }
  
  private void dismissDialog()
  {
    synchronized (mShowDialogLock)
    {
      if (mDialog != null)
      {
        mDialog.dismiss();
        mDialog = null;
        mShowDialog = false;
      }
      return;
    }
  }
  
  private void dismissDialogAndFinish()
  {
    if (mCancelBroadcastReceiver != null)
    {
      unregisterReceiver(mCancelBroadcastReceiver);
      mCancelBroadcastReceiver = null;
    }
    dismissDialog();
    if (!isFinishing()) {
      finish();
    }
  }
  
  private void dismissNotificationAndFinish()
  {
    if (mIsIncomingCall) {
      sendBroadcast(new Intent("com.google.android.talk.CANCEL_NOTIFICATION"));
    }
    for (;;)
    {
      TalkApp.LOGD("talk", "##### [AlertNotificationFullScreen] dismissNotificationAndFinish: dismiss dialog");
      dismissDialogAndFinish();
      return;
      IGTalkService localIGTalkService = TalkApp.getApplication(this).getGTalkService();
      if (localIGTalkService == null)
      {
        Log.e("talk", "dismissNotificationAndFinish: no GTalkService object found!");
      }
      else
      {
        String str = StringUtils.parseBareAddress(mRemoteJid);
        try
        {
          localIGTalkService.dismissNotificationFor(str, 1L);
        }
        catch (RemoteException localRemoteException)
        {
          Log.e("talk", "dismissNotificationAndFinish: caught ", localRemoteException);
        }
      }
    }
  }
  
  private void dumpIntent(String paramString, Intent paramIntent)
  {
    TalkApp.LOGD("talk", paramString + " EXTRA_INTENT_FROM_ADDRESS: " + paramIntent.getStringExtra("from"));
    TalkApp.LOGD("talk", paramString + " EXTRA_INTENT_ACCOUNT_ID: " + paramIntent.getLongExtra("accountId", 0L));
    TalkApp.LOGD("talk", paramString + " EXTRA_INTENT_USERNAME: " + paramIntent.getStringExtra("username"));
  }
  
  private void loadContactInfoAndShowDialog()
  {
    final Object localObject = StringUtils.parseBareAddress(mRemoteJid);
    final ContactInfoQuery localContactInfoQuery;
    if (mExistingCall != null)
    {
      localContactInfoQuery = new ContactInfoQuery(this, mAccountId, mExistingCall.remoteBareJid, null, false);
      localContactInfoQuery.setContactInfoCallback(new ContactInfoQuery.ContactInfoQueryCallback()
      {
        public void onContactInfoLoaded()
        {
          mExistingCallNickName = localContactInfoQuery.getNickName();
          AlertNotificationFullScreenActivity.this.showDialog();
        }
      });
    }
    for (;;)
    {
      localObject = new ContactInfoQuery(this, mAccountId, (String)localObject, null, true);
      ((ContactInfoQuery)localObject).setContactInfoCallback(new ContactInfoQuery.ContactInfoQueryCallback()
      {
        public void onContactInfoLoaded()
        {
          mNickName = localObject.getNickName();
          AlertNotificationFullScreenActivity.access$802(AlertNotificationFullScreenActivity.this, ((BitmapDrawable)localObject.getAvatar()).getBitmap());
          mAvatarView.setImageBitmap(mAvatar);
          if (localContactInfoQuery != null)
          {
            localContactInfoQuery.startQueryForContactInfo();
            return;
          }
          AlertNotificationFullScreenActivity.this.showDialog();
        }
      });
      ((ContactInfoQuery)localObject).startQueryForContactInfo();
      return;
      localContactInfoQuery = null;
    }
  }
  
  private Dialog makeDialog()
  {
    Object localObject = mBuilder;
    ((AlertDialog.Builder)localObject).setView(mDialogRootView);
    DialogInterface.OnClickListener localOnClickListener = getOnClickListener();
    setPositiveButtonString((AlertDialog.Builder)localObject, localOnClickListener);
    setNegativeButtonString((AlertDialog.Builder)localObject, localOnClickListener);
    ((AlertDialog.Builder)localObject).setCancelable(true);
    setCancelCallbackListener((AlertDialog.Builder)localObject);
    localObject = ((AlertDialog.Builder)localObject).create();
    ((AlertDialog)localObject).setInverseBackgroundForced(true);
    ((AlertDialog)localObject).setOnKeyListener(new DialogInterface.OnKeyListener()
    {
      public boolean onKey(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt, KeyEvent paramAnonymousKeyEvent)
      {
        switch (paramAnonymousInt)
        {
        }
        do
        {
          return false;
        } while ((paramAnonymousKeyEvent.isCanceled()) || (!mIsIncomingCall) || (mRingerForceStopped));
        RingerService.forceStopRinger(AlertNotificationFullScreenActivity.this);
        AlertNotificationFullScreenActivity.access$302(AlertNotificationFullScreenActivity.this, true);
        return true;
      }
    });
    return (Dialog)localObject;
  }
  
  private void resolveIntent()
  {
    parseIntent(getIntent());
  }
  
  private void showDialog()
  {
    synchronized (mShowDialogLock)
    {
      if (mShowDialog)
      {
        setTitle(mBuilder);
        setMessageLine1();
        setMessageLine2();
        if (mDialog == null)
        {
          mDialog = makeDialog();
          mDialog.show();
        }
      }
      return;
    }
  }
  
  private void startVideochatActivity()
  {
    if (mIsVideo)
    {
      VideoChatActivity.startActivityCallInProgress(this, mAccountId, mRemoteJid);
      return;
    }
    BuddyListCombo.startChatScreenActivity(this, mAccountId, mRemoteJid);
  }
  
  void acceptCall(long paramLong, String paramString)
  {
    TalkApp.LOGD("talk", "[Incoming call alert] acceptCall for " + paramString);
    mCallSession.acceptIncomingCall(paramString, TalkOngoingNotificationFactory.getInstance(getApplicationContext()));
    startVideochatActivity();
  }
  
  protected DialogInterface.OnClickListener getOnClickListener()
  {
    new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        switch (paramAnonymousInt)
        {
        }
        for (;;)
        {
          AlertNotificationFullScreenActivity.this.dismissNotificationAndFinish();
          return;
          if (mIsIncomingCall)
          {
            acceptCall(mAccountId, mRemoteJid);
          }
          else
          {
            AlertNotificationFullScreenActivity.this.dumpIntent("click positive button", mShowChatIntent);
            startActivity(mShowChatIntent);
            continue;
            if (mIsIncomingCall) {
              AlertNotificationFullScreenActivity.this.declineCall(mAccountId, mRemoteJid);
            }
          }
        }
      }
    };
  }
  
  protected void handleNewIntent(Intent arg1)
  {
    boolean bool = ???.getBooleanExtra("incoming_call", false);
    TalkApp.LOGD("talk", "incomingCall: " + bool);
    if (!mIsIncomingCall)
    {
      parseIntent(???);
      if (bool)
      {
        dismissDialog();
        createViews();
      }
    }
    else
    {
      synchronized (mShowDialogLock)
      {
        mShowDialog = true;
        bindToVideoChatServiceAndShowDialog();
        return;
      }
    }
    loadContactInfoAndShowDialog();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    resolveIntent();
    requestWindowFeature(1);
    if (mIsIncomingCall)
    {
      paramBundle = getWindow();
      paramBundle.addFlags(524288);
      if (!getIntent().getBooleanExtra("screen_off", false)) {
        paramBundle.addFlags(2097281);
      }
    }
    mCancelBroadcastReceiver = new BroadcastReceiver()
    {
      public void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
      {
        paramAnonymousContext = paramAnonymousIntent.getAction();
        if ((paramAnonymousContext.equals("com.google.android.talk.CANCEL_NOTIFICATION")) || ((paramAnonymousContext.equals("com.google.android.talk.CANCEL_POPUP_NOTIFICATION")) && (!mIsIncomingCall)))
        {
          TalkApp.LOGD("talk", "[AlertNotificationFullScreen] received " + paramAnonymousContext + ", dismiss dialog");
          AlertNotificationFullScreenActivity.this.dismissDialogAndFinish();
        }
      }
    };
    paramBundle = new IntentFilter("com.google.android.talk.CANCEL_NOTIFICATION");
    paramBundle.addAction("com.google.android.talk.CANCEL_POPUP_NOTIFICATION");
    registerReceiver(mCancelBroadcastReceiver, paramBundle);
    createViews();
  }
  
  public void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    handleNewIntent(paramIntent);
  }
  
  public void onStart()
  {
    super.onStart();
    if (mIsIncomingCall)
    {
      bindToVideoChatServiceAndShowDialog();
      return;
    }
    loadContactInfoAndShowDialog();
  }
  
  public void onStop()
  {
    super.onStop();
    if (mIsIncomingCall) {
      mVcBinder.unbind();
    }
  }
  
  protected void parseIntent(Intent paramIntent)
  {
    mRemoteJid = paramIntent.getStringExtra("from");
    mAccountId = paramIntent.getLongExtra("accountId", 0L);
    mMessage = paramIntent.getStringExtra("message");
    mShowChatIntent = ((Intent)paramIntent.getParcelableExtra("android.intent.extra.INTENT"));
    mTimestamp = paramIntent.getLongExtra("timestamp", System.currentTimeMillis());
    mIsIncomingCall = paramIntent.getBooleanExtra("incoming_call", false);
    if (mShowChatIntent != null)
    {
      mIsGroupChatInvite = mShowChatIntent.getBooleanExtra("is_muc", false);
      dumpIntent("parseIntent", paramIntent);
    }
    for (;;)
    {
      mIsVideo = paramIntent.getBooleanExtra("isvideo", false);
      mExistingCall = ((CallState)paramIntent.getParcelableExtra("iscollision"));
      return;
      mIsGroupChatInvite = false;
    }
  }
  
  protected void setCancelCallbackListener(AlertDialog.Builder paramBuilder)
  {
    paramBuilder.setOnCancelListener(new DialogInterface.OnCancelListener()
    {
      public void onCancel(DialogInterface paramAnonymousDialogInterface)
      {
        if (mIsIncomingCall) {
          AlertNotificationFullScreenActivity.this.declineCall(mAccountId, mRemoteJid);
        }
        TalkApp.LOGD("talk", "[AlertNotificationFullScreen] onCancel: dismiss");
        AlertNotificationFullScreenActivity.this.dismissNotificationAndFinish();
      }
    });
  }
  
  protected void setMessageLine1()
  {
    TextView localTextView = mMessage1View;
    if (TextUtils.isEmpty(mNickName)) {}
    for (String str = StringUtils.parseBareAddress(mRemoteJid);; str = mNickName)
    {
      localTextView.setText(str);
      return;
    }
  }
  
  protected void setMessageLine2()
  {
    if (mIsIncomingCall)
    {
      mMessage2View.setVisibility(8);
      return;
    }
    mMessage2View.setText(mMessage);
  }
  
  protected void setNegativeButtonString(AlertDialog.Builder paramBuilder, DialogInterface.OnClickListener paramOnClickListener)
  {
    if (mIsIncomingCall) {}
    for (int i = 2131493062;; i = 2131493070)
    {
      paramBuilder.setNegativeButton(i, paramOnClickListener);
      return;
    }
  }
  
  protected void setPositiveButtonString(AlertDialog.Builder paramBuilder, DialogInterface.OnClickListener paramOnClickListener)
  {
    if (mIsIncomingCall) {}
    for (int i = 2131492972;; i = 2131493071)
    {
      paramBuilder.setPositiveButton(i, paramOnClickListener);
      return;
    }
  }
  
  protected void setTitle(AlertDialog.Builder paramBuilder)
  {
    if (mIsIncomingCall)
    {
      if (mIsVideo) {}
      for (int i = 2131493056;; i = 2131493058)
      {
        paramBuilder.setTitle(i);
        return;
      }
    }
    if (mIsGroupChatInvite)
    {
      paramBuilder.setTitle(2131493072);
      return;
    }
    paramBuilder.setTitle(2131493069);
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.AlertNotificationFullScreenActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */