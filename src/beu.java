import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.apps.hangouts.content.EsProvider;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;

public final class beu
{
  private bev a;
  private bfd b;
  private String c;
  private final eyp<cyx> d = new eyp();
  private final eyp<cyx> e = new eyp();
  
  public beu()
  {
    this(null);
  }
  
  public beu(bev parambev)
  {
    a = parambev;
  }
  
  public static cyx a(bfd parambfd, Cursor paramCursor)
  {
    String str1 = paramCursor.getString(0);
    String str2 = paramCursor.getString(2);
    String str3 = paramCursor.getString(1);
    String str4 = paramCursor.getString(3);
    String str5 = paramCursor.getString(10);
    String str6 = paramCursor.getString(4);
    String str7 = paramCursor.getString(5);
    String str8 = paramCursor.getString(6);
    String str9 = paramCursor.getString(7);
    int i = paramCursor.getInt(14);
    String str10 = paramCursor.getString(11);
    Boolean localBoolean = null;
    if (paramCursor.getInt(9) != 0) {
      localBoolean = Boolean.TRUE;
    }
    paramCursor = aal.a(czd.values()[paramCursor.getInt(8)], str2, str3, str4, str5, str6, str7, str8, str9, str10, localBoolean, i);
    ((bil)ilh.a(aal.oJ, bil.class)).a(parambfd).a(paramCursor, str1);
    return paramCursor;
  }
  
  public static fe<Cursor> a(bfd parambfd, String paramString, Integer paramInteger)
  {
    String str2 = null;
    Object localObject = bb;
    String str1;
    String[] arrayOfString;
    if (paramInteger == bew.a)
    {
      str1 = "(chat_id!=? OR chat_id IS NULL)  AND active=1";
      arrayOfString = new String[1];
      arrayOfString[0] = localObject;
      str2 = "first_name ASC";
    }
    for (;;)
    {
      localObject = new ArrayList();
      Collections.addAll((Collection)localObject, paramString.split("\\|"));
      paramString = EsProvider.a(parambfd, (ArrayList)localObject);
      return new dhq(aal.oJ, parambfd, paramString, bex.a, str1, arrayOfString, str2);
      arrayOfString = null;
      str1 = null;
    }
  }
  
  public static void a(bfd parambfd, String paramString)
  {
    parambfd = EsProvider.c(parambfd, paramString);
    aal.oJ.getContentResolver().notifyChange(parambfd, null);
  }
  
  public static int b(bfd parambfd, String paramString)
  {
    return b(parambfd, paramString, bew.a);
  }
  
  private static int b(bfd parambfd, String paramString, int paramInt)
  {
    Object localObject = null;
    String str2 = bb;
    String str1;
    String[] arrayOfString;
    if (paramInt == bew.a)
    {
      str1 = "(chat_id!=? OR chat_id IS NULL)  AND active=1";
      arrayOfString = new String[1];
      arrayOfString[0] = str2;
    }
    for (;;)
    {
      paramString = EsProvider.c(parambfd, paramString);
      parambfd = (bfd)localObject;
      try
      {
        paramString = aal.oJ.getContentResolver().query(paramString, new String[] { "count(*) as count" }, str1, arrayOfString, null);
        if (paramString != null)
        {
          parambfd = paramString;
          if (paramString.moveToFirst())
          {
            parambfd = paramString;
            paramInt = paramString.getInt(0);
            return paramInt;
          }
        }
        return 0;
      }
      finally
      {
        if (parambfd != null) {
          parambfd.close();
        }
      }
      arrayOfString = null;
      str1 = null;
    }
  }
  
  public static beu c(bfd parambfd, String paramString)
  {
    String str1 = null;
    beu localbeu = new beu();
    localbeu.d(parambfd, paramString);
    int i = bew.a;
    Object localObject = b;
    String str2 = c;
    String str3 = bb;
    if (i == bew.a)
    {
      parambfd = "(chat_id!=? OR chat_id IS NULL)  AND active=1";
      paramString = new String[1];
      paramString[0] = str3;
      str1 = "first_name ASC";
    }
    for (;;)
    {
      localObject = EsProvider.c((bfd)localObject, str2);
      parambfd = aal.oJ.getContentResolver().query((Uri)localObject, bex.a, parambfd, paramString, str1);
      if (parambfd != null) {}
      try
      {
        localbeu.a(parambfd);
        return localbeu;
      }
      finally
      {
        parambfd.close();
      }
      paramString = null;
      parambfd = null;
    }
  }
  
  private void h()
  {
    if (a != null) {
      a.a();
    }
  }
  
  public fe<Cursor> a(Integer paramInteger)
  {
    return a(b, c, paramInteger);
  }
  
  public String a()
  {
    return c;
  }
  
  public void a(Cursor paramCursor)
  {
    d.clear();
    e.clear();
    cyx localcyx;
    if ((paramCursor != null) && (paramCursor.moveToFirst()))
    {
      localcyx = a(b, paramCursor);
      if (paramCursor.getInt(13) != 1) {
        break label105;
      }
    }
    label105:
    for (int i = 1;; i = 0)
    {
      if ((i != 0) && (!c(b))) {
        e.put(b, localcyx);
      }
      d.put(b, localcyx);
      if (paramCursor.moveToNext()) {
        break;
      }
      h();
      return;
    }
  }
  
  public boolean a(czb paramczb)
  {
    return d.containsKey(paramczb);
  }
  
  public cyx b(czb paramczb)
  {
    return (cyx)d.get(paramczb);
  }
  
  public Collection<cyx> b()
  {
    return d.values();
  }
  
  public Collection<cyx> c()
  {
    return e.values();
  }
  
  public boolean c(czb paramczb)
  {
    return b.b().a(paramczb);
  }
  
  public String d(czb paramczb)
  {
    paramczb = (cyx)d.get(paramczb);
    if (paramczb != null) {
      return h;
    }
    return null;
  }
  
  public void d(bfd parambfd, String paramString)
  {
    if ((b != parambfd) || (!TextUtils.equals(c, paramString)))
    {
      b = parambfd;
      c = paramString;
      d.clear();
      e.clear();
      h();
    }
  }
  
  public boolean d()
  {
    return d.size() == 0;
  }
  
  public int e()
  {
    return d.size();
  }
  
  public String e(czb paramczb)
  {
    paramczb = (cyx)d.get(paramczb);
    if (paramczb != null) {
      return e;
    }
    return null;
  }
  
  public ArrayList<cyx> f()
  {
    if (d.isEmpty()) {
      return null;
    }
    return new ArrayList(d.values());
  }
  
  public boolean g()
  {
    Iterator localIterator = d.entrySet().iterator();
    int i = 0;
    for (;;)
    {
      if (localIterator.hasNext())
      {
        localEntry = (Map.Entry)localIterator.next();
        if (!c((czb)localEntry.getKey())) {
          if (getValueD == cyz.b) {
            break;
          }
        }
      }
    }
    while (i <= 0)
    {
      Map.Entry localEntry;
      return false;
      i += 1;
      break;
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     beu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */