import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.database.MergeCursor;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.provider.ContactsContract.CommonDataKinds.Email;
import android.provider.ContactsContract.CommonDataKinds.Phone;
import android.provider.ContactsContract.Data;
import java.util.ArrayList;
import java.util.HashMap;

public final class goe
  extends gny
{
  public static final String[] o = { "contact_id" };
  private final String p;
  
  public goe(Context paramContext, goc paramgoc, boolean paramBoolean, int paramInt, Bundle paramBundle1, Bundle paramBundle2, String paramString)
  {
    super(paramContext, paramgoc, paramBoolean, paramInt, paramBundle1, paramBundle2, null);
    p = paramString;
  }
  
  protected gnq a(gob paramgob1, gob paramgob2, Cursor paramCursor)
  {
    aal.d(paramgob1);
    aal.d(paramCursor);
    goq localgoq1 = new goq();
    goq localgoq2 = new goq();
    int i = paramgob1.a();
    paramCursor.getCount();
    HashMap localHashMap1 = new HashMap();
    this.i.a("people-map start");
    a(paramgob1, localHashMap1);
    this.i.a("people-map finish");
    Object localObject = new gpp();
    gop localgop = new gop();
    HashMap localHashMap2 = new HashMap();
    b(paramgob2, localHashMap2);
    this.i.a("contact-map start");
    int j = a(paramCursor, (gpp)localObject, localgop, localHashMap2);
    this.i.a("contact-map finish");
    if (aal.q(3))
    {
      new StringBuilder("#people=").append(i).append(", #contacts=").append(j);
      aal.q(3);
    }
    this.i.a("merge start");
    paramgob2 = new ArrayList();
    paramgob1.a(-1);
    while (paramgob1.c())
    {
      i = paramgob1.b();
      String str = paramgob1.a("gaia_id");
      localgoq1.a(i);
      paramgob2.add(str);
      if ((str == null) || (((gpp)localObject).a(str) == 0)) {
        localgoq2.b();
      } else {
        localgoq2.a((gpp)localObject, str);
      }
    }
    paramCursor.moveToPosition(0);
    if (!paramCursor.isAfterLast())
    {
      j = paramCursor.getPosition();
      int k = localgop.a(j);
      if (k == 0)
      {
        localgoq1.b();
        localgoq2.a(j);
        paramgob2.add(null);
      }
      for (;;)
      {
        gnv.a(paramCursor);
        break;
        i = 0;
        while (i < k)
        {
          localObject = localgop.a(j, i);
          if (!localHashMap1.containsKey(localObject))
          {
            localgoq1.b();
            localgoq2.a(j);
            paramgob2.add(localObject);
          }
          i += 1;
        }
      }
    }
    this.i.a("merge finish");
    return new gnq(a, paramCursor, a, localgoq1.a(), localgoq1, localgoq2, paramgob2, localHashMap2, d, f);
  }
  
  protected Cursor c()
  {
    Object localObject1;
    boolean bool;
    gpm localgpm;
    if ((n) && (Build.VERSION.SDK_INT >= 18))
    {
      localObject1 = gnw.b.buildUpon().appendPath(p);
      if (!c)
      {
        bool = true;
        localObject1 = ((Uri.Builder)localObject1).appendQueryParameter("visible_contacts_only", String.valueOf(bool)).build();
        localgpm = new gpm();
        localgpm.b(gnv.a());
        localgpm.b("(data1 IS NOT NULL AND data1!='')");
        localObject1 = a.getContentResolver().query((Uri)localObject1, gnv.a, localgpm.toString(), null, "display_name COLLATE LOCALIZED,contact_id");
      }
    }
    for (;;)
    {
      if (localObject1 != null) {
        ((Cursor)localObject1).getCount();
      }
      return (Cursor)localObject1;
      bool = false;
      break;
      localgpm = new gpm();
      gnv.a(localgpm, c, a);
      gnv.a(localgpm);
      this.i.a("lookup start");
      localObject1 = ContactsContract.CommonDataKinds.Phone.CONTENT_FILTER_URI.buildUpon().appendPath(p).appendQueryParameter("limit", Integer.toString(100)).build();
      localObject1 = a.getContentResolver().query((Uri)localObject1, o, "(data1 IS NOT NULL AND data1!='')", null, null);
      Object localObject3 = ContactsContract.CommonDataKinds.Email.CONTENT_FILTER_URI.buildUpon().appendPath(p).appendQueryParameter("limit", Integer.toString(100)).build();
      localObject3 = a.getContentResolver().query((Uri)localObject3, o, "(data1 IS NOT NULL AND data1!='')", null, null);
      localObject3 = new MergeCursor(new Cursor[] { new gof((Cursor)localObject1), new gof((Cursor)localObject3) });
      try
      {
        int i = ((Cursor)localObject3).getCount();
        this.i.a("lookup finish");
        if (i == 0) {
          return null;
        }
        localgpm.b("contact_id IN (");
        for (localObject1 = ""; ((Cursor)localObject3).moveToNext(); localObject1 = ",")
        {
          localgpm.a((String)localObject1);
          localgpm.a(Long.toString(((Cursor)localObject3).getLong(0)));
        }
        localgpm.a(")");
        ((Cursor)localObject3).close();
        localObject1 = a.getContentResolver().query(ContactsContract.Data.CONTENT_URI, gnv.a, localgpm.toString(), null, "display_name COLLATE LOCALIZED,contact_id");
      }
      finally
      {
        ((Cursor)localObject3).close();
      }
    }
  }
}

/* Location:
 * Qualified Name:     goe
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */