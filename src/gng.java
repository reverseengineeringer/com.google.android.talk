import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.Build.VERSION;
import android.provider.ContactsContract.Contacts;
import android.provider.ContactsContract.RawContacts;
import android.text.TextUtils;

public final class gng
{
  static final String[] a = { "photo_id" };
  static final String[] b = { "data15" };
  private static final String[] c = { "_id" };
  private static final String[] d = { "contact_id" };
  private static final String[] e = { "lookup" };
  
  public static long a(Context paramContext, String paramString1, String paramString2)
  {
    return a(paramContext, paramString1, paramString2, d);
  }
  
  private static long a(Context paramContext, String paramString1, String paramString2, String[] paramArrayOfString)
  {
    if (TextUtils.isEmpty(paramString1)) {
      return -1L;
    }
    if (Build.VERSION.SDK_INT < 15) {
      return -1L;
    }
    paramString2 = gpd.c(paramString2);
    paramContext = paramContext.getContentResolver();
    Uri localUri = ContactsContract.RawContacts.CONTENT_URI;
    String[] arrayOfString = (String[])gpd.l.get();
    arrayOfString[0] = paramString1;
    arrayOfString[1] = paramString2;
    paramContext = paramContext.query(localUri, paramArrayOfString, "account_name=?1 AND account_type='com.google' AND sourceid=?2 AND data_set IS 'plus'", arrayOfString, null);
    if (paramContext == null)
    {
      aal.q(5);
      return -1L;
    }
    try
    {
      if (paramContext.moveToFirst())
      {
        int i = paramContext.getInt(0);
        long l = i;
        return l;
      }
      paramContext.close();
      aal.q(3);
      return -1L;
    }
    finally
    {
      paramContext.close();
    }
  }
  
  public static Uri a(Context paramContext, long paramLong)
  {
    if (paramLong < 0L) {
      return null;
    }
    Object localObject1 = ContentUris.withAppendedId(ContactsContract.Contacts.CONTENT_URI, paramLong);
    paramContext = paramContext.getContentResolver().query((Uri)localObject1, e, null, null, null);
    if (paramContext == null)
    {
      aal.q(5);
      return null;
    }
    try
    {
      if (paramContext.moveToFirst())
      {
        localObject1 = paramContext.getString(0);
        if (TextUtils.isEmpty((CharSequence)localObject1))
        {
          aal.q(3);
          return null;
        }
        localObject1 = ContactsContract.Contacts.CONTENT_LOOKUP_URI.buildUpon().appendPath((String)localObject1).appendPath(String.valueOf(paramLong)).build();
        return (Uri)localObject1;
      }
      paramContext.close();
      aal.q(3);
      return null;
    }
    finally
    {
      paramContext.close();
    }
  }
}

/* Location:
 * Qualified Name:     gng
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */