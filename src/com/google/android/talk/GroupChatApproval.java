package com.google.android.talk;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gtalkservice.IChatSession;
import com.google.android.gtalkservice.IImSession;
import java.util.HashMap;

public class GroupChatApproval
  extends Activity
{
  private TalkApp mApp;
  private Dialog mDialog;
  private IImSession mImSession;
  String mInviter;
  String mPassword;
  String mRoomAddress;
  
  private IImSession getImSession()
  {
    if (mImSession == null) {
      mImSession = mApp.getImSessionFromActivityIntent(getIntent());
    }
    return mImSession;
  }
  
  private Dialog makeDialog()
  {
    DialogInterface.OnClickListener local1 = new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        GroupChatApproval.this.getImSession();
        switch (paramAnonymousInt)
        {
        }
        for (;;)
        {
          finish();
          return;
          acceptGroupChat();
          continue;
          declineGroupChat();
        }
      }
    };
    new AlertDialog.Builder(this, 3).setMessage(String.format(getString(2131492944), new Object[] { StringUtils.parseBareAddress(mInviter) })).setTitle(2131492943).setPositiveButton(2131492972, local1).setNegativeButton(2131492907, local1).setCancelable(true).setOnCancelListener(new DialogInterface.OnCancelListener()
    {
      public void onCancel(DialogInterface paramAnonymousDialogInterface)
      {
        finish();
      }
    }).create();
  }
  
  private void updateServiceForGroupChat(boolean paramBoolean)
  {
    Object localObject = getImSession();
    if (paramBoolean) {}
    for (;;)
    {
      try
      {
        ((IImSession)localObject).joinGroupChatSession(mRoomAddress, null, mPassword);
        localObject = ((IImSession)localObject).getChatSession(mInviter);
        if (localObject != null) {
          ((IChatSession)localObject).leave();
        }
      }
      catch (RemoteException localRemoteException)
      {
        finish();
        continue;
      }
      mApp.mGroupChatInvitations.remove(mRoomAddress);
      return;
      ((IImSession)localObject).declineGroupChatInvitation(mRoomAddress, mInviter);
    }
  }
  
  void acceptGroupChat()
  {
    updateServiceForGroupChat(true);
    Bundle localBundle = new Bundle(getIntent().getExtras());
    localBundle.putBoolean("approval", true);
    localBundle.putString("room", mRoomAddress);
    localBundle.putString("password", mPassword);
    setResult(-1, new Intent().setAction(getIntent().toString()).putExtras(localBundle));
    finish();
  }
  
  void declineGroupChat()
  {
    updateServiceForGroupChat(false);
    Bundle localBundle = new Bundle();
    localBundle.putBoolean("approval", false);
    localBundle.putString("room", mRoomAddress);
    localBundle.putString("password", mPassword);
    setResult(-1, new Intent().setAction(getIntent().toString()).putExtras(localBundle));
    finish();
  }
  
  void log(String paramString)
  {
    Log.d("talk", "[GroupChatApproval] " + paramString);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    mApp = TalkApp.getApplication(this);
    resolveIntent();
    mDialog = makeDialog();
    mDialog.show();
  }
  
  protected void onRestart()
  {
    super.onRestart();
    mDialog.show();
  }
  
  public void onStop()
  {
    super.onStop();
    mDialog.dismiss();
    finish();
  }
  
  void resolveIntent()
  {
    Intent localIntent = getIntent();
    mInviter = localIntent.getStringExtra("muc_inviter");
    mRoomAddress = localIntent.getStringExtra("room");
    mPassword = localIntent.getStringExtra("password");
    if (Log.isLoggable("talk", 3)) {
      log("resolveIntent inviter=" + mInviter + ", room=" + mRoomAddress + ", password=" + mPassword);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.GroupChatApproval
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */