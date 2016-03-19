import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.apps.hangouts.content.EsProvider;
import com.google.android.apps.hangouts.hangout.IncomingRing;
import java.util.LinkedList;
import java.util.List;

final class cxn
{
  static void a(Context paramContext, int paramInt, boolean paramBoolean)
  {
    awo localawo = (awo)ilh.a(paramContext, awo.class);
    Object localObject1 = (eot)ilh.a(paramContext, eot.class);
    bfd localbfd = dvd.e(paramInt);
    if (((eot)localObject1).a(paramInt)) {
      return;
    }
    LinkedList localLinkedList1 = new LinkedList();
    Object localObject2 = db;
    Object localObject3 = EsProvider.a(EsProvider.k, paramInt);
    LinkedList localLinkedList2 = new LinkedList();
    exn localexn = new exn();
    long l1 = 0L;
    label106:
    Cursor localCursor;
    if (IncomingRing.b != null)
    {
      localObject1 = IncomingRing.b.d().e();
      localCursor = paramContext.getContentResolver().query((Uri)localObject3, cxm.a, cxm.b, new String[] { localObject2 }, "merge_key, timestamp DESC");
      if (localCursor == null) {}
    }
    for (;;)
    {
      long l2;
      try
      {
        if (!localCursor.moveToFirst())
        {
          paramBoolean = cxj.a;
          return;
          if (!cfc.a().c()) {
            break label660;
          }
          localObject1 = cfc.a().r();
          if (localObject1 == null)
          {
            localObject1 = null;
            break label106;
          }
          localObject1 = ((cgw)localObject1).e().e();
          break label106;
        }
        boolean bool = cxj.a;
        localObject2 = null;
        int i = 1;
        localObject3 = localCursor.getString(2);
        int j = localCursor.getInt(8);
        if (cxj.a) {
          new StringBuilder(String.valueOf(localObject2).length() + 51 + String.valueOf(localObject3).length()).append("[HangoutNotifications] conversationId: ").append((String)localObject2).append(" newConvId: ").append((String)localObject3);
        }
        if (TextUtils.equals((CharSequence)localObject3, (CharSequence)localObject2)) {
          break label654;
        }
        i = localCursor.getInt(5);
        long l3 = localCursor.getLong(6) / 1000L;
        if (TextUtils.equals((CharSequence)localObject3, (CharSequence)localObject1))
        {
          if (cxj.a)
          {
            new StringBuilder(String.valueOf(localObject3).length() + 85).append("[HangoutNotifications]  newConvId: ").append((String)localObject3).append(" ignored because of active ring or joined hangout.");
            l2 = l1;
            break label666;
            bool = localCursor.moveToNext();
            if (bool) {
              break label657;
            }
            if (localCursor != null) {
              localCursor.close();
            }
            if (localexn.size() <= 0) {
              break label646;
            }
            new cxy(paramContext, paramInt, localexn, i, localLinkedList2, l1).a(paramBoolean);
            cyg.a(paramContext, paramInt, localLinkedList1);
          }
        }
        else
        {
          if ((localCursor.getInt(1) == emd.h.ordinal()) && (!localawo.g(paramInt)))
          {
            localObject2 = cwz.a(localCursor, 3, 4);
            String str = localCursor.getString(0);
            hbs.b("Should at least have a fallback name for the inviter", str);
            localObject2 = new cyg(paramContext, paramInt, (String)localObject2, (String)localObject3, i, str, l3, j);
            localLinkedList1.add(localObject2);
            ((cyg)localObject2).a(paramBoolean);
            l2 = l1;
            break label666;
          }
          localObject2 = aal.a(localbfd, localCursor.getString(7), true);
          bool = false;
          if (localObject2 != null) {
            bool = ((List)localObject2).contains(bff.d(paramContext, paramInt));
          }
          if (!bool)
          {
            localLinkedList2.add(cwz.a(localCursor, 3, 4));
            localexn.add(localObject3);
            l2 = l3;
            if (l3 > l1) {
              break label666;
            }
          }
        }
        l2 = l1;
      }
      finally
      {
        if (localCursor != null) {
          localCursor.close();
        }
      }
      label646:
      cxy.b(paramContext, paramInt);
      continue;
      label654:
      continue;
      label657:
      continue;
      label660:
      localObject1 = null;
      break label106;
      label666:
      localObject2 = localObject3;
      l1 = l2;
    }
  }
}

/* Location:
 * Qualified Name:     cxn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */