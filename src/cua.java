import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.net.Uri.Builder;
import android.provider.ContactsContract.CommonDataKinds.Email;
import android.provider.ContactsContract.CommonDataKinds.Phone;
import android.provider.ContactsContract.DataUsageFeedback;
import android.text.TextUtils;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

final class cua
  implements ctn
{
  private final dcj a;
  private final ContentResolver b;
  
  cua(Context paramContext)
  {
    a = ((dcj)ilh.a(paramContext, dcj.class));
    b = paramContext.getContentResolver();
  }
  
  private void a(String paramString1, String paramString2)
  {
    if (paramString1 != null) {}
    for (paramString1 = b.query(ContactsContract.CommonDataKinds.Phone.CONTENT_URI, new String[] { "contact_id", "_id" }, "contact_id=? and data1=? or data4=?", new String[] { paramString1, paramString2, paramString2 }, null);; paramString1 = b.query(ContactsContract.CommonDataKinds.Phone.CONTENT_URI, new String[] { "contact_id", "_id" }, "data1=? or data4=?", new String[] { paramString2, paramString2 }, null))
    {
      paramString2 = new HashSet();
      while (paramString1.moveToNext())
      {
        String str = paramString1.getString(0);
        Object localObject = paramString1.getString(1);
        if (!paramString2.contains(str))
        {
          localObject = ContactsContract.DataUsageFeedback.FEEDBACK_URI.buildUpon().appendPath((String)localObject).appendQueryParameter("type", "short_text").build();
          b.update((Uri)localObject, new ContentValues(), null, null);
          paramString2.add(str);
        }
      }
    }
    paramString1.close();
  }
  
  public void a(int paramInt, String paramString)
  {
    if (!a.a("android.permission.WRITE_CONTACTS")) {
      return;
    }
    Object localObject1 = ctr.d.buildUpon();
    ((Uri.Builder)localObject1).appendQueryParameter("account_id", Integer.toString(paramInt));
    ((Uri.Builder)localObject1).appendQueryParameter("gaia_id", paramString);
    paramString = new cts(null, b.query(((Uri.Builder)localObject1).build(), ctr.g, null, null, null));
    for (;;)
    {
      Object localObject3;
      try
      {
        if (!paramString.moveToNext()) {
          break;
        }
        localObject3 = paramString.a();
        boolean bool = TextUtils.isEmpty(((bdy)localObject3).m());
        if (bool) {
          return;
        }
        if (!((bdy)localObject3).d().isEmpty())
        {
          localObject1 = ((bdy)localObject3).m();
          localObject3 = ((bdw)((bdy)localObject3).d().iterator().next()).b();
          localObject1 = b.query(ContactsContract.CommonDataKinds.Email.CONTENT_URI, new String[] { "_id" }, "contact_id=? and data1=?", new String[] { localObject1, localObject3 }, null);
          if (((Cursor)localObject1).moveToNext())
          {
            localObject3 = ((Cursor)localObject1).getString(0);
            localObject3 = ContactsContract.DataUsageFeedback.FEEDBACK_URI.buildUpon().appendPath((String)localObject3).appendQueryParameter("type", "short_text").build();
            b.update((Uri)localObject3, new ContentValues(), null, null);
          }
          ((Cursor)localObject1).close();
          continue;
        }
        if (((bdy)localObject3).b().isEmpty()) {
          continue;
        }
      }
      finally
      {
        paramString.close();
      }
      a(((bdy)localObject3).m(), ((bee)((bdy)localObject3).b().iterator().next()).b());
    }
    paramString.close();
  }
  
  public void a(String paramString)
  {
    if (!a.a("android.permission.WRITE_CONTACTS")) {
      return;
    }
    a(null, paramString);
  }
}

/* Location:
 * Qualified Name:     cua
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */