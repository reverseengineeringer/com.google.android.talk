package com.google.android.talk;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.gsf.TalkContract.Account;
import com.google.android.gsf.TalkContract.Contacts;
import com.google.android.gtalkservice.IGTalkService;
import com.google.android.gtalkservice.IImSession;
import com.google.android.gtalkservice.Presence;
import com.google.android.talk.videochat.VideoChatActivity;
import com.google.android.talk.videochat.WifiPolicyUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public class PublicIntentDispatcher
  extends Activity
{
  private int mAction;
  private TalkApp mApp;
  private FromAccountInfo mFromAccount;
  private final Handler mHandler = new Handler();
  private String mMessageBody;
  DialogInterface.OnCancelListener mOnCancelListener = new DialogInterface.OnCancelListener()
  {
    public void onCancel(DialogInterface paramAnonymousDialogInterface)
    {
      finish();
    }
  };
  private String mToAddress;
  
  public static FromAccountInfo chooseFromAccount(List<FromAccountInfo> paramList, String paramString)
  {
    ArrayList localArrayList1 = new ArrayList();
    ArrayList localArrayList2 = new ArrayList();
    Object localObject1 = null;
    if (paramList.size() == 0) {
      return null;
    }
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      FromAccountInfo localFromAccountInfo = (FromAccountInfo)localIterator.next();
      if (username.equals(paramString)) {
        return localFromAccountInfo;
      }
      if (mHasTargetUser)
      {
        Object localObject2;
        if ((signedIn) && (active)) {
          localObject2 = localFromAccountInfo;
        }
        for (;;)
        {
          localArrayList2.add(localFromAccountInfo);
          localObject1 = localObject2;
          break;
          localObject2 = localObject1;
          if (signedIn)
          {
            localArrayList1.add(localFromAccountInfo);
            localObject2 = localObject1;
          }
        }
      }
    }
    if (localObject1 != null) {
      return (FromAccountInfo)localObject1;
    }
    if (localArrayList1.size() > 0) {
      return (FromAccountInfo)localArrayList1.get(0);
    }
    if (localArrayList2.size() > 0) {
      return (FromAccountInfo)localArrayList2.get(0);
    }
    return (FromAccountInfo)paramList.get(0);
  }
  
  public static void executeRequestedAction(Context paramContext, int paramInt, String paramString1, long paramLong, String paramString2)
  {
    executeRequestedAction(paramContext, paramInt, paramString1, paramLong, paramString2, false);
  }
  
  private static void executeRequestedAction(final Context paramContext, int paramInt, String paramString1, final long paramLong, final String paramString2, final boolean paramBoolean)
  {
    switch (paramInt)
    {
    default: 
      return;
    case 4: 
      inviteFriend(paramContext, paramLong, paramString1, paramBoolean);
      return;
    case 5: 
      showFriendList(paramContext, paramLong, paramBoolean);
      return;
    case 0: 
      openChat(paramContext, paramLong, paramString1, paramString2, paramBoolean);
      return;
    }
    for (boolean bool = false;; bool = true)
    {
      startCall(paramContext, paramLong, paramString1, bool, paramBoolean);
      return;
      ContactInfoQuery localContactInfoQuery = new ContactInfoQuery(paramContext, paramLong, paramString1, null, false);
      localContactInfoQuery.setContactInfoCallback(new ContactInfoQuery.ContactInfoQueryCallback()
      {
        public void onContactInfoLoaded()
        {
          int i = val$query.getCapabilities();
          if (ActivityUtils.isVideoChatCapable(i))
          {
            PublicIntentDispatcher.startCall(paramContext, paramLong, paramBoolean, true, paramString2);
            return;
          }
          if (ActivityUtils.isAudioChatCapable(i))
          {
            PublicIntentDispatcher.startCall(paramContext, paramLong, paramBoolean, false, paramString2);
            return;
          }
          PublicIntentDispatcher.openChat(paramContext, paramLong, paramBoolean, val$messageBody, paramString2);
        }
      });
      localContactInfoQuery.startQueryForContactInfo();
      break;
    }
  }
  
  private void executeRequestedActionWithConfirm(final boolean paramBoolean)
  {
    if (!XmppUri.needsConfirmation(mAction))
    {
      executeRequestedAction(this, mAction, mToAddress, mFromAccount.accountId, mMessageBody);
      return;
    }
    getConfirmation(new Runnable()
    {
      public void run()
      {
        PublicIntentDispatcher.executeRequestedAction(PublicIntentDispatcher.this, mAction, mToAddress, mFromAccount.accountId, mMessageBody, paramBoolean);
      }
    });
  }
  
  private static String findMatchingProvider(String paramString)
  {
    if ("GTalk".equalsIgnoreCase(paramString)) {
      return "GTalk";
    }
    return null;
  }
  
  private void getConfirmation(final Runnable paramRunnable)
  {
    final ContactInfoQuery localContactInfoQuery = new ContactInfoQuery(this, mFromAccount.accountId, mToAddress, null, true);
    localContactInfoQuery.setContactInfoCallback(new ContactInfoQuery.ContactInfoQueryCallback()
    {
      public void onContactInfoLoaded()
      {
        int i;
        if (mAction == 3)
        {
          i = localContactInfoQuery.getCapabilities();
          if (!ActivityUtils.isVideoChatCapable(i)) {
            break label76;
          }
          PublicIntentDispatcher.access$202(PublicIntentDispatcher.this, 1);
        }
        for (;;)
        {
          TalkApp.SelfAvatarReadyRunnable local1 = new TalkApp.SelfAvatarReadyRunnable()
          {
            public void run(DatabaseUtils.AvatarData paramAnonymous2AvatarData)
            {
              Object localObject2 = null;
              Object localObject1 = localObject2;
              if (paramAnonymous2AvatarData != null)
              {
                paramAnonymous2AvatarData = mAvatarData;
                localObject1 = localObject2;
                if (paramAnonymous2AvatarData != null) {
                  localObject1 = BitmapFactory.decodeByteArray(paramAnonymous2AvatarData, 0, paramAnonymous2AvatarData.length);
                }
              }
              PublicIntentDispatcher.this.makeConfirmationDialog(mAction, (Bitmap)localObject1, val$toAvatarBitmap, val$confirmedCall).show();
            }
          };
          TalkApp.getApplication(PublicIntentDispatcher.this).getSelfAvatarDataForAccount(mFromAccount, local1);
          return;
          label76:
          if (ActivityUtils.isAudioChatCapable(i)) {
            PublicIntentDispatcher.access$202(PublicIntentDispatcher.this, 2);
          } else {
            PublicIntentDispatcher.access$202(PublicIntentDispatcher.this, 0);
          }
        }
      }
    });
    localContactInfoQuery.startQueryForContactInfo();
  }
  
  private static String getProviderNameForCategory(String paramString)
  {
    if ((paramString != null) && (paramString.equalsIgnoreCase("com.android.im.category.GTALK"))) {
      return "GTalk";
    }
    return null;
  }
  
  private static void inviteFriend(Context paramContext, long paramLong, String paramString, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      startLogin(paramContext, 4, paramLong, paramString);
      return;
    }
    Intent localIntent = new Intent("android.intent.action.MAIN", null);
    localIntent.setClass(paramContext, AddBuddyScreen.class);
    localIntent.putExtra("accountId", paramLong);
    localIntent.putExtra("start_name", paramString);
    paramContext.startActivity(localIntent);
  }
  
  private boolean isCallAction()
  {
    return (1 == mAction) || (2 == mAction) || (3 == mAction);
  }
  
  static boolean isValidAddress(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {}
    while ((paramString.indexOf('/') != -1) || (paramString.indexOf('@') == -1)) {
      return false;
    }
    return true;
  }
  
  private static void log(String paramString)
  {
    Log.d("talk", "[PublicIntentDispatcherActivity] " + paramString);
  }
  
  private Dialog makeConfirmationDialog(int paramInt, Bitmap paramBitmap1, Bitmap paramBitmap2, final Runnable paramRunnable)
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this, 3);
    switch (paramInt)
    {
    }
    for (;;)
    {
      View localView = ((LayoutInflater)localBuilder.getContext().getSystemService("layout_inflater")).inflate(2130968611, null);
      localBuilder.setView(localView);
      ImageView localImageView = (ImageView)localView.findViewById(2131755092);
      if (paramBitmap2 != null) {
        localImageView.setImageBitmap(paramBitmap2);
      }
      paramBitmap2 = (ImageView)localView.findViewById(2131755091);
      if ((paramBitmap2 != null) && (paramBitmap1 != null)) {
        paramBitmap2.setImageBitmap(paramBitmap1);
      }
      ((TextView)localView.findViewById(2131755094)).setText(mFromAccount.username);
      ((TextView)localView.findViewById(2131755095)).setText(mToAddress);
      localBuilder.setPositiveButton(2131493081, new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          paramRunnable.run();
          paramAnonymousDialogInterface.dismiss();
        }
      });
      localBuilder.setNegativeButton(2131493082, new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          paramAnonymousDialogInterface.cancel();
        }
      });
      localBuilder.setCancelable(true);
      localBuilder.setOnCancelListener(mOnCancelListener);
      return localBuilder.create();
      localBuilder.setTitle(2131493079);
      continue;
      localBuilder.setTitle(2131493080);
    }
  }
  
  private void onAccountStateAvailable(List<FromAccountInfo> paramList)
  {
    if (mFromAccount != null) {}
    for (String str = mFromAccount.username;; str = null)
    {
      paramList = chooseFromAccount(paramList, str);
      if (paramList == null) {
        break;
      }
      mFromAccount = paramList;
      mApp = TalkApp.getApplication(this);
      mApp.addServiceAvailableCallback(mHandler, new ServiceAvailableRunnable()
      {
        public void run(IGTalkService paramAnonymousIGTalkService)
        {
          PublicIntentDispatcher.this.serviceStateChanged(paramAnonymousIGTalkService);
        }
      });
      return;
    }
    log("Couldn't find a valid gtalk account to send from");
    finish();
  }
  
  private static void openChat(Context paramContext, long paramLong, String paramString1, String paramString2, boolean paramBoolean)
  {
    if (TalkApp.debugLoggable()) {
      log("ImUrlReceiver: openChat with " + paramString1);
    }
    if (paramBoolean)
    {
      startLogin(paramContext, 0, paramLong, paramString1);
      return;
    }
    BuddyListCombo.startChatScreenActivity(paramContext, paramLong, paramString1);
  }
  
  private boolean parseIntent(Intent paramIntent)
  {
    Object localObject = paramIntent.getData();
    String str = ((Uri)localObject).getHost();
    if (TalkApp.debugLoggable()) {
      log("parseIntent: host=" + str);
    }
    if (paramIntent.getScheme().equals("xmpp"))
    {
      paramIntent = XmppUri.parse(paramIntent.getData());
      mAction = paramIntent.getAction();
      mToAddress = paramIntent.getToAddress();
      mFromAccount = new FromAccountInfo();
      mFromAccount.username = paramIntent.getFromAddress();
      if (mAction == 0) {
        mMessageBody = paramIntent.getMessageBody();
      }
    }
    int i;
    do
    {
      do
      {
        if (TalkApp.debugLoggable()) {
          log("parseIntent: to=" + mToAddress);
        }
        return true;
        if (TextUtils.isEmpty(str))
        {
          localObject = paramIntent.getData().getSchemeSpecificPart();
          if (isValidAddress((String)localObject)) {}
          for (;;)
          {
            mToAddress = ((String)localObject);
            mAction = 0;
            paramIntent = paramIntent.getCategories();
            if (paramIntent == null) {
              break;
            }
            paramIntent = paramIntent.iterator();
            if (!paramIntent.hasNext()) {
              break;
            }
            paramIntent = (String)paramIntent.next();
            if (findMatchingProvider(getProviderNameForCategory(paramIntent)) != null) {
              break;
            }
            Log.w("talk", "parseIntent: IM provider " + paramIntent + " not supported");
            return false;
            localObject = null;
          }
        }
        if (findMatchingProvider(str) == null)
        {
          Log.w("talk", "parseIntent: IM provider " + str + " not supported");
          return false;
        }
        paramIntent = ((Uri)localObject).getPath();
        if (TalkApp.debugLoggable()) {
          log("parseIntent: path=" + paramIntent);
        }
      } while (TextUtils.isEmpty(paramIntent));
      i = paramIntent.indexOf('/');
    } while (i == -1);
    paramIntent = paramIntent.substring(i + 1);
    if (isValidAddress(paramIntent)) {}
    for (;;)
    {
      mToAddress = paramIntent;
      mAction = 0;
      break;
      paramIntent = null;
    }
  }
  
  private void requestAccountInfo()
  {
    new RetrieveAccountInfoTask(getContentResolver()).execute(new String[] { mToAddress });
  }
  
  private void serviceStateChanged(IGTalkService paramIGTalkService)
  {
    if (paramIGTalkService != null) {}
    for (boolean bool = true;; bool = false)
    {
      try
      {
        paramIGTalkService = paramIGTalkService.getImSessionForAccountId(mFromAccount.accountId);
        if (paramIGTalkService != null)
        {
          if (paramIGTalkService.getPresence().isAvailable()) {
            continue;
          }
          bool = true;
        }
        if (mToAddress == null) {
          mAction = 5;
        }
        for (;;)
        {
          executeRequestedActionWithConfirm(bool);
          return;
          if (!mFromAccount.mHasTargetUser) {
            mAction = 4;
          }
        }
        if (!TalkApp.debugLoggable()) {
          break label119;
        }
      }
      catch (RemoteException paramIGTalkService)
      {
        Log.e("talk", "[PublicIntentDispatcherActivity] onServiceConnected: caught " + paramIGTalkService);
        finish();
        return;
      }
      log("service disconnected, wait...");
      label119:
      return;
    }
  }
  
  private static void showFriendList(Context paramContext, long paramLong, boolean paramBoolean)
  {
    if (TalkApp.debugLoggable()) {
      log("ImUrlReceiver: show friendlist screen");
    }
    if (paramBoolean)
    {
      startLogin(paramContext, 5, paramLong, null);
      return;
    }
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.setData(TalkContract.Contacts.CONTENT_URI);
    localIntent.addCategory("com.android.im.category.GTALK");
    localIntent.putExtra("accountId", paramLong);
    paramContext.startActivity(localIntent);
  }
  
  private static void startCall(Context paramContext, long paramLong, String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (paramBoolean2)
    {
      if (paramBoolean1) {}
      for (int i = 1;; i = 2)
      {
        startLogin(paramContext, i, paramLong, paramString);
        return;
      }
    }
    if (paramBoolean1)
    {
      VideoChatActivity.startActivityToInitiate(paramContext, paramLong, paramString);
      return;
    }
    BuddyListCombo.startVoiceChat(paramContext, paramLong, paramString);
  }
  
  private static void startLogin(Context paramContext, int paramInt, long paramLong, String paramString)
  {
    Uri localUri = ContentUris.withAppendedId(TalkContract.Account.CONTENT_URI, paramLong);
    if (TalkApp.debugLoggable()) {
      log("show Signin screen for " + localUri);
    }
    Intent localIntent = new Intent("android.intent.action.SENDTO", Uri.parse("im:" + paramString));
    localIntent.setClass(paramContext, AccountSelectionActivity.class);
    localIntent.setData(localUri);
    localIntent.putExtra("Send2_U", paramString);
    localIntent.putExtra("Send2_A", paramInt);
    paramContext.startActivity(localIntent);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    paramBundle = getIntent();
    if ("android.intent.action.SENDTO".equals(paramBundle.getAction()))
    {
      if (!parseIntent(paramBundle)) {
        finish();
      }
      for (;;)
      {
        return;
        if ((WifiPolicyUtils.wifiRequiredForVideoChat(getContentResolver())) && (isCallAction())) {
          if (2 == mAction) {
            break label80;
          }
        }
        label80:
        for (boolean bool = true; !WifiPolicyUtils.showAlertIfNoWifi(this, bool, mOnCancelListener); bool = false)
        {
          requestAccountInfo();
          return;
        }
      }
    }
    finish();
  }
  
  protected void onStop()
  {
    super.onStop();
    if (mApp != null) {
      mApp.removeServiceAvailableCallback(mHandler);
    }
  }
  
  public static class FromAccountInfo
    extends TalkApp.AccountInfo
  {
    public boolean mHasTargetUser;
    
    public FromAccountInfo() {}
    
    public FromAccountInfo(TalkApp.AccountInfo paramAccountInfo, boolean paramBoolean)
    {
      username = username;
      accountId = accountId;
      signedIn = signedIn;
      active = active;
      mHasTargetUser = paramBoolean;
    }
  }
  
  private class RetrieveAccountInfoTask
    extends AsyncTask<String, Void, List<PublicIntentDispatcher.FromAccountInfo>>
  {
    private ContentResolver mCr;
    
    public RetrieveAccountInfoTask(ContentResolver paramContentResolver)
    {
      mCr = paramContentResolver;
    }
    
    protected List<PublicIntentDispatcher.FromAccountInfo> doInBackground(String... paramVarArgs)
    {
      paramVarArgs = paramVarArgs[0];
      ArrayList localArrayList = new ArrayList();
      Iterator localIterator = DatabaseUtils.getAllAccountInfos(mCr).iterator();
      while (localIterator.hasNext())
      {
        TalkApp.AccountInfo localAccountInfo = (TalkApp.AccountInfo)localIterator.next();
        localArrayList.add(new PublicIntentDispatcher.FromAccountInfo(localAccountInfo, DatabaseUtils.IsUserInRosterList(mCr, paramVarArgs, accountId)));
      }
      return localArrayList;
    }
    
    protected void onPostExecute(List<PublicIntentDispatcher.FromAccountInfo> paramList)
    {
      PublicIntentDispatcher.this.onAccountStateAvailable(paramList);
    }
  }
  
  public static class XmppUri
  {
    private int mAction;
    private String mFromAddress;
    private String mMessageBody;
    private String mToAddress;
    
    private static String getXmppQueryParam(String paramString1, String paramString2)
    {
      if (!TextUtils.isEmpty(paramString1))
      {
        paramString1 = paramString1.split(";");
        int j = paramString1.length;
        int i = 0;
        while (i < j)
        {
          String[] arrayOfString = paramString1[i].split("=", 2);
          if ((arrayOfString.length > 1) && (arrayOfString[0].equals(paramString2))) {
            return arrayOfString[1];
          }
          i += 1;
        }
      }
      return null;
    }
    
    private static XmppUri internalParse(Uri paramUri)
    {
      XmppUri localXmppUri = new XmppUri();
      Object localObject = paramUri.getAuthority();
      label59:
      String str;
      int i;
      int j;
      if (PublicIntentDispatcher.isValidAddress((String)localObject))
      {
        mFromAddress = ((String)localObject);
        localObject = paramUri.getPathSegments();
        if (((List)localObject).size() > 0)
        {
          localObject = (String)((List)localObject).get(0);
          if (!PublicIntentDispatcher.isValidAddress((String)localObject)) {
            break label169;
          }
          mToAddress = ((String)localObject);
        }
        str = paramUri.getQuery();
        localObject = str;
        paramUri = null;
        i = str.indexOf(";");
        if (i >= 0)
        {
          localObject = str.substring(0, i);
          paramUri = str.substring(i);
        }
        i = -1;
        str = null;
        if (!((String)localObject).equals("call")) {
          break label196;
        }
        j = 3;
        i = j;
        localObject = str;
        if (paramUri != null)
        {
          paramUri = getXmppQueryParam(paramUri, "type");
          if (!"voice".equals(paramUri)) {
            break label174;
          }
          i = 2;
          localObject = str;
        }
      }
      for (;;)
      {
        mAction = i;
        mMessageBody = ((String)localObject);
        return localXmppUri;
        localObject = null;
        break;
        label169:
        localObject = null;
        break label59;
        label174:
        i = j;
        localObject = str;
        if ("video".equals(paramUri))
        {
          i = 1;
          localObject = str;
          continue;
          label196:
          if (((String)localObject).equals("message"))
          {
            i = 0;
            localObject = getXmppQueryParam(paramUri, "body");
          }
          else
          {
            Log.w("talk", "parseIntent: xmpp query type " + (String)localObject + " not supported");
            localObject = str;
          }
        }
      }
    }
    
    public static boolean needsConfirmation(int paramInt)
    {
      return (paramInt == 1) || (paramInt == 2) || (paramInt == 3);
    }
    
    public static XmppUri parse(Uri paramUri)
    {
      if (!paramUri.getScheme().equals("xmpp")) {
        return null;
      }
      Uri localUri = paramUri;
      if (paramUri.isOpaque()) {
        localUri = Uri.parse(paramUri.getSchemeSpecificPart());
      }
      return internalParse(localUri);
    }
    
    public int getAction()
    {
      return mAction;
    }
    
    public String getFromAddress()
    {
      return mFromAddress;
    }
    
    public String getMessageBody()
    {
      return mMessageBody;
    }
    
    public String getToAddress()
    {
      return mToAddress;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.PublicIntentDispatcher
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */