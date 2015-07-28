package com.google.android.talk.fragments;

import android.animation.LayoutTransition;
import android.app.Activity;
import android.app.Fragment;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcelable;
import android.os.RemoteException;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.support.v4.view.ViewPager.OnPageChangeListener;
import android.text.Editable;
import android.text.Spannable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.method.TextKeyListener;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.animation.AccelerateInterpolator;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;
import android.widget.Toast;
import com.google.android.gsf.Gservices;
import com.google.android.gsf.TalkContract.Chats;
import com.google.android.gtalkservice.IChatListener.Stub;
import com.google.android.gtalkservice.IChatSession;
import com.google.android.gtalkservice.IGTalkService;
import com.google.android.gtalkservice.IImSession;
import com.google.android.talk.AccountSelectionActivity;
import com.google.android.talk.ActivityUtils;
import com.google.android.talk.ChatView;
import com.google.android.talk.ChatView.VideoChatState;
import com.google.android.talk.DatabaseUtils;
import com.google.android.talk.GroupChatInviteeList;
import com.google.android.talk.ServiceAvailableRunnable;
import com.google.android.talk.StringUtils;
import com.google.android.talk.TalkApp;
import com.google.android.talk.TalkApp.AccountInfo;
import com.google.android.talk.util.ChatColorMaker;
import com.google.android.talk.util.ChatList;
import com.google.android.videochat.CallSession.AudioDevice;
import com.google.android.videochat.CallState;
import com.google.android.videochat.CallState.AudioDeviceState;
import com.google.android.videochat.CallStateClient;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Formatter;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public class ChatScreenFragment
  extends Fragment
{
  private static String[] CHATS_PROJECTION = { "_id", "contact_id", "is_active" };
  private long mAccountId;
  private Activity mActivity;
  private TalkApp mApp;
  private Set<CallSession.AudioDevice> mAudioDevices = new HashSet();
  private CallStateClient mCallStateClient;
  private ChatHost mChatHost = new ChatHost()
  {
    public void cacheContactId(String paramAnonymousString, long paramAnonymousLong)
    {
      mContactIdMap.put(paramAnonymousString, Long.valueOf(paramAnonymousLong));
    }
    
    public void convertedToGroupChat(ChatView paramAnonymousChatView, String paramAnonymousString)
    {
      ChatScreenFragment.access$302(ChatScreenFragment.this, paramAnonymousString);
      mChatList.resumeRequery();
    }
    
    public long getCachedContactId(String paramAnonymousString)
    {
      long l = -1L;
      if (mContactIdMap.containsKey(paramAnonymousString)) {
        l = ((Long)mContactIdMap.get(paramAnonymousString)).longValue();
      }
      return l;
    }
    
    public View getMessageBar()
    {
      return mMessageBar;
    }
    
    public boolean handleMenuItem(ChatView paramAnonymousChatView, MenuItem paramAnonymousMenuItem, int paramAnonymousInt)
    {
      boolean bool2 = true;
      boolean bool1;
      if (paramAnonymousChatView == null) {
        bool1 = false;
      }
      for (;;)
      {
        return bool1;
        Object localObject = paramAnonymousChatView.getContact();
        IImSession localIImSession = paramAnonymousChatView.getImSession();
        switch (paramAnonymousInt)
        {
        default: 
          localObject = new StringBuilder().append(">>>>>>>>>>>>> no handler for menu item: ").append(paramAnonymousInt);
          if (paramAnonymousMenuItem == null)
          {
            paramAnonymousChatView = "NULL";
            Log.e("talk", paramAnonymousChatView);
            return false;
          }
        case 2131755198: 
          paramAnonymousChatView.startVoiceChat();
          return true;
        case 2131755197: 
          paramAnonymousChatView.startVideoChat();
          return true;
        case 2131755102: 
          paramAnonymousChatView.resumeVideoChat();
          return true;
        case 2131755097: 
          paramAnonymousChatView.endVideoOrVoiceChat();
          return true;
        case 2131755098: 
          paramAnonymousChatView.endVideoOrVoiceChat();
          return true;
        case 2131755203: 
          addToChat();
          return true;
        case 2131755200: 
          leaveChat();
          return true;
        case 2131755204: 
          clearChat();
          return true;
        case 2131755202: 
          paramAnonymousMenuItem = new BuddyListFragment.ListItemInfo();
          mContactId = paramAnonymousChatView.getChatsTableContactId();
          mAccountId = paramAnonymousChatView.getAccountId();
          mUsername = paramAnonymousChatView.getContact();
          mController.onShowContactInfo(paramAnonymousMenuItem);
          return true;
        case 2131755189: 
          bool1 = bool2;
          if (localObject == null) {
            continue;
          }
          bool1 = bool2;
          if (localIImSession == null) {
            continue;
          }
        case 2131755190: 
        case 2131755201: 
        case 2131755101: 
        case 2131755185: 
        case 2131755186: 
        case 2131755187: 
        case 2131755188: 
          try
          {
            label212:
            leaveChat();
            localIImSession.blockContact((String)localObject);
            DatabaseUtils.removeChatsByContactId(getActivity().getContentResolver(), paramAnonymousChatView.getChatsTableContactId());
            return true;
            bool1 = bool2;
            if (localObject == null) {
              continue;
            }
            try
            {
              leaveChat();
              localIImSession.removeContact((String)localObject);
              return true;
            }
            catch (RemoteException paramAnonymousChatView)
            {
              return true;
            }
            toggleOtr();
            return true;
            paramAnonymousChatView.toggleMute();
            break label212;
            paramAnonymousChatView.handleAudioChoice(paramAnonymousInt);
            break label212;
            paramAnonymousChatView = paramAnonymousMenuItem.getTitle();
          }
          catch (RemoteException paramAnonymousMenuItem)
          {
            for (;;) {}
          }
        }
      }
    }
    
    public void invalidateImSession()
    {
      ChatScreenFragment.this.log("invalidateImSession");
      ChatScreenFragment.this.foreachChat(new ChatScreenFragment.ViewRunnable()
      {
        public boolean run(View paramAnonymous2View)
        {
          boolean bool2 = true;
          paramAnonymous2View = (ChatView)paramAnonymous2View;
          boolean bool1 = bool2;
          if (paramAnonymous2View != null)
          {
            bool1 = bool2;
            if (!paramAnonymous2View.initSession(true))
            {
              Log.e("talk", "invalidateImSessions failed. Finish!");
              ActivityUtils.showLandingPage(mActivity);
              bool1 = false;
            }
          }
          return bool1;
        }
      });
    }
    
    public void startActivityForResult(Intent paramAnonymousIntent, int paramAnonymousInt)
    {
      ChatScreenFragment.this.startActivityForResult(paramAnonymousIntent, paramAnonymousInt);
    }
    
    public boolean startVideoChatAnimation()
    {
      ChatScreenFragment.this.hideKeyboard();
      return mController.onVideoChatStarted();
    }
    
    public void update(View paramAnonymousView)
    {
      ChatView localChatView = ChatScreenFragment.this.getActiveChat();
      if (paramAnonymousView != localChatView) {}
      do
      {
        return;
        paramAnonymousView = localChatView.getContact();
      } while ((paramAnonymousView == null) || (!paramAnonymousView.equals(mTargetContact)));
      updateTitle(localChatView);
      mController.updateOtrStatus(localChatView.isOffTheRecord());
      getActivity().invalidateOptionsMenu();
    }
    
    public void willConvertToGroupChat(ChatView paramAnonymousChatView, String paramAnonymousString)
    {
      mChatList.suspendRequery();
    }
  };
  private EditText mChatInputField;
  private ChatList mChatList;
  private ChatColorMaker mColorMaker;
  private HashMap<String, Long> mContactIdMap = new HashMap();
  private Controller mController;
  private boolean mCreated;
  private boolean mFromStatusBarNotify;
  private ActiveChats mGallery;
  private boolean mGroupChatEnabled;
  private final Handler mHandler = new Handler();
  private View mInputContainer;
  private volatile boolean mInvitePending;
  private Runnable mInviteRunnable;
  private ViewGroup mMessageBar;
  private boolean mNeedToHandleNewIntent;
  private Runnable mQueryCompleteRunnable = new Runnable()
  {
    public void run()
    {
      Runnable local1 = new Runnable()
      {
        public void run()
        {
          if (mChatList.isClosed()) {
            return;
          }
          mChatInputField.setEnabled(true);
          ChatScreenFragment.this.pickChat(mTargetContact, mAccountId);
        }
      };
      synchronized (mWaitForServiceTasks)
      {
        if (mService == null)
        {
          mWaitForServiceTasks.add(local1);
          mGallery.setAdapter(null);
          return;
        }
        local1.run();
        return;
      }
    }
  };
  private Resources mResources;
  private View mRoot;
  private int mSelfClientType = -1;
  private View mSendButton;
  private IGTalkService mService;
  private boolean mStartVoiceChatRequest;
  private boolean mStarted;
  private boolean mTabletMode;
  private String mTargetContact;
  private final List<Runnable> mWaitForServiceTasks = new ArrayList();
  
  public ChatScreenFragment() {}
  
  public ChatScreenFragment(Activity paramActivity)
  {
    mActivity = paramActivity;
  }
  
  private IChatSession checkChatSession(final String paramString, final long paramLong, boolean paramBoolean)
  {
    if (TalkApp.verboseLoggable()) {
      logv("checkChatSession " + paramString + "/" + paramLong + " ensureChatsInDb " + paramBoolean);
    }
    synchronized (mWaitForServiceTasks)
    {
      if (mService == null)
      {
        mWaitForServiceTasks.add(new Runnable()
        {
          public void run()
          {
            ChatScreenFragment.this.log("wait for service task: create empty ChatSession for " + paramString);
            ChatScreenFragment.this.checkChatSession(paramString, paramLong, val$ensureChatsInDb);
          }
        });
        return null;
      }
    }
    IChatSession localIChatSession;
    try
    {
      ??? = mService.getImSessionForAccountId(paramLong);
      if (??? == null)
      {
        Log.e("talk", "checkChatSession: null imSession, bail!");
        AccountSelectionActivity.startAccountSelectionActivity(mActivity);
        return null;
        paramString = finally;
        throw paramString;
      }
      localIChatSession = ((IImSession)???).getChatSession(paramString);
      if (localIChatSession == null)
      {
        mChatList.suspendRequery();
        ??? = ((IImSession)???).createChatSession(paramString);
        log("checkChatSession created for " + paramString + " chatSession=" + ???);
        mChatList.resumeRequery();
        return (IChatSession)???;
      }
    }
    catch (RemoteException paramString)
    {
      Log.e("talk", "checkChatSession caught ", paramString);
      AccountSelectionActivity.startAccountSelectionActivity(mActivity);
      return null;
    }
    if (paramBoolean) {
      new Thread(new Runnable()
      {
        public void run()
        {
          ChatScreenFragment.this.ensureChatInDb(paramString, paramLong);
        }
      }).start();
    }
    return localIChatSession;
  }
  
  private void configureMuteUnmuteButton(MenuItem paramMenuItem, boolean paramBoolean)
  {
    paramMenuItem.setVisible(true);
    if (paramBoolean)
    {
      i = 2131493130;
      paramMenuItem.setTitle(i);
      if (!paramBoolean) {
        break label48;
      }
    }
    label48:
    for (int i = 2130837603;; i = 2130837605)
    {
      paramMenuItem.setIcon(i);
      return;
      i = 2131493129;
      break;
    }
  }
  
  private void createChatList(View paramView)
  {
    mChatList = new ChatList(mActivity, mAccountId, mQueryCompleteRunnable);
  }
  
  private void dismissAllChatNotifications(long paramLong)
  {
    IGTalkService localIGTalkService = mApp.getGTalkService();
    if (localIGTalkService == null) {
      Log.e("talk", "dismissChatNotification: no GTalkService object found!");
    }
    for (;;)
    {
      return;
      try
      {
        log("dismissChatNotification for all");
        localIGTalkService.dismissNotificationsForAccount(paramLong);
        if (getActivity() == null) {
          continue;
        }
        ActivityUtils.dismissPopupNotification(getActivity());
        return;
      }
      catch (RemoteException localRemoteException)
      {
        for (;;)
        {
          Log.e("talk", "dismissChatNotification: caught ", localRemoteException);
        }
      }
    }
  }
  
  private void enableOrDisable(MenuItem paramMenuItem, CallSession.AudioDevice paramAudioDevice)
  {
    if (paramMenuItem != null)
    {
      paramMenuItem.setEnabled(mAudioDevices.contains(paramAudioDevice));
      paramMenuItem.setChecked(false);
      paramMenuItem.setCheckable(false);
    }
  }
  
  private void ensureChatInDb(String paramString, long paramLong)
  {
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("contact_id");
    ((StringBuilder)localObject).append(" in (select _id from contacts where ");
    ((StringBuilder)localObject).append("username").append("=? AND ");
    ((StringBuilder)localObject).append("account").append("=?)");
    ContentResolver localContentResolver = mActivity.getContentResolver();
    localObject = localContentResolver.query(TalkContract.Chats.CONTENT_URI, CHATS_PROJECTION, ((StringBuilder)localObject).toString(), new String[] { paramString, String.valueOf(paramLong) }, null);
    long l1 = 0L;
    int i = 0;
    int j = 0;
    long l2 = l1;
    if (localObject != null) {
      i = j;
    }
    try
    {
      if (((Cursor)localObject).moveToFirst())
      {
        l1 = ((Cursor)localObject).getInt(1);
        if (((Cursor)localObject).getInt(2) == 1)
        {
          i = 1;
          ((Cursor)localObject).getLong(0);
        }
      }
      else
      {
        ((Cursor)localObject).close();
        l2 = l1;
        if (l2 != 0L) {
          break label295;
        }
        paramLong = DatabaseUtils.getIdForContact(localContentResolver, paramString, paramLong);
        log("ensureChatInDb: create a chat for " + paramString + ", contactId=" + paramLong);
        paramString = new ContentValues();
        paramString.put("contact_id", Long.valueOf(paramLong));
        paramString.put("last_message_date", Long.valueOf(System.currentTimeMillis()));
        paramString.put("last_unread_message", (String)null);
        localContentResolver.insert(TalkContract.Chats.CONTENT_URI, paramString);
      }
      while (i != 0)
      {
        return;
        i = 0;
        break;
      }
    }
    finally
    {
      ((Cursor)localObject).close();
    }
    label295:
    paramString = new ContentValues();
    paramString.put("is_active", Integer.valueOf(1));
    localContentResolver.update(TalkContract.Chats.CONTENT_URI, paramString, "contact_id=?", new String[] { String.valueOf(l2) });
  }
  
  private void foreachChat(ViewRunnable paramViewRunnable)
  {
    if (mGallery != null) {
      mGallery.foreachChatView(paramViewRunnable);
    }
  }
  
  private ChatView getActiveChat()
  {
    if (mGallery == null) {
      return null;
    }
    return mGallery.getSelectedChatView();
  }
  
  private void hideKeyboard()
  {
    Activity localActivity = mActivity;
    if (localActivity == null) {
      return;
    }
    ((InputMethodManager)localActivity.getSystemService("input_method")).hideSoftInputFromWindow(mChatInputField.getWindowToken(), 0);
  }
  
  private String hintValue(ChatList paramChatList)
  {
    if (paramChatList.isGroupChat()) {
      return mResources.getString(2131492921);
    }
    paramChatList = paramChatList.getNickName();
    int i = paramChatList.indexOf(' ');
    if (i < 0) {
      return StringUtils.parseAbbreviatedAddress(paramChatList);
    }
    return paramChatList.substring(0, i);
  }
  
  public static boolean isChatScreenIntent(Intent paramIntent)
  {
    if (paramIntent == null) {}
    while (TextUtils.isEmpty(paramIntent.getStringExtra("from"))) {
      return false;
    }
    return true;
  }
  
  private void log(String paramString)
  {
    if (!TalkApp.debugLoggable()) {
      return;
    }
    Log.d("talk", "[ChatScreenFragment] [" + this + "] " + paramString);
  }
  
  private void logv(String paramString)
  {
    if (!TalkApp.verboseLoggable()) {
      return;
    }
    Log.v("talk", "[ChatScreenFragment] [" + this + "] " + paramString);
  }
  
  private void onGroupChatApproval(Bundle paramBundle)
  {
    if (paramBundle == null)
    {
      AccountSelectionActivity.startAccountSelectionActivity(mActivity);
      return;
    }
    String str = paramBundle.getString("room");
    mApp.mGroupChatInvitations.remove(str);
    if (paramBundle.getBoolean("approval"))
    {
      paramBundle = mActivity.getIntent();
      paramBundle.putExtra("from", str);
      mActivity.setIntent(paramBundle);
      return;
    }
    leaveChat();
  }
  
  private void pickChat(String paramString, long paramLong)
  {
    if ((mActivity.isFinishing()) || (paramString == null)) {
      return;
    }
    Intent localIntent = mActivity.getIntent();
    localIntent.putExtra("from", paramString);
    localIntent.putExtra("accountId", paramLong);
    int k = -1;
    int j = k;
    if (!mChatList.isClosed())
    {
      int m = mChatList.getCount();
      int i = 0;
      j = k;
      if (i < m)
      {
        mChatList.moveToPosition(i);
        if (mChatList.getAccountId() != paramLong) {}
        while (!mChatList.getUsername().equals(paramString))
        {
          i += 1;
          break;
        }
        j = i;
      }
    }
    mTargetContact = paramString;
    if (paramString != null) {
      if (j != -1) {
        break label219;
      }
    }
    label219:
    for (boolean bool = true;; bool = false)
    {
      checkChatSession(paramString, paramLong, bool);
      if (j != -1)
      {
        mGallery.setAdapter(new GalleryAdapter(mChatList));
        mGallery.setSelection(j);
      }
      if (mInviteRunnable == null) {
        break;
      }
      mInviteRunnable.run();
      mInviteRunnable = null;
      return;
    }
  }
  
  private void resolveIntent()
  {
    Intent localIntent = mActivity.getIntent();
    mFromStatusBarNotify = localIntent.getBooleanExtra("from_notify", false);
    mStartVoiceChatRequest = localIntent.getBooleanExtra("vc", false);
    log("resolveIntent: fromNotify=" + mFromStatusBarNotify + ", startVoice=" + mStartVoiceChatRequest);
  }
  
  private void restartKeyboard()
  {
    Activity localActivity = mActivity;
    if (localActivity == null) {
      return;
    }
    ((InputMethodManager)localActivity.getSystemService("input_method")).restartInput(mChatInputField);
  }
  
  private void sendMessage()
  {
    ChatView localChatView = getActiveChat();
    if (localChatView == null) {}
    do
    {
      return;
      localChatView.sendMessage(mChatInputField.getText().toString().trim());
      TextKeyListener.clear(mChatInputField.getText());
      restartKeyboard();
      mChatInputField.requestFocus();
    } while ((mTabletMode) || (mResources.getConfiguration().orientation != 2));
    hideKeyboard();
  }
  
  private void setTitle(CharSequence paramCharSequence1, CharSequence paramCharSequence2, CharSequence paramCharSequence3, int paramInt1, int paramInt2, int paramInt3)
  {
    Drawable localDrawable;
    if (paramInt1 != -1)
    {
      localDrawable = mApp.getConnectionTypeIndicator(paramInt1, false);
      mSelfClientType = paramInt1;
      switch (paramInt1)
      {
      }
    }
    for (;;)
    {
      mController.setTitle(paramCharSequence1, paramCharSequence2, paramCharSequence3, paramInt2, paramInt3, localDrawable);
      return;
      localDrawable = null;
      break;
      paramCharSequence1 = mResources.getString(2131493121);
    }
  }
  
  private void setupMessageBar()
  {
    ViewGroup localViewGroup = (ViewGroup)mRoot.findViewById(2131755060);
    if (localViewGroup == null) {
      return;
    }
    LayoutTransition localLayoutTransition = new LayoutTransition();
    localLayoutTransition.setAnimator(0, null);
    localLayoutTransition.setAnimator(1, null);
    localLayoutTransition.setDuration(2, 220L);
    localLayoutTransition.setDuration(3, 150L);
    localLayoutTransition.setStartDelay(2, 0L);
    localLayoutTransition.setStartDelay(3, 0L);
    localLayoutTransition.setInterpolator(2, new AccelerateInterpolator(1.5F));
    localLayoutTransition.setInterpolator(3, new AccelerateInterpolator(1.5F));
    localViewGroup.setLayoutTransition(localLayoutTransition);
    mMessageBar = localViewGroup;
  }
  
  private void start()
  {
    if (mStarted) {}
    do
    {
      do
      {
        return;
      } while ((isHidden()) || (mGallery == null));
      mStarted = true;
      mService = null;
      mApp.ensureServiceBound();
      registerForServiceStateChanged();
      foreachChat(new ViewRunnable()
      {
        public boolean run(View paramAnonymousView)
        {
          ((ChatView)paramAnonymousView).onStart();
          return true;
        }
      });
      mChatList.requery();
      mCallStateClient = new CallStateClient(mActivity)
      {
        public void onCallStateUpdate(final String paramAnonymousString, final CallState paramAnonymousCallState, final boolean paramAnonymousBoolean, final Object paramAnonymousObject)
        {
          mHandler.post(new Runnable()
          {
            public void run()
            {
              ChatView localChatView = ChatScreenFragment.this.getActiveChat();
              if (localChatView != null) {
                localChatView.onCallStateUpdate(paramAnonymousString, paramAnonymousCallState, paramAnonymousBoolean, paramAnonymousObject);
              }
              mActivity.invalidateOptionsMenu();
              ChatScreenFragment.access$3002(ChatScreenFragment.this, paramAnonymousCallStateavailableAudioDevices);
            }
          });
        }
        
        public void onDisconnected()
        {
          mHandler.post(new Runnable()
          {
            public void run()
            {
              ChatView localChatView = ChatScreenFragment.this.getActiveChat();
              if (localChatView != null)
              {
                String str = localChatView.getContact();
                localChatView.onCallStateUpdate(str, new CallState(str, 13, false, false, false, CallState.AudioDeviceState.SPEAKERPHONE_ON, new HashSet()), false, null);
              }
              mActivity.invalidateOptionsMenu();
            }
          });
        }
      };
      mCallStateClient.startListening();
    } while (!mNeedToHandleNewIntent);
    mNeedToHandleNewIntent = false;
    pickChat(mTargetContact, mAccountId);
  }
  
  private void userActionDetected()
  {
    ChatView localChatView = getActiveChat();
    if (localChatView != null) {
      localChatView.handleUnreadMessages(false);
    }
  }
  
  public void addToChat()
  {
    if (!mGroupChatEnabled) {}
    ChatView localChatView;
    do
    {
      return;
      localChatView = getActiveChat();
    } while (localChatView == null);
    log("show groupchat invite");
    Intent localIntent = new Intent(mActivity, GroupChatInviteeList.class);
    localIntent.putExtra("accountId", localChatView.getAccountId());
    localIntent.putExtra("from", localChatView.getMucParticipants());
    startActivityForResult(localIntent, 2);
  }
  
  void clearChat()
  {
    ChatView localChatView = getActiveChat();
    if (localChatView == null) {
      return;
    }
    localChatView.clearChat();
  }
  
  public long currentChatAccount()
  {
    ChatView localChatView = getActiveChat();
    if (localChatView != null) {
      return localChatView.getAccountId();
    }
    return -1L;
  }
  
  public String currentChatUser()
  {
    ChatView localChatView = getActiveChat();
    if (localChatView != null) {
      return localChatView.getContact();
    }
    return null;
  }
  
  public void leaveChat()
  {
    boolean bool = true;
    log("leaveChat");
    final Object localObject1 = getActiveChat();
    if (localObject1 == null) {
      return;
    }
    int i = mChatList.getCount();
    if (i > 1)
    {
      Runnable local17 = new Runnable()
      {
        public void run()
        {
          localObject1.leaveChat();
        }
      };
      int j = mGallery.getSelectedItemPosition();
      Object localObject2;
      if (j < i - 1)
      {
        if (!mTabletMode) {
          break label139;
        }
        localObject2 = mChatList;
        if (!bool) {
          break label132;
        }
      }
      label132:
      for (i = j + 1;; i = j - 1)
      {
        ((ChatList)localObject2).moveToPosition(i);
        localObject2 = mChatList.getIntent();
        mActivity.setIntent((Intent)localObject2);
        ((ChatView)localObject1).leaveChat();
        onNewIntent((Intent)localObject2);
        local17.run();
        return;
        bool = false;
        break;
      }
      label139:
      mGallery.selectNext(bool, local17);
      return;
    }
    mController.onLastChatClosed();
    ((ChatView)localObject1).leaveChat();
    mTargetContact = null;
    localObject1 = mActivity.getIntent();
    ((Intent)localObject1).removeExtra("from");
    ((Intent)localObject1).removeExtra("accountId");
    mActivity.setIntent((Intent)localObject1);
    mChatList.requery();
  }
  
  public void leaveChat(String paramString)
  {
    ChatView localChatView = getActiveChat();
    if (localChatView == null) {
      return;
    }
    if (TextUtils.equals(paramString, localChatView.getContact()))
    {
      leaveChat();
      return;
    }
    mChatList.requery();
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    onNewIntent(mActivity.getIntent());
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    switch (paramInt1)
    {
    default: 
    case 2: 
      do
      {
        do
        {
          return;
        } while (paramInt2 != -1);
        paramIntent = paramIntent.getExtras().getString("invitee");
        if (paramIntent != null)
        {
          StringBuilder localStringBuilder = new StringBuilder();
          new Formatter(localStringBuilder).format(mResources.getText(2131492923).toString(), new Object[] { paramIntent });
          Toast.makeText(mActivity, localStringBuilder, 1).show();
          mInviteRunnable = new Runnable()
          {
            public void run()
            {
              IChatSession localIChatSession = ChatScreenFragment.this.checkChatSession(val$contact, val$accountId, false);
              if (localIChatSession != null) {}
              try
              {
                if (!localIChatSession.isGroupChat())
                {
                  ChatScreenFragment.access$3102(ChatScreenFragment.this, true);
                  localIChatSession.addRemoteChatListener(new ChatScreenFragment.GroupChatConverted(ChatScreenFragment.this, getActivity(), localIChatSession, val$accountId));
                  mChatList.suspendRequery();
                }
                localIChatSession.inviteContact(val$invitee);
                return;
              }
              catch (RemoteException localRemoteException) {}
            }
          };
        }
      } while ((!mStarted) || (mInviteRunnable == null));
      mInviteRunnable.run();
      mInviteRunnable = null;
      return;
    }
    if (paramIntent != null) {}
    for (paramIntent = paramIntent.getExtras();; paramIntent = null)
    {
      onGroupChatApproval(paramIntent);
      return;
    }
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    ChatScreenHost localChatScreenHost = (ChatScreenHost)paramActivity;
    mActivity = paramActivity;
    mController = localChatScreenHost.getChatScreenController();
    mResources = mActivity.getResources();
    mGroupChatEnabled = Gservices.getBoolean(paramActivity.getContentResolver(), "gtalk_allow_group_chat", true);
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    mInputContainer.getLayoutParams()).rightMargin = getResources().getDimensionPixelOffset(2131427373);
    mInputContainer.requestLayout();
    mGallery.getRootView().requestLayout();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    resolveIntent();
    mTabletMode = ActivityUtils.isTablet(mActivity);
    setHasOptionsMenu(true);
    paramBundle = mActivity;
    mAccountId = paramBundle.getIntent().getLongExtra("accountId", -1L);
    if (mAccountId < 1L) {
      mAccountId = getAccountInfoaccountId;
    }
    mApp = TalkApp.getApplication(mActivity);
    mTargetContact = StringUtils.parseBareAddress(mActivity.getIntent().getStringExtra("from"));
    mCreated = true;
  }
  
  public void onCreateOptionsMenu(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    paramMenuInflater.inflate(2131689476, paramMenu);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    if (mTabletMode)
    {
      mRoot = paramLayoutInflater.inflate(2130968595, paramViewGroup, false);
      setupInputFieldAndSendButton(mRoot.findViewById(2131755084));
      setupMessageBar();
      paramLayoutInflater = (ViewGroup)mRoot.findViewById(2131755059);
      if (!mTabletMode) {
        break label112;
      }
    }
    label112:
    for (mGallery = new SimpleActiveChats(paramLayoutInflater);; mGallery = new ViewPagerActiveChats(paramLayoutInflater))
    {
      createChatList(mRoot);
      if (!isHidden()) {
        start();
      }
      return mRoot;
      mRoot = paramLayoutInflater.inflate(2130968596, paramViewGroup, false);
      break;
    }
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    foreachChat(new ViewRunnable()
    {
      public boolean run(View paramAnonymousView)
      {
        paramAnonymousView = ((ChatView)paramAnonymousView).getCursor();
        if (paramAnonymousView != null) {
          paramAnonymousView.close();
        }
        return true;
      }
    });
  }
  
  public void onHiddenChanged(boolean paramBoolean)
  {
    super.onHiddenChanged(paramBoolean);
    if (paramBoolean)
    {
      stop();
      if ((getActivity() != null) && (mChatInputField != null)) {
        hideKeyboard();
      }
    }
    for (;;)
    {
      if (mGallery != null) {
        mGallery.onHiddenChanged(paramBoolean);
      }
      return;
      start();
    }
  }
  
  public void onNewIntent(Intent paramIntent)
  {
    if (!isChatScreenIntent(paramIntent)) {
      return;
    }
    mActivity.setIntent(paramIntent);
    resolveIntent();
    mTargetContact = StringUtils.parseBareAddress(paramIntent.getStringExtra("from"));
    long l = paramIntent.getLongExtra("accountId", 0L);
    if (mAccountId != l)
    {
      if (l == 0L) {
        throw new IllegalStateException("got intent with account " + l + "; contact is " + mTargetContact);
      }
      mAccountId = l;
    }
    if (!mStarted)
    {
      mNeedToHandleNewIntent = true;
      return;
    }
    mNeedToHandleNewIntent = false;
    pickChat(mTargetContact, mAccountId);
    paramIntent = getActiveChat();
    if (paramIntent != null) {
      paramIntent.dismissChatNotification();
    }
    mCallStateClient.requestUpdate();
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    return mChatHost.handleMenuItem(getActiveChat(), paramMenuItem, paramMenuItem.getItemId());
  }
  
  public void onPause()
  {
    super.onPause();
    mContactIdMap.clear();
    foreachChat(new ViewRunnable()
    {
      public boolean run(View paramAnonymousView)
      {
        ((ChatView)paramAnonymousView).onActivityPause();
        return true;
      }
    });
  }
  
  public void onPrepareOptionsMenu(Menu paramMenu)
  {
    MenuItem localMenuItem1 = paramMenu.findItem(2131755197);
    Object localObject1 = paramMenu.findItem(2131755198);
    Object localObject2 = paramMenu.findItem(2131755097);
    MenuItem localMenuItem2 = paramMenu.findItem(2131755098);
    MenuItem localMenuItem3 = paramMenu.findItem(2131755101);
    MenuItem localMenuItem4 = paramMenu.findItem(2131755102);
    MenuItem localMenuItem5 = paramMenu.findItem(2131755199);
    MenuItem localMenuItem6 = paramMenu.findItem(2131755203);
    localMenuItem1.setVisible(false);
    ((MenuItem)localObject1).setVisible(false);
    ((MenuItem)localObject2).setVisible(false);
    localMenuItem2.setVisible(false);
    localMenuItem3.setVisible(false);
    localMenuItem4.setVisible(false);
    localMenuItem5.setVisible(false);
    localMenuItem6.setVisible(mGroupChatEnabled);
    localObject2 = getActiveChat();
    if (localObject2 == null) {
      return;
    }
    ChatView.VideoChatState localVideoChatState = ((ChatView)localObject2).getVideoChatState();
    int i = ((ChatView)localObject2).getCapabilities();
    boolean bool1 = ActivityUtils.isVideoChatCapable(i);
    boolean bool2 = ActivityUtils.isAudioChatCapable(i);
    switch (18.$SwitchMap$com$google$android$talk$ChatView$VideoChatState[localVideoChatState.ordinal()])
    {
    default: 
      label260:
      localMenuItem1 = paramMenu.findItem(2131755201);
      if (localMenuItem1 != null)
      {
        if (((ChatView)localObject2).isOffTheRecord())
        {
          i = 2131492941;
          label288:
          localMenuItem1.setTitle(i);
        }
      }
      else
      {
        enableOrDisable(paramMenu.findItem(2131755188), CallSession.AudioDevice.BLUETOOTH_HEADSET);
        enableOrDisable(paramMenu.findItem(2131755185), CallSession.AudioDevice.SPEAKERPHONE);
        enableOrDisable(paramMenu.findItem(2131755187), CallSession.AudioDevice.EARPIECE);
        enableOrDisable(paramMenu.findItem(2131755186), CallSession.AudioDevice.WIRED_HEADSET);
        localObject1 = ((ChatView)localObject2).getSelectedAudioDevice();
        localMenuItem1 = null;
        switch (localObject1)
        {
        default: 
          paramMenu = localMenuItem1;
        }
      }
      break;
    }
    while (paramMenu != null)
    {
      paramMenu.setCheckable(true);
      paramMenu.setChecked(true);
      return;
      if (bool1) {
        localMenuItem1.setVisible(true);
      }
      if (!bool2) {
        break label260;
      }
      ((MenuItem)localObject1).setVisible(true);
      break label260;
      localMenuItem4.setVisible(true);
      break label260;
      localMenuItem2.setVisible(true);
      if (localVideoChatState == ChatView.VideoChatState.VOICE_MUTED) {}
      for (bool1 = true;; bool1 = false)
      {
        configureMuteUnmuteButton(localMenuItem3, bool1);
        localMenuItem5.setVisible(true);
        localMenuItem6.setVisible(false);
        break;
      }
      i = 2131492942;
      break label288;
      paramMenu = paramMenu.findItem(2131755188);
      continue;
      paramMenu = paramMenu.findItem(2131755185);
      continue;
      paramMenu = paramMenu.findItem(2131755187);
      continue;
      paramMenu = paramMenu.findItem(2131755186);
    }
  }
  
  public void onResume()
  {
    super.onResume();
    foreachChat(new ViewRunnable()
    {
      public boolean run(View paramAnonymousView)
      {
        ((ChatView)paramAnonymousView).onActivityResume();
        return true;
      }
    });
    mChatInputField.clearFocus();
    mChatInputField.requestFocus();
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    mColorMaker.freeze(paramBundle);
    ChatView localChatView = getActiveChat();
    if (localChatView != null) {
      localChatView.saveState(paramBundle);
    }
  }
  
  public void onStart()
  {
    super.onStart();
    start();
  }
  
  public void onStop()
  {
    super.onStop();
    stop();
  }
  
  public void registerForServiceStateChanged()
  {
    mApp.addServiceAvailableCallback(mHandler, new ServiceAvailableRunnable()
    {
      public void run(IGTalkService paramAnonymousIGTalkService)
      {
        serviceStateChanged(paramAnonymousIGTalkService);
      }
    });
  }
  
  public void serviceStateChanged(IGTalkService paramIGTalkService)
  {
    if (paramIGTalkService != null)
    {
      synchronized (mWaitForServiceTasks)
      {
        mService = paramIGTalkService;
        paramIGTalkService = mWaitForServiceTasks.iterator();
        if (paramIGTalkService.hasNext()) {
          ((Runnable)paramIGTalkService.next()).run();
        }
      }
      mWaitForServiceTasks.clear();
      foreachChat(new ViewRunnable()
      {
        public boolean run(View paramAnonymousView)
        {
          paramAnonymousView = (ChatView)paramAnonymousView;
          if (paramAnonymousView != null)
          {
            ChatScreenFragment.this.checkChatSession(paramAnonymousView.getContact(), paramAnonymousView.getAccountId(), false);
            if (!paramAnonymousView.initSession(false))
            {
              Log.e("talk", "initSession failed. Finish!");
              ActivityUtils.showLandingPage(mActivity);
              return false;
            }
          }
          return true;
        }
      });
      paramIGTalkService = getActiveChat();
      if (paramIGTalkService != null)
      {
        paramIGTalkService.addInvitationListener();
        paramIGTalkService.handleUnreadMessages(true);
      }
      if (mFromStatusBarNotify)
      {
        mFromStatusBarNotify = false;
        if (paramIGTalkService == null) {
          break label129;
        }
      }
      label129:
      for (long l = paramIGTalkService.getAccountId();; l = mAccountId)
      {
        dismissAllChatNotifications(l);
        return;
      }
    }
    Log.w("talk", "serviceStateChanged: service disconnected, finish!");
    AccountSelectionActivity.startAccountSelectionActivity(mActivity);
  }
  
  public void setupInputFieldAndSendButton(View paramView)
  {
    mInputContainer = paramView;
    mSendButton = mInputContainer.findViewById(2131755086);
    mChatInputField = ((EditText)mInputContainer.findViewById(2131755085));
    mColorMaker = new ChatColorMaker(0, mChatInputField.getLinkTextColors().getDefaultColor());
    mSendButton.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        if (paramAnonymousView.getId() == 2131755086) {
          ChatScreenFragment.this.sendMessage();
        }
      }
    });
    mChatInputField.setOnEditorActionListener(new TextView.OnEditorActionListener()
    {
      public boolean onEditorAction(TextView paramAnonymousTextView, int paramAnonymousInt, KeyEvent paramAnonymousKeyEvent)
      {
        if ((paramAnonymousKeyEvent != null) && (paramAnonymousKeyEvent.isAltPressed())) {
          return false;
        }
        ChatScreenFragment.this.sendMessage();
        return true;
      }
    });
    mChatInputField.addTextChangedListener(new TextWatcher()
    {
      public void afterTextChanged(Editable paramAnonymousEditable)
      {
        View localView = mSendButton;
        if (paramAnonymousEditable.length() > 0) {}
        for (boolean bool = true;; bool = false)
        {
          localView.setEnabled(bool);
          return;
        }
      }
      
      public void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
      
      public void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
    });
    mChatInputField.setEnabled(false);
    mChatInputField.addTextChangedListener(new TextWatcher()
    {
      public void afterTextChanged(Editable paramAnonymousEditable) {}
      
      public void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
      
      public void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
      {
        ChatScreenFragment.this.userActionDetected();
      }
    });
    if (!isHidden()) {
      mChatInputField.requestFocus();
    }
    paramView = mChatInputField.getText();
    ((Spannable)paramView).setSpan(this, 0, paramView.length(), 18);
    paramView = mSendButton;
    if (mChatInputField.getText().length() > 0) {}
    for (boolean bool = true;; bool = false)
    {
      paramView.setEnabled(bool);
      return;
    }
  }
  
  public void stop()
  {
    if (!mStarted) {
      return;
    }
    mStarted = false;
    mGallery.stop();
    mChatList.closeCursor();
    mGallery.setAdapter(null);
    unregisterForServiceStateChanged();
    mService = null;
    mCallStateClient.stopListening();
    hideKeyboard();
  }
  
  public void switchAccounts()
  {
    if (!mCreated)
    {
      log("switchAccounts: fragment's onCreate not called yet");
      return;
    }
    stop();
    mTargetContact = StringUtils.parseBareAddress(getActivity().getIntent().getStringExtra("from"));
    if (mActivity == null)
    {
      log("switchAccounts: mActivity is NULL");
      return;
    }
    mActivity.getIntent();
    mAccountId = mActivity).getAccountInfo().accountId;
    if (mChatList != null) {
      mChatList.changeAccount(mAccountId);
    }
    start();
  }
  
  public void toggleOtr()
  {
    ChatView localChatView = getActiveChat();
    if (localChatView != null) {
      if (localChatView.isOffTheRecord()) {
        break label24;
      }
    }
    label24:
    for (boolean bool = true;; bool = false)
    {
      localChatView.goOffTheRecord(bool);
      return;
    }
  }
  
  public void unregisterForServiceStateChanged()
  {
    mApp.removeServiceAvailableCallback(mHandler);
  }
  
  public void updateTitle(View paramView)
  {
    if (!(paramView instanceof ChatView)) {
      return;
    }
    ChatView localChatView = (ChatView)paramView;
    if (localChatView == null)
    {
      setTitle("", "", "", -1, -1, 0);
      return;
    }
    if (localChatView.isGroupChat())
    {
      paramView = mResources.getString(2131492921);
      setTitle(localChatView.getNickname(), paramView, null, -1, -1, 0);
      return;
    }
    localChatView.getNickname();
    int i = localChatView.getStatus();
    int j = localChatView.getCapabilities();
    int k = localChatView.getClientType();
    String str = localChatView.getContact();
    paramView = str;
    if (mApp.shouldHideRemoteJid(str)) {
      paramView = "";
    }
    setTitle(paramView, localChatView.getNickname(), localChatView.getCustomStatus(), k, i, j);
  }
  
  private static abstract interface ActiveChats
  {
    public abstract void foreachChatView(ChatScreenFragment.ViewRunnable paramViewRunnable);
    
    public abstract View getRootView();
    
    public abstract ChatView getSelectedChatView();
    
    public abstract int getSelectedItemPosition();
    
    public abstract void onHiddenChanged(boolean paramBoolean);
    
    public abstract void selectNext(boolean paramBoolean, Runnable paramRunnable);
    
    public abstract void setAdapter(ChatScreenFragment.GalleryAdapter paramGalleryAdapter);
    
    public abstract void setSelection(int paramInt);
    
    public abstract void stop();
  }
  
  public static abstract interface ChatHost
  {
    public abstract void cacheContactId(String paramString, long paramLong);
    
    public abstract void convertedToGroupChat(ChatView paramChatView, String paramString);
    
    public abstract long getCachedContactId(String paramString);
    
    public abstract View getMessageBar();
    
    public abstract boolean handleMenuItem(ChatView paramChatView, MenuItem paramMenuItem, int paramInt);
    
    public abstract void invalidateImSession();
    
    public abstract void startActivityForResult(Intent paramIntent, int paramInt);
    
    public abstract boolean startVideoChatAnimation();
    
    public abstract void update(View paramView);
    
    public abstract void willConvertToGroupChat(ChatView paramChatView, String paramString);
  }
  
  public static abstract interface ChatScreenHost
  {
    public abstract ChatScreenFragment.Controller getChatScreenController();
  }
  
  public static abstract interface Controller
  {
    public abstract void onLastChatClosed();
    
    public abstract void onShowContactInfo(BuddyListFragment.ListItemInfo paramListItemInfo);
    
    public abstract boolean onVideoChatStarted();
    
    public abstract void setTitle(CharSequence paramCharSequence1, CharSequence paramCharSequence2, CharSequence paramCharSequence3, int paramInt1, int paramInt2, Drawable paramDrawable);
    
    public abstract void updateOtrStatus(boolean paramBoolean);
  }
  
  class GalleryAdapter
  {
    ChatList mLocalChatList;
    
    public GalleryAdapter(ChatList paramChatList)
    {
      mLocalChatList = paramChatList;
    }
    
    public Intent getIntent(int paramInt)
    {
      mLocalChatList.moveToPosition(paramInt);
      return mLocalChatList.getIntent();
    }
  }
  
  static class GroupChatConverted
    extends IChatListener.Stub
  {
    long mAccountId;
    Activity mActivity;
    IChatSession mChatSession;
    ChatScreenFragment mFragment;
    
    public GroupChatConverted(ChatScreenFragment paramChatScreenFragment, Activity paramActivity, IChatSession paramIChatSession, long paramLong)
    {
      mFragment = paramChatScreenFragment;
      mActivity = paramActivity;
      mChatSession = paramIChatSession;
      mAccountId = paramLong;
    }
    
    public void callEnded() {}
    
    public void chatClosed(String paramString) {}
    
    public void chatRead(String paramString) {}
    
    public void clearRefs()
    {
      mFragment = null;
      mActivity = null;
      mChatSession = null;
    }
    
    public void convertedToGroupChat(String paramString1, final String paramString2, final long paramLong)
    {
      ChatScreenFragment localChatScreenFragment1 = mFragment;
      Activity localActivity = mActivity;
      if ((localChatScreenFragment1 == null) || (localActivity == null)) {}
      while (!mInvitePending) {
        return;
      }
      localChatScreenFragment1.log("convertedToGroupChat: " + paramString1 + " ==> " + paramString2);
      final ChatScreenFragment localChatScreenFragment2 = mFragment;
      paramLong = mAccountId;
      if ((localChatScreenFragment2 != null) && (mActivity != null)) {
        localActivity.runOnUiThread(new Runnable()
        {
          public void run()
          {
            try
            {
              IChatSession localIChatSession = val$service.getImSessionForAccountId(paramLong).getChatSession(localChatScreenFragment2);
              if (localIChatSession != null) {
                localIChatSession.leave();
              }
            }
            catch (RemoteException localRemoteException)
            {
              for (;;) {}
            }
            paramString2mChatList.resumeRequery();
            paramString2.pickChat(val$groupChatRoom, paramLong);
          }
        });
      }
      ChatScreenFragment.access$3102(localChatScreenFragment1, false);
      try
      {
        mChatSession.removeRemoteChatListener(this);
        clearRefs();
        return;
      }
      catch (RemoteException paramString1) {}
    }
    
    public void missedCall() {}
    
    public void newMessageReceived(String paramString1, String paramString2, boolean paramBoolean) {}
    
    public void newMessageSent(String paramString) {}
    
    public void participantJoined(String paramString1, String paramString2) {}
    
    public void participantLeft(String paramString1, String paramString2) {}
    
    public boolean useLightweightNotify()
    {
      return false;
    }
    
    public void willConvertToGroupChat(String paramString1, String paramString2, long paramLong) {}
  }
  
  private class SimpleActiveChats
    implements ChatScreenFragment.ActiveChats
  {
    ViewGroup mChatRoot;
    ChatView mChatView1;
    ChatView mChatView2;
    ChatScreenFragment.GalleryAdapter mGalleryAdapter;
    boolean mInitialized1;
    boolean mInitialized2;
    LayoutTransition mLayoutTransition;
    int mSelectedItemPosition = -1;
    boolean oneIsTop;
    
    public SimpleActiveChats(ViewGroup paramViewGroup)
    {
      mChatRoot = paramViewGroup;
      mChatView1 = ((ChatView)paramViewGroup.findViewById(2131755061));
      mChatView2 = ((ChatView)paramViewGroup.findViewById(2131755062));
      mChatView1.setup(null, mChatHost);
      mChatView2.setup(null, mChatHost);
      mLayoutTransition = new LayoutTransition();
      mLayoutTransition.setAnimator(0, null);
      mLayoutTransition.setAnimator(1, null);
      mLayoutTransition.setDuration(2, 220L);
      mLayoutTransition.setDuration(3, 150L);
      mLayoutTransition.setStartDelay(2, 0L);
      mLayoutTransition.setStartDelay(3, 0L);
      mLayoutTransition.setInterpolator(2, new AccelerateInterpolator(1.5F));
      mLayoutTransition.setInterpolator(3, new AccelerateInterpolator(1.5F));
      mChatRoot.setLayoutTransition(mLayoutTransition);
    }
    
    private boolean checkMatch(ChatView paramChatView, Intent paramIntent)
    {
      boolean bool = false;
      if (paramChatView.matchBuddy(paramIntent))
      {
        if (mStartVoiceChatRequest)
        {
          ChatScreenFragment.access$602(ChatScreenFragment.this, false);
          paramChatView.startVoiceChat();
        }
        bool = true;
      }
      return bool;
    }
    
    public void foreachChatView(ChatScreenFragment.ViewRunnable paramViewRunnable)
    {
      if (mInitialized1) {
        paramViewRunnable.run(mChatView1);
      }
      if (mInitialized2) {
        paramViewRunnable.run(mChatView2);
      }
    }
    
    public View getRootView()
    {
      return mChatRoot;
    }
    
    public ChatView getSelectedChatView()
    {
      ChatView localChatView = null;
      if (oneIsTop) {
        if (mInitialized1) {
          localChatView = mChatView1;
        }
      }
      while (!mInitialized2) {
        return localChatView;
      }
      return mChatView2;
    }
    
    public int getSelectedItemPosition()
    {
      return mSelectedItemPosition;
    }
    
    public void onHiddenChanged(boolean paramBoolean)
    {
      if (paramBoolean) {
        stop();
      }
    }
    
    public void selectNext(boolean paramBoolean, Runnable paramRunnable)
    {
      throw new UnsupportedOperationException();
    }
    
    public void setAdapter(ChatScreenFragment.GalleryAdapter paramGalleryAdapter)
    {
      mSelectedItemPosition = -1;
      mGalleryAdapter = paramGalleryAdapter;
    }
    
    public void setSelection(int paramInt)
    {
      boolean bool = false;
      if (paramInt == mSelectedItemPosition) {
        return;
      }
      Intent localIntent = mGalleryAdapter.getIntent(paramInt);
      if (oneIsTop)
      {
        if ((mInitialized1) && (checkMatch(mChatView1, localIntent))) {
          mSelectedItemPosition = paramInt;
        }
      }
      else if ((mInitialized2) && (checkMatch(mChatView2, localIntent)))
      {
        mSelectedItemPosition = paramInt;
        return;
      }
      mSelectedItemPosition = paramInt;
      if (mInitialized1)
      {
        mChatView1.saveUnsentComposedMessage(mChatInputField);
        mChatView1.onStop();
        mInitialized1 = false;
      }
      if (mInitialized2)
      {
        mChatView2.saveUnsentComposedMessage(mChatInputField);
        mChatView2.onStop();
        mInitialized2 = false;
      }
      ChatView localChatView1;
      ChatView localChatView2;
      if (oneIsTop)
      {
        localChatView1 = mChatView1;
        if (!oneIsTop) {
          break label377;
        }
        localChatView2 = mChatView2;
        label176:
        localChatView2.initialize(localIntent, mChatList, null, getActivity());
        if ((mStartVoiceChatRequest) && (localChatView2.getContact().equals(mTargetContact)))
        {
          localChatView2.setStartVoiceChatOnFirstDisplay(true);
          ChatScreenFragment.access$602(ChatScreenFragment.this, false);
        }
        localChatView2.restoreUnsentComposedMessage(mChatInputField);
        localChatView2.focus();
        localChatView2.setVisibility(0);
        localChatView1.setVisibility(8);
        if (!oneIsTop) {
          bool = true;
        }
        oneIsTop = bool;
        if (!oneIsTop) {
          break label386;
        }
        mInitialized1 = true;
      }
      for (;;)
      {
        ChatScreenFragment.this.log("setSelection: pos=" + paramInt + ", oneIsTop=" + oneIsTop + ", v1=" + mInitialized1 + ", v2=" + mInitialized2);
        mCallStateClient.requestUpdate();
        return;
        localChatView1 = mChatView2;
        break;
        label377:
        localChatView2 = mChatView1;
        break label176;
        label386:
        mInitialized2 = true;
      }
    }
    
    public void stop()
    {
      mSelectedItemPosition = -1;
      if (mInitialized1)
      {
        mChatView1.saveUnsentComposedMessage(mChatInputField);
        mChatView1.onStop();
        mChatView1.setVisibility(8);
        mInitialized1 = false;
      }
      if (mInitialized2)
      {
        mChatView2.saveUnsentComposedMessage(mChatInputField);
        mChatView2.onStop();
        mChatView2.setVisibility(8);
        mInitialized2 = false;
      }
      ChatScreenFragment.this.log("stop: mInitialized1=" + mInitialized1 + ", mInitialized2=" + mInitialized2);
    }
  }
  
  private class ViewPagerActiveChats
    implements ChatScreenFragment.ActiveChats
  {
    private HashMap<Object, ChatView> mChatsMapping = new HashMap();
    Runnable mOnDone;
    private PagerAdapter mPageAdapter = new PagerAdapter()
    {
      ChatView mRecycledChatView;
      
      public void destroyItem(View paramAnonymousView, int paramAnonymousInt, Object paramAnonymousObject)
      {
        paramAnonymousView = (String)paramAnonymousObject;
        paramAnonymousObject = (ChatView)mChatsMapping.get(paramAnonymousObject);
        mChatsMapping.remove(paramAnonymousView);
        ((ViewGroup)((ChatView)paramAnonymousObject).getParent()).removeView((View)paramAnonymousObject);
        ((ChatView)paramAnonymousObject).unfocus();
        ((ChatView)paramAnonymousObject).onStop();
        mRecycledChatView = ((ChatView)paramAnonymousObject);
      }
      
      public void finishUpdate(View paramAnonymousView) {}
      
      public int getCount()
      {
        if (mViewPagerChatList != null) {
          return mViewPagerChatList.getCount();
        }
        return 0;
      }
      
      public int getItemPosition(Object paramAnonymousObject)
      {
        paramAnonymousObject = (String)paramAnonymousObject;
        int j = mViewPagerChatList.getCount();
        int i = 0;
        while (i < j)
        {
          mViewPagerChatList.moveToPosition(i);
          if (TextUtils.equals(mViewPagerChatList.getUsername(), (CharSequence)paramAnonymousObject)) {
            return i;
          }
          i += 1;
        }
        return -2;
      }
      
      public CharSequence getPageTitle(int paramAnonymousInt)
      {
        String str = "";
        if (mChatList.getCount() > paramAnonymousInt)
        {
          mChatList.moveToPosition(paramAnonymousInt);
          str = ChatScreenFragment.this.hintValue(mChatList);
        }
        return str;
      }
      
      public Object instantiateItem(View paramAnonymousView, int paramAnonymousInt)
      {
        mViewPagerChatList.moveToPosition(paramAnonymousInt);
        Intent localIntent = mViewPagerChatList.getIntent();
        ChatView localChatView2 = mRecycledChatView;
        mRecycledChatView = null;
        ChatView localChatView1 = localChatView2;
        if (localChatView2 == null) {
          localChatView1 = new ChatView(mActivity, new ViewGroup.LayoutParams(-1, -1), mChatHost);
        }
        localChatView1.initialize(localIntent, mViewPagerChatList, null, mActivity);
        localChatView1.setCallStateClient(mCallStateClient);
        ((ViewGroup)paramAnonymousView).addView(localChatView1);
        paramAnonymousView = localChatView1.getContact();
        mChatsMapping.put(paramAnonymousView, localChatView1);
        return paramAnonymousView;
      }
      
      public boolean isViewFromObject(View paramAnonymousView, Object paramAnonymousObject)
      {
        return mChatsMapping.get(paramAnonymousObject) == paramAnonymousView;
      }
      
      public void restoreState(Parcelable paramAnonymousParcelable, ClassLoader paramAnonymousClassLoader) {}
      
      public Parcelable saveState()
      {
        return null;
      }
      
      public void startUpdate(View paramAnonymousView) {}
    };
    private LocalOnPageChangeListener mPageListener = new LocalOnPageChangeListener(null);
    private ViewPager mViewPager;
    private ChatList mViewPagerChatList;
    
    public ViewPagerActiveChats(ViewGroup paramViewGroup)
    {
      mViewPager = ((ViewPager)paramViewGroup.findViewById(2131755063));
      mViewPager.setVisibility(0);
      mViewPager.setPageMargin(getResources().getDimensionPixelSize(2131427397));
    }
    
    public void foreachChatView(ChatScreenFragment.ViewRunnable paramViewRunnable)
    {
      Iterator localIterator = mChatsMapping.values().iterator();
      while (localIterator.hasNext()) {
        paramViewRunnable.run((ChatView)localIterator.next());
      }
    }
    
    public View getRootView()
    {
      return mViewPager;
    }
    
    public ChatView getSelectedChatView()
    {
      if (mViewPagerChatList == null) {
        return null;
      }
      mViewPagerChatList.moveToPosition(getSelectedItemPosition());
      String str = mViewPagerChatList.getUsername();
      Iterator localIterator = mChatsMapping.values().iterator();
      while (localIterator.hasNext())
      {
        ChatView localChatView = (ChatView)localIterator.next();
        if (TextUtils.equals(str, localChatView.getContact())) {
          return localChatView;
        }
      }
      return null;
    }
    
    public int getSelectedItemPosition()
    {
      return mViewPager.getCurrentItem();
    }
    
    public void onHiddenChanged(boolean paramBoolean)
    {
      if (paramBoolean) {
        stop();
      }
    }
    
    public void selectNext(boolean paramBoolean, Runnable paramRunnable)
    {
      mOnDone = paramRunnable;
      paramRunnable = mViewPager;
      int j = getSelectedItemPosition();
      if (paramBoolean) {}
      for (int i = 1;; i = -1)
      {
        paramRunnable.setCurrentItem(i + j);
        return;
      }
    }
    
    public void setAdapter(ChatScreenFragment.GalleryAdapter paramGalleryAdapter)
    {
      if (paramGalleryAdapter == null)
      {
        mViewPagerChatList = null;
        mViewPager.setOnPageChangeListener(null);
        mViewPager.setAdapter(null);
      }
      for (;;)
      {
        paramGalleryAdapter = getActivity();
        if (paramGalleryAdapter != null) {
          paramGalleryAdapter.invalidateOptionsMenu();
        }
        return;
        mViewPagerChatList = mLocalChatList;
        mViewPager.setOnPageChangeListener(mPageListener);
        paramGalleryAdapter = mViewPager.getAdapter();
        if (paramGalleryAdapter != null) {
          paramGalleryAdapter.notifyDataSetChanged();
        } else {
          mViewPager.setAdapter(mPageAdapter);
        }
      }
    }
    
    public void setSelection(int paramInt)
    {
      int i = 0;
      int j = mViewPager.getCurrentItem();
      mViewPager.setCurrentItem(paramInt, false);
      if (j == paramInt) {
        mPageListener.onPageSelected(paramInt);
      }
      View localView = mViewPager.findViewById(2131755064);
      paramInt = i;
      if (mViewPagerChatList.getCount() == 1) {
        paramInt = 8;
      }
      localView.setVisibility(paramInt);
    }
    
    public void stop() {}
    
    private class LocalOnPageChangeListener
      implements ViewPager.OnPageChangeListener
    {
      private LocalOnPageChangeListener() {}
      
      public void onPageScrollStateChanged(int paramInt) {}
      
      public void onPageScrolled(int paramInt1, float paramFloat, int paramInt2) {}
      
      public void onPageSelected(int paramInt)
      {
        mViewPagerChatList.moveToPosition(paramInt);
        Object localObject = mViewPagerChatList.getIntent();
        if (localObject == null) {}
        do
        {
          return;
          mActivity.setIntent((Intent)localObject);
          ChatScreenFragment.access$302(ChatScreenFragment.this, StringUtils.parseBareAddress(((Intent)localObject).getStringExtra("from")));
          localObject = getSelectedChatView();
          Iterator localIterator = mChatsMapping.values().iterator();
          while (localIterator.hasNext())
          {
            ChatView localChatView = (ChatView)localIterator.next();
            if (localChatView != localObject) {
              localChatView.unfocus();
            }
          }
          if (localObject != null)
          {
            if (((ChatView)localObject).getSession() == null) {
              ChatScreenFragment.this.checkChatSession(((ChatView)localObject).getContact(), ((ChatView)localObject).getAccountId(), false);
            }
            ((ChatView)localObject).initSession(false);
            if (mStartVoiceChatRequest)
            {
              ((ChatView)localObject).setStartVoiceChatOnFirstDisplay(true);
              ChatScreenFragment.access$602(ChatScreenFragment.this, false);
            }
            ((ChatView)localObject).focus();
          }
        } while (mOnDone == null);
        mOnDone.run();
        mOnDone = null;
      }
    }
  }
  
  private static abstract interface ViewRunnable
  {
    public abstract boolean run(View paramView);
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.fragments.ChatScreenFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */