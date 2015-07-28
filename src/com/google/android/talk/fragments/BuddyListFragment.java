package com.google.android.talk.fragments;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.Loader;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.Resources;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.RemoteException;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.TextAppearanceSpan;
import android.text.style.URLSpan;
import android.text.util.Linkify;
import android.util.Log;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AbsListView.RecyclerListener;
import android.widget.AdapterView.AdapterContextMenuInfo;
import android.widget.BaseAdapter;
import android.widget.ImageButton;
import android.widget.ListView;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.RadioGroup.OnCheckedChangeListener;
import com.google.android.gsf.TalkContract.Contacts;
import com.google.android.gtalkservice.ConnectionError;
import com.google.android.gtalkservice.ConnectionState;
import com.google.android.gtalkservice.GroupChatInvitation;
import com.google.android.gtalkservice.IChatListener.Stub;
import com.google.android.gtalkservice.IChatSession;
import com.google.android.gtalkservice.IConnectionStateListener.Stub;
import com.google.android.gtalkservice.IGTalkService;
import com.google.android.gtalkservice.IGroupChatInvitationListener.Stub;
import com.google.android.gtalkservice.IImSession;
import com.google.android.gtalkservice.IRosterListener.Stub;
import com.google.android.gtalkservice.Presence;
import com.google.android.talk.AccountLoginUtils;
import com.google.android.talk.ActivityUtils;
import com.google.android.talk.AnimatedAdapter2;
import com.google.android.talk.AvatarCache;
import com.google.android.talk.BuddyListCombo;
import com.google.android.talk.DatabaseUtils;
import com.google.android.talk.IRosterListAdapter;
import com.google.android.talk.IRosterListAdapter.VideoButtonClickHandler;
import com.google.android.talk.RosterListAdapter;
import com.google.android.talk.RosterListAdapter.CallState;
import com.google.android.talk.RosterListItem;
import com.google.android.talk.SearchActivity;
import com.google.android.talk.SelfStatusCursor;
import com.google.android.talk.TalkApp;
import com.google.android.talk.TalkApp.AccountInfo;
import com.google.android.talk.loaders.RosterListLoader;
import com.google.android.talk.loaders.RosterListLoader.FilterMode;
import com.google.android.talk.loaders.RosterListLoader.SortMode;
import com.google.android.talk.videochat.VideoChatActivity;
import com.google.android.talk.videochat.VideoChatOutputReceiver;
import com.google.android.talk.videochat.WifiPolicyUtils;
import com.google.android.videochat.CallSession;
import com.google.android.videochat.CallState;
import com.google.android.videochat.CallStateClient;
import com.google.android.videochat.VideoChatService.HardBinder;
import com.google.android.videochat.VideoChatServiceBinder;
import com.google.android.videochat.VideoChatServiceBinder.ServiceBoundCallback;
import java.util.Formatter;
import java.util.HashMap;

public class BuddyListFragment
  extends RosterListFragment
{
  private static final String[] SINGLE_CONTACT_USERNAME_PROJECTION = { "username" };
  private static IRosterListAdapter sInjectedAdapter;
  private CallStateClient mCallStateClient;
  private Runnable mCallStateUpdateHack;
  private ChatListener mChatListener;
  private MenuItem mCloseAllChatsMenuItem;
  private int mColumnAccount;
  private int mColumnCapabilities;
  private int mColumnContactId;
  private int mColumnGroupChat;
  private int mColumnNickname;
  private int mColumnSubscStatus;
  private int mColumnSubscType;
  private int mColumnType;
  private int mColumnUsername;
  private ConnectionStateListener mConnectionListener;
  Controller mController;
  private String mCurrentSearchString;
  private IntentFilter mFilter;
  private View.OnClickListener mFullSearchListener = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      paramAnonymousView = getActivity();
      if (paramAnonymousView != null) {
        BuddyListFragment.launchSearchActivity(mCurrentSearchString, getAccountInfo(), paramAnonymousView);
      }
    }
  };
  private GroupChatInvitationListener mGroupChatInvitationListener;
  private BroadcastReceiver mIntentReceiver = new BroadcastReceiver()
  {
    public void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
    {
      paramAnonymousContext = paramAnonymousIntent.getAction();
      String str;
      long l;
      if ("android.intent.action.GTALK_AVATAR_CHANGED".equals(paramAnonymousContext))
      {
        str = paramAnonymousIntent.getStringExtra("from");
        l = paramAnonymousIntent.getLongExtra("accountId", 0L);
        if (BuddyListFragment.this.accountInfoAvailable()) {
          break label41;
        }
      }
      label41:
      while ((str == null) || (!str.equals(getAccountInfo().username)) || (l != getAccountInfo().accountId)) {
        return;
      }
      BuddyListFragment.this.logd("received intent " + paramAnonymousContext + ", update own avatar");
      TalkApp.getApplication(getActivity()).clearSelfAvatarCache();
      BuddyListFragment.this.loadSelfStatus();
    }
  };
  private boolean mIsOnline = true;
  private boolean mNarrow;
  private RosterListener mRosterListener;
  private SelfStatusCursor mSelfCursor;
  private Dialog mSortChoiceDialog;
  private ImageButton mStatusButton;
  private Runnable mUpdateStatusRunnable = new Runnable()
  {
    public void run()
    {
      Activity localActivity = getActivity();
      if ((localActivity != null) && (!localActivity.isFinishing())) {
        BuddyListFragment.this.updateStatus();
      }
    }
  };
  private VideoChatServiceBinder mVcBinder;
  
  private boolean accountInfoAvailable()
  {
    return getAccountInfo() != null;
  }
  
  private void blockContact(AdapterView.AdapterContextMenuInfo paramAdapterContextMenuInfo)
  {
    if (mImSession == null) {
      Log.w("talk", "[BuddyList] blockContact: mImSession is null");
    }
    Activity localActivity;
    do
    {
      return;
      localActivity = getActivity();
    } while (localActivity == null);
    String str = getUsernameFromMenuInfo(paramAdapterContextMenuInfo);
    if (str != null) {}
    try
    {
      mImSession.blockContact(str);
      DatabaseUtils.removeChatsByContactId(localActivity.getContentResolver(), id);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      for (;;)
      {
        Log.e("talk", "[BuddyList] blockContact caught " + localRemoteException);
      }
    }
  }
  
  private void closeAllChats()
  {
    endActiveVideoOrVoiceChat(new Runnable()
    {
      public void run()
      {
        mController.onCloseAllChats();
        try
        {
          if (mImSession != null)
          {
            Log.d("talk", "[BuddyList] closeAllChats");
            mImSession.closeAllChatSessions();
            return;
          }
          Log.w("talk", "[BuddyList] closeAllChats: mImSession is null");
          return;
        }
        catch (RemoteException localRemoteException)
        {
          Log.e("talk", "[BuddyList] closeAllChats: caught ", localRemoteException);
        }
      }
    });
  }
  
  private void confirmRemoveSelectedContact(final AdapterView.AdapterContextMenuInfo paramAdapterContextMenuInfo)
  {
    Object localObject = getActivity();
    if ((paramAdapterContextMenuInfo == null) || (localObject == null)) {}
    do
    {
      return;
      paramAdapterContextMenuInfo = getUsernameForId((Context)localObject, id);
    } while (paramAdapterContextMenuInfo == null);
    StringBuilder localStringBuilder = new StringBuilder();
    new Formatter(localStringBuilder).format(((Activity)localObject).getText(2131492898).toString(), new Object[] { paramAdapterContextMenuInfo });
    localObject = new AlertDialog.Builder((Context)localObject);
    ((AlertDialog.Builder)localObject).setIconAttribute(16843605);
    ((AlertDialog.Builder)localObject).setMessage(localStringBuilder.toString());
    ((AlertDialog.Builder)localObject).setPositiveButton(17039370, new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        if ((paramAnonymousInt == -1) && (paramAdapterContextMenuInfo != null)) {}
        try
        {
          mImSession.removeContact(paramAdapterContextMenuInfo);
          return;
        }
        catch (RemoteException paramAnonymousDialogInterface)
        {
          Log.e("talk", "removeContact caught " + paramAnonymousDialogInterface);
        }
      }
    });
    ((AlertDialog.Builder)localObject).setNegativeButton(17039360, null);
    ((AlertDialog.Builder)localObject).create().show();
  }
  
  private void dismissStatusbarNotifications(IGTalkService paramIGTalkService)
  {
    if ((paramIGTalkService == null) || (getAccountInfo() == null)) {}
    for (;;)
    {
      return;
      try
      {
        paramIGTalkService.dismissNotificationsForAccount(getAccountInfoaccountId);
        paramIGTalkService = getActivity();
        if (paramIGTalkService == null) {
          continue;
        }
        ActivityUtils.dismissPopupNotification(paramIGTalkService);
        return;
      }
      catch (RemoteException paramIGTalkService)
      {
        for (;;)
        {
          Log.e("talk", "dismissStatusbarNotifications caught ", paramIGTalkService);
        }
      }
    }
  }
  
  private void endActiveVideoOrVoiceChat(final Runnable paramRunnable)
  {
    final Object localObject = mRosterListAdapter.getActiveCallState();
    if (localObject != null)
    {
      localObject = mBareJid;
      mVcBinder.bind(new VideoChatServiceBinder.ServiceBoundCallback()
      {
        public void onServiceBound(VideoChatService.HardBinder paramAnonymousHardBinder)
        {
          paramAnonymousHardBinder.getCallSession().terminateCall(localObject);
          paramRunnable.run();
          mVcBinder.unbind();
        }
      });
      return;
    }
    paramRunnable.run();
  }
  
  private RosterListLoader.FilterMode getFilterMode(Activity paramActivity)
  {
    int i = 0;
    if (paramActivity != null) {
      i = paramActivity.getPreferences(0).getInt("gtalk-view-mode", 0);
    }
    if (i == 0) {
      return RosterListLoader.FilterMode.QUICK_CONTACTS;
    }
    return RosterListLoader.FilterMode.ALL_MINUS_HIDDEN;
  }
  
  private static URLSpan[] getStatusUrls(String paramString)
  {
    if (paramString == null) {
      return new URLSpan[0];
    }
    paramString = new SpannableString(paramString);
    if (Linkify.addLinks(paramString, 1)) {
      return (URLSpan[])paramString.getSpans(0, paramString.length(), URLSpan.class);
    }
    return new URLSpan[0];
  }
  
  private static String getUsernameForId(Context paramContext, long paramLong)
  {
    Object localObject = null;
    Cursor localCursor = paramContext.getContentResolver().query(ContentUris.withAppendedId(TalkContract.Contacts.CONTENT_URI_CONTACT_ID, paramLong), SINGLE_CONTACT_USERNAME_PROJECTION, null, null, null);
    if (localCursor != null)
    {
      paramContext = (Context)localObject;
      try
      {
        if (localCursor.moveToFirst()) {
          paramContext = localCursor.getString(0);
        }
        return paramContext;
      }
      finally
      {
        localCursor.close();
      }
    }
    logEmptyCursor("getUsernameForId");
    return null;
  }
  
  private String getUsernameFromMenuInfo(AdapterView.AdapterContextMenuInfo paramAdapterContextMenuInfo)
  {
    Activity localActivity = getActivity();
    if ((paramAdapterContextMenuInfo == null) || (localActivity == null)) {
      return null;
    }
    return getUsernameForId(localActivity, id);
  }
  
  private void hideContact(AdapterView.AdapterContextMenuInfo paramAdapterContextMenuInfo, boolean paramBoolean)
  {
    if (mImSession == null) {
      Log.w("talk", "[BuddyList] hideContact: mImSession is null");
    }
    do
    {
      return;
      paramAdapterContextMenuInfo = getUsernameFromMenuInfo(paramAdapterContextMenuInfo);
    } while (paramAdapterContextMenuInfo == null);
    if (paramBoolean) {
      try
      {
        mImSession.hideContact(paramAdapterContextMenuInfo);
        return;
      }
      catch (RemoteException paramAdapterContextMenuInfo)
      {
        Log.e("talk", "[BuddyList] hideContact caught " + paramAdapterContextMenuInfo);
        return;
      }
    }
    mImSession.clearContactFlags(paramAdapterContextMenuInfo);
  }
  
  private boolean isInvite(Cursor paramCursor)
  {
    long l1 = paramCursor.getInt(mColumnSubscStatus);
    long l2 = paramCursor.getInt(mColumnSubscType);
    return (l1 == 1L) && (l2 == 5L);
  }
  
  public static void launchSearchActivity(String paramString, TalkApp.AccountInfo paramAccountInfo, Activity paramActivity)
  {
    Intent localIntent = new Intent();
    localIntent.setAction("android.intent.action.VIEW");
    localIntent.putExtra("from", username);
    localIntent.putExtra("query", paramString);
    localIntent.putExtra("accountId", accountId);
    localIntent.setClass(paramActivity, SearchActivity.class);
    paramActivity.startActivity(localIntent);
  }
  
  private void launchStatusUrl(AdapterView.AdapterContextMenuInfo paramAdapterContextMenuInfo, int paramInt)
  {
    Activity localActivity = getActivity();
    if ((paramAdapterContextMenuInfo == null) || (localActivity == null)) {}
    do
    {
      return;
      paramAdapterContextMenuInfo = (Cursor)getListView().getItemAtPosition(position);
      paramAdapterContextMenuInfo = getStatusUrls(paramAdapterContextMenuInfo.getString(paramAdapterContextMenuInfo.getColumnIndexOrThrow("status")));
    } while ((paramInt < 0) || (paramInt >= paramAdapterContextMenuInfo.length));
    paramAdapterContextMenuInfo = new Intent("android.intent.action.VIEW", Uri.parse(paramAdapterContextMenuInfo[paramInt].getURL()));
    paramAdapterContextMenuInfo.putExtra("com.android.browser.application_id", localActivity.getPackageName());
    localActivity.startActivity(paramAdapterContextMenuInfo);
  }
  
  private void leaveChat(AdapterView.AdapterContextMenuInfo paramAdapterContextMenuInfo)
  {
    if (!accountInfoAvailable()) {
      return;
    }
    paramAdapterContextMenuInfo = (Cursor)getListView().getItemAtPosition(position);
    String str = paramAdapterContextMenuInfo.getString(paramAdapterContextMenuInfo.getColumnIndexOrThrow("username"));
    long l = paramAdapterContextMenuInfo.getLong(paramAdapterContextMenuInfo.getColumnIndexOrThrow("account"));
    logv("leaveChat: for contact " + str);
    for (;;)
    {
      try
      {
        paramAdapterContextMenuInfo = mApp.getGTalkService().getImSessionForAccountId(getAccountInfoaccountId);
        if (paramAdapterContextMenuInfo == null) {
          continue;
        }
        IChatSession localIChatSession = paramAdapterContextMenuInfo.getChatSession(str);
        paramAdapterContextMenuInfo = localIChatSession;
        if (localIChatSession == null) {
          paramAdapterContextMenuInfo = mImSession.createChatSession(str);
        }
        if (paramAdapterContextMenuInfo == null) {
          continue;
        }
        paramAdapterContextMenuInfo.leave();
      }
      catch (RemoteException paramAdapterContextMenuInfo)
      {
        Log.e("talk", "leaveChat: caught ", paramAdapterContextMenuInfo);
        continue;
        Log.w("talk", "leaveChat: no ImSession found for account id " + getAccountInfoaccountId);
        continue;
      }
      mController.onLeaveChat(l, str);
      return;
      Log.w("talk", "leaveChat: no ChatSession found for contact " + str);
    }
  }
  
  private void loadSelfStatus()
  {
    if (mRosterListAdapter == null) {
      return;
    }
    SelfStatusCursor localSelfStatusCursor = loadSelfStatusCursor();
    if (localSelfStatusCursor == null)
    {
      logv("loadSelfStatus: null cursor returned!");
      return;
    }
    if (mSelfCursor != null) {
      mSelfCursor.close();
    }
    mSelfCursor = localSelfStatusCursor;
    mRosterListAdapter.setSelfStatusCursor(localSelfStatusCursor);
    localSelfStatusCursor.setOnAvatarRunnable(mUpdateStatusRunnable);
  }
  
  private SelfStatusCursor loadSelfStatusCursor()
  {
    Presence localPresence = Presence.OFFLINE;
    try
    {
      if (mImSession != null) {
        localPresence = mImSession.getPresence();
      }
      TalkApp.AccountInfo localAccountInfo = getAccountInfo();
      Activity localActivity = getActivity();
      if ((localActivity != null) && (localAccountInfo != null)) {
        return new SelfStatusCursor(localActivity, localPresence, localAccountInfo);
      }
    }
    catch (RemoteException localRemoteException)
    {
      Log.e("talk", "loadSelfStatusCursor: caught " + localRemoteException);
      return null;
    }
    return null;
  }
  
  private static void logEmptyCursor(String paramString)
  {
    Log.e("talk", "[BuddyList] " + paramString + ": empty cursor, possibly low memory");
  }
  
  private void logd(String paramString)
  {
    if (TalkApp.debugLoggable()) {
      Log.d("talk", "[BuddyList] " + paramString);
    }
  }
  
  private void logout()
  {
    for (;;)
    {
      try
      {
        if (mImSession == null) {
          continue;
        }
        mImSession.logout();
        TalkApp.AccountInfo localAccountInfo = mApp.getActiveAccount();
        if ((localAccountInfo != null) && (mAccountInfo.accountId == accountId)) {
          AccountLoginUtils.setInactiveAccount(mAccountInfo, mApp);
        }
      }
      catch (RemoteException localRemoteException)
      {
        Log.e("talk", "[BuddyList] logout: caught " + localRemoteException);
        continue;
      }
      endActiveVideoOrVoiceChat(new Runnable()
      {
        public void run()
        {
          mController.onLogout();
        }
      });
      return;
      Log.w("talk", "[BuddyList] logout: mImSession is null");
    }
  }
  
  private void logv(String paramString)
  {
    if (TalkApp.verboseLoggable()) {
      Log.v("talk", "[BuddyList] " + paramString);
    }
  }
  
  private void pinContact(AdapterView.AdapterContextMenuInfo paramAdapterContextMenuInfo, boolean paramBoolean)
  {
    if (mImSession == null) {
      Log.w("talk", "[BuddyList] pinContact: mImSession is null");
    }
    do
    {
      return;
      paramAdapterContextMenuInfo = getUsernameFromMenuInfo(paramAdapterContextMenuInfo);
    } while (paramAdapterContextMenuInfo == null);
    if (paramBoolean) {
      try
      {
        mImSession.pinContact(paramAdapterContextMenuInfo);
        return;
      }
      catch (RemoteException paramAdapterContextMenuInfo)
      {
        Log.e("talk", "[BuddyList] pinContact caught " + paramAdapterContextMenuInfo);
        return;
      }
    }
    mImSession.clearContactFlags(paramAdapterContextMenuInfo);
  }
  
  private void registerCallStateListener()
  {
    if (mCallStateClient == null) {
      mCallStateClient = new LocalCallStateClient(getActivity());
    }
    mCallStateClient.startListening();
    mCallStateClient.requestUpdate();
    mCallStateUpdateHack = new Runnable()
    {
      public void run()
      {
        BuddyListFragment.access$802(BuddyListFragment.this, null);
        mRosterListAdapter.setActiveCallState(null);
      }
    };
    mHandler.postDelayed(mCallStateUpdateHack, 50L);
  }
  
  private void registerForIntentBroadcast()
  {
    logv("registerForIntentBroadcast");
    mFilter = new IntentFilter();
    mFilter.addAction("android.intent.action.GTALK_AVATAR_CHANGED");
    getActivity().registerReceiver(mIntentReceiver, mFilter);
  }
  
  private void setIsOnline(boolean paramBoolean)
  {
    mIsOnline = paramBoolean;
    if ((mRosterListAdapter != null) && (mRosterListAdapter.setIsOnline(paramBoolean)))
    {
      getListView().invalidateViews();
      updateStatus(false);
    }
    if (mStatusButton != null) {
      mStatusButton.setEnabled(paramBoolean);
    }
  }
  
  private void setQuickContactsMenuItemState()
  {
    RosterListLoader.FilterMode localFilterMode = getFilterMode();
    getSortMode();
    switch (localFilterMode)
    {
    default: 
      
    case ???: 
    case ???: 
      
    }
  }
  
  private void showSelectedContactInfo(AdapterView.AdapterContextMenuInfo paramAdapterContextMenuInfo)
  {
    if ((paramAdapterContextMenuInfo == null) || (getAccountInfo() == null)) {
      return;
    }
    ListItemInfo localListItemInfo = new ListItemInfo();
    mContactId = id;
    mAccountId = getAccountInfoaccountId;
    mController.onShowContactInfo(localListItemInfo);
  }
  
  private void showSortChoicesDialog()
  {
    Activity localActivity = getActivity();
    if (localActivity == null) {
      return;
    }
    RosterListLoader.SortMode[] arrayOfSortMode = new RosterListLoader.SortMode[3];
    arrayOfSortMode[0] = RosterListLoader.SortMode.ACTIVE_STATUS_ALPHABETICAL;
    arrayOfSortMode[1] = RosterListLoader.SortMode.ACTIVE_ALPHABETICAL;
    arrayOfSortMode[2] = RosterListLoader.SortMode.RECENCY_ALPHABETICAL;
    String[] arrayOfString1 = getResources().getStringArray(2131230739);
    String[] arrayOfString2 = getResources().getStringArray(2131230740);
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(localActivity);
    localBuilder.setTitle(2131493113);
    Object localObject1 = localActivity.getLayoutInflater();
    localBuilder.getContext().getResources();
    localObject1 = ((LayoutInflater)localObject1).inflate(2130968639, null);
    final RadioGroup localRadioGroup = (RadioGroup)((View)localObject1).findViewById(2131755152);
    int i = 0;
    if (i < localRadioGroup.getChildCount())
    {
      RadioButton localRadioButton = (RadioButton)localRadioGroup.getChildAt(i);
      Object localObject2 = arrayOfString1[i];
      String str = arrayOfString2[i];
      str = (String)localObject2 + "\n" + str;
      SpannableString localSpannableString = new SpannableString(str);
      int j = ((String)localObject2).length();
      localObject2 = new TextAppearanceSpan(localActivity, 16973892);
      TextAppearanceSpan localTextAppearanceSpan = new TextAppearanceSpan(localActivity, 16973894);
      localSpannableString.setSpan(localObject2, 0, j, 0);
      localSpannableString.setSpan(localTextAppearanceSpan, j + 1, str.length(), 0);
      localRadioButton.setText(localSpannableString);
      localRadioButton.setId(arrayOfSortMode[i].ordinal());
      if (getSortMode() == arrayOfSortMode[i]) {}
      for (boolean bool = true;; bool = false)
      {
        localRadioButton.setChecked(bool);
        i += 1;
        break;
      }
    }
    ((View)localObject1).findViewById(2131755029).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        if (mSortChoiceDialog != null)
        {
          mSortChoiceDialog.dismiss();
          BuddyListFragment.access$902(BuddyListFragment.this, null);
        }
      }
    });
    localRadioGroup.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener()
    {
      public void onCheckedChanged(RadioGroup paramAnonymousRadioGroup, int paramAnonymousInt)
      {
        if (mSortChoiceDialog == null) {
          return;
        }
        if (paramAnonymousInt == RosterListLoader.SortMode.ACTIVE_STATUS_ALPHABETICAL.ordinal()) {
          setFilterMode(RosterListLoader.FilterMode.QUICK_CONTACTS, RosterListLoader.SortMode.ACTIVE_STATUS_ALPHABETICAL);
        }
        for (;;)
        {
          forceLoad();
          mSortChoiceDialog.dismiss();
          BuddyListFragment.access$902(BuddyListFragment.this, null);
          localRadioGroup.setOnCheckedChangeListener(null);
          return;
          if (paramAnonymousInt == RosterListLoader.SortMode.ACTIVE_ALPHABETICAL.ordinal()) {
            setFilterMode(RosterListLoader.FilterMode.ALL_MINUS_HIDDEN, RosterListLoader.SortMode.ACTIVE_ALPHABETICAL);
          } else if (paramAnonymousInt == RosterListLoader.SortMode.RECENCY_ALPHABETICAL.ordinal()) {
            setFilterMode(RosterListLoader.FilterMode.QUICK_CONTACTS, RosterListLoader.SortMode.RECENCY_ALPHABETICAL);
          }
        }
      }
    });
    localBuilder.setView((View)localObject1);
    mSortChoiceDialog = localBuilder.create();
    mSortChoiceDialog.show();
  }
  
  private void startSelfStatusActivityIfOnline()
  {
    if (!accountInfoAvailable()) {}
    while (!mIsOnline) {
      return;
    }
    mController.onRequestSetSelfStatus(getAccountInfoaccountId);
  }
  
  private void startVideoChat(int paramInt)
  {
    if (paramInt == 0) {
      startSelfStatusActivityIfOnline();
    }
    Cursor localCursor = (Cursor)getListView().getItemAtPosition(paramInt);
    if (localCursor == null) {}
    while ((WifiPolicyUtils.wifiRequiredForVideoChat(getActivity().getContentResolver())) && (WifiPolicyUtils.showAlertIfNoWifi(getActivity(), true))) {
      return;
    }
    String str = localCursor.getString(mColumnUsername);
    long l = localCursor.getLong(mColumnAccount);
    VideoChatActivity.startActivityToInitiate(getActivity(), l, str);
  }
  
  private void startVoiceChat(int paramInt)
  {
    if (paramInt == 0) {
      startSelfStatusActivityIfOnline();
    }
    Cursor localCursor = (Cursor)getListView().getItemAtPosition(paramInt);
    if (localCursor == null) {}
    while ((WifiPolicyUtils.wifiRequiredForVideoChat(getActivity().getContentResolver())) && (WifiPolicyUtils.showAlertIfNoWifi(getActivity(), false))) {
      return;
    }
    String str = localCursor.getString(mColumnUsername);
    long l = localCursor.getLong(mColumnAccount);
    BuddyListCombo.startVoiceChat(getActivity(), l, str);
  }
  
  private void unregisterCallStateListener()
  {
    if (mCallStateClient != null)
    {
      mCallStateClient.stopListening();
      mCallStateClient = null;
    }
  }
  
  private void unregisterForIntentBroadcast()
  {
    logv("unregisterForIntentBroadcast");
    getActivity().unregisterReceiver(mIntentReceiver);
  }
  
  private void updateStatus()
  {
    updateStatus(true);
  }
  
  private void updateStatus(boolean paramBoolean)
  {
    if (!accountInfoAvailable()) {}
    do
    {
      return;
      if (paramBoolean)
      {
        AvatarCache localAvatarCache = AvatarCache.getInstance(getAccountInfoaccountId, false);
        if (localAvatarCache != null) {
          localAvatarCache.clear(getAccountInfousername);
        }
      }
    } while (mRosterListAdapter == null);
    mRosterListAdapter.setSelfStatusCursor(mSelfCursor);
  }
  
  protected void addRemoteListeners()
  {
    try
    {
      if (mImSession != null)
      {
        if (mConnectionListener == null)
        {
          mConnectionListener = new ConnectionStateListener(this);
          mImSession.addConnectionStateListener(mConnectionListener);
        }
        if (mRosterListener == null)
        {
          mRosterListener = new RosterListener(this);
          mImSession.addRemoteRosterListener(mRosterListener);
        }
        if (mChatListener == null)
        {
          mChatListener = new ChatListener(this);
          mImSession.addRemoteChatListener(mChatListener);
        }
        if (mGroupChatInvitationListener == null)
        {
          mGroupChatInvitationListener = new GroupChatInvitationListener(this, mApp);
          mImSession.addGroupChatInvitationListener(mGroupChatInvitationListener);
        }
      }
    }
    catch (RemoteException localRemoteException)
    {
      for (;;)
      {
        Activity localActivity;
        Log.e("talk", "addRemoteListeners caught ", localRemoteException);
      }
    }
    localActivity = getActivity();
    if ((mApp != null) && (localActivity != null) && (localActivity.hasWindowFocus())) {
      dismissStatusbarNotifications(mApp.getGTalkService());
    }
  }
  
  public void addToContacts(Activity paramActivity, String paramString)
  {
    mController.onAddToContacts(paramString);
  }
  
  public void cancelSearch()
  {
    mCurrentSearchString = "";
    setFilterMode(getFilterMode(), getSortMode());
  }
  
  protected IRosterListAdapter createRosterListAdapter()
  {
    AnimatedRosterAdapter localAnimatedRosterAdapter;
    if (sInjectedAdapter != null) {
      localAnimatedRosterAdapter = new AnimatedRosterAdapter(sInjectedAdapter);
    }
    for (;;)
    {
      TalkApp.AccountInfo localAccountInfo = getAccountInfo();
      if (localAccountInfo != null) {
        localAnimatedRosterAdapter.init(accountId, getActivity(), new Runnable()
        {
          public void run()
          {
            forceLoad();
          }
        });
      }
      localAnimatedRosterAdapter.setOnVideoButtonClickedListener(new IRosterListAdapter.VideoButtonClickHandler()
      {
        public void onVideoButtonClicked(final RosterListItem paramAnonymousRosterListItem)
        {
          int i = paramAnonymousRosterListItem.getCapabilities();
          if (paramAnonymousRosterListItem.getPresence() != 0)
          {
            if (!ActivityUtils.isVideoChatCapable(i)) {
              break label128;
            }
            localCallState = mRosterListAdapter.getActiveCallState();
            if ((localCallState == null) || (!localCallState.appliesToContact(paramAnonymousRosterListItem.getContact()))) {
              break label72;
            }
            VideoChatActivity.startActivityCallInProgress(getActivity(), mAccountInfo.accountId, paramAnonymousRosterListItem.getContact());
          }
          label72:
          label128:
          while (!ActivityUtils.isAudioChatCapable(i))
          {
            RosterListAdapter.CallState localCallState;
            return;
            if (mController.onVideoChatStarted()) {}
            for (i = getResources().getInteger(2131361792);; i = 0)
            {
              mHandler.postDelayed(new Runnable()
              {
                public void run()
                {
                  Activity localActivity = getActivity();
                  if (localActivity == null) {}
                  while ((WifiPolicyUtils.wifiRequiredForVideoChat(localActivity.getContentResolver())) && (WifiPolicyUtils.showAlertIfNoWifi(localActivity, true))) {
                    return;
                  }
                  VideoChatActivity.startActivityToInitiate(localActivity, mAccountInfo.accountId, paramAnonymousRosterListItem.getContact());
                }
              }, i);
              return;
            }
          }
          paramAnonymousRosterListItem = new BuddyListFragment.ListItemInfo(paramAnonymousRosterListItem.getContact(), mAccountInfo.accountId, true);
          mController.onOpenChat(paramAnonymousRosterListItem);
        }
      });
      return localAnimatedRosterAdapter;
      localAnimatedRosterAdapter = new AnimatedRosterAdapter(new RosterListAdapter(getActivity()));
      localAnimatedRosterAdapter.setNarrowLayout(mNarrow);
      localAnimatedRosterAdapter.setFilterMode(getFilterMode(), getSortMode());
    }
  }
  
  public void doHistorySearch()
  {
    mFullSearchListener.onClick(null);
  }
  
  protected TalkApp.AccountInfo getAccountInfo()
  {
    Activity localActivity = getActivity();
    if ((mAccountInfo == null) && (localActivity != null)) {
      mAccountInfo = ((BuddyListHost)localActivity).getAccountInfo();
    }
    return mAccountInfo;
  }
  
  public RosterListLoader.FilterMode getFilterMode()
  {
    return getFilterMode(getActivity());
  }
  
  public RosterListLoader.SortMode getSortMode()
  {
    return getSortMode(getActivity());
  }
  
  public RosterListLoader.SortMode getSortMode(Activity paramActivity)
  {
    int i = RosterListLoader.SortMode.ACTIVE_STATUS_ALPHABETICAL.ordinal();
    if (paramActivity != null) {
      i = paramActivity.getPreferences(0).getInt("gtalk-sort-mode", RosterListLoader.SortMode.ACTIVE_STATUS_ALPHABETICAL.ordinal());
    }
    for (;;)
    {
      return ((RosterListLoader.SortMode[])RosterListLoader.SortMode.class.getEnumConstants())[i];
    }
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    mVcBinder = new VideoChatServiceBinder(getActivity(), new ComponentName(getActivity(), VideoChatOutputReceiver.class));
    setHasOptionsMenu(true);
    mRosterListAdapter = createRosterListAdapter();
    mRosterListAdapter.suppressVideoButton(false);
    setFilterMode(getFilterMode(), getSortMode());
    setListAdapter(mRosterListAdapter);
    mRosterListAdapter.setNarrowLayout(mNarrow);
    if ((mRosterListAdapter instanceof AbsListView.RecyclerListener)) {
      mList.setRecyclerListener((AbsListView.RecyclerListener)mRosterListAdapter);
    }
    mController.onDisplayProgress(true);
  }
  
  public void onAttach(Activity paramActivity)
  {
    logd("onAttach");
    super.onAttach(paramActivity);
    setController(((BuddyListHost)paramActivity).getBuddyListController());
    mAccountInfo = null;
  }
  
  public boolean onContextItemSelected(MenuItem paramMenuItem)
  {
    boolean bool = false;
    AdapterView.AdapterContextMenuInfo localAdapterContextMenuInfo = (AdapterView.AdapterContextMenuInfo)paramMenuItem.getMenuInfo();
    int i = paramMenuItem.getItemId();
    switch (i)
    {
    default: 
      if (i >= 100)
      {
        launchStatusUrl(localAdapterContextMenuInfo, i - 100);
        bool = true;
      }
      return bool;
    case 8: 
      paramMenuItem = getActivity();
      if ((localAdapterContextMenuInfo == null) || (paramMenuItem == null)) {
        return true;
      }
      addToContacts(paramMenuItem, getUsernameForId(paramMenuItem, id));
      return true;
    case 1: 
      confirmRemoveSelectedContact(localAdapterContextMenuInfo);
      return true;
    case 2: 
      blockContact(localAdapterContextMenuInfo);
      return true;
    case 5: 
      hideContact(localAdapterContextMenuInfo, true);
      return true;
    case 6: 
      hideContact(localAdapterContextMenuInfo, false);
      return true;
    case 3: 
      pinContact(localAdapterContextMenuInfo, true);
      return true;
    case 4: 
      pinContact(localAdapterContextMenuInfo, false);
      return true;
    case 7: 
      showSelectedContactInfo(localAdapterContextMenuInfo);
      return true;
    case 9: 
    case 10: 
      onListItemClick(getListView(), getListView(), position, 0L);
      return true;
    case 12: 
      startVoiceChat(position);
      return true;
    case 13: 
      startVideoChat(position);
      return true;
    }
    leaveChat(localAdapterContextMenuInfo);
    return true;
  }
  
  public final void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    paramView = (AdapterView.AdapterContextMenuInfo)paramContextMenuInfo;
    if (position == 0) {}
    int i;
    label59:
    int j;
    do
    {
      do
      {
        return;
        paramContextMenuInfo = (Cursor)getListView().getItemAtPosition(position);
      } while (isInvite(paramContextMenuInfo));
      if (paramContextMenuInfo.getLong(paramContextMenuInfo.getColumnIndexOrThrow("last_message_date")) == 0L) {
        break;
      }
      i = 1;
      paramView = getStatusUrls(paramContextMenuInfo.getString(paramContextMenuInfo.getColumnIndexOrThrow("status")));
      paramContextMenu.setHeaderTitle(paramContextMenuInfo.getString(mColumnNickname));
      j = paramContextMenuInfo.getInt(mColumnType);
    } while (j == 1);
    int k = paramContextMenuInfo.getInt(mColumnCapabilities);
    if (j == 2)
    {
      paramContextMenu.add(0, 10, 0, 2131492886);
      paramContextMenu.add(0, 11, 0, 2131492887);
      label159:
      if (j == 2) {
        break label506;
      }
      paramContextMenu.add(0, 8, 0, 2131492894).setAlphabeticShortcut('@');
      if (j != 5) {
        break label508;
      }
      paramContextMenu.add(0, 4, 0, 2131492879);
    }
    for (;;)
    {
      if (j != 4) {
        break label524;
      }
      paramContextMenu.add(0, 6, 0, 2131492881);
      return;
      i = 0;
      break label59;
      if (i != 0)
      {
        if (ActivityUtils.isAudioChatCapable(k)) {
          paramContextMenu.add(0, 12, 0, 2131492883);
        }
        if (ActivityUtils.isVideoChatCapable(k)) {
          paramContextMenu.add(0, 13, 0, 2131492884);
        }
        paramContextMenu.add(0, 10, 0, 2131492886);
        paramContextMenu.add(0, 11, 0, 2131492887);
        paramContextMenu.add(0, 7, 0, 2131492888);
        paramContextMenu.add(0, 2, 0, 2131492877);
        break label159;
      }
      paramContextMenu.add(0, 9, 0, 2131492882);
      if (ActivityUtils.isAudioChatCapable(k)) {
        paramContextMenu.add(0, 12, 0, 2131492883);
      }
      if (ActivityUtils.isVideoChatCapable(k)) {
        paramContextMenu.add(0, 13, 0, 2131492884);
      }
      paramContextMenu.add(0, 7, 0, 2131492888);
      paramContextMenuInfo = getActivity();
      if ((paramView.length > 0) && (paramContextMenuInfo != null))
      {
        i = 0;
        while (i < paramView.length)
        {
          paramContextMenu.add(0, i + 100, 0, paramContextMenuInfo.getString(2131492889, new Object[] { paramView[i].getURL() }));
          i += 1;
        }
      }
      paramContextMenu.add(0, 2, 0, 2131492877);
      paramContextMenu.add(0, 1, 0, 2131492876);
      break label159;
      label506:
      break;
      label508:
      paramContextMenu.add(0, 3, 0, 2131492878);
    }
    label524:
    paramContextMenu.add(0, 5, 0, 2131492880);
  }
  
  public Loader<Cursor> onCreateLoader(int paramInt, Bundle paramBundle)
  {
    logv("onCreateLoader");
    if (!accountInfoAvailable()) {}
    do
    {
      do
      {
        return null;
      } while (paramInt != 1);
      paramBundle = getActivity();
    } while (paramBundle == null);
    new RosterListLoader(paramBundle, getAccountInfoaccountId, getFilterMode(paramBundle), getSortMode(paramBundle), new Runnable()
    {
      boolean first = true;
      
      public void run()
      {
        BuddyListFragment.this.logv("onCreateLoader onFinishedLoading runnable");
        BuddyListFragment.BuddyListHost localBuddyListHost = (BuddyListFragment.BuddyListHost)getActivity();
        if (localBuddyListHost != null) {
          localBuddyListHost.finishedLoading();
        }
        if (first)
        {
          switchAccounts(mAccountInfo);
          first = false;
        }
        if (mCloseAllChatsMenuItem != null)
        {
          if (mRosterListAdapter == null) {
            mCloseAllChatsMenuItem.setVisible(false);
          }
        }
        else {
          return;
        }
        mCloseAllChatsMenuItem.setVisible(mRosterListAdapter.hasActiveChats());
      }
    });
  }
  
  public void onCreateOptionsMenu(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    paramMenuInflater.inflate(2131689475, paramMenu);
    mCloseAllChatsMenuItem = paramMenu.findItem(2131755194);
    if (mCloseAllChatsMenuItem != null)
    {
      if (mRosterListAdapter != null) {
        mCloseAllChatsMenuItem.setVisible(mRosterListAdapter.hasActiveChats());
      }
    }
    else {
      return;
    }
    mCloseAllChatsMenuItem.setVisible(false);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    mList.setItemsCanFocus(true);
    setListAdapter(mRosterListAdapter);
    updateStatus();
    if (mRosterListAdapter != null) {
      mList.setOnScrollListener(mRosterListAdapter);
    }
    if (TextUtils.isEmpty(mCurrentSearchString))
    {
      mList.setFocusableInTouchMode(true);
      mList.requestFocus();
    }
    return paramLayoutInflater;
  }
  
  public void onListItemClick(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    if (mController != null)
    {
      if ((TextUtils.isEmpty(mCurrentSearchString)) && (paramInt == 0)) {
        startSelfStatusActivityIfOnline();
      }
      paramListView = (Cursor)getListView().getItemAtPosition(paramInt);
      if (paramListView != null) {}
    }
    else
    {
      return;
    }
    paramView = new ListItemInfo(paramListView.getString(mColumnUsername), paramListView.getLong(mColumnAccount));
    if (isInvite(paramListView))
    {
      mController.onMakeInvite(paramView);
      return;
    }
    if (paramListView.getInt(mColumnGroupChat) == 1)
    {
      mContactId = paramListView.getLong(mColumnContactId);
      mController.onOpenGroupChat(paramView);
      return;
    }
    mController.onOpenChat(paramView);
    mList.setSelection(0);
  }
  
  public void onLoadFinished(Loader<Cursor> paramLoader, Cursor paramCursor)
  {
    logv("onLoadFinished");
    setData(paramCursor);
    loadSelfStatus();
    setEnabled(true);
  }
  
  public void onLoaderReset(Loader<Cursor> paramLoader) {}
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (!accountInfoAvailable()) {
      return false;
    }
    switch (paramMenuItem.getItemId())
    {
    default: 
      return false;
    case 2131755192: 
      mController.onInviteFriend(getAccountInfoaccountId);
      return true;
    case 2131755193: 
      showSortChoicesDialog();
      return false;
    case 2131755196: 
      paramMenuItem = new ListItemInfo();
      mAccountId = getAccountInfoaccountId;
      mController.onShowInvites(paramMenuItem);
      return true;
    case 2131755195: 
      logout();
      return true;
    }
    closeAllChats();
    return true;
  }
  
  public void onPause()
  {
    super.onPause();
    if (mSelfCursor != null)
    {
      mSelfCursor.close();
      mSelfCursor = null;
    }
  }
  
  public void onResume()
  {
    super.onResume();
    loadSelfStatus();
  }
  
  public void onSessionCreated(IImSession paramIImSession)
  {
    super.onSessionCreated(paramIImSession);
    if ((mApp == null) || (paramIImSession == null)) {
      return;
    }
    mApp.asyncPruneOldChatsAndMessages(paramIImSession);
    updateStatus();
    try
    {
      if (!paramIImSession.getPresence().isAvailable())
      {
        String str = getAccountInfousername;
        logv("login for " + str);
        paramIImSession.login(str, false);
      }
      logv("onSessionCreated: request batch presence");
      paramIImSession.requestBatchedBuddyPresence();
      return;
    }
    catch (RemoteException paramIImSession)
    {
      Log.e("talk", "IImSession login: caught " + paramIImSession);
      return;
    }
    finally
    {
      loadSelfStatus();
    }
  }
  
  public void onStart()
  {
    super.onStart();
    registerForIntentBroadcast();
    registerCallStateListener();
  }
  
  public void onStop()
  {
    super.onStop();
    unregisterForIntentBroadcast();
    unregisterCallStateListener();
    RosterListItem.onStop();
  }
  
  public void reload()
  {
    RosterListLoader localRosterListLoader = (RosterListLoader)getLoader(1);
    if (localRosterListLoader != null) {
      localRosterListLoader.forceLoad();
    }
  }
  
  protected void removeRemoteListeners()
  {
    try
    {
      if (mImSession != null)
      {
        if (mConnectionListener != null)
        {
          mImSession.removeConnectionStateListener(mConnectionListener);
          mConnectionListener.clearRefs();
          mConnectionListener = null;
        }
        if (mRosterListener != null)
        {
          mImSession.removeRemoteRosterListener(mRosterListener);
          mRosterListener.clearRefs();
          mRosterListener = null;
        }
        if (mChatListener != null)
        {
          mImSession.removeRemoteChatListener(mChatListener);
          mChatListener.clearRefs();
          mChatListener = null;
        }
        if (mGroupChatInvitationListener != null)
        {
          mImSession.removeGroupChatInvitationListener(mGroupChatInvitationListener);
          mGroupChatInvitationListener.clearRefs();
          mGroupChatInvitationListener = null;
        }
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
  
  public void setData(Cursor paramCursor)
  {
    mRosterListAdapter.changeCursor(paramCursor, mCurrentSearchString);
    if (paramCursor.getCount() > 0) {
      mController.onDisplayProgress(false);
    }
    mColumnContactId = paramCursor.getColumnIndexOrThrow("_id");
    mColumnUsername = paramCursor.getColumnIndexOrThrow("username");
    mColumnNickname = paramCursor.getColumnIndexOrThrow("nickname");
    mColumnAccount = paramCursor.getColumnIndexOrThrow("account");
    mColumnType = paramCursor.getColumnIndexOrThrow("type");
    mColumnSubscStatus = paramCursor.getColumnIndexOrThrow("subscriptionStatus");
    mColumnSubscType = paramCursor.getColumnIndexOrThrow("subscriptionType");
    mColumnGroupChat = paramCursor.getColumnIndexOrThrow("groupchat");
    mColumnCapabilities = paramCursor.getColumnIndexOrThrow("cap");
    restoreListViewState();
  }
  
  public void setEnabled(boolean paramBoolean)
  {
    View localView = getView();
    if (localView != null) {
      localView.setEnabled(paramBoolean);
    }
  }
  
  public void setFilterMode(RosterListLoader.FilterMode paramFilterMode, RosterListLoader.SortMode paramSortMode)
  {
    int i = 0;
    Activity localActivity = getActivity();
    if (localActivity == null) {
      return;
    }
    Object localObject = localActivity.getPreferences(0).edit();
    if (paramFilterMode == RosterListLoader.FilterMode.QUICK_CONTACTS) {}
    for (;;)
    {
      ((SharedPreferences.Editor)localObject).putInt("gtalk-view-mode", i);
      ((SharedPreferences.Editor)localObject).putInt("gtalk-sort-mode", paramSortMode.ordinal());
      ((SharedPreferences.Editor)localObject).apply();
      setQuickContactsMenuItemState();
      mRosterListAdapter.setFilterMode(getFilterMode(), getSortMode());
      localObject = (RosterListLoader)getLoader(1);
      if (localObject != null)
      {
        ((RosterListLoader)localObject).setFilterMode(paramFilterMode, paramSortMode);
        ((RosterListLoader)localObject).resetProjection();
      }
      localActivity.invalidateOptionsMenu();
      return;
      i = 1;
    }
  }
  
  public void setFocus(Intent paramIntent)
  {
    if (mRosterListAdapter != null) {
      mRosterListAdapter.setFocus(paramIntent);
    }
  }
  
  public void setListAdapter(IRosterListAdapter paramIRosterListAdapter)
  {
    if (paramIRosterListAdapter != null) {
      paramIRosterListAdapter.setIncludeSelfItem(true);
    }
    super.setListAdapter(paramIRosterListAdapter);
  }
  
  public void setNarrowMode(boolean paramBoolean)
  {
    mNarrow = paramBoolean;
    if (mRosterListAdapter != null) {
      mRosterListAdapter.setNarrowLayout(paramBoolean);
    }
    updateStatus(false);
  }
  
  public void setQueryString(String paramString)
  {
    mCurrentSearchString = paramString;
    RosterListLoader localRosterListLoader = (RosterListLoader)getLoader(1);
    if (localRosterListLoader == null) {
      return;
    }
    localRosterListLoader.setFilterMode(RosterListLoader.FilterMode.ALL, RosterListLoader.SortMode.ACTIVE_ALPHABETICAL, paramString);
  }
  
  public void softUiReset()
  {
    if ((mCreated) && (mList != null))
    {
      mList.setSelection(0);
      mDontRestoreListViewState = true;
      dismissStatusbarNotifications(mApp.getGTalkService());
    }
  }
  
  public void switchAccounts(TalkApp.AccountInfo paramAccountInfo)
  {
    logv("switchAccounts");
    if (!mCreated) {
      logv("switchAccounts: fragment's onCreate not called yet");
    }
    do
    {
      do
      {
        return;
        mAccountInfo = paramAccountInfo;
        paramAccountInfo = (RosterListLoader)getLoader(1);
        if ((paramAccountInfo != null) && (mRosterListAdapter != null)) {
          break;
        }
      } while (!TalkApp.verboseLoggable());
      if (paramAccountInfo == null) {
        logv("switchAccounts: loader is NULL");
      }
    } while (mRosterListAdapter != null);
    logv("switchAccounts: mRosterListAdapter is NULL");
    return;
    long l = getAccountInfoaccountId;
    mRosterListAdapter.setAccountId(l);
    removeRemoteListeners();
    mImSession = null;
    try
    {
      mImSession = mApp.getGTalkService().getImSessionForAccountId(l);
      if (mImSession != null)
      {
        loadSelfStatus();
        addRemoteListeners();
        logv("switchAccounts: request batch presence");
        mImSession.requestBatchedBuddyPresence();
      }
      paramAccountInfo.switchAccounts(l);
      unregisterCallStateListener();
      registerCallStateListener();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      for (;;)
      {
        Log.e("talk", "switchAccounts: caught " + localRemoteException);
      }
    }
  }
  
  private class AnimatedRosterAdapter
    extends AnimatedAdapter2
    implements IRosterListAdapter
  {
    private IRosterListAdapter mAdapter;
    
    public AnimatedRosterAdapter(IRosterListAdapter paramIRosterListAdapter)
    {
      super(getResources().getInteger(2131361796));
      mAdapter = paramIRosterListAdapter;
    }
    
    public void changeCursor(Cursor paramCursor, String paramString)
    {
      mAdapter.changeCursor(paramCursor, paramString);
    }
    
    public RosterListAdapter.CallState getActiveCallState()
    {
      return mAdapter.getActiveCallState();
    }
    
    public Cursor getCursor()
    {
      return mAdapter.getCursor();
    }
    
    public boolean hasActiveChats()
    {
      return mAdapter.hasActiveChats();
    }
    
    public void init(long paramLong, Activity paramActivity, Runnable paramRunnable)
    {
      mAdapter.init(paramLong, paramActivity, paramRunnable);
    }
    
    public boolean isScrolling()
    {
      return mAdapter.isScrolling();
    }
    
    public void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3)
    {
      mAdapter.onScroll(paramAbsListView, paramInt1, paramInt2, paramInt3);
    }
    
    public void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
    {
      mAdapter.onScrollStateChanged(paramAbsListView, paramInt);
    }
    
    public void setAccountId(long paramLong)
    {
      mAdapter.setAccountId(paramLong);
    }
    
    public void setActiveCallState(RosterListAdapter.CallState paramCallState)
    {
      mAdapter.setActiveCallState(paramCallState);
    }
    
    public void setFilterMode(RosterListLoader.FilterMode paramFilterMode, RosterListLoader.SortMode paramSortMode)
    {
      mAdapter.setFilterMode(paramFilterMode, paramSortMode);
    }
    
    public void setFocus(Intent paramIntent)
    {
      mAdapter.setFocus(paramIntent);
    }
    
    public void setIncludeSelfItem(boolean paramBoolean)
    {
      mAdapter.setIncludeSelfItem(paramBoolean);
    }
    
    public boolean setIsOnline(boolean paramBoolean)
    {
      return mAdapter.setIsOnline(paramBoolean);
    }
    
    public void setNarrowLayout(boolean paramBoolean)
    {
      mAdapter.setNarrowLayout(paramBoolean);
    }
    
    public void setNeedForceLoad(boolean paramBoolean)
    {
      mAdapter.setNeedForceLoad(paramBoolean);
    }
    
    public void setOnVideoButtonClickedListener(IRosterListAdapter.VideoButtonClickHandler paramVideoButtonClickHandler)
    {
      mAdapter.setOnVideoButtonClickedListener(paramVideoButtonClickHandler);
    }
    
    public void setSelfStatusCursor(Cursor paramCursor)
    {
      mAdapter.setSelfStatusCursor(paramCursor);
    }
    
    public void suppressIndent()
    {
      mAdapter.suppressIndent();
    }
    
    public void suppressVideoButton(boolean paramBoolean)
    {
      mAdapter.suppressVideoButton(paramBoolean);
    }
  }
  
  public static abstract interface BuddyListHost
  {
    public abstract void finishedLoading();
    
    public abstract TalkApp.AccountInfo getAccountInfo();
    
    public abstract BuddyListFragment.Controller getBuddyListController();
  }
  
  static class ChatListener
    extends IChatListener.Stub
  {
    private Runnable mForceLoadRunnable = new Runnable()
    {
      public void run()
      {
        if (BuddyListFragment.this == null) {
          return;
        }
        forceLoad();
      }
    };
    private BuddyListFragment mFragment;
    
    public ChatListener(BuddyListFragment paramBuddyListFragment)
    {
      mFragment = paramBuddyListFragment;
    }
    
    public void callEnded() {}
    
    public void chatClosed(String paramString)
    {
      BuddyListFragment localBuddyListFragment = mFragment;
      if (localBuddyListFragment == null) {
        return;
      }
      localBuddyListFragment.logv("ChatListener.chatClosed from " + paramString);
      mHandler.post(mForceLoadRunnable);
    }
    
    public void chatRead(String paramString)
    {
      BuddyListFragment localBuddyListFragment = mFragment;
      if (localBuddyListFragment == null) {
        return;
      }
      localBuddyListFragment.logv("ChatListener.ChatRead from " + paramString);
      mHandler.post(mForceLoadRunnable);
    }
    
    public void clearRefs()
    {
      mFragment = null;
    }
    
    public void convertedToGroupChat(String paramString1, String paramString2, long paramLong) {}
    
    public void missedCall() {}
    
    public void newMessageReceived(String paramString1, String paramString2, boolean paramBoolean)
    {
      BuddyListFragment localBuddyListFragment = mFragment;
      if (localBuddyListFragment == null) {}
      do
      {
        return;
        localBuddyListFragment.logv("ChatListener.newMessageReceived from " + paramString1);
      } while (paramString2 == null);
      mHandler.post(mForceLoadRunnable);
    }
    
    public void newMessageSent(String paramString) {}
    
    public void participantJoined(String paramString1, String paramString2) {}
    
    public void participantLeft(String paramString1, String paramString2) {}
    
    public boolean useLightweightNotify()
    {
      return false;
    }
    
    public void willConvertToGroupChat(String paramString1, String paramString2, long paramLong) {}
  }
  
  private static class ConnectionStateListener
    extends IConnectionStateListener.Stub
  {
    BuddyListFragment mFragment;
    
    public ConnectionStateListener(BuddyListFragment paramBuddyListFragment)
    {
      mFragment = paramBuddyListFragment;
    }
    
    public void clearRefs()
    {
      mFragment = null;
    }
    
    public void connectionStateChanged(ConnectionState paramConnectionState, ConnectionError paramConnectionError, long paramLong, String paramString)
    {
      for (;;)
      {
        try
        {
          paramConnectionError = mFragment;
          if (paramConnectionError == null) {
            return;
          }
          switch (paramConnectionState.getState())
          {
          case 3: 
            mHandler.post(new Runnable()
            {
              public void run()
              {
                if (mFragment == null) {
                  return;
                }
                mFragment.setIsOnline(false);
              }
            });
            return;
          }
        }
        catch (RuntimeException paramConnectionState)
        {
          Log.e("talk", "BuddyListFragment.connectionStateChanged error", paramConnectionState);
          throw paramConnectionState;
        }
        mHandler.post(new Runnable()
        {
          public void run()
          {
            if (mFragment == null) {
              return;
            }
            mFragment.setIsOnline(true);
          }
        });
        return;
      }
    }
  }
  
  public static abstract interface Controller
  {
    public abstract void onAddToContacts(String paramString);
    
    public abstract void onCloseAllChats();
    
    public abstract void onDisplayProgress(boolean paramBoolean);
    
    public abstract void onInviteFriend(long paramLong);
    
    public abstract void onLeaveChat(long paramLong, String paramString);
    
    public abstract void onLogout();
    
    public abstract void onMakeInvite(BuddyListFragment.ListItemInfo paramListItemInfo);
    
    public abstract void onOpenChat(BuddyListFragment.ListItemInfo paramListItemInfo);
    
    public abstract void onOpenGroupChat(BuddyListFragment.ListItemInfo paramListItemInfo);
    
    public abstract void onRequestSetSelfStatus(long paramLong);
    
    public abstract void onShowContactInfo(BuddyListFragment.ListItemInfo paramListItemInfo);
    
    public abstract void onShowInvites(BuddyListFragment.ListItemInfo paramListItemInfo);
    
    public abstract boolean onVideoChatStarted();
  }
  
  public static class GroupChatInvitationListener
    extends IGroupChatInvitationListener.Stub
  {
    TalkApp mApp;
    BuddyListFragment mFragment;
    
    public GroupChatInvitationListener(BuddyListFragment paramBuddyListFragment, TalkApp paramTalkApp)
    {
      mFragment = paramBuddyListFragment;
      mApp = paramTalkApp;
    }
    
    public void clearRefs()
    {
      mApp = null;
      mFragment = null;
    }
    
    public boolean onInvitationReceived(final GroupChatInvitation paramGroupChatInvitation)
    {
      BuddyListFragment localBuddyListFragment = mFragment;
      TalkApp localTalkApp = mApp;
      if ((localBuddyListFragment == null) || (mApp == null)) {
        return false;
      }
      if (TalkApp.debugLoggable()) {
        localBuddyListFragment.logd("received MUC invitation from " + paramGroupChatInvitation.getInviter() + ", room=" + paramGroupChatInvitation.getRoomAddress());
      }
      localBuddyListFragment.getActivity().runOnUiThread(new Runnable()
      {
        public void run()
        {
          if ((mFragment == null) || (mApp == null)) {
            return;
          }
          mApp.mGroupChatInvitations.put(paramGroupChatInvitation.getRoomAddress(), paramGroupChatInvitation);
          mFragment.forceLoad();
        }
      });
      return true;
    }
  }
  
  public static class ListItemInfo
  {
    public long mAccountId;
    public long mContactId;
    public boolean mOpenAudioChat;
    public String mUsername;
    
    public ListItemInfo() {}
    
    public ListItemInfo(String paramString, long paramLong)
    {
      this(paramString, paramLong, false);
    }
    
    public ListItemInfo(String paramString, long paramLong, boolean paramBoolean)
    {
      mUsername = paramString;
      mAccountId = paramLong;
      mOpenAudioChat = paramBoolean;
    }
  }
  
  private class LocalCallStateClient
    extends CallStateClient
  {
    public LocalCallStateClient(Context paramContext)
    {
      super();
    }
    
    public void onCallStateUpdate(final String paramString, final CallState paramCallState, boolean paramBoolean, Object paramObject)
    {
      TalkApp.LOGD("talk", "BuddyListFragment call listener state: " + libjingleCallState + " " + paramString);
      mHandler.post(new Runnable()
      {
        public void run()
        {
          if (mCallStateUpdateHack != null)
          {
            mHandler.removeCallbacks(mCallStateUpdateHack);
            BuddyListFragment.access$802(BuddyListFragment.this, null);
          }
          RosterListAdapter.CallState localCallState = new RosterListAdapter.CallState();
          switch (paramCallStatelibjingleCallState)
          {
          }
          for (;;)
          {
            mIsVideo = paramCallStatevideo;
            mRosterListAdapter.setActiveCallState(localCallState);
            return;
            mPending = true;
            mBareJid = paramString;
            continue;
            mBareJid = paramString;
          }
        }
      });
    }
    
    public void onDisconnected()
    {
      mHandler.post(new Runnable()
      {
        public void run()
        {
          BuddyListFragment.access$802(BuddyListFragment.this, null);
          RosterListAdapter.CallState localCallState = new RosterListAdapter.CallState();
          mRosterListAdapter.setActiveCallState(localCallState);
        }
      });
    }
  }
  
  static class RosterListener
    extends IRosterListener.Stub
  {
    BuddyListFragment mFragment;
    
    public RosterListener(BuddyListFragment paramBuddyListFragment)
    {
      mFragment = paramBuddyListFragment;
    }
    
    public void clearRefs()
    {
      mFragment = null;
    }
    
    public void presenceChanged(String paramString)
    {
      BuddyListFragment localBuddyListFragment = mFragment;
      if (localBuddyListFragment == null) {
        return;
      }
      StringBuilder localStringBuilder = new StringBuilder().append("RosterListener.presenceChanged");
      if (paramString != null) {}
      for (paramString = " for " + paramString;; paramString = "")
      {
        localBuddyListFragment.logv(paramString);
        mHandler.post(new Runnable()
        {
          public void run()
          {
            if (mFragment == null) {
              return;
            }
            mFragment.forceLoad();
          }
        });
        return;
      }
    }
    
    public void rosterChanged()
    {
      BuddyListFragment localBuddyListFragment = mFragment;
      if (localBuddyListFragment == null) {
        return;
      }
      localBuddyListFragment.logd("RosterListener.rosterChanged");
      mHandler.post(new Runnable()
      {
        public void run()
        {
          if (mFragment == null) {}
          while (mFragment.getActivity() == null) {
            return;
          }
          mFragment.forceLoad();
          mFragment.mController.onDisplayProgress(false);
        }
      });
    }
    
    public void selfPresenceChanged()
    {
      BuddyListFragment localBuddyListFragment = mFragment;
      if (localBuddyListFragment == null) {
        return;
      }
      localBuddyListFragment.logv("RosterListener.selfPresenceChanged");
      mHandler.post(new Runnable()
      {
        public void run()
        {
          if (mFragment == null) {
            return;
          }
          mFragment.loadSelfStatus();
        }
      });
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.fragments.BuddyListFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */