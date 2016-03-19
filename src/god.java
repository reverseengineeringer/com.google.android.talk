import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.provider.ContactsContract.Data;
import com.google.android.gms.common.data.DataHolder;
import java.util.ArrayList;
import java.util.HashMap;

public final class god
  extends gny
{
  private static final String[] o = { "contact_id" };
  
  public god(Context paramContext, goc paramgoc, boolean paramBoolean, int paramInt, Bundle paramBundle1, Bundle paramBundle2, String paramString)
  {
    super(paramContext, paramgoc, paramBoolean, paramInt, paramBundle1, paramBundle2, paramString);
  }
  
  private String e()
  {
    String str = null;
    if (!g) {
      str = "";
    }
    StringBuilder localStringBuilder;
    Cursor localCursor;
    do
    {
      return str;
      localStringBuilder = new StringBuilder();
      localStringBuilder.append("contact_id IN(");
      localCursor = a.getContentResolver().query(ContactsContract.Data.CONTENT_URI, o, f(), null, null);
    } while (localCursor == null);
    int i = 1;
    try
    {
      while (localCursor.moveToNext())
      {
        if (i == 0) {
          localStringBuilder.append(",");
        }
        localStringBuilder.append(localCursor.getLong(0));
        i = 0;
      }
      localStringBuilder.append(")");
      return localStringBuilder.toString();
    }
    finally
    {
      localCursor.close();
    }
  }
  
  private String f()
  {
    aal.a(g);
    Object localObject = a();
    aal.d(localObject);
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("data1 IN(");
    localObject = new gob((DataHolder)localObject);
    int i = 1;
    while (((gob)localObject).c())
    {
      if (i == 0) {
        localStringBuilder.append(",");
      }
      i = 0;
      DatabaseUtils.appendEscapedSQLString(localStringBuilder, ((gob)localObject).a("value"));
    }
    localStringBuilder.append(")");
    return localStringBuilder.toString();
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
    gpp localgpp = new gpp();
    gop localgop = new gop();
    HashMap localHashMap2 = new HashMap();
    b(paramgob2, localHashMap2);
    this.i.a("contact-map start");
    int j = a(paramCursor, localgpp, localgop, localHashMap2);
    this.i.a("contact-map finish");
    if (aal.q(3))
    {
      new StringBuilder("#people=").append(i).append(", #contacts=").append(j);
      aal.q(3);
    }
    this.i.a("merge start");
    paramgob1.a(0);
    paramCursor.moveToPosition(0);
    ArrayList localArrayList = new ArrayList();
    label217:
    label229:
    label251:
    String str;
    label265:
    label284:
    label334:
    int k;
    while (!paramgob1.d())
    {
      i = 1;
      if (paramCursor.isAfterLast()) {
        break label399;
      }
      j = 1;
      if ((i == 0) && (j == 0)) {
        break label501;
      }
      if (i == 0) {
        break label405;
      }
      paramgob2 = paramgob1.a("name");
      if (j == 0) {
        break label410;
      }
      str = paramCursor.getString(1);
      if ((i == 0) || (j == 0)) {
        break label416;
      }
      i = a(paramgob2, str);
      if (i <= 0)
      {
        j = paramgob1.b();
        paramgob2 = paramgob1.a("gaia_id");
        localgoq1.a(j);
        localArrayList.add(paramgob2);
        if ((paramgob2 != null) && (localgpp.a(paramgob2) != 0)) {
          break label433;
        }
        localgoq2.b();
        paramgob1.c();
      }
      if (i >= 0)
      {
        j = paramCursor.getPosition();
        k = localgop.a(j);
        if (k != 0) {
          break label444;
        }
        localgoq1.b();
        localgoq2.a(j);
        localArrayList.add(null);
      }
    }
    for (;;)
    {
      gnv.a(paramCursor);
      break;
      i = 0;
      break label217;
      label399:
      j = 0;
      break label229;
      label405:
      paramgob2 = null;
      break label251;
      label410:
      str = null;
      break label265;
      label416:
      if (i != 0)
      {
        i = -1;
        break label284;
      }
      i = 1;
      break label284;
      label433:
      localgoq2.a(localgpp, paramgob2);
      break label334;
      label444:
      i = 0;
      while (i < k)
      {
        paramgob2 = localgop.a(j, i);
        if (!localHashMap1.containsKey(paramgob2))
        {
          localgoq1.b();
          localgoq2.a(j);
          localArrayList.add(paramgob2);
        }
        i += 1;
      }
    }
    label501:
    this.i.a("merge finish");
    return new gnq(a, paramCursor, a, localgoq1.a(), localgoq1, localgoq2, localArrayList, localHashMap2, d, f);
  }
  
  protected Cursor c()
  {
    Object localObject2 = null;
    Object localObject1 = e();
    if (localObject1 == null) {
      return (Cursor)localObject2;
    }
    boolean bool;
    label43:
    gpm localgpm;
    if ((n) && (Build.VERSION.SDK_INT >= 18))
    {
      localObject2 = gnw.a.buildUpon();
      if (!c)
      {
        bool = true;
        localObject2 = ((Uri.Builder)localObject2).appendQueryParameter("visible_contacts_only", String.valueOf(bool)).build();
        localgpm = new gpm();
        localgpm.b(gnv.a());
        localgpm.b((String)localObject1);
        localgpm.b("(data1 IS NOT NULL AND data1!='')");
      }
    }
    for (localObject1 = a.getContentResolver().query((Uri)localObject2, gnv.a, localgpm.toString(), null, "display_name COLLATE LOCALIZED,contact_id");; localObject1 = a.getContentResolver().query(ContactsContract.Data.CONTENT_URI, gnv.a, ((gpm)localObject2).toString(), null, "display_name COLLATE LOCALIZED,contact_id"))
    {
      localObject2 = localObject1;
      if (localObject1 == null) {
        break;
      }
      ((Cursor)localObject1).getCount();
      return (Cursor)localObject1;
      bool = false;
      break label43;
      localObject2 = new gpm();
      gnv.a((gpm)localObject2, c, a);
      gnv.a((gpm)localObject2);
      ((gpm)localObject2).b((String)localObject1);
      ((gpm)localObject2).b("(data1 IS NOT NULL AND data1!='')");
    }
  }
}

/* Location:
 * Qualified Name:     god
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */