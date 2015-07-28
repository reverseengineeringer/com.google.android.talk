package com.google.android.talk.util;

import android.app.Activity;
import android.content.AsyncQueryHandler;
import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.Intent;
import android.content.SharedPreferences;
import android.database.ContentObserver;
import android.database.Cursor;
import android.os.Handler;
import android.util.Log;
import com.google.android.gsf.TalkContract.Chats;
import com.google.android.gsf.TalkContract.Contacts;
import com.google.android.talk.loaders.RosterListLoader;
import com.google.android.talk.loaders.RosterListLoader.SortMode;
import java.util.ArrayList;
import java.util.HashSet;

public class ChatList
{
  private static final String[] PROJECTION = { "_id", "account", "groupchat", "username", "nickname", "type", "client_type" };
  private long mAccountId;
  private Activity mActivity;
  private boolean mClosed;
  private ContentObserver mContentObserver = new ContentObserver(null)
  {
    public void onChange(boolean paramAnonymousBoolean)
    {
      if (Log.isLoggable("talk", 3)) {
        ChatList.this.log("SwitcherAdapter.mContentObserver.onChange");
      }
      ChatList.this.requery(false);
    }
  };
  private int mCurrentPosition = -1;
  private ArrayList<Info> mData = new ArrayList();
  private HashSet<Long> mDataMap = new HashSet();
  private AsyncQueryHandler mQueryHandler;
  private boolean mQueryOnResume;
  private boolean mRegisteredContentObserver;
  private boolean mSuspendQueries;
  
  public ChatList(Activity paramActivity, long paramLong, final Runnable paramRunnable)
  {
    mActivity = paramActivity;
    mAccountId = paramLong;
    mQueryHandler = new AsyncQueryHandler(mActivity.getContentResolver())
    {
      protected void onQueryComplete(int paramAnonymousInt, Object paramAnonymousObject, Cursor paramAnonymousCursor)
      {
        if (Log.isLoggable("talk", 3)) {
          ChatList.this.log("AsyncQueryHandler.onQueryComplete");
        }
        if (mSuspendQueries) {}
        do
        {
          return;
          ChatList.this.cacheCursorData(paramAnonymousCursor, ((Boolean)paramAnonymousObject).booleanValue());
          ChatList.this.checkContentObserver(paramAnonymousCursor);
          paramAnonymousCursor.close();
        } while (paramRunnable == null);
        paramRunnable.run();
      }
    };
  }
  
  private void cacheCursorData(Cursor paramCursor, boolean paramBoolean)
  {
    ContentResolver localContentResolver = mActivity.getContentResolver();
    if ((paramCursor == null) || (paramBoolean))
    {
      mData.clear();
      mDataMap.clear();
    }
    if (paramCursor != null)
    {
      Object localObject = new HashSet();
      paramCursor.moveToPosition(-1);
      while (paramCursor.moveToNext()) {
        ((HashSet)localObject).add(Long.valueOf(paramCursor.getLong(0)));
      }
      int i = mData.size() - 1;
      while (i >= 0)
      {
        Info localInfo = (Info)mData.get(i);
        if (!((HashSet)localObject).contains(Long.valueOf(mId)))
        {
          mData.remove(i);
          mDataMap.remove(Long.valueOf(mId));
        }
        i -= 1;
      }
      paramCursor.moveToPosition(-1);
      while (paramCursor.moveToNext())
      {
        long l = paramCursor.getLong(0);
        if (!mDataMap.contains(Long.valueOf(l)))
        {
          localObject = new Info(paramCursor, localContentResolver);
          mData.add(localObject);
          mDataMap.add(Long.valueOf(mId));
        }
      }
    }
  }
  
  private void cancelPreviousQuery()
  {
    if (Log.isLoggable("talk", 3)) {
      log("cancelPreviousQuery");
    }
    mQueryHandler.cancelOperation(1);
  }
  
  private void checkContentObserver(Cursor paramCursor)
  {
    if (paramCursor != null) {
      if (!mRegisteredContentObserver)
      {
        mActivity.getContentResolver().registerContentObserver(TalkContract.Contacts.CONTENT_URI_CHAT_CONTACTS, true, mContentObserver);
        mRegisteredContentObserver = true;
      }
    }
    while (!mRegisteredContentObserver) {
      return;
    }
    mActivity.getContentResolver().unregisterContentObserver(mContentObserver);
    mRegisteredContentObserver = false;
  }
  
  private void log(String paramString)
  {
    Log.d("talk", "[ChatList] " + paramString);
  }
  
  private void requery(boolean paramBoolean)
  {
    if (Log.isLoggable("talk", 3)) {
      log("requery");
    }
    cancelPreviousQuery();
    startQuery(paramBoolean);
  }
  
  private void startQuery(boolean paramBoolean)
  {
    if (Log.isLoggable("talk", 3)) {
      log("startQuery");
    }
    cancelPreviousQuery();
    if (mSuspendQueries) {
      mQueryOnResume = true;
    }
    while ((mActivity.isFinishing()) || (mAccountId <= 0L)) {
      return;
    }
    int i = mActivity.getPreferences(0).getInt("gtalk-sort-mode", RosterListLoader.SortMode.ACTIVE_STATUS_ALPHABETICAL.ordinal());
    String str = RosterListLoader.computeSortOrderString(((RosterListLoader.SortMode[])RosterListLoader.SortMode.class.getEnumConstants())[i]);
    mQueryHandler.startQuery(1, Boolean.valueOf(paramBoolean), TalkContract.Contacts.CONTENT_URI_CHAT_CONTACTS, PROJECTION, "chats.is_active == 1 and chats.account_id=?", new String[] { String.valueOf(mAccountId) }, str);
  }
  
  public boolean changeAccount(long paramLong)
  {
    if (paramLong != mAccountId)
    {
      mAccountId = paramLong;
      requery(true);
      return true;
    }
    return false;
  }
  
  public void closeCursor()
  {
    cacheCursorData(null, true);
    checkContentObserver(null);
  }
  
  public long getAccountId()
  {
    return mData.get(mCurrentPosition)).mAccountId;
  }
  
  public int getClientType()
  {
    return mData.get(mCurrentPosition)).mClientType;
  }
  
  public int getCount()
  {
    return mData.size();
  }
  
  public Intent getIntent()
  {
    return ((Info)mData.get(mCurrentPosition)).getIntent(mActivity.getContentResolver());
  }
  
  public String getNickName()
  {
    return mData.get(mCurrentPosition)).mNickname;
  }
  
  public int getType()
  {
    return mData.get(mCurrentPosition)).mType;
  }
  
  public String getUsername()
  {
    return mData.get(mCurrentPosition)).mUsername;
  }
  
  public boolean isClosed()
  {
    return mClosed;
  }
  
  public boolean isGroupChat()
  {
    return mData.get(mCurrentPosition)).mIsGroupChat;
  }
  
  public void moveToPosition(int paramInt)
  {
    mCurrentPosition = paramInt;
  }
  
  public void requery()
  {
    requery(false);
  }
  
  public void resumeRequery()
  {
    mSuspendQueries = false;
    if (mQueryOnResume) {
      requery(false);
    }
  }
  
  public void suspendRequery()
  {
    mSuspendQueries = true;
    mQueryOnResume = false;
  }
  
  private static class Info
  {
    private long mAccountId;
    private int mClientType;
    private long mId;
    private boolean mIsGroupChat;
    private String mNickname;
    private int mType;
    private String mUsername;
    
    Info(Cursor paramCursor, ContentResolver paramContentResolver)
    {
      mId = paramCursor.getLong(0);
      mAccountId = paramCursor.getLong(1);
      mUsername = paramCursor.getString(3);
      mNickname = paramCursor.getString(4);
      mType = paramCursor.getInt(5);
      mClientType = paramCursor.getInt(6);
      if (paramCursor.getInt(2) != 0) {}
      for (;;)
      {
        mIsGroupChat = bool;
        return;
        bool = false;
      }
    }
    
    Intent getIntent(ContentResolver paramContentResolver)
    {
      paramContentResolver = new Intent("android.intent.action.VIEW", ContentUris.withAppendedId(TalkContract.Chats.CONTENT_URI, mId));
      paramContentResolver.putExtra("from", mUsername);
      paramContentResolver.putExtra("accountId", mAccountId);
      if (mIsGroupChat) {
        if (!mIsGroupChat) {
          break label68;
        }
      }
      label68:
      for (int i = 1;; i = 0)
      {
        paramContentResolver.putExtra("groupChat", i);
        return paramContentResolver;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.util.ChatList
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */