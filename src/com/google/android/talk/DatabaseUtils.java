package com.google.android.talk;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.AsyncTask;
import android.util.Log;
import com.google.android.gsf.Gservices;
import com.google.android.gsf.TalkContract.Account;
import com.google.android.gsf.TalkContract.Chats;
import com.google.android.gsf.TalkContract.Contacts;
import com.google.android.gsf.TalkContract.Messages;
import java.io.ByteArrayOutputStream;
import java.io.OutputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.List;

public class DatabaseUtils
{
  private static final String[] ACCOUNT_CONNECTION_STATUS_PROJECTION = { "_id", "username", "account_connStatus" };
  private static final String[] ACCOUNT_ID_PROJECTION = { "_id", "name" };
  public static final String[] AVATAR_PROJECTION = { "_id", "data", "hash" };
  private static int CONTACT_COLUMN_ID;
  private static int CONTACT_COLUMN_NICKNAME = 0;
  private static final String[] CONTACT_NICKNAME_PROJECTION;
  private static final String[] CONTACT_PROJECTION = { "_id" };
  
  static
  {
    CONTACT_COLUMN_ID = 0;
    CONTACT_NICKNAME_PROJECTION = new String[] { "nickname" };
  }
  
  static final boolean IsUserInRosterList(ContentResolver paramContentResolver, String paramString, long paramLong)
  {
    boolean bool1 = false;
    StringBuilder localStringBuilder = new StringBuilder("username");
    localStringBuilder.append("=? AND ");
    localStringBuilder.append("account");
    localStringBuilder.append('=').append(paramLong);
    paramContentResolver = paramContentResolver.query(TalkContract.Contacts.CONTENT_URI_CONTACTS_BAREBONE, CONTACT_PROJECTION, localStringBuilder.toString(), new String[] { paramString }, null);
    if (paramContentResolver != null) {
      try
      {
        boolean bool2 = paramContentResolver.moveToFirst();
        if (bool2) {
          bool1 = true;
        }
        return bool1;
      }
      finally
      {
        paramContentResolver.close();
      }
    }
    logEmptyCursor("IsUserInRosterList");
    return false;
  }
  
  private static String computeAvatarHash(byte[] paramArrayOfByte)
  {
    try
    {
      MessageDigest localMessageDigest = MessageDigest.getInstance("SHA-1");
      localMessageDigest.update(paramArrayOfByte);
      return encodeHex(localMessageDigest.digest());
    }
    catch (NoSuchAlgorithmException paramArrayOfByte)
    {
      paramArrayOfByte.printStackTrace();
    }
    return null;
  }
  
  public static Bitmap decodeAvatar(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {
      return null;
    }
    return BitmapFactory.decodeByteArray(paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  private static String encodeHex(byte[] paramArrayOfByte)
  {
    StringBuffer localStringBuffer = new StringBuffer(paramArrayOfByte.length * 2);
    int i = 0;
    while (i < paramArrayOfByte.length)
    {
      if ((paramArrayOfByte[i] & 0xFF) < 16) {
        localStringBuffer.append("0");
      }
      localStringBuffer.append(Integer.toString(paramArrayOfByte[i] & 0xFF, 16));
      i += 1;
    }
    return localStringBuffer.toString();
  }
  
  public static long getAccountIdForUsername(ContentResolver paramContentResolver, String paramString)
  {
    paramContentResolver = paramContentResolver.query(TalkContract.Account.CONTENT_URI, ACCOUNT_ID_PROJECTION, "username=?", new String[] { paramString }, null);
    long l = 0L;
    if (paramContentResolver != null) {
      try
      {
        if (paramContentResolver.moveToFirst()) {
          l = paramContentResolver.getLong(0);
        }
        return l;
      }
      finally
      {
        paramContentResolver.close();
      }
    }
    logEmptyCursor("getAccountIdForUsername");
    return 0L;
  }
  
  public static List<Long> getAccountIds(ContentResolver paramContentResolver)
  {
    ArrayList localArrayList = new ArrayList();
    paramContentResolver = paramContentResolver.query(TalkContract.Account.CONTENT_URI, ACCOUNT_ID_PROJECTION, null, null, null);
    if (paramContentResolver != null) {}
    try
    {
      if (paramContentResolver.moveToFirst())
      {
        boolean bool;
        do
        {
          localArrayList.add(Long.valueOf(paramContentResolver.getLong(0)));
          bool = paramContentResolver.moveToNext();
        } while (bool);
      }
      return localArrayList;
    }
    finally
    {
      paramContentResolver.close();
    }
  }
  
  public static List<TalkApp.AccountInfo> getAllAccountInfos(ContentResolver paramContentResolver)
  {
    ArrayList localArrayList = new ArrayList();
    paramContentResolver = paramContentResolver.query(TalkContract.Account.CONTENT_URI_WITH_STATUS, ACCOUNT_CONNECTION_STATUS_PROJECTION, null, null, null);
    if (paramContentResolver != null) {}
    try
    {
      if (paramContentResolver.moveToFirst())
      {
        boolean bool;
        do
        {
          TalkApp.AccountInfo localAccountInfo = new TalkApp.AccountInfo();
          accountId = paramContentResolver.getLong(0);
          signedIn = isSignedIn(paramContentResolver);
          username = paramContentResolver.getString(1);
          localArrayList.add(localAccountInfo);
          bool = paramContentResolver.moveToNext();
        } while (bool);
      }
      return localArrayList;
    }
    finally
    {
      paramContentResolver.close();
    }
  }
  
  public static Bitmap getAvatarFromCursor(Cursor paramCursor, int paramInt)
  {
    return decodeAvatar(loadAvatarData(paramCursor, paramInt));
  }
  
  public static final long getIdForContact(ContentResolver paramContentResolver, String paramString, long paramLong)
  {
    long l = 0L;
    StringBuilder localStringBuilder = new StringBuilder("username");
    localStringBuilder.append("=? AND ");
    localStringBuilder.append("account");
    localStringBuilder.append('=').append(paramLong);
    paramContentResolver = paramContentResolver.query(TalkContract.Contacts.CONTENT_URI_CONTACTS_BAREBONE, CONTACT_PROJECTION, localStringBuilder.toString(), new String[] { paramString }, null);
    if (paramContentResolver != null)
    {
      paramLong = l;
      try
      {
        if (paramContentResolver.moveToFirst()) {
          paramLong = paramContentResolver.getLong(CONTACT_COLUMN_ID);
        }
        return paramLong;
      }
      finally
      {
        paramContentResolver.close();
      }
    }
    logEmptyCursor("getIdForContact");
    return 0L;
  }
  
  public static String getNicknameForContact(ContentResolver paramContentResolver, String paramString, long paramLong)
  {
    Object localObject = null;
    StringBuilder localStringBuilder = new StringBuilder("username");
    localStringBuilder.append("=? AND ");
    localStringBuilder.append("account");
    localStringBuilder.append('=').append(paramLong);
    paramString = paramContentResolver.query(TalkContract.Contacts.CONTENT_URI_CONTACTS_BAREBONE, CONTACT_NICKNAME_PROJECTION, localStringBuilder.toString(), new String[] { paramString }, null);
    if (paramString != null)
    {
      paramContentResolver = (ContentResolver)localObject;
      try
      {
        if (paramString.moveToFirst()) {
          paramContentResolver = paramString.getString(CONTACT_COLUMN_NICKNAME);
        }
        return paramContentResolver;
      }
      finally
      {
        paramString.close();
      }
    }
    logEmptyCursor("getNicknameForContact");
    return null;
  }
  
  public static String getUsernameForAccountId(ContentResolver paramContentResolver, Long paramLong)
  {
    paramLong = Long.toString(paramLong.longValue());
    paramLong = paramContentResolver.query(TalkContract.Account.CONTENT_URI, ACCOUNT_ID_PROJECTION, "_id=?", new String[] { paramLong }, null);
    paramContentResolver = null;
    if (paramLong != null) {
      try
      {
        if (paramLong.moveToFirst()) {
          paramContentResolver = paramLong.getString(1);
        }
        return paramContentResolver;
      }
      finally
      {
        paramLong.close();
      }
    }
    logEmptyCursor("getUsernameForAccountId");
    return null;
  }
  
  private static boolean isSignedIn(Cursor paramCursor)
  {
    return paramCursor.getInt(2) == 3;
  }
  
  public static byte[] loadAvatarData(Cursor paramCursor, int paramInt)
  {
    return paramCursor.getBlob(paramInt);
  }
  
  private static void log(String paramString)
  {
    Log.d("talk", "[DatabaseUtils] " + paramString);
  }
  
  private static void logEmptyCursor(String paramString)
  {
    Log.e("talk", "[Databaseutils] " + paramString + ": empty cursor, possibly low memory");
  }
  
  public static final void pruneOldMessageHistory(ContentResolver paramContentResolver)
  {
    long l1 = Gservices.getLong(paramContentResolver, "gtalk_chat_message_lifetime", 604800000L);
    long l2 = Gservices.getLong(paramContentResolver, "gtalk_otr_message_lifetime", 86400000L);
    long l3 = System.currentTimeMillis();
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("date").append('<').append(l3 - l1);
    String str = ((StringBuilder)localObject).toString();
    ((StringBuilder)localObject).delete(0, ((StringBuilder)localObject).length());
    ((StringBuilder)localObject).append("date").append('<').append(l3 - l2);
    localObject = ((StringBuilder)localObject).toString();
    Log.e("talk", "[Databaseutils] pruneOldMessageHistory");
    int i = paramContentResolver.delete(TalkContract.Messages.CONTENT_URI, str, null);
    int j = paramContentResolver.delete(TalkContract.Messages.OTR_MESSAGES_CONTENT_URI, (String)localObject, null);
    if (TalkApp.queryDebugLevel() >= 1) {
      log("pruneOldMessageHistory: deleted " + i + " messages and " + j + " OTR messages");
    }
  }
  
  public static Cursor queryAvatarCursorForUser(ContentResolver paramContentResolver, String paramString, long paramLong)
  {
    return paramContentResolver.query(AvatarCache.getInstance(paramLong, true).getAvatarUri(), AVATAR_PROJECTION, "contact=?", new String[] { paramString }, null);
  }
  
  public static final int removeChatsByContactId(ContentResolver paramContentResolver, long paramLong)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.putNull("is_active");
    return paramContentResolver.update(TalkContract.Chats.CONTENT_URI, localContentValues, "contact_id = ?", new String[] { String.valueOf(paramLong) });
  }
  
  public static void saveAvatar(ContentResolver paramContentResolver, String paramString, long paramLong, Bitmap paramBitmap)
  {
    Uri localUri = AvatarCache.getInstance(paramLong, true).getAvatarUri();
    if (paramBitmap == null)
    {
      int i = paramContentResolver.delete(localUri, "contact=?", new String[] { paramString });
      if (i != 1) {
        log("delete '" + localUri + "' returned " + i + "; expected 1");
      }
      return;
    }
    Object localObject = new ByteArrayOutputStream();
    paramBitmap.compress(Bitmap.CompressFormat.JPEG, 75, (OutputStream)localObject);
    paramBitmap = ((ByteArrayOutputStream)localObject).toByteArray();
    localObject = new ContentValues(3);
    ((ContentValues)localObject).put("contact", paramString);
    ((ContentValues)localObject).put("data", paramBitmap);
    ((ContentValues)localObject).put("hash", computeAvatarHash(paramBitmap));
    paramContentResolver.insert(localUri, (ContentValues)localObject);
  }
  
  public static class AvatarData
  {
    public byte[] mAvatarData;
    public String mAvatarDataHash;
  }
  
  public static class RetrieveAccountAvatarTask
    extends AsyncTask<TalkApp.AccountInfo, Void, DatabaseUtils.AvatarData>
  {
    protected ContentResolver mContentResolver;
    protected Runnable mRunnable;
    
    public RetrieveAccountAvatarTask(ContentResolver paramContentResolver, Runnable paramRunnable)
    {
      mContentResolver = paramContentResolver;
      mRunnable = paramRunnable;
    }
    
    protected DatabaseUtils.AvatarData doInBackground(TalkApp.AccountInfo... paramVarArgs)
    {
      paramVarArgs = DatabaseUtils.queryAvatarCursorForUser(mContentResolver, 0username, 0accountId);
      DatabaseUtils.AvatarData localAvatarData = new DatabaseUtils.AvatarData();
      if (paramVarArgs != null) {}
      try
      {
        if (paramVarArgs.moveToFirst())
        {
          mAvatarData = paramVarArgs.getBlob(1);
          mAvatarDataHash = paramVarArgs.getString(2);
        }
        return localAvatarData;
      }
      finally
      {
        if (paramVarArgs != null) {
          paramVarArgs.close();
        }
      }
    }
    
    protected void onPostExecute(DatabaseUtils.AvatarData paramAvatarData)
    {
      if (mRunnable != null) {
        mRunnable.run();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.DatabaseUtils
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */