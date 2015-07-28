package com.google.android.talk;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Message;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.gtalkservice.IGTalkService;
import com.google.android.gtalkservice.IImSession;
import com.google.android.gtalkservice.Presence;
import com.google.android.talk.util.PresenceUtils;
import java.util.HashMap;
import java.util.List;

public class AccountListAdapter
  extends ArrayAdapter<TalkApp.AccountInfo>
{
  private TalkApp.AccountInfo mAccountInfo;
  private TalkApp mApp;
  private HashMap<String, Drawable> mCachedAvatars = new HashMap();
  private ContentResolver mContentResolver;
  private Handler mHandler;
  protected LayoutInflater mInflater;
  private boolean mIsOnline;
  private int mPosition;
  private View.OnClickListener mPresenceClickListener = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView) {}
  };
  private int mPresenceStatus;
  private String mStatus;
  
  public AccountListAdapter(Context paramContext, List<TalkApp.AccountInfo> paramList, ContentResolver paramContentResolver, TalkApp paramTalkApp, Handler paramHandler)
  {
    super(paramContext, 2130968577, paramList);
    mInflater = ((LayoutInflater)paramContext.getSystemService("layout_inflater"));
    mContentResolver = paramContentResolver;
    mApp = paramTalkApp;
    mHandler = paramHandler;
  }
  
  private void bindAccountNameAndStatus(View paramView, int paramInt1, int paramInt2)
  {
    TextView localTextView2 = (TextView)paramView.findViewById(2131755020);
    TextView localTextView1 = (TextView)paramView.findViewById(2131755023);
    localTextView2.setTextColor(paramInt1);
    localTextView1.setTextColor(paramInt2);
    if (mAccountInfo.unreadCount > 0) {
      localTextView2.setText(mAccountInfo.username + ", ");
    }
    for (;;)
    {
      paramView = paramView.findViewById(2131755024);
      if (!mAccountInfo.loading) {
        break;
      }
      localTextView1.setText(mApp.getString(2131492874));
      paramView.setVisibility(0);
      return;
      localTextView2.setText(mAccountInfo.username);
    }
    if (!TextUtils.isEmpty(mStatus)) {
      localTextView1.setText(mStatus);
    }
    for (;;)
    {
      paramView.setVisibility(8);
      return;
      localTextView1.setText(mApp.mDefaultStatusStrings[mPresenceStatus]);
    }
  }
  
  private void bindAvatarView(View paramView, boolean paramBoolean)
  {
    ImageView localImageView = (ImageView)paramView.findViewById(2131755018);
    localImageView.setVisibility(0);
    Drawable localDrawable = (Drawable)mCachedAvatars.get(mAccountInfo.username);
    paramView = localDrawable;
    if (localDrawable == null)
    {
      localDrawable = mApp.getGenericAvatar();
      paramView = localDrawable;
      if (mAccountInfo.accountId > 0L)
      {
        mCachedAvatars.put(mAccountInfo.username, localDrawable);
        new RetrieveAccountAvatarTask(mContentResolver, mAccountInfo, null).execute(new TalkApp.AccountInfo[] { mAccountInfo });
        paramView = localDrawable;
      }
    }
    localImageView.setImageDrawable(paramView);
    if (paramBoolean)
    {
      paramView.setColorFilter(mApp.getDesaturedColorFilter());
      return;
    }
    paramView.clearColorFilter();
  }
  
  private void bindPresence(View paramView)
  {
    boolean bool2 = true;
    paramView = (ImageView)paramView.findViewById(2131755022);
    mStatus = null;
    mPresenceStatus = 0;
    boolean bool1;
    if (mPresenceStatus != 0)
    {
      bool1 = true;
      mIsOnline = bool1;
      if ((mApp.getGTalkService() == null) || (mAccountInfo.accountId <= 0L)) {}
    }
    for (;;)
    {
      try
      {
        Object localObject = mApp.getGTalkService().getImSessionForAccountId(mAccountInfo.accountId);
        if (localObject != null)
        {
          localObject = ((IImSession)localObject).getPresence();
          mPresenceStatus = PresenceUtils.translatePresence((Presence)localObject);
          if (mPresenceStatus == 0) {
            continue;
          }
          bool1 = bool2;
          mIsOnline = bool1;
          ((Presence)localObject).getCapabilities();
          mStatus = ((Presence)localObject).getStatus();
        }
      }
      catch (RemoteException localRemoteException)
      {
        Log.e("talk", "RemoteException failure", localRemoteException);
        continue;
      }
      if (!mAccountInfo.loading)
      {
        paramView.setImageResource(mApp.getStatusIcon(mPresenceStatus, 0));
        paramView.setOnClickListener(mPresenceClickListener);
      }
      return;
      bool1 = false;
      break;
      bool1 = false;
    }
  }
  
  private void bindSigninButton(View paramView)
  {
    if (0 == 0) {
      return;
    }
    if (mAccountInfo.loading) {}
    for (;;)
    {
      throw null;
    }
  }
  
  private void bindUnreadCount(View paramView)
  {
    paramView = (TextView)paramView.findViewById(2131755021);
    if (mAccountInfo.unreadCount > 0)
    {
      paramView.setVisibility(0);
      paramView.setText(String.valueOf(mAccountInfo.unreadCount));
      return;
    }
    paramView.setVisibility(4);
  }
  
  private void sendMessage(int paramInt1, int paramInt2)
  {
    Message localMessage = new Message();
    what = paramInt2;
    arg1 = paramInt1;
    localMessage.setTarget(mHandler);
    localMessage.sendToTarget();
  }
  
  public View getView(final int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    boolean bool;
    label48:
    int i;
    if (paramView == null)
    {
      paramView = mInflater.inflate(2130968577, paramViewGroup, false);
      mAccountInfo = ((TalkApp.AccountInfo)getItem(paramInt));
      mPosition = paramInt;
      bindPresence(paramView);
      if (mPresenceStatus != 0) {
        break label140;
      }
      bool = true;
      bindAvatarView(paramView, bool);
      bindUnreadCount(paramView);
      bindSigninButton(paramView);
      paramViewGroup = getContext().getResources();
      paramView.setBackgroundResource(mApp.getStatusColorId(mPresenceStatus));
      if (mPresenceStatus != 0) {
        break label146;
      }
      i = 2131296298;
    }
    for (int j = 2131296299;; j = 17170443)
    {
      bindAccountNameAndStatus(paramView, paramViewGroup.getColor(i), paramViewGroup.getColor(j));
      paramView.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          AccountListAdapter.this.sendMessage(paramInt, 123);
        }
      });
      return paramView;
      break;
      label140:
      bool = false;
      break label48;
      label146:
      i = 17170443;
    }
  }
  
  class RetrieveAccountAvatarTask
    extends DatabaseUtils.RetrieveAccountAvatarTask
  {
    private TalkApp.AccountInfo mAccountInfo;
    
    public RetrieveAccountAvatarTask(ContentResolver paramContentResolver, TalkApp.AccountInfo paramAccountInfo, Runnable paramRunnable)
    {
      super(paramRunnable);
      mAccountInfo = paramAccountInfo;
    }
    
    protected void onPostExecute(DatabaseUtils.AvatarData paramAvatarData)
    {
      super.onPostExecute(paramAvatarData);
      if (mAvatarData != null)
      {
        paramAvatarData = new BitmapDrawable(BitmapFactory.decodeByteArray(mAvatarData, 0, mAvatarData.length));
        mCachedAvatars.put(mAccountInfo.username, paramAvatarData);
        notifyDataSetChanged();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.AccountListAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */