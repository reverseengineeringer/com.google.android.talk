package com.google.android.talk.fragments;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.app.DialogFragment;
import android.app.Fragment;
import android.content.ActivityNotFoundException;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.media.MediaScannerConnection;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.RemoteException;
import android.util.Log;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListPopupWindow;
import android.widget.TextView;
import android.widget.Toast;
import com.google.android.gsf.TalkContract.AccountSettings.QueryMap;
import com.google.android.gtalkservice.ConnectionError;
import com.google.android.gtalkservice.ConnectionState;
import com.google.android.gtalkservice.IConnectionStateListener.Stub;
import com.google.android.gtalkservice.IGTalkService;
import com.google.android.gtalkservice.IImSession;
import com.google.android.gtalkservice.IRosterListener.Stub;
import com.google.android.gtalkservice.Presence;
import com.google.android.gtalkservice.Presence.Show;
import com.google.android.talk.AccountLoginUtils;
import com.google.android.talk.AccountSelectionActivity;
import com.google.android.talk.ActivityUtils;
import com.google.android.talk.DatabaseUtils;
import com.google.android.talk.SelfStatusCursor;
import com.google.android.talk.SessionAvailableRunnable;
import com.google.android.talk.SettingsCache;
import com.google.android.talk.TalkApp;
import com.google.android.talk.TalkApp.AccountInfo;
import com.google.android.talk.util.PresenceUtils;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public class SetStatusFragment
  extends Fragment
{
  private static final File PHOTO_DIR = new File(Environment.getExternalStorageDirectory() + "/DCIM/Camera");
  private TalkApp.AccountInfo mAccountInfo;
  private Activity mActivity;
  private TalkApp mApp;
  private ReadSettingsTask mAsyncReadSettingsTask;
  private boolean mAudioChatEnabled;
  private AvatarPicker mAvatarPicker;
  private ImageView mAvatarView;
  private int mColumnAvatarData;
  private ConnectionStateListener mConnectionStateListener;
  private Controller mController;
  private boolean mCreated;
  private View mCustomStatusEditButton;
  private Button mCustomStatusHistoryButton;
  private TextView mCustomStatusText;
  private boolean mEnabled = true;
  IntentFilter mFilter;
  private Handler mHandler = new Handler();
  private boolean mHaveAvatar;
  private IImSession mImSession;
  private BroadcastReceiver mIntentReceiver = new BroadcastReceiver()
  {
    public void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
    {
      if ("android.intent.action.GTALK_AVATAR_CHANGED".equals(paramAnonymousIntent.getAction()))
      {
        TalkApp.getApplication(getActivity()).clearSelfAvatarCache();
        SetStatusFragment.this.initializeFromImSession();
        SetStatusFragment.this.bindViews();
      }
    }
  };
  private boolean mListenersRegistered = false;
  private TextView mOfflineWarning;
  Runnable mOnActivityResultRunnable;
  private boolean mPaused;
  private Bitmap mPendingAvatarUpdate;
  private Bitmap mPendingAvatarUpdateDeleteMagic = Bitmap.createBitmap(1, 1, Bitmap.Config.ARGB_4444);
  private Presence mPendingPresenceUpdate;
  View mRoot;
  private RosterListener mRosterListener;
  private SelfStatusCursor mSelfCursor;
  private TalkContract.AccountSettings.QueryMap mSettings;
  private Button mStandardStatusButton;
  private View mStandardStatusButtonBackground;
  private TextView mUsername;
  private boolean mVideoChatEnabled;
  View[] mViewsToDisableWhenOffline;
  
  public SetStatusFragment() {}
  
  public SetStatusFragment(Activity paramActivity)
  {
    mActivity = paramActivity;
  }
  
  private void asyncLoadSettings()
  {
    waitForAsyncTasksToComplete();
    mAsyncReadSettingsTask = new ReadSettingsTask(null);
    mAsyncReadSettingsTask.execute(new Void[0]);
  }
  
  private void bindViews()
  {
    if ((mStandardStatusButton == null) || (mAccountInfo == null)) {}
    label171:
    label194:
    label279:
    label284:
    label296:
    label300:
    for (;;)
    {
      return;
      if ((mSelfCursor != null) && (getActivity() != null))
      {
        Object localObject = getResources();
        int i = PresenceUtils.translatePresence(mPendingPresenceUpdate);
        if (mUsername != null) {
          mUsername.setText(mAccountInfo.username);
        }
        int j = mApp.getStatusIcon(i, 0);
        mStandardStatusButton.setText(mApp.mDefaultStatusStrings[i]);
        mStandardStatusButton.setCompoundDrawablePadding(6);
        mStandardStatusButton.setCompoundDrawablesWithIntrinsicBounds(((Resources)localObject).getDrawable(j), null, null, null);
        if (mStandardStatusButtonBackground != null) {
          mStandardStatusButtonBackground.setBackgroundResource(mApp.getStatusColorId(i));
        }
        localObject = null;
        boolean bool;
        if (mPendingAvatarUpdate != mPendingAvatarUpdateDeleteMagic)
        {
          if (mPendingAvatarUpdate != null) {
            localObject = mPendingAvatarUpdate;
          }
        }
        else
        {
          if (localObject == null) {
            break label279;
          }
          bool = true;
          mHaveAvatar = bool;
          if (!mHaveAvatar) {
            break label284;
          }
          localObject = new BitmapDrawable((Bitmap)localObject);
          mAvatarView.setImageDrawable((Drawable)localObject);
          mCustomStatusText.setText(mPendingPresenceUpdate.getStatus());
          if (mPendingPresenceUpdate.getDefaultStatusList().size() + mPendingPresenceUpdate.getDndStatusList().size() <= 0) {
            break label296;
          }
        }
        for (i = 0;; i = 8)
        {
          if (!mEnabled) {
            break label300;
          }
          mCustomStatusHistoryButton.setVisibility(i);
          return;
          localObject = DatabaseUtils.getAvatarFromCursor(mSelfCursor, mColumnAvatarData);
          break;
          bool = false;
          break label171;
          localObject = mApp.getGenericAvatar();
          break label194;
        }
      }
    }
  }
  
  private void checkRunnable()
  {
    if ((mOnActivityResultRunnable != null) && (mActivity != null) && (mAccountInfo != null) && (mImSession != null))
    {
      mOnActivityResultRunnable.run();
      mOnActivityResultRunnable = null;
    }
  }
  
  private void clearStatusLists()
  {
    try
    {
      if (mPendingPresenceUpdate == null) {
        return;
      }
      mPendingPresenceUpdate.clearStatusLists();
      mImSession.setPresence(mPendingPresenceUpdate);
      initializeFromImSession();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      Log.e("talk", "RemoteException failure", localRemoteException);
    }
  }
  
  private void disableUI()
  {
    synchronized (mConnectionStateListener)
    {
      if (!mEnabled) {
        return;
      }
      if ((mActivity.isFinishing()) || (mPaused)) {
        return;
      }
    }
    View[] arrayOfView = mViewsToDisableWhenOffline;
    int j = arrayOfView.length;
    int i = 0;
    for (;;)
    {
      if (i < j)
      {
        View localView = arrayOfView[i];
        if (localView != null) {
          localView.setEnabled(false);
        }
      }
      else
      {
        mOfflineWarning.setVisibility(0);
        mCustomStatusHistoryButton.setVisibility(8);
        mEnabled = false;
        return;
      }
      i += 1;
    }
  }
  
  private void discardAvatar()
  {
    mPendingAvatarUpdate = mPendingAvatarUpdateDeleteMagic;
    bindViews();
    savePendingAvatarChanges();
  }
  
  private void enableUI()
  {
    if (mEnabled) {
      return;
    }
    View[] arrayOfView = mViewsToDisableWhenOffline;
    int j = arrayOfView.length;
    int i = 0;
    while (i < j)
    {
      View localView = arrayOfView[i];
      if (localView != null) {
        localView.setEnabled(true);
      }
      i += 1;
    }
    mOfflineWarning.setVisibility(8);
    mCustomStatusHistoryButton.setVisibility(0);
    mEnabled = true;
    initialize();
  }
  
  private int getCapabilities()
  {
    if (mSettings == null) {
      return 0;
    }
    return mSettings.getCapabilities();
  }
  
  public static Intent getCropImageIntent(Uri paramUri)
  {
    Intent localIntent = new Intent("com.android.camera.action.CROP");
    localIntent.setDataAndType(paramUri, "image/*");
    localIntent.putExtra("crop", "true");
    localIntent.putExtra("aspectX", 1);
    localIntent.putExtra("aspectY", 1);
    localIntent.putExtra("outputX", 96);
    localIntent.putExtra("outputY", 96);
    localIntent.putExtra("return-data", true);
    return localIntent;
  }
  
  public static Intent getPhotoPickIntent()
  {
    Intent localIntent = new Intent("android.intent.action.GET_CONTENT", null);
    localIntent.setType("image/*");
    localIntent.putExtra("crop", "true");
    localIntent.putExtra("aspectX", 1);
    localIntent.putExtra("aspectY", 1);
    localIntent.putExtra("outputX", 96);
    localIntent.putExtra("outputY", 96);
    localIntent.putExtra("return-data", true);
    return localIntent;
  }
  
  public static Intent getTakePickIntent(File paramFile)
  {
    Intent localIntent = new Intent("android.media.action.IMAGE_CAPTURE", null);
    localIntent.putExtra("output", Uri.fromFile(paramFile));
    return localIntent;
  }
  
  private void handlePresenceChoice(StatusItem paramStatusItem)
  {
    try
    {
      Presence localPresence = mPendingPresenceUpdate;
      if (localPresence == null) {
        return;
      }
      if (mRunnable != null)
      {
        mRunnable.run();
        return;
      }
      Presence.Show localShow2 = mShow;
      localPresence.setInvisible(mInvisible);
      Presence.Show localShow1 = localShow2;
      if (localShow2 == Presence.Show.NONE) {
        localShow1 = Presence.Show.AVAILABLE;
      }
      localPresence.setAvailable(true);
      if (mCustomPresence)
      {
        localPresence.setStatus(localShow1, mStatus);
        localPresence.setCapabilities(getCapabilities());
        mImSession.setPresence(localPresence);
        if (!mCustomPresence) {
          break label142;
        }
        mCustomStatusText.setText(mStatus);
      }
      for (;;)
      {
        savePendingAvatarChanges();
        return;
        localPresence.setStatus(localShow1, mCustomStatusText.getText().toString());
        break;
        label142:
        mCustomStatusText.setText("");
      }
      return;
    }
    catch (RemoteException paramStatusItem) {}
  }
  
  private void initViews()
  {
    mAvatarView = ((ImageView)mRoot.findViewById(2131755018));
    mStandardStatusButton = ((Button)mRoot.findViewById(2131755023));
    mStandardStatusButtonBackground = mRoot.findViewById(2131755148);
    mCustomStatusText = ((TextView)mRoot.findViewById(2131755143));
    mCustomStatusHistoryButton = ((Button)mRoot.findViewById(2131755145));
    mCustomStatusEditButton = mRoot.findViewById(2131755144);
    mOfflineWarning = ((TextView)mRoot.findViewById(2131755146));
    mUsername = ((TextView)mRoot.findViewById(2131755036));
    mViewsToDisableWhenOffline = new View[] { mAvatarView, mStandardStatusButton, mCustomStatusText, mCustomStatusEditButton, mCustomStatusHistoryButton };
    setupPresencePopdown(mStandardStatusButton, false);
    setupPresencePopdown(mCustomStatusHistoryButton, true);
    View.OnClickListener local9 = new View.OnClickListener()
    {
      public void onClick(final View paramAnonymousView)
      {
        paramAnonymousView = (EditText)LayoutInflater.from(getActivity()).inflate(2130968605, null);
        paramAnonymousView.setText(mCustomStatusText.getText());
        DialogInterface.OnClickListener local1 = new DialogInterface.OnClickListener()
        {
          public void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
          {
            if (paramAnonymous2Int == -1)
            {
              mCustomStatusText.setText(paramAnonymousView.getText());
              SetStatusFragment.this.saveStatusMessageIfChanged();
            }
          }
        };
        new AlertDialog.Builder(mActivity).setTitle(2131492870).setNegativeButton(2131492907, local1).setPositiveButton(2131493085, local1).setView(paramAnonymousView).show();
      }
    };
    if (mCustomStatusEditButton != null) {
      mCustomStatusEditButton.setOnClickListener(local9);
    }
    if (!(mCustomStatusText instanceof EditText)) {
      mCustomStatusText.setOnClickListener(local9);
    }
    mAvatarView.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        mAvatarPicker.show();
      }
    });
  }
  
  private void initialize()
  {
    SessionAvailableRunnable local1 = new SessionAvailableRunnable()
    {
      public void run(IGTalkService paramAnonymousIGTalkService, IImSession paramAnonymousIImSession)
      {
        if ((paramAnonymousIGTalkService == null) || (mAccountInfo == null) || (mAccountInfo.accountId == 0L) || (getActivity() == null)) {
          return;
        }
        SetStatusFragment.access$402(SetStatusFragment.this, paramAnonymousIImSession);
        SetStatusFragment.this.initializeFromImSession();
        SetStatusFragment.this.registerListeners();
        if (TalkApp.debugLoggable()) {
          SetStatusFragment.this.log("initialize: update views");
        }
        SetStatusFragment.this.bindViews();
        SetStatusFragment.this.checkRunnable();
      }
    };
    mApp.addImSessionAvailableCallback(mHandler, mAccountInfo.accountId, local1);
  }
  
  private void initializeFromImSession()
  {
    try
    {
      mPendingPresenceUpdate = null;
      mPendingPresenceUpdate = mImSession.getPresence();
      if (mSelfCursor != null)
      {
        mSelfCursor.close();
        mSelfCursor = null;
      }
      mSelfCursor = new SelfStatusCursor(mActivity, mPendingPresenceUpdate, mAccountInfo);
      mColumnAvatarData = mSelfCursor.getColumnIndex("avatars_data");
      mSelfCursor.setOnAvatarRunnable(new Runnable()
      {
        public void run()
        {
          Activity localActivity = getActivity();
          if ((localActivity != null) && (!localActivity.isFinishing())) {
            SetStatusFragment.this.bindViews();
          }
        }
      });
      return;
    }
    catch (RemoteException localRemoteException)
    {
      for (;;)
      {
        Log.e("talk", "unable to get presence", localRemoteException);
        mController.finish();
      }
    }
  }
  
  private void log(String paramString)
  {
    Log.v("talk", "[SetStatusFragment." + Thread.currentThread().getId() + "] " + paramString);
  }
  
  private ArrayAdapter<StatusItem> makeAdapter(final Context paramContext, final ArrayList<StatusItem> paramArrayList)
  {
    new ArrayAdapter(paramContext, 2130968636, paramArrayList)
    {
      public View getView(int paramAnonymousInt, View paramAnonymousView, ViewGroup paramAnonymousViewGroup)
      {
        paramAnonymousView = (SetStatusFragment.StatusItem)paramArrayList.get(paramAnonymousInt);
        paramAnonymousViewGroup = val$inflater.inflate(2130968636, paramAnonymousViewGroup, false);
        TextView localTextView = (TextView)paramAnonymousViewGroup.findViewById(16908308);
        localTextView.setText(mStatus);
        if (mStatusResourceId != 0)
        {
          localTextView.setCompoundDrawablePadding(6);
          localTextView.setCompoundDrawablesWithIntrinsicBounds(paramContext.getResources().getDrawable(mStatusResourceId), null, null, null);
        }
        return paramAnonymousViewGroup;
      }
    };
  }
  
  private ArrayAdapter<StatusItem> makeCustomStatusItems(Context paramContext)
  {
    Object localObject1 = mPendingPresenceUpdate;
    ArrayList localArrayList = new ArrayList();
    if (localObject1 != null)
    {
      Object localObject2 = ((Presence)localObject1).getDefaultStatusList();
      if (localObject2 != null)
      {
        localObject2 = ((List)localObject2).iterator();
        while (((Iterator)localObject2).hasNext()) {
          localArrayList.add(new StatusItem((String)((Iterator)localObject2).next(), Presence.Show.AVAILABLE, false, mApp.getStatusIcon(5, 0), true));
        }
      }
      localObject1 = ((Presence)localObject1).getDndStatusList();
      if (localObject1 != null)
      {
        localObject1 = ((List)localObject1).iterator();
        while (((Iterator)localObject1).hasNext()) {
          localArrayList.add(new StatusItem((String)((Iterator)localObject1).next(), Presence.Show.DND, false, mApp.getStatusIcon(4, 0), true));
        }
      }
    }
    localObject1 = new StatusItem(mActivity.getString(2131492902), Presence.Show.NONE, false, 0, false);
    ((StatusItem)localObject1).setClickRunnable(new Runnable()
    {
      public void run()
      {
        SetStatusFragment.this.clearStatusLists();
      }
    });
    localArrayList.add(localObject1);
    return makeAdapter(paramContext, localArrayList);
  }
  
  private ArrayAdapter<StatusItem> makeDefaultStatusItems(Context paramContext)
  {
    Object localObject = mPendingPresenceUpdate;
    localObject = new ArrayList();
    ((ArrayList)localObject).add(new StatusItem(mActivity.getString(2131492865), Presence.Show.AVAILABLE, false, mApp.getStatusIcon(5, 0), false));
    ((ArrayList)localObject).add(new StatusItem(mActivity.getString(2131492866), Presence.Show.DND, false, mApp.getStatusIcon(4, 0), false));
    ((ArrayList)localObject).add(new StatusItem(mActivity.getString(2131492869), Presence.Show.AVAILABLE, true, mApp.getStatusIcon(1, 0), false));
    StatusItem localStatusItem = new StatusItem(mActivity.getString(2131492872), Presence.Show.NONE, false, 0, false);
    localStatusItem.setClickRunnable(new Runnable()
    {
      public void run()
      {
        try
        {
          if (mImSession != null) {
            mImSession.logout();
          }
          AccountLoginUtils.setInactiveAccount(mAccountInfo, mApp);
        }
        catch (RemoteException localRemoteException)
        {
          for (;;)
          {
            Log.e("talk", "RemoteException failure", localRemoteException);
          }
        }
        AccountSelectionActivity.startAccountSelectionActivity(mActivity);
      }
    });
    ((ArrayList)localObject).add(localStatusItem);
    return makeAdapter(paramContext, (ArrayList)localObject);
  }
  
  private void registerForIntentBroadcast()
  {
    mFilter = new IntentFilter();
    mFilter.addAction("android.intent.action.GTALK_AVATAR_CHANGED");
    getActivity().registerReceiver(mIntentReceiver, mFilter);
  }
  
  private void registerListeners()
  {
    if (!mListenersRegistered) {}
    try
    {
      if (mConnectionStateListener == null)
      {
        mConnectionStateListener = new ConnectionStateListener(this, getActivity());
        mImSession.addConnectionStateListener(mConnectionStateListener);
      }
      if (mRosterListener == null)
      {
        mRosterListener = new RosterListener(this, getActivity());
        mImSession.addRemoteRosterListener(mRosterListener);
      }
      mListenersRegistered = true;
      return;
    }
    catch (RemoteException localRemoteException) {}
  }
  
  private void savePendingAvatarChanges()
  {
    if (mPendingAvatarUpdate != null)
    {
      int i;
      if (mPendingAvatarUpdate == mPendingAvatarUpdateDeleteMagic)
      {
        i = 1;
        if (i == 0) {
          break label60;
        }
      }
      label60:
      for (final Bitmap localBitmap = null;; localBitmap = mPendingAvatarUpdate)
      {
        if (i != 0) {
          mPendingAvatarUpdate = null;
        }
        new Thread(new Runnable()
        {
          public void run()
          {
            DatabaseUtils.saveAvatar(mActivity.getContentResolver(), mAccountInfo.username, mAccountInfo.accountId, localBitmap);
            if (SetStatusFragment.this.uploadAvatar()) {
              SetStatusFragment.access$1502(SetStatusFragment.this, null);
            }
            mActivity.runOnUiThread(new Runnable()
            {
              public void run()
              {
                mApp.clearSelfAvatarCache();
                mController.updateRoster();
                SetStatusFragment.this.initializeFromImSession();
              }
            });
          }
        }).start();
        return;
        i = 0;
        break;
      }
    }
    bindViews();
  }
  
  private void saveStatusMessageIfChanged()
  {
    if ((mPendingPresenceUpdate == null) || (!mPendingPresenceUpdate.isAvailable())) {}
    String str;
    do
    {
      return;
      str = mCustomStatusText.getText().toString();
    } while (str.equals(mPendingPresenceUpdate.getStatus()));
    Presence.Show localShow = mPendingPresenceUpdate.getShow();
    Presence localPresence = mPendingPresenceUpdate;
    boolean bool;
    if (localShow != Presence.Show.NONE) {
      bool = true;
    }
    for (;;)
    {
      localPresence.setAvailable(bool);
      mPendingPresenceUpdate.setStatus(localShow, str);
      try
      {
        mImSession.setPresence(mPendingPresenceUpdate);
        savePendingAvatarChanges();
        return;
        bool = false;
      }
      catch (RemoteException localRemoteException)
      {
        for (;;)
        {
          Log.e("talk", "RemoteException failure", localRemoteException);
        }
      }
    }
  }
  
  private void setupPresencePopdown(final View paramView, final boolean paramBoolean)
  {
    paramView.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(final View paramAnonymousView)
      {
        final ListPopupWindow localListPopupWindow = new ListPopupWindow(getActivity(), null);
        if (paramBoolean) {}
        for (paramAnonymousView = SetStatusFragment.this.makeCustomStatusItems(getActivity());; paramAnonymousView = SetStatusFragment.this.makeDefaultStatusItems(getActivity()))
        {
          localListPopupWindow.setAnchorView(paramView);
          localListPopupWindow.setAdapter(paramAnonymousView);
          localListPopupWindow.setModal(true);
          localListPopupWindow.setOnItemClickListener(new AdapterView.OnItemClickListener()
          {
            public void onItemClick(AdapterView<?> paramAnonymous2AdapterView, View paramAnonymous2View, int paramAnonymous2Int, long paramAnonymous2Long)
            {
              SetStatusFragment.this.handlePresenceChoice((SetStatusFragment.StatusItem)paramAnonymousView.getItem(paramAnonymous2Int));
              localListPopupWindow.dismiss();
            }
          });
          ((InputMethodManager)mActivity.getSystemService("input_method")).hideSoftInputFromWindow(paramView.getWindowToken(), 0);
          localListPopupWindow.show();
          return;
        }
      }
    });
  }
  
  private void unregisterForIntentBroadcast()
  {
    getActivity().unregisterReceiver(mIntentReceiver);
  }
  
  private void unregisterListeners()
  {
    if (mImSession != null) {}
    try
    {
      if (mConnectionStateListener != null)
      {
        mImSession.removeConnectionStateListener(mConnectionStateListener);
        mConnectionStateListener.clearRefs();
        mConnectionStateListener = null;
      }
      if (mRosterListener != null)
      {
        mImSession.removeRemoteRosterListener(mRosterListener);
        mRosterListener.clearRefs();
        mRosterListener = null;
      }
      mListenersRegistered = false;
      return;
    }
    catch (RemoteException localRemoteException) {}
  }
  
  private boolean uploadAvatar()
  {
    try
    {
      mImSession.uploadAvatarFromDb();
      return true;
    }
    catch (RemoteException localRemoteException)
    {
      Log.e("talk", "RemoteException failure", localRemoteException);
    }
    return false;
  }
  
  private void waitForAsyncReadSettingsToComplete()
  {
    waitForAsyncTaskToComplete(mAsyncReadSettingsTask);
  }
  
  private void waitForAsyncTaskToComplete(AsyncTask<?, ?, ?> paramAsyncTask)
  {
    if (paramAsyncTask != null) {}
    try
    {
      paramAsyncTask.get();
      return;
    }
    catch (Exception paramAsyncTask)
    {
      Log.e("Talk", "SetStatusFragment.waitForAsyncTaskToComplete get error", paramAsyncTask);
    }
  }
  
  private void waitForAsyncTasksToComplete()
  {
    waitForAsyncReadSettingsToComplete();
  }
  
  public void onActivityResult(final int paramInt1, final int paramInt2, final Intent paramIntent)
  {
    mOnActivityResultRunnable = new Runnable()
    {
      public void run()
      {
        if (paramInt2 == -1) {}
        switch (paramInt1)
        {
        default: 
        case 1100: 
          Bundle localBundle;
          do
          {
            return;
            localBundle = paramIntent.getExtras();
          } while (localBundle == null);
          SetStatusFragment.access$1502(SetStatusFragment.this, (Bitmap)localBundle.getParcelable("data"));
          SetStatusFragment.this.savePendingAvatarChanges();
          return;
        }
        mAvatarPicker.cropPhoto();
      }
    };
    checkRunnable();
  }
  
  public void onAttach(Activity paramActivity)
  {
    if (TalkApp.debugLoggable()) {
      log("onAttach");
    }
    super.onAttach(paramActivity);
    mController = ((Host)paramActivity).getSetStatusController();
    mActivity = paramActivity;
    checkRunnable();
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    paramConfiguration = mRoot.findViewById(2131755141);
    getLayoutParamsrightMargin = getResources().getDimensionPixelOffset(2131427372);
    paramConfiguration.requestLayout();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    mApp = TalkApp.getApplication(mActivity);
    mAvatarPicker = new AvatarPicker(paramBundle);
    mCreated = true;
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    if (ActivityUtils.isTablet(getActivity())) {}
    for (mRoot = paramLayoutInflater.inflate(2130968634, paramViewGroup, false);; mRoot = paramLayoutInflater.inflate(2130968635, paramViewGroup, false))
    {
      initViews();
      return mRoot;
    }
  }
  
  public void onHiddenChanged(boolean paramBoolean)
  {
    super.onHiddenChanged(paramBoolean);
    if (paramBoolean) {
      saveStatusMessageIfChanged();
    }
  }
  
  public void onResume()
  {
    super.onResume();
    mPaused = false;
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    mAvatarPicker.onSaveInstanceState(paramBundle);
  }
  
  public void onStart()
  {
    super.onStart();
    mAccountInfo = ((BuddyListFragment.BuddyListHost)getActivity()).getAccountInfo();
    asyncLoadSettings();
    initialize();
    registerForIntentBroadcast();
    checkRunnable();
  }
  
  public void onStop()
  {
    super.onStop();
    saveStatusMessageIfChanged();
    unregisterListeners();
    unregisterForIntentBroadcast();
    mApp.removeImSessionAvailableCallback(mHandler);
    ((InputMethodManager)mActivity.getSystemService("input_method")).hideSoftInputFromWindow(mCustomStatusText.getWindowToken(), 0);
  }
  
  public void switchAccounts(TalkApp.AccountInfo paramAccountInfo)
  {
    if (!mCreated) {
      log("switchAccounts: fragment's onCreate not called yet");
    }
    do
    {
      return;
      unregisterListeners();
      if (mActivity != null) {
        break;
      }
    } while (!TalkApp.verboseLoggable());
    log("switchAccounts: mActivity is NULL");
    return;
    waitForAsyncTasksToComplete();
    mAccountInfo = paramAccountInfo;
    asyncLoadSettings();
    initialize();
    initViews();
  }
  
  public class AvatarPicker
  {
    private File mCurrentPhotoFile;
    
    public AvatarPicker(Bundle paramBundle)
    {
      onRestoreInstanceState(paramBundle);
    }
    
    private String getPhotoFileName()
    {
      Date localDate = new Date(System.currentTimeMillis());
      SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("'IMG'_yyyyMMdd_HHmmss");
      return localSimpleDateFormat.format(localDate) + ".jpg";
    }
    
    public void cropPhoto()
    {
      try
      {
        MediaScannerConnection.scanFile(mActivity, new String[] { mCurrentPhotoFile.getAbsolutePath() }, new String[] { null }, null);
        Intent localIntent = SetStatusFragment.getCropImageIntent(Uri.fromFile(mCurrentPhotoFile));
        mActivity.startActivityForResult(localIntent, 1100);
        return;
      }
      catch (Exception localException)
      {
        Log.e("talk", "Cannot crop image", localException);
        Toast.makeText(mActivity, 2131493050, 1).show();
      }
    }
    
    protected void doPickPhotoFromGallery()
    {
      try
      {
        Intent localIntent = SetStatusFragment.getPhotoPickIntent();
        mActivity.startActivityForResult(localIntent, 1100);
        return;
      }
      catch (ActivityNotFoundException localActivityNotFoundException)
      {
        Toast.makeText(mActivity, 2131493050, 1).show();
      }
    }
    
    protected void doTakePhoto()
    {
      try
      {
        SetStatusFragment.PHOTO_DIR.mkdirs();
        mCurrentPhotoFile = new File(SetStatusFragment.PHOTO_DIR, getPhotoFileName());
        Intent localIntent = SetStatusFragment.getTakePickIntent(mCurrentPhotoFile);
        mActivity.startActivityForResult(localIntent, 1101);
        return;
      }
      catch (ActivityNotFoundException localActivityNotFoundException)
      {
        Toast.makeText(mActivity, 2131493050, 1).show();
      }
    }
    
    public void onRestoreInstanceState(Bundle paramBundle)
    {
      if (paramBundle != null)
      {
        paramBundle = paramBundle.getString("currentphotofile");
        if (paramBundle != null) {
          mCurrentPhotoFile = new File(paramBundle);
        }
      }
    }
    
    public void onSaveInstanceState(Bundle paramBundle)
    {
      if (mCurrentPhotoFile != null) {
        paramBundle.putString("currentphotofile", mCurrentPhotoFile.toString());
      }
    }
    
    public void show()
    {
      new PickPhotoDialogFragment().show(getFragmentManager(), "pickphoto");
    }
    
    private class PickPhotoDialogFragment
      extends DialogFragment
    {
      public PickPhotoDialogFragment() {}
      
      public Dialog onCreateDialog(Bundle paramBundle)
      {
        paramBundle = new ContextThemeWrapper(mActivity, 16973934);
        if (mHaveAvatar) {}
        for (int i = 3;; i = 2)
        {
          Object localObject = new String[i];
          i = 0 + 1;
          localObject[0] = mActivity.getString(2131493048);
          int j = i + 1;
          localObject[i] = mActivity.getString(2131493049);
          if (mHaveAvatar) {
            localObject[j] = mActivity.getString(2131493047);
          }
          localObject = new ArrayAdapter(paramBundle, 17367043, (Object[])localObject);
          paramBundle = new AlertDialog.Builder(paramBundle);
          paramBundle.setTitle(2131493046);
          paramBundle.setSingleChoiceItems((ListAdapter)localObject, -1, new DialogInterface.OnClickListener()
          {
            public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
            {
              paramAnonymousDialogInterface.dismiss();
              paramAnonymousDialogInterface = getActivity();
              if ((paramAnonymousDialogInterface == null) || (paramAnonymousDialogInterface.isFinishing())) {
                return;
              }
              switch (paramAnonymousInt)
              {
              default: 
                return;
              case 0: 
                doPickPhotoFromGallery();
                return;
              case 1: 
                doTakePhoto();
                return;
              }
              SetStatusFragment.this.discardAvatar();
            }
          });
          return paramBundle.create();
        }
      }
    }
  }
  
  private static class ConnectionStateListener
    extends IConnectionStateListener.Stub
  {
    Activity mActivity;
    SetStatusFragment mFragment;
    
    public ConnectionStateListener(SetStatusFragment paramSetStatusFragment, Activity paramActivity)
    {
      mFragment = paramSetStatusFragment;
      mActivity = paramActivity;
    }
    
    public void clearRefs()
    {
      mFragment = null;
      mActivity = null;
    }
    
    public void connectionStateChanged(ConnectionState paramConnectionState, ConnectionError paramConnectionError, long paramLong, String paramString)
      throws RemoteException
    {
      for (;;)
      {
        try
        {
          paramConnectionError = mFragment;
          paramString = mActivity;
          if (paramConnectionError == null) {
            break label97;
          }
          if (paramString == null) {
            return;
          }
          try
          {
            switch (paramConnectionState.getState())
            {
            case 3: 
              paramString.runOnUiThread(new Runnable()
              {
                public void run()
                {
                  if (mFragment == null) {
                    return;
                  }
                  mFragment.disableUI();
                }
              });
              return;
            }
          }
          finally {}
          paramString.runOnUiThread(new Runnable()
          {
            public void run()
            {
              if (mFragment == null) {
                return;
              }
              mFragment.enableUI();
            }
          });
        }
        catch (RuntimeException paramConnectionState)
        {
          Log.e("talk", "SetStatusFragment.connectionStateChanged error", paramConnectionState);
          throw paramConnectionState;
        }
        continue;
        label97:
        return;
      }
    }
  }
  
  public static abstract interface Controller
  {
    public abstract void finish();
    
    public abstract void updateRoster();
  }
  
  public static abstract interface Host
  {
    public abstract SetStatusFragment.Controller getSetStatusController();
  }
  
  private class ReadSettingsTask
    extends AsyncTask<Void, Void, Boolean>
  {
    private ReadSettingsTask() {}
    
    protected Boolean doInBackground(Void... paramVarArgs)
    {
      paramVarArgs = SettingsCache.getInstance().getSettingsMap(mAccountInfo.accountId);
      SetStatusFragment.access$1002(SetStatusFragment.this, paramVarArgs.getVideoChatEnabled());
      SetStatusFragment.access$1102(SetStatusFragment.this, paramVarArgs.getAudioChatEnabled());
      return Boolean.valueOf(mVideoChatEnabled);
    }
    
    protected void onPostExecute(Boolean paramBoolean)
    {
      SetStatusFragment.access$1202(SetStatusFragment.this, SettingsCache.getInstance().getSettingsMap(mAccountInfo.accountId));
    }
  }
  
  static class RosterListener
    extends IRosterListener.Stub
  {
    Activity mActivity;
    SetStatusFragment mFragment;
    
    public RosterListener(SetStatusFragment paramSetStatusFragment, Activity paramActivity)
    {
      mFragment = paramSetStatusFragment;
      mActivity = paramActivity;
    }
    
    public void clearRefs()
    {
      mFragment = null;
      mActivity = null;
    }
    
    public void presenceChanged(String paramString) {}
    
    public void rosterChanged() {}
    
    public void selfPresenceChanged()
    {
      SetStatusFragment localSetStatusFragment = mFragment;
      Activity localActivity = mActivity;
      if ((localSetStatusFragment == null) || (localActivity == null)) {
        return;
      }
      localActivity.runOnUiThread(new Runnable()
      {
        public void run()
        {
          if (mFragment == null) {
            return;
          }
          mFragment.initialize();
        }
      });
    }
  }
  
  class StatusItem
  {
    boolean mCustomPresence;
    boolean mInvisible;
    Runnable mRunnable;
    Presence.Show mShow;
    String mStatus;
    int mStatusResourceId;
    
    StatusItem(String paramString, Presence.Show paramShow, boolean paramBoolean1, int paramInt, boolean paramBoolean2)
    {
      mStatus = paramString;
      mStatusResourceId = paramInt;
      mShow = paramShow;
      mInvisible = paramBoolean1;
      mCustomPresence = paramBoolean2;
    }
    
    public void setClickRunnable(Runnable paramRunnable)
    {
      mRunnable = paramRunnable;
    }
    
    public String toString()
    {
      return mStatus;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.fragments.SetStatusFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */