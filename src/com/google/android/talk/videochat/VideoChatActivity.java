package com.google.android.talk.videochat;

import android.app.ActionBar;
import android.app.Activity;
import android.app.ProgressDialog;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.RemoteException;
import android.os.SystemClock;
import android.provider.MediaStore.Video.Media;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnLayoutChangeListener;
import android.view.View.OnTouchListener;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.Button;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ListAdapter;
import android.widget.PopupMenu;
import android.widget.PopupMenu.OnDismissListener;
import android.widget.PopupMenu.OnMenuItemClickListener;
import android.widget.PopupWindow;
import android.widget.PopupWindow.OnDismissListener;
import android.widget.ProgressBar;
import android.widget.SimpleAdapter;
import android.widget.SimpleAdapter.ViewBinder;
import android.widget.Switch;
import android.widget.TextView;
import com.google.android.gsf.TalkContract.AccountSettings.QueryMap;
import com.google.android.gsf.TalkContract.Messages;
import com.google.android.gtalkservice.IChatListener.Stub;
import com.google.android.gtalkservice.IChatSession;
import com.google.android.gtalkservice.IGTalkService;
import com.google.android.gtalkservice.IGTalkService.Stub;
import com.google.android.gtalkservice.IImSession;
import com.google.android.talk.BluetoothButton;
import com.google.android.talk.BuddyListCombo;
import com.google.android.talk.ContactInfoQuery;
import com.google.android.talk.ContactInfoQuery.ContactInfoQueryCallback;
import com.google.android.talk.DatabaseUtils;
import com.google.android.talk.FeatureManager;
import com.google.android.talk.SettingsCache;
import com.google.android.talk.StringUtils;
import com.google.android.talk.TalkApp;
import com.google.android.videochat.CallSession;
import com.google.android.videochat.CallSession.AudioDevice;
import com.google.android.videochat.CallState;
import com.google.android.videochat.CallState.AudioDeviceState;
import com.google.android.videochat.CallStateClient;
import com.google.android.videochat.CameraInterface;
import com.google.android.videochat.CameraSpecification;
import com.google.android.videochat.RemoteRenderer;
import com.google.android.videochat.SelfRenderer;
import com.google.android.videochat.VideoChatService.HardBinder;
import com.google.android.videochat.VideoChatServiceBinder;
import com.google.android.videochat.VideoChatServiceBinder.ServiceBoundCallback;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Queue;
import java.util.Set;

public class VideoChatActivity
  extends Activity
{
  private static final ChatListener sChatListener = new ChatListener(null);
  private Runnable dismissTextOverlayRunnable = new Runnable()
  {
    public void run()
    {
      if (mTextOverlay.getVisibility() != 8) {
        VideoChatActivity.this.startTextOverlayFadeOut();
      }
    }
  };
  private long mAccountId;
  private ActionBar mActionBar;
  private View mActionBarResetISButton;
  private CallState.AudioDeviceState mAudioDeviceState = CallState.AudioDeviceState.SPEAKERPHONE_ON;
  private Set<CallSession.AudioDevice> mAvailableAudioDevices = new HashSet();
  ContactInfoQuery mAvatarQuery;
  private CompoundImageView mBgReplacementActionView;
  private Object mBindRendererLock = new Object();
  private BluetoothButton mBluetoothButton;
  private View.OnClickListener mBluetoothHandler = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      PopupMenu localPopupMenu = new PopupMenu(VideoChatActivity.this, paramAnonymousView);
      Menu localMenu = localPopupMenu.getMenu();
      localPopupMenu.getMenuInflater().inflate(2131689473, localMenu);
      switch (VideoChatActivity.16.$SwitchMap$com$google$android$videochat$CallState$AudioDeviceState[mAudioDeviceState.ordinal()])
      {
      case 4: 
      default: 
        paramAnonymousView = CallSession.AudioDevice.SPEAKERPHONE;
      }
      for (;;)
      {
        VideoChatActivity.this.setupMenuItem(localMenu, 2131755185, CallSession.AudioDevice.SPEAKERPHONE, paramAnonymousView);
        VideoChatActivity.this.setupMenuItem(localMenu, 2131755186, CallSession.AudioDevice.WIRED_HEADSET, paramAnonymousView);
        VideoChatActivity.this.setupMenuItem(localMenu, 2131755187, CallSession.AudioDevice.EARPIECE, paramAnonymousView);
        VideoChatActivity.this.setupMenuItem(localMenu, 2131755188, CallSession.AudioDevice.BLUETOOTH_HEADSET, paramAnonymousView);
        localPopupMenu.setOnDismissListener(new PopupMenu.OnDismissListener()
        {
          public void onDismiss(PopupMenu paramAnonymous2PopupMenu)
          {
            VideoChatActivity.this.resetButtonPanelFadeOutCountdown();
          }
        });
        localPopupMenu.setOnMenuItemClickListener(new PopupMenu.OnMenuItemClickListener()
        {
          public boolean onMenuItemClick(MenuItem paramAnonymous2MenuItem)
          {
            switch (paramAnonymous2MenuItem.getItemId())
            {
            }
            for (;;)
            {
              VideoChatActivity.this.resetButtonPanelFadeOutCountdown();
              return true;
              mCallSession.setAudioDevice(CallSession.AudioDevice.SPEAKERPHONE);
              continue;
              mCallSession.setAudioDevice(CallSession.AudioDevice.WIRED_HEADSET);
              continue;
              mCallSession.setAudioDevice(CallSession.AudioDevice.EARPIECE);
              continue;
              mCallSession.setAudioDevice(CallSession.AudioDevice.BLUETOOTH_HEADSET);
            }
          }
        });
        localPopupMenu.show();
        VideoChatActivity.this.removePendingDismissButtonPanelRunnable();
        return;
        paramAnonymousView = CallSession.AudioDevice.BLUETOOTH_HEADSET;
        continue;
        paramAnonymousView = CallSession.AudioDevice.EARPIECE;
        continue;
        paramAnonymousView = CallSession.AudioDevice.WIRED_HEADSET;
      }
    }
  };
  private CallSession mCallSession;
  private int mCallState;
  private LocalCallStateClient mCallStateClient;
  private CameraTracker mCameraTracker;
  private IChatSession mChatSession;
  Runnable mConnectCallTask = new Runnable()
  {
    public void run()
    {
      if ("initiate".equals(mIntentAction)) {
        VideoChatActivity.this.makeCall();
      }
      for (;;)
      {
        VideoChatActivity.access$5302(VideoChatActivity.this, false);
        return;
        VideoChatActivity.this.connectToExistingCall();
      }
    }
  };
  private int mConnectRetryCount = 0;
  private Runnable mConnectToExistingCallRunnable = new Runnable()
  {
    public void run()
    {
      VideoChatActivity.this.connectToExistingCall();
    }
  };
  private ProgressBar mConnectingProgressBar;
  private View mConnectingStatus;
  private TextView mConnectingStatusTextSimple;
  private Effect mCurrentEffect;
  private Effect mDeferredEffect = null;
  private Runnable mDismissButtonPanelRunnable = new Runnable()
  {
    public void run()
    {
      if ((mActionBar.isShowing()) && (!VideoChatActivity.SpecialEffectManager.access$200(mSpecialEffectManager))) {
        VideoChatActivity.this.hideButtonPanel();
      }
    }
  };
  private final Object mEffectsLock = new Object();
  private CompoundImageView mEnterEffectsActionView;
  private Animation mFadeInLong;
  private Animation mFadeInMedium;
  private Animation mFadeOutLong;
  private Animation mFadeOutMedium;
  private View mFadedEndButton;
  private boolean mFirstFrame;
  private final Object mFirstFrameLock = new Object();
  private GlView mGlView;
  private GlView.GlViewInitializedCallback mGlViewInitializedCallback = new GlView.GlViewInitializedCallback()
  {
    public void complete()
    {
      VideoChatActivity.this.log("glVideoView complete()");
      synchronized (mBindRendererLock)
      {
        RemoteRenderer localRemoteRenderer = mGlView.getRemoteRenderer();
        if (mRemoteRenderer != localRemoteRenderer)
        {
          if (mRemoteRenderer != null) {
            TalkApp.LOGW("talk", "[VideoChatActivity] overriding existing remote renderer " + mRemoteRenderer);
          }
          VideoChatActivity.access$4702(VideoChatActivity.this, localRemoteRenderer);
          VideoChatActivity.access$4802(VideoChatActivity.this, false);
        }
        VideoChatActivity.this.bindRendererIfReady();
        return;
      }
    }
  };
  private CompoundImageView mGoofyFaceActionView;
  private ServiceConnection mGtalkServiceConnection = new ServiceConnection()
  {
    public void onServiceConnected(ComponentName paramAnonymousComponentName, IBinder paramAnonymousIBinder)
    {
      paramAnonymousComponentName = IGTalkService.Stub.asInterface(paramAnonymousIBinder);
      try
      {
        paramAnonymousComponentName = paramAnonymousComponentName.getImSessionForAccountId(mAccountId);
        VideoChatActivity.access$5502(VideoChatActivity.this, paramAnonymousComponentName.getChatSession(mRemoteBareJid));
        if (mChatSession == null) {
          VideoChatActivity.access$5502(VideoChatActivity.this, paramAnonymousComponentName.createChatSession(mRemoteBareJid));
        }
        mChatSession.addRemoteChatListener(VideoChatActivity.sChatListener);
        return;
      }
      catch (RemoteException paramAnonymousComponentName)
      {
        VideoChatActivity.this.log("Problem getting ChatSession " + paramAnonymousComponentName);
      }
    }
    
    public void onServiceDisconnected(ComponentName paramAnonymousComponentName) {}
  };
  private final Handler mHandler = new Handler();
  GlView.InitialCameraFrameCallback mInitialCameraFrameCallback = new GlView.InitialCameraFrameCallback()
  {
    public void onInitialFrame()
    {
      synchronized (mFirstFrameLock)
      {
        VideoChatActivity.access$502(VideoChatActivity.this, true);
        if (mVideoState != mCallState) {
          mHandler.post(new Runnable()
          {
            public void run()
            {
              VideoChatActivity.this.transitionVideoState(mVideoState, mCallState);
            }
          });
        }
        return;
      }
    }
  };
  private boolean mInitialized;
  private String mIntentAction;
  private boolean mIsMuted;
  private boolean mIsRendererBound = false;
  private ImageView mMuteButton;
  private View mNormalModeActionBarCustomView;
  private int mOnSaveInstanceStateCallStateCopy;
  private boolean mPaused = true;
  private Queue<ChatMessage> mRecentChatMessageQueue = new LinkedList();
  private boolean mReevaluateCallState;
  private String mRemoteBareJid;
  private String mRemoteJid;
  private RemoteRenderer mRemoteRenderer;
  private boolean mSecureState;
  private Runnable mSessionReadyTask;
  private SpecialEffectManager mSpecialEffectManager = new SpecialEffectManager();
  private CompoundImageView mStabilizationActionView;
  private boolean mStopped = true;
  private LinearLayout mTextOverlay;
  private VideoChatServiceBinder mVcBinder;
  private CompoundImageView mVcoActionView;
  private int mVideoFadeInAnimationDuration;
  private int mVideoState;
  
  private void addRemoteChatListener()
  {
    bindService(new Intent(IGTalkService.class.getName()), mGtalkServiceConnection, 0);
  }
  
  private void bindRecentMessages()
  {
    for (;;)
    {
      synchronized (mRecentChatMessageQueue)
      {
        mTextOverlay.removeAllViews();
        int i = 1;
        Iterator localIterator = mRecentChatMessageQueue.iterator();
        if (!localIterator.hasNext()) {
          break;
        }
        ChatMessage localChatMessage = (ChatMessage)localIterator.next();
        if (i != 0)
        {
          i = 0;
          TextView localTextView = (TextView)getLayoutInflater().inflate(2130968658, null);
          localTextView.setText(mMessage);
          mTextOverlay.addView(localTextView);
        }
      }
      mTextOverlay.addView(getLayoutInflater().inflate(2130968657, null));
    }
  }
  
  private void bindRendererIfReady()
  {
    synchronized (mBindRendererLock)
    {
      boolean bool = inCall();
      if ((!mIsRendererBound) && (mCallSession != null) && (bool) && (mRemoteRenderer != null))
      {
        mCallSession.bindRenderer(0, mRemoteRenderer);
        mIsRendererBound = true;
      }
      while (!TalkApp.debugLoggable()) {
        return;
      }
      log("Not binding renderer yet because mIsRendererBound=" + mIsRendererBound + ", mCallSession=" + mCallSession + ", inCall=" + bool + ", mRemoteRenderer=" + mRemoteRenderer);
    }
  }
  
  private void connectToExistingCall()
  {
    if ((initiatingCall()) || (inCall())) {
      return;
    }
    if (mConnectRetryCount < 10)
    {
      log("No call to connect to. Retrying.");
      mHandler.postDelayed(mConnectToExistingCallRunnable, 500L);
      mConnectRetryCount += 1;
      return;
    }
    log("No call to connect to. Finishing activity.");
    finishActivity();
  }
  
  private void endCall()
  {
    log("terminated call for " + mRemoteBareJid);
    mCallSession.terminateCall(mRemoteBareJid);
    finishActivity();
  }
  
  private void finishActivity()
  {
    log("call finish");
    if (!isFinishing()) {
      finish();
    }
  }
  
  private Effect getDefaultEffect()
  {
    Object localObject2 = SettingsCache.getInstance().getSettingsMap(mAccountId).getVideoImageStabilization();
    Object localObject1 = localObject2;
    if (localObject2 == null) {
      localObject1 = FeatureManager.getDefaultVideoChatEffect();
    }
    if (TalkApp.debugLoggable()) {
      log("getDefaultEffect " + (String)localObject1);
    }
    if ((localObject1 == null) || ("off".equals(localObject1))) {
      localObject1 = null;
    }
    for (;;)
    {
      localObject2 = localObject1;
      if (localObject1 != null)
      {
        localObject2 = localObject1;
        if (!EffectsController.isEffectAvailable(id))
        {
          log("default effect " + id + " disallowed");
          localObject2 = null;
        }
      }
      return (Effect)localObject2;
      if ("low".equals(localObject1))
      {
        localObject1 = new Effect(1, Integer.valueOf(1));
      }
      else if ("medium".equals(localObject1))
      {
        localObject1 = new Effect(1, Integer.valueOf(2));
      }
      else if ("virtual".equals(localObject1))
      {
        localObject1 = new Effect(2, Integer.valueOf(0));
      }
      else
      {
        Log.e("talk", "getDefaultEffect - unknown setting " + (String)localObject1);
        localObject1 = null;
      }
    }
  }
  
  private void hideButtonPanel()
  {
    removePendingDismissButtonPanelRunnable();
    WindowManager.LayoutParams localLayoutParams = getWindow().getAttributes();
    systemUiVisibility = 1;
    getWindow().setAttributes(localLayoutParams);
    if (mFadedEndButton.getVisibility() != 0)
    {
      mFadedEndButton.setVisibility(0);
      mFadedEndButton.startAnimation(mFadeInMedium);
    }
    mActionBar.hide();
  }
  
  private boolean inCall()
  {
    return mCallState == 3;
  }
  
  private void initAnimations()
  {
    mFadeInMedium = AnimationUtils.loadAnimation(this, 2131034114);
    mFadeInLong = AnimationUtils.loadAnimation(this, 2131034113);
    mFadeOutMedium = AnimationUtils.loadAnimation(this, 2131034117);
    mFadeOutLong = AnimationUtils.loadAnimation(this, 2131034116);
    initToVanityResources();
  }
  
  private void initToVanityResources()
  {
    mAvatarQuery = new ContactInfoQuery(this, mAccountId, mRemoteBareJid, null, true);
    mAvatarQuery.setContactInfoCallback(new ContactInfoQuery.ContactInfoQueryCallback()
    {
      public void onContactInfoLoaded()
      {
        ((ImageView)findViewById(2131755178)).setImageDrawable(mAvatarQuery.getAvatar());
      }
    });
    if (mConnectingStatus == null) {
      mConnectingStatus = findViewById(2131755177);
    }
    if (mConnectingStatusTextSimple == null)
    {
      mConnectingStatusTextSimple = ((TextView)findViewById(2131755182));
      if (mConnectingStatusTextSimple != null) {
        mConnectingStatusTextSimple.setText(mRemoteBareJid);
      }
    }
  }
  
  private void initialize()
  {
    if (!mInitialized)
    {
      initAnimations();
      if (mReevaluateCallState) {
        setSessionReadyTask(mConnectCallTask);
      }
      mInitialized = true;
    }
  }
  
  private boolean initiatingCall()
  {
    return mCallState == 2;
  }
  
  private void log(String paramString)
  {
    TalkApp.LOGD("talk", "[VideoChatActivity] " + paramString);
  }
  
  private void makeCall()
  {
    if (mRemoteJid != null) {
      new MakeCallTask(null).execute(new Long[] { Long.valueOf(mAccountId) });
    }
  }
  
  private void registerCallStateListener()
  {
    synchronized (mCallStateClient.mCallStateClientLock)
    {
      if ((mCallStateClient != null) && (!mCallStateClient.mCallStateClientListening) && (!mPaused))
      {
        mCallStateClient.startListening();
        mCallStateClient.mCallStateClientListening = true;
      }
      return;
    }
  }
  
  private void removePendingDismissButtonPanelRunnable()
  {
    mHandler.removeCallbacks(mDismissButtonPanelRunnable);
  }
  
  private void removeRemoteChatListener()
  {
    int j = 1;
    synchronized (sChatListener)
    {
      VideoChatActivity localVideoChatActivity = sChatListener.getActivity();
      String str = sChatListener.getJid();
      int i = j;
      if (localVideoChatActivity != this)
      {
        i = j;
        if (mRemoteBareJid.equals(str)) {
          i = 0;
        }
      }
      sChatListener.removeAssociation(this);
      if ((i == 0) || (mChatSession == null)) {}
    }
    try
    {
      mChatSession.removeRemoteChatListener(sChatListener);
      unbindService(mGtalkServiceConnection);
      return;
      localObject = finally;
      throw ((Throwable)localObject);
    }
    catch (RemoteException localRemoteException)
    {
      for (;;)
      {
        log("Problem removing ChatSession " + localRemoteException);
      }
    }
  }
  
  private void resetButtonPanelFadeOutCountdown()
  {
    removePendingDismissButtonPanelRunnable();
    mHandler.postDelayed(mDismissButtonPanelRunnable, 5000L);
  }
  
  private void resetState()
  {
    transitionChromeToHidden();
    transitionVideoToHidden();
    mCallState = 0;
    mVideoState = 0;
  }
  
  private void resolveIntent(Intent paramIntent)
  {
    mAccountId = paramIntent.getLongExtra("accountId", 0L);
    if (mAccountId == 0L)
    {
      Log.e("talk", "Intent must contain accountId");
      finishActivity();
      return;
    }
    mRemoteJid = paramIntent.getStringExtra("from");
    mRemoteBareJid = StringUtils.parseBareAddress(mRemoteJid);
    mIntentAction = getIntent().getAction();
  }
  
  private void scheduleTextOverlayFadeOut(long paramLong)
  {
    mHandler.removeCallbacks(dismissTextOverlayRunnable);
    mHandler.postDelayed(dismissTextOverlayRunnable, paramLong);
  }
  
  private void sendImageStabilizationReset()
  {
    mGlView.getSelfRenderer().resetImageStabilization();
  }
  
  private void setActiveEffect(Effect arg1)
  {
    EffectsController localEffectsController = mGlView.getEffectsController();
    Effect localEffect = ???;
    if (??? == null) {
      localEffect = new Effect(0, Integer.valueOf(0));
    }
    localEffectsController.enableEffect(id, param);
    mCallSession.setCallStorage("CALL_CURRENT_EFFECT", localEffect);
    for (;;)
    {
      synchronized (mEffectsLock)
      {
        mCurrentEffect = localEffect;
        if ((id == 1) && (((Integer)param).intValue() == 3))
        {
          mActionBarResetISButton.setVisibility(0);
          updateActionViewStates();
          return;
        }
      }
      mActionBarResetISButton.setVisibility(8);
    }
  }
  
  private void setSessionReadyTask(Runnable paramRunnable)
  {
    if (mCallSession == null)
    {
      mSessionReadyTask = paramRunnable;
      return;
    }
    paramRunnable.run();
  }
  
  private void setState(int paramInt)
  {
    if (paramInt == mCallState) {
      return;
    }
    int i = mCallState;
    mCallState = paramInt;
    synchronized (mFirstFrameLock)
    {
      if (mFirstFrame) {
        transitionVideoState(i, mCallState);
      }
      transitionChromeState(i, mCallState);
      bindRendererIfReady();
      return;
    }
  }
  
  private void setupActionBar()
  {
    requestWindowFeature(9);
    mActionBar = getActionBar();
    mActionBar.hide();
    mActionBar.setDisplayOptions(30);
    mActionBar.setTitle(null);
  }
  
  private void setupMenuItem(Menu paramMenu, int paramInt, CallSession.AudioDevice paramAudioDevice1, CallSession.AudioDevice paramAudioDevice2)
  {
    int i = 0;
    switch (mAudioDeviceState)
    {
    default: 
      paramMenu = paramMenu.findItem(paramInt);
      if ((i == 0) && (mAvailableAudioDevices.contains(paramAudioDevice1)))
      {
        bool = true;
        label65:
        paramMenu.setEnabled(bool);
        if (paramAudioDevice2 != paramAudioDevice1) {
          break label114;
        }
      }
      break;
    }
    label114:
    for (boolean bool = true;; bool = false)
    {
      paramMenu.setCheckable(bool);
      paramMenu.setChecked(bool);
      return;
      i = 1;
      break;
      bool = false;
      break label65;
    }
  }
  
  private void setupOverlayClickLogic()
  {
    mTextOverlay = ((LinearLayout)findViewById(2131755173));
    mTextOverlay.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        VideoChatActivity.this.startTextChatActivity();
      }
    });
    mGlView.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View arg1)
      {
        int i = 0;
        if (mTextOverlay.getVisibility() != 8)
        {
          VideoChatActivity.this.startTextOverlayFadeOut();
          i = 1;
        }
        synchronized (VideoChatActivity.SpecialEffectManager.access$4500(mSpecialEffectManager))
        {
          if (!VideoChatActivity.SpecialEffectManager.access$200(mSpecialEffectManager))
          {
            if (!mActionBar.isShowing()) {
              break label75;
            }
            VideoChatActivity.this.hideButtonPanel();
          }
          label75:
          while (i != 0) {
            return;
          }
          VideoChatActivity.this.showButtonPanel();
        }
      }
    });
    mGlView.setOnTouchListener(new View.OnTouchListener()
    {
      public boolean onTouch(View arg1, MotionEvent paramAnonymousMotionEvent)
      {
        if (paramAnonymousMotionEvent.getAction() == 1)
        {
          int i = (int)paramAnonymousMotionEvent.getX();
          int j = (int)paramAnonymousMotionEvent.getY();
          synchronized (VideoChatActivity.SpecialEffectManager.access$4500(mSpecialEffectManager))
          {
            if ((VideoChatActivity.SpecialEffectManager.access$200(mSpecialEffectManager)) && (mGlView.getRemoteFrameRect().contains(i, j)))
            {
              VideoChatActivity.SpecialEffectManager.access$3500(mSpecialEffectManager);
              return true;
            }
            if (mGlView.getSelfFrameRect().contains(i, j))
            {
              boolean bool2 = false;
              boolean bool1 = bool2;
              if (!VideoChatActivity.SpecialEffectManager.access$200(mSpecialEffectManager))
              {
                bool1 = bool2;
                if (FeatureManager.areAnyEffectsAvailable())
                {
                  VideoChatActivity.SpecialEffectManager.access$3400(mSpecialEffectManager);
                  bool1 = true;
                }
              }
              if (mGlView.getEffectsController().maxImageStabilizationEnabled())
              {
                VideoChatActivity.this.sendImageStabilizationReset();
                bool1 = true;
              }
              return bool1;
            }
          }
        }
        return false;
      }
    });
  }
  
  private void showButtonPanel()
  {
    WindowManager.LayoutParams localLayoutParams = getWindow().getAttributes();
    systemUiVisibility = 0;
    getWindow().setAttributes(localLayoutParams);
    mActionBar.show();
    if (mFadedEndButton.getVisibility() == 0)
    {
      mFadedEndButton.setVisibility(8);
      mFadedEndButton.startAnimation(mFadeOutMedium);
    }
    resetButtonPanelFadeOutCountdown();
  }
  
  public static void startActivityCallInProgress(Context paramContext, long paramLong, String paramString)
  {
    startActivityInternal(paramContext, paramLong, paramString, "android.intent.action.VIEW", true);
  }
  
  private static void startActivityInternal(Context paramContext, long paramLong, String paramString1, String paramString2, boolean paramBoolean)
  {
    if (TextUtils.isEmpty(paramString1))
    {
      Log.e("talk", "remote jid required");
      return;
    }
    paramString2 = new Intent(paramString2, TalkContract.Messages.getContentUriByContact(paramLong, paramString1));
    paramString2.setClass(paramContext, VideoChatActivity.class);
    paramString2.putExtra("accountId", paramLong);
    paramString2.putExtra("from", paramString1);
    if (paramBoolean) {}
    for (int i = 67108864;; i = 0)
    {
      paramString2.setFlags(i | 0x10010000);
      paramContext.startActivity(paramString2);
      return;
    }
  }
  
  public static void startActivityToInitiate(Context paramContext, long paramLong, String paramString)
  {
    startActivityInternal(paramContext, paramLong, paramString, "initiate", false);
  }
  
  private void startTextChatActivity()
  {
    Intent localIntent = new Intent("android.intent.action.VIEW", TalkContract.Messages.getContentUriByContact(mAccountId, mRemoteBareJid));
    localIntent.putExtra("from", mRemoteBareJid);
    localIntent.putExtra("accountId", mAccountId);
    localIntent.setFlags(67108864);
    startActivity(localIntent);
  }
  
  private void startTextOverlayFadeOut()
  {
    mHandler.removeCallbacks(dismissTextOverlayRunnable);
    mTextOverlay.setVisibility(8);
    mTextOverlay.startAnimation(mFadeOutLong);
  }
  
  private void transitionChromeState(int paramInt1, int paramInt2)
  {
    boolean bool2 = true;
    boolean bool1 = true;
    switch (paramInt2)
    {
    case 0: 
    case 1: 
    default: 
      return;
    case 2: 
      if (paramInt1 < 2) {}
      for (;;)
      {
        transitionChromeToVanity(bool1);
        return;
        bool1 = false;
      }
    }
    if (paramInt1 == 2) {}
    for (bool1 = bool2;; bool1 = false)
    {
      transitionChromeToConnected(bool1);
      return;
    }
  }
  
  private void transitionChromeToConnected(boolean paramBoolean)
  {
    if (mConnectingStatus != null) {
      mConnectingStatus.setVisibility(4);
    }
    setupOverlayClickLogic();
    if (paramBoolean)
    {
      mHandler.postDelayed(new Runnable()
      {
        public void run()
        {
          VideoChatActivity.this.showButtonPanel();
          View localView = findViewById(2131755172);
          if (mSecureState) {}
          for (int i = 0;; i = 8)
          {
            localView.setVisibility(i);
            return;
          }
        }
      }, 1200L);
      return;
    }
    View localView;
    if (mSpecialEffectManager.mInSpecialEffectsMode)
    {
      hideButtonPanel();
      localView = findViewById(2131755172);
      if (!mSecureState) {
        break label87;
      }
    }
    label87:
    for (int i = 0;; i = 8)
    {
      localView.setVisibility(i);
      return;
      showButtonPanel();
      break;
    }
  }
  
  private void transitionChromeToHidden()
  {
    mConnectingStatus.setVisibility(8);
  }
  
  private void transitionChromeToVanity(boolean paramBoolean)
  {
    mConnectingStatus.setVisibility(0);
    if (paramBoolean) {
      mConnectingStatus.startAnimation(mFadeInLong);
    }
    mAvatarQuery.startQueryForContactInfo();
  }
  
  private void transitionVideoState(int paramInt1, int paramInt2)
  {
    boolean bool2 = true;
    boolean bool1 = true;
    mVideoState = paramInt2;
    switch (mVideoState)
    {
    case 0: 
    case 1: 
    default: 
      return;
    case 2: 
      if (paramInt1 < 2) {}
      for (;;)
      {
        transitionVideoToVanity(bool1);
        return;
        bool1 = false;
      }
    }
    if (paramInt1 == 2) {}
    for (bool1 = bool2;; bool1 = false)
    {
      transitionVideoToConnected(bool1);
      return;
    }
  }
  
  private void transitionVideoToConnected(boolean paramBoolean)
  {
    if (mSpecialEffectManager.mInSpecialEffectsMode)
    {
      mGlView.placeFramesInSwappedPositions();
      mGlView.showBlackBackground(paramBoolean);
      return;
    }
    mGlView.placeSelfFrameInCorner(paramBoolean);
    Handler localHandler = mHandler;
    Runnable local2 = new Runnable()
    {
      public void run()
      {
        mGlView.placeRemoteFrameInFullscreen();
      }
    };
    if (paramBoolean) {}
    for (long l = 1200L;; l = 0L)
    {
      localHandler.postDelayed(local2, l);
      break;
    }
  }
  
  private void transitionVideoToHidden()
  {
    mGlView.hideRemoteFrame();
    mGlView.hideSelfFrame();
  }
  
  private void transitionVideoToVanity(boolean paramBoolean)
  {
    mGlView.placeSelfFrameInVanity(paramBoolean);
  }
  
  private void unregisterCallStateListener()
  {
    synchronized (mCallStateClient.mCallStateClientLock)
    {
      if ((mCallStateClient != null) && (mCallStateClient.mCallStateClientListening))
      {
        mCallStateClient.stopListening();
        mCallStateClient.mCallStateClientListening = false;
      }
      return;
    }
  }
  
  private void updateActionViewStates()
  {
    boolean bool2 = true;
    if (mCurrentEffect != null)
    {
      CompoundImageView localCompoundImageView = mGoofyFaceActionView;
      if (mCurrentEffect.id == 4)
      {
        bool1 = true;
        localCompoundImageView.setActivated(bool1);
        localCompoundImageView = mStabilizationActionView;
        if (mCurrentEffect.id != 1) {
          break label129;
        }
        bool1 = true;
        label50:
        localCompoundImageView.setActivated(bool1);
        localCompoundImageView = mVcoActionView;
        if (mCurrentEffect.id != 2) {
          break label134;
        }
        bool1 = true;
        label73:
        localCompoundImageView.setActivated(bool1);
        localCompoundImageView = mBgReplacementActionView;
        if (mCurrentEffect.id != 3) {
          break label139;
        }
        bool1 = true;
        label96:
        localCompoundImageView.setActivated(bool1);
        localCompoundImageView = mEnterEffectsActionView;
        if (mCurrentEffect.id == 0) {
          break label144;
        }
      }
      label129:
      label134:
      label139:
      label144:
      for (boolean bool1 = bool2;; bool1 = false)
      {
        localCompoundImageView.setActivated(bool1);
        return;
        bool1 = false;
        break;
        bool1 = false;
        break label50;
        bool1 = false;
        break label73;
        bool1 = false;
        break label96;
      }
    }
    mEnterEffectsActionView.setActivated(false);
  }
  
  private void updateAudioUi()
  {
    mBluetoothButton.handleBluetoothStateChange(mAudioDeviceState);
    setMuteButtonState(mIsMuted);
  }
  
  private void updateRecentMessageQueue(String paramString)
  {
    synchronized (mRecentChatMessageQueue)
    {
      long l = SystemClock.uptimeMillis();
      mRecentChatMessageQueue.add(new ChatMessage(paramString, l));
      if ((!mRecentChatMessageQueue.isEmpty()) && (mRecentChatMessageQueue.peek()).mTimestamp < l - 15000L)) {
        mRecentChatMessageQueue.remove();
      }
    }
  }
  
  public void clickHandler(View paramView)
  {
    switch (paramView.getId())
    {
    }
    for (;;)
    {
      resetButtonPanelFadeOutCountdown();
      return;
      endCall();
      log("call ended");
      continue;
      if (!mIsMuted) {}
      for (boolean bool = true;; bool = false)
      {
        mCallSession.setMute(bool);
        setMuteButtonState(bool);
        break;
      }
      new Thread(new Runnable()
      {
        public void run()
        {
          mGlView.switchCamera(mCameraTracker);
          mHandler.post(new Runnable()
          {
            public void run()
            {
              invalidateOptionsMenu();
              synchronized (mEffectsLock)
              {
                if (mCurrentEffect.id != 1) {
                  VideoChatActivity.this.setActiveEffect(null);
                }
                return;
              }
            }
          });
        }
      }, "switchCamera").start();
      continue;
      endCall();
      mConnectingProgressBar.setVisibility(4);
      continue;
      mSpecialEffectManager.enterSpecialEffectsMode();
      continue;
      mSpecialEffectManager.clearSpecialEffects();
      mSpecialEffectManager.leaveSpecialEffectsMode();
      continue;
      mSpecialEffectManager.show(paramView);
      continue;
      sendImageStabilizationReset();
    }
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    switch (paramInt1)
    {
    }
    do
    {
      return;
    } while (paramInt2 != -1);
    synchronized (mSpecialEffectManager.mSpecialEffectsModeLock)
    {
      SpecialEffectManager.access$202(mSpecialEffectManager, true);
      mDeferredEffect = new Effect(3, paramIntent.getData());
      return;
    }
  }
  
  public void onBackPressed()
  {
    if (mSpecialEffectManager.hideSpecialEffectsPicker()) {}
    do
    {
      return;
      super.onBackPressed();
    } while (!initiatingCall());
    endCall();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    boolean bool2 = true;
    log("onCreate");
    super.onCreate(paramBundle);
    getWindow().addFlags(6815872);
    setTheme(2131623949);
    setupActionBar();
    Object localObject = getWindow().getAttributes();
    systemUiVisibility = 1;
    getWindow().setAttributes((WindowManager.LayoutParams)localObject);
    setContentView(2130968659);
    localObject = getLayoutInflater();
    mBluetoothButton = ((BluetoothButton)((LayoutInflater)localObject).inflate(2130968646, null));
    mBluetoothButton.setOnClickListener(mBluetoothHandler);
    mMuteButton = ((ImageView)((LayoutInflater)localObject).inflate(2130968651, null));
    mGoofyFaceActionView = ((CompoundImageView)((LayoutInflater)localObject).inflate(2130968650, null));
    mStabilizationActionView = ((CompoundImageView)((LayoutInflater)localObject).inflate(2130968652, null));
    mVcoActionView = ((CompoundImageView)((LayoutInflater)localObject).inflate(2130968654, null));
    mBgReplacementActionView = ((CompoundImageView)((LayoutInflater)localObject).inflate(2130968645, null));
    mEnterEffectsActionView = ((CompoundImageView)((LayoutInflater)localObject).inflate(2130968649, null));
    mNormalModeActionBarCustomView = ((LayoutInflater)localObject).inflate(2130968648, null);
    mActionBarResetISButton = mNormalModeActionBarCustomView.findViewById(2131755161);
    mFadedEndButton = findViewById(2131755162);
    mConnectingProgressBar = ((ProgressBar)findViewById(2131755180));
    mVideoFadeInAnimationDuration = getResources().getInteger(2131361794);
    mCallStateClient = new LocalCallStateClient();
    mCameraTracker = new CameraTracker(this);
    mReevaluateCallState = true;
    localObject = getIntent();
    resolveIntent((Intent)localObject);
    if (mIntentAction == "initiate") {
      setIntent(((Intent)localObject).setAction("android.intent.action.VIEW"));
    }
    boolean bool1 = bool2;
    if (mIntentAction != "initiate") {
      if ((paramBundle == null) || (!paramBundle.getBoolean("not_yet_connected"))) {
        break label417;
      }
    }
    label417:
    for (bool1 = bool2;; bool1 = false)
    {
      mGlView = ((GlView)findViewById(2131755171));
      mGlView.initialize(bool1, mInitialCameraFrameCallback);
      int i = mCameraTracker.firstCamera();
      mGlView.createRenderers(mGlViewInitializedCallback, new CameraSpecification(i, mCameraTracker.getOverrideSizeForCamera(i)));
      return;
    }
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    getMenuInflater().inflate(2131689481, paramMenu);
    paramMenu.findItem(2131755207).setActionView(mBluetoothButton);
    paramMenu.findItem(2131755206).setActionView(mMuteButton);
    updateAudioUi();
    MenuItem localMenuItem = paramMenu.findItem(2131755208);
    if (mCameraTracker.getNumAvailableCameras() > 1)
    {
      localMenuItem.setActionView(2130968653);
      localMenuItem = paramMenu.findItem(2131755209);
      if (!FeatureManager.areAnyEffectsAvailable()) {
        break label249;
      }
      localMenuItem.setActionView(mEnterEffectsActionView);
      label111:
      mGlView.getEffectsController();
      localMenuItem = paramMenu.findItem(2131755210);
      if (!EffectsController.isEffectAvailable(1)) {
        break label261;
      }
      localMenuItem.setActionView(mStabilizationActionView);
      label147:
      localMenuItem = paramMenu.findItem(2131755211);
      if (!EffectsController.isEffectAvailable(4)) {
        break label273;
      }
      localMenuItem.setActionView(mGoofyFaceActionView);
      label175:
      localMenuItem = paramMenu.findItem(2131755212);
      if (!EffectsController.isEffectAvailable(3)) {
        break label285;
      }
      localMenuItem.setActionView(mBgReplacementActionView);
      label203:
      localMenuItem = paramMenu.findItem(2131755213);
      if (!EffectsController.isEffectAvailable(2)) {
        break label297;
      }
      localMenuItem.setActionView(mVcoActionView);
    }
    for (;;)
    {
      return super.onCreateOptionsMenu(paramMenu);
      paramMenu.removeItem(2131755208);
      break;
      label249:
      paramMenu.removeItem(2131755209);
      break label111;
      label261:
      paramMenu.removeItem(2131755210);
      break label147;
      label273:
      paramMenu.removeItem(2131755211);
      break label175;
      label285:
      paramMenu.removeItem(2131755212);
      break label203;
      label297:
      paramMenu.removeItem(2131755213);
    }
  }
  
  public void onDestroy()
  {
    log("onDestroy");
    super.onDestroy();
    mGlView.destroyRenderer();
    mHandler.removeCallbacks(mConnectToExistingCallRunnable);
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return super.onOptionsItemSelected(paramMenuItem);
    }
    if (!mSpecialEffectManager.leaveSpecialEffectsMode())
    {
      paramMenuItem = new Intent(this, BuddyListCombo.class);
      paramMenuItem.addFlags(67108864);
      startActivity(paramMenuItem);
    }
    return true;
  }
  
  protected void onPause()
  {
    log("onPause");
    super.onPause();
    mGlView.onPause();
    mOnSaveInstanceStateCallStateCopy = mCallState;
    resetState();
    mPaused = true;
    unregisterCallStateListener();
    mInitialized = false;
  }
  
  public boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    boolean bool3 = true;
    for (;;)
    {
      synchronized (mSpecialEffectManager.mSpecialEffectsModeLock)
      {
        if (!mSpecialEffectManager.mInSpecialEffectsMode)
        {
          bool1 = true;
          paramMenu.findItem(2131755207).setEnabled(bool1).setVisible(bool1);
          paramMenu.findItem(2131755206).setEnabled(bool1).setVisible(bool1);
          MenuItem localMenuItem = paramMenu.findItem(2131755208);
          if (localMenuItem != null) {
            localMenuItem.setEnabled(bool1).setVisible(bool1);
          }
          localMenuItem = paramMenu.findItem(2131755209);
          if (localMenuItem != null) {
            localMenuItem.setEnabled(bool1).setVisible(bool1);
          }
          if (bool1)
          {
            mActionBar.setCustomView(mNormalModeActionBarCustomView);
            localMenuItem = paramMenu.findItem(2131755210);
            if (localMenuItem != null)
            {
              if (bool1) {
                break label376;
              }
              bool2 = true;
              localMenuItem = localMenuItem.setEnabled(bool2);
              if (bool1) {
                break label381;
              }
              bool2 = true;
              localMenuItem.setVisible(bool2);
            }
            localMenuItem = paramMenu.findItem(2131755211);
            if (localMenuItem != null)
            {
              if (bool1) {
                break label386;
              }
              bool2 = true;
              localMenuItem = localMenuItem.setEnabled(bool2);
              if (bool1) {
                break label391;
              }
              bool2 = true;
              localMenuItem.setVisible(bool2);
            }
            localMenuItem = paramMenu.findItem(2131755212);
            if (localMenuItem != null)
            {
              if ((bool1) || (!mGlView.getSelfRenderer().getCamera().arePreview3ALocksSupported())) {
                break label396;
              }
              bool2 = true;
              localMenuItem.setEnabled(bool2).setVisible(bool2);
            }
            localMenuItem = paramMenu.findItem(2131755213);
            if (localMenuItem != null)
            {
              if (bool1) {
                break label401;
              }
              bool2 = true;
              localMenuItem = localMenuItem.setEnabled(bool2);
              if (bool1) {
                break label406;
              }
              bool1 = bool3;
              localMenuItem.setVisible(bool1);
            }
            return super.onPrepareOptionsMenu(paramMenu);
          }
        }
        else
        {
          bool1 = false;
          continue;
        }
        mActionBar.setCustomView(2130968647);
      }
      label376:
      boolean bool2 = false;
      continue;
      label381:
      bool2 = false;
      continue;
      label386:
      bool2 = false;
      continue;
      label391:
      bool2 = false;
      continue;
      label396:
      bool2 = false;
      continue;
      label401:
      bool2 = false;
      continue;
      label406:
      boolean bool1 = false;
    }
  }
  
  public void onRestart()
  {
    log("onRestart");
    super.onRestart();
    resolveIntent(getIntent());
    connectToExistingCall();
  }
  
  public void onResume()
  {
    log("onResume");
    super.onResume();
    mPaused = false;
    mGlView.onResume();
    mFirstFrame = false;
    registerCallStateListener();
    resetButtonPanelFadeOutCountdown();
    initialize();
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    if (mOnSaveInstanceStateCallStateCopy != 3) {}
    for (boolean bool = true;; bool = false)
    {
      paramBundle.putBoolean("not_yet_connected", bool);
      return;
    }
  }
  
  public void onStart()
  {
    log("onStart");
    super.onStart();
    TalkApp.refreshTalkLogLevel();
    mStopped = false;
    mVcBinder = new VideoChatServiceBinder(this, new ComponentName(this, VideoChatOutputReceiver.class));
    mVcBinder.bind(new LocalServiceBoundCallback(null));
    addRemoteChatListener();
  }
  
  public void onStop()
  {
    log("onStop");
    super.onStop();
    mVcBinder.unbind();
    mCallSession = null;
    removeRemoteChatListener();
    mRecentChatMessageQueue.clear();
    mSpecialEffectManager.onStop();
    mStopped = true;
  }
  
  public void setMuteButtonState(boolean paramBoolean)
  {
    ImageView localImageView = mMuteButton;
    if (paramBoolean) {}
    for (int i = 2130837603;; i = 2130837605)
    {
      localImageView.setImageResource(i);
      return;
    }
  }
  
  private static class ChatListener
    extends IChatListener.Stub
  {
    private VideoChatActivity mActivity;
    private String mBareJid;
    
    public void callEnded() {}
    
    public void chatClosed(String paramString) {}
    
    public void chatRead(String paramString) {}
    
    public void convertedToGroupChat(String paramString1, String paramString2, long paramLong) {}
    
    public VideoChatActivity getActivity()
    {
      return mActivity;
    }
    
    public String getJid()
    {
      return mBareJid;
    }
    
    public void missedCall() {}
    
    public void newMessageReceived(String paramString1, String paramString2, boolean paramBoolean)
    {
      try
      {
        if (mActivity != null) {
          mActivity.mHandler.post(new MessageRunnable(mActivity, paramString1, paramString2));
        }
        return;
      }
      finally
      {
        paramString1 = finally;
        throw paramString1;
      }
    }
    
    /* Error */
    public void newMessageSent(String arg1)
    {
      // Byte code:
      //   0: aload_0
      //   1: monitorenter
      //   2: aload_0
      //   3: getfield 31	com/google/android/talk/videochat/VideoChatActivity$ChatListener:mActivity	Lcom/google/android/talk/videochat/VideoChatActivity;
      //   6: ifnull +27 -> 33
      //   9: aload_0
      //   10: getfield 31	com/google/android/talk/videochat/VideoChatActivity$ChatListener:mActivity	Lcom/google/android/talk/videochat/VideoChatActivity;
      //   13: invokestatic 56	com/google/android/talk/videochat/VideoChatActivity:access$1700	(Lcom/google/android/talk/videochat/VideoChatActivity;)Ljava/util/Queue;
      //   16: astore_1
      //   17: aload_1
      //   18: monitorenter
      //   19: aload_0
      //   20: getfield 31	com/google/android/talk/videochat/VideoChatActivity$ChatListener:mActivity	Lcom/google/android/talk/videochat/VideoChatActivity;
      //   23: invokestatic 56	com/google/android/talk/videochat/VideoChatActivity:access$1700	(Lcom/google/android/talk/videochat/VideoChatActivity;)Ljava/util/Queue;
      //   26: invokeinterface 61 1 0
      //   31: aload_1
      //   32: monitorexit
      //   33: aload_0
      //   34: monitorexit
      //   35: return
      //   36: astore_2
      //   37: aload_1
      //   38: monitorexit
      //   39: aload_2
      //   40: athrow
      //   41: astore_1
      //   42: aload_0
      //   43: monitorexit
      //   44: aload_1
      //   45: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	46	0	this	ChatListener
      //   36	4	2	localObject	Object
      // Exception table:
      //   from	to	target	type
      //   19	33	36	finally
      //   37	39	36	finally
      //   2	19	41	finally
      //   39	41	41	finally
    }
    
    public void participantJoined(String paramString1, String paramString2) {}
    
    public void participantLeft(String paramString1, String paramString2) {}
    
    public void removeAssociation(VideoChatActivity paramVideoChatActivity)
    {
      if (mActivity == paramVideoChatActivity)
      {
        mActivity = null;
        mBareJid = null;
      }
    }
    
    public void setActivity(VideoChatActivity paramVideoChatActivity)
    {
      mActivity = paramVideoChatActivity;
    }
    
    public void setJid(String paramString)
    {
      mBareJid = paramString;
    }
    
    public boolean useLightweightNotify()
    {
      return true;
    }
    
    public void willConvertToGroupChat(String paramString1, String paramString2, long paramLong) {}
    
    private static class MessageRunnable
      implements Runnable
    {
      private final VideoChatActivity mActivity;
      private String mBody;
      private String mFullJid;
      
      public MessageRunnable(VideoChatActivity paramVideoChatActivity, String paramString1, String paramString2)
      {
        mActivity = paramVideoChatActivity;
        mFullJid = paramString1;
        mBody = paramString2;
      }
      
      public void run()
      {
        String str = StringUtils.parseBareAddress(mFullJid);
        if ((mActivity.mRemoteBareJid.equals(str)) && (mActivity.inCall()))
        {
          mActivity.updateRecentMessageQueue(mBody);
          if (mActivity.mTextOverlay.getVisibility() == 8) {
            mActivity.mTextOverlay.setVisibility(0);
          }
          mActivity.bindRecentMessages();
          mActivity.scheduleTextOverlayFadeOut(5000L);
        }
      }
    }
  }
  
  private static class ChatMessage
  {
    String mMessage;
    long mTimestamp;
    
    public ChatMessage(String paramString, long paramLong)
    {
      mMessage = paramString;
      mTimestamp = paramLong;
    }
  }
  
  private static class Effect
  {
    public int id;
    public Object param;
    
    public Effect(int paramInt, Object paramObject)
    {
      id = paramInt;
      param = paramObject;
    }
  }
  
  private class LocalCallStateClient
    extends CallStateClient
  {
    public boolean mCallStateClientListening = false;
    public Object mCallStateClientLock = new Object();
    
    public LocalCallStateClient()
    {
      super();
    }
    
    public void onCallStateUpdate(String paramString, CallState paramCallState, boolean paramBoolean, Object paramObject)
    {
      if (!paramString.equals(mRemoteBareJid)) {}
      do
      {
        return;
        VideoChatActivity.access$1802(VideoChatActivity.this, mute);
        VideoChatActivity.access$102(VideoChatActivity.this, secure);
        VideoChatActivity.access$1902(VideoChatActivity.this, audioDeviceState);
        VideoChatActivity.access$2002(VideoChatActivity.this, availableAudioDevices);
        VideoChatActivity.this.updateAudioUi();
        switch (libjingleCallState)
        {
        case 2: 
        case 7: 
        case 5: 
        case 6: 
        case 9: 
        default: 
          return;
        case 1: 
          VideoChatActivity.this.setState(2);
          return;
        }
      } while (!TalkApp.debugLoggable());
      VideoChatActivity.this.log("Request call with " + StringUtils.parseBareAddress(paramString));
      return;
      VideoChatActivity.this.log(StringUtils.parseBareAddress(paramString) + " accepted call");
      return;
      VideoChatActivity.this.setState(1);
      VideoChatActivity.this.log("call ended");
      VideoChatActivity.this.startTextChatActivity();
      VideoChatActivity.this.finishActivity();
      return;
      VideoChatActivity.this.setState(3);
      VideoChatActivity.this.log("In call with " + StringUtils.parseBareAddress(paramString) + " secure: " + secure);
    }
  }
  
  private class LocalServiceBoundCallback
    implements VideoChatServiceBinder.ServiceBoundCallback
  {
    private LocalServiceBoundCallback() {}
    
    public void onServiceBound(VideoChatService.HardBinder arg1)
    {
      if (mStopped) {
        return;
      }
      VideoChatActivity.access$5802(VideoChatActivity.this, ???.getCallSession());
      VideoChatActivity.this.bindRendererIfReady();
      VideoChatActivity.this.registerCallStateListener();
      for (;;)
      {
        synchronized (VideoChatActivity.sChatListener)
        {
          VideoChatActivity.sChatListener.setActivity(VideoChatActivity.this);
          VideoChatActivity.sChatListener.setJid(mRemoteBareJid);
          if (mSessionReadyTask != null)
          {
            mSessionReadyTask.run();
            VideoChatActivity.access$6002(VideoChatActivity.this, null);
          }
          if (mDeferredEffect == null) {
            break;
          }
          if (mDeferredEffect.id == 3)
          {
            ??? = (Uri)mDeferredEffect.param;
            VideoChatActivity.this.log("Received URI from gallery for background: " + ???.toString());
            VideoChatActivity.SpecialEffectManager.access$3800(mSpecialEffectManager, ???);
            VideoChatActivity.access$6102(VideoChatActivity.this, null);
            return;
          }
        }
        VideoChatActivity.this.setActiveEffect(mDeferredEffect);
      }
      VideoChatActivity.Effect localEffect = (VideoChatActivity.Effect)mCallSession.getCallStorage("CALL_CURRENT_EFFECT");
      if (localEffect == null) {
        ??? = VideoChatActivity.this.getDefaultEffect();
      }
      for (;;)
      {
        VideoChatActivity.this.setActiveEffect(???);
        return;
        ??? = localEffect;
        if (id == 3) {
          ??? = null;
        }
      }
    }
  }
  
  private class MakeCallTask
    extends AsyncTask<Long, Void, String>
  {
    private MakeCallTask() {}
    
    protected String doInBackground(Long... paramVarArgs)
    {
      return DatabaseUtils.getUsernameForAccountId(getContentResolver(), paramVarArgs[0]);
    }
    
    protected void onPostExecute(String paramString)
    {
      if (mCallSession.initiateVideoCall(mRemoteJid, paramString, TalkOngoingNotificationFactory.getInstance(VideoChatActivity.this)))
      {
        VideoChatActivity.this.log("calling " + mRemoteJid);
        return;
      }
      VideoChatActivity.this.log("Call failed");
    }
  }
  
  class SpecialEffectManager
  {
    private ProgressDialog mBackgroundReplaceDialog;
    private int mCurrentPopupMode;
    private int mGridColumnWidth = -1;
    private boolean mInSpecialEffectsMode;
    private PopupWindow mPopupWindow;
    private final Object mSpecialEffectsModeLock = new Object();
    
    SpecialEffectManager() {}
    
    private void enterSpecialEffectsMode()
    {
      synchronized (mSpecialEffectsModeLock)
      {
        if (!mInSpecialEffectsMode)
        {
          mInSpecialEffectsMode = true;
          invalidateOptionsMenu();
          mGlView.startSwapAnimation();
          mActionBar.setTitle(2131493124);
          mActionBar.show();
        }
        return;
      }
    }
    
    private boolean hideSpecialEffectsPicker()
    {
      if (mPopupWindow != null)
      {
        mPopupWindow.dismiss();
        mPopupWindow = null;
        return true;
      }
      return false;
    }
    
    private boolean leaveSpecialEffectsMode()
    {
      synchronized (mSpecialEffectsModeLock)
      {
        if (mInSpecialEffectsMode)
        {
          mInSpecialEffectsMode = false;
          invalidateOptionsMenu();
          VideoChatActivity.this.resetButtonPanelFadeOutCountdown();
          hideSpecialEffectsPicker();
          mGlView.reverseSwapAnimation();
          mActionBar.setTitle(null);
          return true;
        }
        return false;
      }
    }
    
    private void onStop()
    {
      hideSpecialEffectsPicker();
      if (mBackgroundReplaceDialog != null)
      {
        mBackgroundReplaceDialog.cancel();
        mBackgroundReplaceDialog = null;
      }
    }
    
    private void showPickerForBackgrounds(View paramView)
    {
      String[] arrayOfString1 = getResources().getStringArray(2131230722);
      String[] arrayOfString2 = getResources().getStringArray(2131230724);
      TypedArray localTypedArray = getResources().obtainTypedArray(2131230723);
      AdapterView.OnItemClickListener local5 = new AdapterView.OnItemClickListener()
      {
        public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
        {
          VideoChatActivity.SpecialEffectManager.this.hideSpecialEffectsPicker();
          paramAnonymousAdapterView = paramAnonymousView.getTag();
          if (paramAnonymousAdapterView != null)
          {
            paramAnonymousAdapterView = Uri.parse((String)paramAnonymousAdapterView);
            VideoChatActivity.SpecialEffectManager.this.startBackgroundReplaceTraining(paramAnonymousAdapterView);
            return;
          }
          paramAnonymousAdapterView = new Intent("android.intent.action.PICK");
          paramAnonymousAdapterView.setDataAndType(MediaStore.Video.Media.EXTERNAL_CONTENT_URI, "video/*");
          paramAnonymousAdapterView.putExtra("android.intent.extra.LOCAL_ONLY", true);
          startActivityForResult(paramAnonymousAdapterView, 100);
        }
      };
      showPickerPopup(paramView, makeAdapter(arrayOfString1, localTypedArray, arrayOfString2), 2131493117, local5, 2);
    }
    
    private void showPickerForFunnyFace(View paramView)
    {
      String[] arrayOfString = getResources().getStringArray(2131230720);
      TypedArray localTypedArray = getResources().obtainTypedArray(2131230721);
      AdapterView.OnItemClickListener local4 = new AdapterView.OnItemClickListener()
      {
        public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
        {
          VideoChatActivity.SpecialEffectManager.this.hideSpecialEffectsPicker();
          VideoChatActivity.this.setActiveEffect(new VideoChatActivity.Effect(4, paramAnonymousView.getTag()));
        }
      };
      showPickerPopup(paramView, makeAdapter(arrayOfString, localTypedArray, new Integer[] { Integer.valueOf(0), Integer.valueOf(1), Integer.valueOf(2), Integer.valueOf(3), Integer.valueOf(4), Integer.valueOf(5) }), 2131493116, local4, 3);
    }
    
    private void showPickerPopup(View paramView, ListAdapter paramListAdapter, int paramInt1, AdapterView.OnItemClickListener paramOnItemClickListener, int paramInt2)
    {
      View localView = getLayoutInflater().inflate(2130968642, null);
      showPopup(paramView, paramInt1, localView);
      paramView = (GridView)localView.findViewById(2131755156);
      ((TextView)localView.findViewById(2131755155)).setText(paramInt1);
      paramView.setLayoutParams(new LinearLayout.LayoutParams(mGridColumnWidth * paramInt2, -2));
      paramView.setNumColumns(paramInt2);
      paramView.setOnItemClickListener(paramOnItemClickListener);
      paramView.setAdapter(paramListAdapter);
    }
    
    private void showPopup(final View paramView1, int paramInt, View paramView2)
    {
      hideSpecialEffectsPicker();
      TextView localTextView = (TextView)paramView2.findViewById(2131755118);
      if (localTextView != null) {
        localTextView.setText(paramInt);
      }
      mPopupWindow = new PopupWindow(paramView2);
      mPopupWindow.setWindowLayoutMode(-2, -2);
      mPopupWindow.setFocusable(true);
      mPopupWindow.setOnDismissListener(new PopupWindow.OnDismissListener()
      {
        public void onDismiss()
        {
          VideoChatActivity.SpecialEffectManager.access$3602(VideoChatActivity.SpecialEffectManager.this, null);
        }
      });
      paramView2.addOnLayoutChangeListener(new View.OnLayoutChangeListener()
      {
        public void onLayoutChange(View paramAnonymousView, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3, int paramAnonymousInt4, int paramAnonymousInt5, int paramAnonymousInt6, int paramAnonymousInt7, int paramAnonymousInt8)
        {
          paramAnonymousInt1 = paramAnonymousInt3 - paramAnonymousInt1;
          mPopupWindow.update(paramView1, -paramAnonymousInt1 / 2 + paramView1.getWidth() / 2, 0, paramAnonymousInt1, paramAnonymousInt4 - paramAnonymousInt2);
        }
      });
      mPopupWindow.setBackgroundDrawable(new ColorDrawable(0));
      mPopupWindow.showAsDropDown(paramView1, 0, 1);
    }
    
    private void startBackgroundReplaceTraining(Uri paramUri)
    {
      BgReplacementManager localBgReplacementManager = new BgReplacementManager(null);
      localBgReplacementManager.startTraining(paramUri);
      mGlView.setSpecialEffectsStateCallback(localBgReplacementManager);
    }
    
    public void clearSpecialEffects()
    {
      VideoChatActivity.this.setActiveEffect(new VideoChatActivity.Effect(0, null));
    }
    
    SimpleAdapter makeAdapter(String[] paramArrayOfString, TypedArray paramTypedArray, Object[] paramArrayOfObject)
    {
      ArrayList localArrayList = new ArrayList();
      int j = 0;
      int k = paramArrayOfString.length;
      int i = 0;
      while (i < k)
      {
        String str = paramArrayOfString[i];
        HashMap localHashMap = new HashMap();
        localHashMap.put("text", str);
        localHashMap.put("icon", Integer.valueOf(paramTypedArray.getResourceId(j, -1)));
        localHashMap.put("tag", paramArrayOfObject[j]);
        localArrayList.add(localHashMap);
        j += 1;
        i += 1;
      }
      paramArrayOfString = new SimpleAdapter(VideoChatActivity.this, localArrayList, 2130968641, new String[] { "text", "icon", "tag" }, new int[] { 2131755076, 2131755117, 2131755154 });
      paramArrayOfString.setViewBinder(new SimpleAdapter.ViewBinder()
      {
        public boolean setViewValue(View paramAnonymousView, Object paramAnonymousObject, String paramAnonymousString)
        {
          if (paramAnonymousView.getId() == 2131755154)
          {
            paramAnonymousView.setTag(paramAnonymousObject);
            return true;
          }
          return false;
        }
      });
      return paramArrayOfString;
    }
    
    public void show(View paramView)
    {
      int i = paramView.getId();
      if ((mPopupWindow != null) && (mCurrentPopupMode == i)) {
        return;
      }
      if (mGridColumnWidth == -1) {
        mGridColumnWidth = getResources().getDimensionPixelSize(2131427395);
      }
      mCurrentPopupMode = i;
      switch (i)
      {
      default: 
        return;
      case 2131755158: 
        showPickerForBackgrounds(paramView);
        return;
      case 2131755164: 
        showPickerForFunnyFace(paramView);
        return;
      case 2131755168: 
        showVirtualCameraSpecialEffect(paramView);
        return;
      }
      showImageStabilizationSpecialEffect(paramView);
    }
    
    public void showImageStabilizationSpecialEffect(View paramView)
    {
      String[] arrayOfString = getResources().getStringArray(2131230725);
      TypedArray localTypedArray = getResources().obtainTypedArray(2131230726);
      AdapterView.OnItemClickListener local6 = new AdapterView.OnItemClickListener()
      {
        public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
        {
          VideoChatActivity.SpecialEffectManager.this.hideSpecialEffectsPicker();
          VideoChatActivity.this.setActiveEffect(new VideoChatActivity.Effect(1, paramAnonymousView.getTag()));
        }
      };
      showPickerPopup(paramView, makeAdapter(arrayOfString, localTypedArray, new Integer[] { Integer.valueOf(1), Integer.valueOf(2), Integer.valueOf(3) }), 2131493120, local6, 3);
    }
    
    public void showVirtualCameraSpecialEffect(View paramView)
    {
      View localView = getLayoutInflater().inflate(2130968640, null);
      Switch localSwitch = (Switch)localView.findViewById(2131755153);
      if (mGlView.getEffectsController().getActiveEffect() == 2) {}
      for (boolean bool = true;; bool = false)
      {
        localSwitch.setChecked(bool);
        localSwitch.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener()
        {
          public void onCheckedChanged(CompoundButton paramAnonymousCompoundButton, boolean paramAnonymousBoolean)
          {
            if (!paramAnonymousBoolean) {
              clearSpecialEffects();
            }
            for (;;)
            {
              mSpecialEffectManager.hideSpecialEffectsPicker();
              return;
              VideoChatActivity.this.setActiveEffect(new VideoChatActivity.Effect(2, Integer.valueOf(0)));
            }
          }
        });
        showPopup(paramView, 2131493118, localView);
        return;
      }
    }
    
    private class BgReplacementManager
      implements EffectsController.StateCallback
    {
      private View mMessageView;
      
      private BgReplacementManager() {}
      
      private void cancelTraining()
      {
        clearSpecialEffects();
        leaveTraining(false);
      }
      
      private void leaveTraining(final boolean paramBoolean)
      {
        mHandler.post(new Runnable()
        {
          public void run()
          {
            if (mMessageView != null) {
              mMessageView.setVisibility(8);
            }
            if (paramBoolean)
            {
              mSpecialEffectManager.leaveSpecialEffectsMode();
              return;
            }
            VideoChatActivity.this.showButtonPanel();
          }
        });
      }
      
      public void onBackgroundReplacementTraningSuccess()
      {
        leaveTraining(true);
      }
      
      public void startTraining(Uri paramUri)
      {
        mMessageView = findViewById(2131755174);
        mMessageView.setVisibility(0);
        VideoChatActivity.this.hideButtonPanel();
        ((Button)findViewById(2131755176)).setOnClickListener(new View.OnClickListener()
        {
          public void onClick(View paramAnonymousView)
          {
            VideoChatActivity.SpecialEffectManager.BgReplacementManager.this.cancelTraining();
          }
        });
        VideoChatActivity.this.setActiveEffect(new VideoChatActivity.Effect(3, paramUri));
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.videochat.VideoChatActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */