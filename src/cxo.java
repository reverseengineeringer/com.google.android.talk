import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.apps.hangouts.content.EsProvider;
import java.util.List;

final class cxo
  extends cya
{
  private static final boolean d = cxt.b;
  final czb a;
  final String b;
  final boolean c;
  
  private cxo(Cursor paramCursor, int paramInt)
  {
    o = a(paramCursor);
    p = eku.b;
    r = paramCursor.getString(8);
    q = a(paramCursor.getString(7), r, o, paramInt);
    a = new czb(paramCursor.getString(5), paramCursor.getString(6));
    b = paramCursor.getString(2);
    if (paramCursor.getInt(1) == 2) {}
    for (;;)
    {
      c = bool;
      if (d)
      {
        paramCursor = String.valueOf(r);
        if (paramCursor.length() == 0) {
          break;
        }
        "Invitation Line from ".concat(paramCursor);
      }
      return;
      bool = false;
    }
    new String("Invitation Line from ");
  }
  
  private static cwz a(Cursor paramCursor)
  {
    String str2 = paramCursor.getString(2);
    String str3 = paramCursor.getString(3);
    String str1 = str3;
    if (TextUtils.isEmpty(str3)) {
      str1 = str2;
    }
    int i = str2.split(",").length;
    str2 = paramCursor.getString(0);
    return new cwz(str2, str2, paramCursor.getInt(1), str1, paramCursor.getLong(4), true, i - 1, null, 2, 0L);
  }
  
  static cwz b(int paramInt)
  {
    Object localObject1 = null;
    for (;;)
    {
      try
      {
        Object localObject4 = (eot)ilh.a(aal.oJ, eot.class);
        if (!((hpz)ilh.a(aal.oJ, hpz.class)).c(paramInt)) {
          break;
        }
        if (((eot)localObject4).a(paramInt)) {
          return null;
        }
        localObject4 = bff.d(aal.oJ, paramInt);
        if (localObject4 == null) {
          break;
        }
        localObject4 = b;
        Object localObject5 = EsProvider.a(EsProvider.i, paramInt);
        localObject5 = aal.oJ.getContentResolver().query((Uri)localObject5, cxp.a, "inviter_chat_id!=? AND notification_level!=10 AND is_pending_leave!=1 AND sort_timestamp>chat_watermark AND inviter_first_name IS NOT NULL", new String[] { localObject4 }, "sort_timestamp DESC");
        if (localObject5 == null) {
          break label236;
        }
        try
        {
          if (!((Cursor)localObject5).moveToFirst()) {
            break label231;
          }
          localObject4 = new cxo((Cursor)localObject5, paramInt);
          if ((r == null) || (q == null)) {
            break label225;
          }
          if (localObject1 == null)
          {
            localObject1 = a((Cursor)localObject5);
            h.add(localObject4);
            localObject4 = localObject1;
            if (h.size() != 7)
            {
              if (((Cursor)localObject5).moveToNext()) {
                break label228;
              }
              localObject4 = localObject1;
            }
            localObject1 = localObject4;
            if (localObject4 != null)
            {
              i = h.size();
              localObject1 = localObject4;
            }
            return (cwz)localObject1;
          }
        }
        finally
        {
          ((Cursor)localObject5).close();
        }
        continue;
      }
      catch (hqd localhqd)
      {
        return null;
      }
      label225:
      continue;
      label228:
      continue;
      label231:
      Object localObject3 = null;
      continue;
      label236:
      localObject3 = null;
    }
    return null;
  }
  
  int a(int paramInt)
  {
    if (((eot)ilh.a(aal.oJ, eot.class)).a(paramInt)) {
      return 0;
    }
    return beu.b(dvd.e(paramInt), o.a);
  }
}

/* Location:
 * Qualified Name:     cxo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */