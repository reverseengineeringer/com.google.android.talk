package com.google.android.talk;

import android.app.ActionBar;
import android.app.Activity;
import android.content.AsyncQueryHandler;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.database.CursorIndexOutOfBoundsException;
import android.database.StaleDataException;
import android.graphics.drawable.BitmapDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.QuickContactBadge;
import android.widget.TextView;
import android.widget.Toast;
import com.google.android.gsf.TalkContract.Contacts;
import com.google.android.gtalkservice.IGTalkService;
import com.google.android.gtalkservice.IImSession;
import com.google.android.gtalkservice.IRosterListener.Stub;

public class BuddyInfo
  extends Activity
{
  private static final String[] QUERY_PROJECTION = { "username", "nickname", "status", "mode", "cap", "avatars_data", "type" };
  protected TalkApp mApp;
  private ImageView mAvatarView;
  protected final Handler mHandler = new Handler();
  private IImSession mImSession;
  private String mNickname;
  private EditText mNicknameField;
  private int mPresence;
  private ImageView mPresenceView;
  private boolean mQueryCompleted;
  QueryHandler mQueryHandler;
  private String[] mQuerySelectionArg = new String[1];
  private RosterListener mRosterListener = new RosterListener();
  protected IGTalkService mService;
  private TextView mStatusView;
  private int mType;
  private long mUserId;
  private String mUsername;
  private TextView mUsernameField;
  
  private void block()
  {
    Intent localIntent = new Intent();
    localIntent.putExtra("was_removed", "true");
    if (mImSession != null) {}
    try
    {
      mImSession.blockContact(mUsername);
      setResult(-1, localIntent);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      for (;;) {}
    }
  }
  
  private void initView()
  {
    mAvatarView = ((ImageView)findViewById(2131755018));
    mPresenceView = ((ImageView)findViewById(2131755037));
    mUsernameField = ((TextView)findViewById(2131755036));
    mNicknameField = ((EditText)findViewById(2131755035));
    mStatusView = ((TextView)findViewById(2131755023));
    final View localView1 = findViewById(2131755038);
    final View localView2 = findViewById(2131755039);
    View.OnClickListener local1 = new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        if (paramAnonymousView == localView2)
        {
          BuddyInfo.this.remove();
          finish();
        }
        while (paramAnonymousView != localView1) {
          return;
        }
        BuddyInfo.this.block();
        finish();
      }
    };
    if (localView2 != null) {
      localView2.setOnClickListener(local1);
    }
    if (localView1 != null) {
      localView1.setOnClickListener(local1);
    }
  }
  
  private void registerForSessionAvailable()
  {
    mApp.addImSessionAvailableCallback(mHandler, mApp.getAccountIdFromActivityIntent(getIntent()), new SessionAvailableRunnable()
    {
      public void run(IGTalkService paramAnonymousIGTalkService, IImSession paramAnonymousIImSession)
      {
        BuddyInfo.this.serviceStateChanged(paramAnonymousIGTalkService, paramAnonymousIImSession);
      }
    });
  }
  
  private void remove()
  {
    Intent localIntent = new Intent();
    localIntent.putExtra("was_removed", "true");
    if (mImSession != null) {}
    try
    {
      mImSession.removeContact(mUsername);
      setResult(-1, localIntent);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      for (;;) {}
    }
  }
  
  private void saveNickname()
  {
    String str = mNicknameField.getText().toString();
    if (mNickname.equals(str)) {
      return;
    }
    if (TextUtils.isEmpty(str))
    {
      Toast.makeText(this, 2131492901, 1).show();
      return;
    }
    int i = 0;
    for (;;)
    {
      try
      {
        if (mImSession == null) {
          continue;
        }
        mImSession.editContact(mUsername, str, null);
        i = 1;
      }
      catch (RemoteException localRemoteException)
      {
        Log.e("talk", "[BuddyInfo] saveNickname caught" + localRemoteException);
        continue;
        mNickname = str;
      }
      if (i != 0) {
        continue;
      }
      Toast.makeText(this, 2131492900, 1).show();
      return;
      Log.e("talk", "[BuddyInfo] saveNickname: empty IM session");
    }
  }
  
  private void serviceStateChanged(IGTalkService paramIGTalkService, IImSession paramIImSession)
  {
    if (paramIGTalkService != null)
    {
      mService = paramIGTalkService;
      mImSession = paramIImSession;
      if (mImSession == null)
      {
        Log.e("talk", "Empty IM session. Finish!");
        finish();
        return;
      }
      try
      {
        mImSession.addRemoteRosterListener(mRosterListener);
        return;
      }
      catch (Exception paramIGTalkService)
      {
        Log.e("talk", "[BuddyInfo] serviceStateChanged caught " + paramIGTalkService);
        return;
      }
    }
    finish();
  }
  
  private void startQuery()
  {
    mQueryHandler.cancelOperation(1);
    mQueryHandler.startQuery(1, null, TalkContract.Contacts.CONTENT_URI, QUERY_PROJECTION, "contacts._id=?", mQuerySelectionArg, null);
  }
  
  private void unregisterForSessionAvailable()
  {
    mApp.removeImSessionAvailableCallback(mHandler);
  }
  
  private void update(Cursor paramCursor)
  {
    TalkApp localTalkApp;
    try
    {
      localTalkApp = TalkApp.getApplication(this);
      mUsername = paramCursor.getString(0);
      mPresence = paramCursor.getInt(3);
      if (mUsernameField != null) {
        mUsernameField.setText(mUsername);
      }
      getActionBar().setSubtitle(mUsername);
      if (mNickname == null)
      {
        mNickname = paramCursor.getString(1);
        mNicknameField.setText(mNickname);
      }
      mType = paramCursor.getInt(6);
      str = paramCursor.getString(2);
      if (!TextUtils.isEmpty(str)) {
        break label244;
      }
      if (mPresence >= mApp.mDefaultStatusStrings.length) {
        break label215;
      }
      mStatusView.setText(mApp.mDefaultStatusStrings[mPresence]);
    }
    catch (CursorIndexOutOfBoundsException paramCursor)
    {
      for (;;)
      {
        String str;
        Log.e("talk", "[BuddyInfo] update: got exception calling update()", paramCursor);
        finish();
        return;
        mStatusView.setText(str);
      }
    }
    catch (StaleDataException paramCursor)
    {
      Log.e("talk", "[BuddyInfo] update: got exception calling update()", paramCursor);
      finish();
      return;
    }
    paramCursor = DatabaseUtils.getAvatarFromCursor(paramCursor, 5);
    if (paramCursor != null) {}
    label215:
    label244:
    for (paramCursor = new BitmapDrawable(paramCursor);; paramCursor = localTalkApp.getGenericAvatar())
    {
      mAvatarView.setImageDrawable(paramCursor);
      if ((mAvatarView instanceof QuickContactBadge)) {
        ((QuickContactBadge)mAvatarView).assignContactFromEmail(mUsername, true);
      }
      mPresenceView.setImageResource(localTalkApp.getStatusIcon(mPresence, 0));
      return;
      mStatusView.setText("");
      break;
    }
  }
  
  protected final void onCreate(Bundle paramBundle)
  {
    boolean bool = ActivityUtils.isTablet(this);
    super.onCreate(paramBundle);
    if (bool)
    {
      setContentView(2130968588);
      initView();
      mApp = TalkApp.getApplication(this);
      mQueryHandler = new QueryHandler(this);
      mUserId = getIntent().getLongExtra("userId", 0L);
      mQuerySelectionArg[0] = String.valueOf(mUserId);
      if (mUserId != 0L) {
        break label107;
      }
      Log.e("talk", "[BuddyInfo.onCreate: invalid user id = 0");
      finish();
    }
    label107:
    do
    {
      return;
      setContentView(2130968589);
      break;
      registerForSessionAvailable();
      paramBundle = getActionBar();
    } while (paramBundle == null);
    paramBundle.setDisplayOptions(4, 4);
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    if (ActivityUtils.isTablet(this))
    {
      getMenuInflater().inflate(2131689474, paramMenu);
      return true;
    }
    return false;
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    }
    for (;;)
    {
      return true;
      block();
      finish();
      continue;
      remove();
      finish();
      continue;
      onBackPressed();
    }
  }
  
  protected void onRestart()
  {
    super.onRestart();
    mService = null;
    mApp.ensureServiceBound();
    registerForSessionAvailable();
  }
  
  protected final void onRestoreInstanceState(Bundle paramBundle)
  {
    super.onRestoreInstanceState(paramBundle);
    mNickname = paramBundle.getString("o-nickname");
    mNicknameField.setText(paramBundle.getString("nickname"));
  }
  
  protected void onResume()
  {
    super.onResume();
    startQuery();
  }
  
  protected final void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putString("nickname", mNicknameField.getText().toString());
    paramBundle.putString("o-nickname", mNickname);
  }
  
  protected void onStop()
  {
    super.onStop();
    if (mQueryCompleted) {
      saveNickname();
    }
    try
    {
      if (mImSession != null) {
        mImSession.removeRemoteRosterListener(mRosterListener);
      }
      unregisterForSessionAvailable();
      return;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        Log.e("talk", "[BuddyInfo] onStop: caught exception " + localException);
      }
    }
  }
  
  private final class QueryHandler
    extends AsyncQueryHandler
  {
    public QueryHandler(Context paramContext)
    {
      super();
    }
    
    protected void onQueryComplete(int paramInt, Object paramObject, Cursor paramCursor)
    {
      try
      {
        if (!paramCursor.moveToFirst())
        {
          Log.e("talk", "[BuddyInfo] QueryHandler: empty cursor, bail!");
          finish();
          return;
        }
        boolean bool = isFinishing();
        if (bool) {
          return;
        }
        BuddyInfo.this.update(paramCursor);
        BuddyInfo.access$202(BuddyInfo.this, true);
        return;
      }
      finally
      {
        paramCursor.close();
      }
    }
  }
  
  class RosterListener
    extends IRosterListener.Stub
  {
    RosterListener() {}
    
    public void presenceChanged(String paramString)
      throws RemoteException
    {
      BuddyInfo.this.startQuery();
    }
    
    public void rosterChanged()
      throws RemoteException
    {}
    
    public void selfPresenceChanged()
      throws RemoteException
    {}
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.BuddyInfo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */