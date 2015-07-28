package com.google.android.talk;

import android.app.Activity;
import android.content.AsyncQueryHandler;
import android.content.Context;
import android.database.ContentObserver;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.Log;
import com.google.android.gsf.TalkContract.Contacts;

public class ContactInfoQuery
{
  private static final String[] CONTACT_PROJECTION = { "_id", "nickname", "type", "mode", "status", "cap" };
  private static final String[] CONTACT_PROJECTION_WITH_AVATAR = { "_id", "nickname", "type", "mode", "status", "cap", "avatars_data" };
  private ContactInfoQueryCallback mContactInfoCallback;
  private Cursor mContactInfoCursor;
  private ContactInfoQueryHandler mContactInfoQueryHandler;
  private String[] mContactInfoSelectionArgs;
  private ContentObserver mContentObserver;
  private Context mContext;
  private boolean mHaveContactInfo;
  private boolean mIncludeAvatar;
  private int mLogLevel = 0;
  private String mSelection;
  
  public ContactInfoQuery(Context paramContext, long paramLong, String paramString, ContentObserver paramContentObserver, boolean paramBoolean)
  {
    if ((paramString == null) || (paramLong <= 0L)) {
      Log.e("talk", "ContactInfoQuery: bad params, accountId=" + paramLong + ", contact=" + paramString, new RuntimeException());
    }
    setContactInfo(paramLong, paramString);
    mContactInfoQueryHandler = new ContactInfoQueryHandler(paramContext);
    mContentObserver = paramContentObserver;
    mContext = paramContext;
    mIncludeAvatar = paramBoolean;
  }
  
  private void log(String paramString)
  {
    Log.d("talk", "[ContactInfoQuery] " + paramString);
  }
  
  public void cleanupContactInfoCursor()
  {
    if (mContactInfoCursor != null)
    {
      if (mContentObserver != null) {
        mContactInfoCursor.unregisterContentObserver(mContentObserver);
      }
      mContactInfoCursor.close();
      mContactInfoCursor = null;
    }
  }
  
  public Drawable getAvatar()
  {
    Object localObject2 = null;
    Object localObject1 = localObject2;
    if (mIncludeAvatar)
    {
      localObject1 = localObject2;
      if (mContactInfoCursor != null)
      {
        Bitmap localBitmap = DatabaseUtils.getAvatarFromCursor(mContactInfoCursor, 6);
        localObject1 = localObject2;
        if (localBitmap != null) {
          localObject1 = new BitmapDrawable(localBitmap);
        }
      }
    }
    localObject2 = localObject1;
    if (localObject1 == null) {
      localObject2 = TalkApp.getApplication((Activity)mContext).getGenericAvatar();
    }
    return (Drawable)localObject2;
  }
  
  public int getCapabilities()
  {
    if ((mContactInfoCursor != null) && (mContactInfoCursor.moveToFirst())) {
      return mContactInfoCursor.getInt(5);
    }
    return 0;
  }
  
  public long getContactId()
  {
    if ((mContactInfoCursor != null) && (mContactInfoCursor.moveToFirst())) {
      return mContactInfoCursor.getLong(0);
    }
    return -1L;
  }
  
  public String getCustomPresence()
  {
    if ((mContactInfoCursor != null) && (mContactInfoCursor.moveToFirst())) {
      return mContactInfoCursor.getString(4);
    }
    return null;
  }
  
  public String getNickName()
  {
    if ((mContactInfoCursor != null) && (mContactInfoCursor.moveToFirst())) {
      return StringUtils.parseAbbreviatedAddress(mContactInfoCursor.getString(1));
    }
    return null;
  }
  
  public int getPresenceStatus()
  {
    if ((mContactInfoCursor != null) && (mContactInfoCursor.moveToFirst())) {
      return mContactInfoCursor.getInt(3);
    }
    return 0;
  }
  
  public void requeryForContactInfo()
  {
    if (mLogLevel >= 1) {
      log("requeryForContactInfo");
    }
    startQueryForContactInfo();
  }
  
  public void setContactInfo(long paramLong, String paramString)
  {
    if (paramLong != 0L)
    {
      mContactInfoSelectionArgs = new String[] { paramString, String.valueOf(paramLong) };
      mSelection = "username=? AND account=?";
      return;
    }
    mContactInfoSelectionArgs = new String[] { paramString };
    mSelection = "username=?";
  }
  
  public void setContactInfoCallback(ContactInfoQueryCallback paramContactInfoQueryCallback)
  {
    mContactInfoCallback = paramContactInfoQueryCallback;
  }
  
  public void startQueryForContactInfo()
  {
    mContactInfoQueryHandler.cancelOperation(20);
    if (mLogLevel == 2)
    {
      log("startQueryForContactInfo:");
      log("   mContactInfoSelectionArgs[0]=" + mContactInfoSelectionArgs[0]);
      log("   mContactInfoSelectionArgs[1]=" + mContactInfoSelectionArgs[1]);
    }
    ContactInfoQueryHandler localContactInfoQueryHandler = mContactInfoQueryHandler;
    Uri localUri = TalkContract.Contacts.CONTENT_URI;
    if (mIncludeAvatar) {}
    for (String[] arrayOfString = CONTACT_PROJECTION_WITH_AVATAR;; arrayOfString = CONTACT_PROJECTION)
    {
      localContactInfoQueryHandler.startQuery(20, null, localUri, arrayOfString, mSelection, mContactInfoSelectionArgs, null);
      return;
    }
  }
  
  public static abstract interface ContactInfoQueryCallback
  {
    public abstract void onContactInfoLoaded();
  }
  
  public static abstract interface ContactInfoQueryCallbackErrorHandler
    extends ContactInfoQuery.ContactInfoQueryCallback
  {
    public abstract void onContactInfoLoadFailed(String paramString, Cursor paramCursor);
  }
  
  private final class ContactInfoQueryHandler
    extends AsyncQueryHandler
  {
    public ContactInfoQueryHandler(Context paramContext)
    {
      super();
    }
    
    protected void onQueryComplete(int paramInt, Object paramObject, Cursor paramCursor)
    {
      if ((paramCursor == null) || (!paramCursor.moveToFirst())) {
        if ((mContactInfoCallback instanceof ContactInfoQuery.ContactInfoQueryCallbackErrorHandler)) {
          ((ContactInfoQuery.ContactInfoQueryCallbackErrorHandler)mContactInfoCallback).onContactInfoLoadFailed(mContactInfoSelectionArgs[0], paramCursor);
        }
      }
      do
      {
        return;
        cleanupContactInfoCursor();
        ContactInfoQuery.access$202(ContactInfoQuery.this, paramCursor);
        if (mContentObserver != null) {
          mContactInfoCursor.registerContentObserver(mContentObserver);
        }
        ContactInfoQuery.access$402(ContactInfoQuery.this, true);
        if (mLogLevel == 2) {
          ContactInfoQuery.this.log("onQueryComplete: cursor.getCount(): " + paramCursor.getCount());
        }
      } while (mContactInfoCallback == null);
      mContactInfoCallback.onContactInfoLoaded();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.ContactInfoQuery
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */