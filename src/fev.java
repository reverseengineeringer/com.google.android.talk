import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.apps.hangouts.content.EsProvider;
import com.google.android.apps.hangouts.fragments.ConversationListFragment;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.wearable.Asset;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;

public final class fev
  implements Parcelable, bcn
{
  public static final Parcelable.Creator<fev> CREATOR = new few();
  private ffe a;
  private hpz b;
  
  public fev() {}
  
  protected fev(byte paramByte) {}
  
  private bfd a()
  {
    int[] arrayOfInt = ffe.h();
    int j = arrayOfInt.length;
    int i = 0;
    while (i < j)
    {
      bfd localbfd = ffe.b(arrayOfInt[i]);
      if (a(localbfd))
      {
        a.a(localbfd.a());
        return localbfd;
      }
      i += 1;
    }
    return null;
  }
  
  private fex a(String paramString)
  {
    fex localfex = new fex();
    gro localgro = (gro)a.b().a(a.a()).a();
    for (;;)
    {
      grm localgrm;
      try
      {
        if (!localgro.j().a()) {
          break;
        }
        Iterator localIterator = localgro.iterator();
        if (!localIterator.hasNext()) {
          break;
        }
        localgrm = (grm)localIterator.next();
        localObject = localgrm.U_().getPath();
        if (((String)localObject).startsWith(paramString))
        {
          localObject = localgrm.U_().getLastPathSegment();
          a.put(localObject, ffe.b(localgrm));
          continue;
        }
        if (!((String)localObject).startsWith("/hangouts/profiles/")) {
          break label170;
        }
      }
      finally
      {
        localgro.b();
      }
      Object localObject = localgrm.U_();
      c.put(((Uri)localObject).getLastPathSegment(), localObject);
      continue;
      label170:
      if (((String)localObject).contains("/conversations/"))
      {
        String str = (String)localgrm.U_().getPathSegments().get(1);
        List localList = (List)b.get(str);
        localObject = localList;
        if (localList == null)
        {
          localObject = new ArrayList();
          b.put(str, localObject);
        }
        ((List)localObject).add(localgrm.U_());
      }
    }
    localgro.b();
    return localfex;
  }
  
  private void a(String paramString, Map<String, grp> paramMap)
  {
    Iterator localIterator = paramMap.keySet().iterator();
    if (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      Uri.Builder localBuilder = new Uri.Builder().scheme("wear");
      paramMap = String.valueOf(paramString);
      str = String.valueOf(str);
      if (str.length() != 0) {}
      for (paramMap = paramMap.concat(str);; paramMap = new String(paramMap))
      {
        paramMap = localBuilder.path(paramMap).build();
        a.b().b(a.a(), paramMap).a();
        break;
      }
    }
  }
  
  private void a(ArrayList<grp> paramArrayList)
  {
    grw localgrw = grw.a("/hangouts/accounts/");
    localgrw.b().a("2", paramArrayList);
    a.b().a(a.a(), localgrw.c()).a();
  }
  
  private void a(Map<String, List<Uri>> paramMap)
  {
    paramMap = paramMap.values().iterator();
    while (paramMap.hasNext())
    {
      Iterator localIterator = ((List)paramMap.next()).iterator();
      while (localIterator.hasNext())
      {
        Uri localUri = (Uri)localIterator.next();
        a.b().b(a.a(), localUri).a();
      }
    }
  }
  
  private boolean a(bfd parambfd)
  {
    return (parambfd != null) && (parambfd.e()) && (b.d(parambfd.g()));
  }
  
  private void b(Map<String, Uri> paramMap)
  {
    paramMap = paramMap.values().iterator();
    while (paramMap.hasNext())
    {
      Uri localUri = (Uri)paramMap.next();
      a.b().b(a.a(), localUri).a();
    }
  }
  
  public int a(Context paramContext, bcg parambcg)
  {
    a = ((ffi)ilh.a(paramContext, ffi.class)).a(paramContext);
    b = ((hpz)ilh.a(paramContext, hpz.class));
    Object localObject4 = ((ffn)ilh.a(paramContext, ffn.class)).a(paramContext);
    long l2 = System.currentTimeMillis();
    long l1;
    HashMap localHashMap;
    String str1;
    fex localfex;
    Object localObject5;
    String str2;
    for (;;)
    {
      try
      {
        a.a().a(TimeUnit.MILLISECONDS);
        if (!a.a().e())
        {
          Log.e("BabelUploadUserAvatar", "GoogleApiClient failed to connect");
          i = bco.d;
          return i;
        }
        parambcg = a.f();
        if (parambcg == null)
        {
          parambcg = a();
          if (parambcg == null)
          {
            a(new ArrayList(0));
            ezi.d("BabelUploadUserAvatar", "No valid account", new Object[0]);
            if (ezi.a("BabelUploadUserAvatar", 2))
            {
              l1 = System.currentTimeMillis();
              new StringBuilder(79).append("WearableService.sendConversations empty account list sent: ").append(l1 - l2);
            }
            i = bco.a;
            return i;
          }
        }
        else
        {
          localObject1 = ffe.b(parambcg);
          parambcg = (bcg)localObject1;
          if (a((bfd)localObject1)) {
            continue;
          }
          parambcg = a();
          continue;
        }
        localObject1 = EsProvider.a(EsProvider.g, parambcg.g()).buildUpon().appendQueryParameter("limit", "20").build();
        localHashMap = new HashMap();
        str1 = String.format("/hangouts/%s/conversations/", new Object[] { ba });
        localfex = a(str1);
        if (ezi.a("BabelUploadUserAvatar", 2))
        {
          l1 = System.currentTimeMillis();
          new StringBuilder(83).append("WearableService.sendConversations old conversations retrieved: ").append(l1 - l2);
        }
      }
      finally
      {
        Object localObject1;
        label608:
        a.e();
      }
      try
      {
        paramContext = paramContext.getContentResolver().query((Uri)localObject1, can.a, String.format(Locale.US, "(%s >= 0 OR %s IS NULL) AND %s = %d AND %s > 0 AND %s = %d", new Object[] { "is_pending_leave", "is_pending_leave", "view", Integer.valueOf(1), "sort_timestamp", "status", Integer.valueOf(2) }), null, "call_media_type DESC, sort_timestamp DESC");
        if (paramContext == null) {
          break;
        }
      }
      finally
      {
        for (;;)
        {
          int j;
          int k;
          parambcg = null;
          break label608;
          int[] arrayOfInt = null;
          break;
          i += 1;
        }
      }
      try
      {
        if (!paramContext.moveToNext()) {
          break;
        }
        localObject5 = EsProvider.b(paramContext.getString(1), (int)ConversationListFragment.a(paramContext));
        l1 = 0L;
        localObject1 = (grp)a.remove(localObject5);
        if (localObject1 == null) {
          break label1246;
        }
        localObject3 = new ffv((grp)localObject1);
        localObject1 = ((ffv)localObject3).b();
        l1 = ((ffv)localObject3).c();
        localObject3 = String.valueOf(str1);
        str2 = String.valueOf(localObject5);
        if (str2.length() == 0) {
          break label630;
        }
        localObject3 = ((String)localObject3).concat(str2);
        localObject3 = grw.a((String)localObject3);
        localObject5 = ((ffl)localObject4).a(paramContext, parambcg, (String)localObject5, ((grw)localObject3).a(), ((grw)localObject3).b(), l1, localHashMap);
        if (localObject1 != null) {
          ((ffv)localObject5).a((Asset)localObject1);
        }
        a.b().a(a.a(), ((grw)localObject3).c()).a();
        continue;
      }
      finally
      {
        parambcg = paramContext;
        paramContext = (Context)localObject2;
      }
      if (parambcg != null) {
        parambcg.close();
      }
      throw paramContext;
      label630:
      localObject3 = new String((String)localObject3);
    }
    if (paramContext != null) {
      paramContext.close();
    }
    if (ezi.a("BabelUploadUserAvatar", 2))
    {
      l1 = System.currentTimeMillis();
      new StringBuilder(78).append("WearableService.sendConversations new conversations sent: ").append(l1 - l2);
    }
    arrayOfInt = ffe.h();
    Object localObject3 = new ArrayList();
    j = arrayOfInt.length;
    i = 0;
    if (i < j)
    {
      k = arrayOfInt[i];
      localObject4 = new ffu();
      if (parambcg.g() == k)
      {
        ((ffu)localObject4).a(true);
        paramContext = parambcg;
      }
      while (a(paramContext))
      {
        localObject5 = ba;
        ((ffu)localObject4).e((String)localObject5);
        ((ffu)localObject4).a(paramContext.a());
        ((ffu)localObject4).b(paramContext.c());
        str2 = paramContext.G();
        if (!TextUtils.isEmpty(str2)) {
          ((ffu)localObject4).c(ezm.p(str2));
        }
        str2 = paramContext.v();
        if (!TextUtils.isEmpty(str2)) {
          ((ffu)localObject4).d(ezm.p(str2));
        }
        ((ffu)localObject4).b(paramContext.m());
        ((ArrayList)localObject3).add(((ffu)localObject4).a());
        localHashMap.put(localObject5, paramContext.q());
        b.remove(localObject5);
        c.remove(localObject5);
        break;
        paramContext = ffe.b(k);
        ((ffu)localObject4).a(false);
      }
    }
    a((ArrayList)localObject3);
    if (ezi.a("BabelUploadUserAvatar", 2))
    {
      l1 = System.currentTimeMillis();
      new StringBuilder(69).append("WearableService.sendConversations accounts sent: ").append(l1 - l2);
    }
    a.a(parambcg, localHashMap, c);
    if (ezi.a("BabelUploadUserAvatar", 2))
    {
      l1 = System.currentTimeMillis();
      String.format("WearableService.sendConversations profile pictures sent %d (not used: %d): %d", new Object[] { Integer.valueOf(localHashMap.size()), Integer.valueOf(c.size()), Long.valueOf(l1 - l2) });
    }
    a(str1, a);
    if (ezi.a("BabelUploadUserAvatar", 2))
    {
      l1 = System.currentTimeMillis();
      new StringBuilder(77).append("WearableService.sendConversations cleanup conversations: ").append(l1 - l2);
    }
    a(b);
    if (localHashMap.size() + c.size() > 50)
    {
      b(c);
      if (ezi.a("BabelUploadUserAvatar", 2))
      {
        l1 = System.currentTimeMillis();
        String.format("WearableService.sendConversations cleanup profile pictures (%d deleted): %d", new Object[] { Integer.valueOf(c.size()), Long.valueOf(l1 - l2) });
      }
    }
    if (ezi.a("BabelUploadUserAvatar", 2))
    {
      l1 = System.currentTimeMillis();
      new StringBuilder(60).append("WearableService.sendConversations done: ").append(l1 - l2);
    }
    a.e();
    return bco.a;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {}
}

/* Location:
 * Qualified Name:     fev
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */