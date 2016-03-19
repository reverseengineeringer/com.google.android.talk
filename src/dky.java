import android.content.ContentValues;
import android.content.Context;
import android.text.TextUtils;
import android.util.SparseArray;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

final class dky
{
  final dlf a;
  private final Context b;
  private final hpz c;
  private final eot d;
  private final int e;
  private final Set<String> f = new HashSet();
  private final SparseArray<List<String>> g = new SparseArray();
  private final Map<String, dlc> h = new hq();
  private final eap i = new dkz(this);
  
  public dky(Context paramContext, hpz paramhpz, eot parameot, int paramInt, dlf paramdlf)
  {
    b = paramContext;
    c = paramhpz;
    d = parameot;
    e = paramInt;
    a = paramdlf;
  }
  
  private void a(dmk paramdmk, String paramString, int paramInt)
  {
    if (!c.d(e)) {
      return;
    }
    ContentValues localContentValues = new ContentValues();
    paramdmk.a(paramInt, localContentValues);
    RealTimeChatService.a(e, paramString, localContentValues);
  }
  
  dmk a(String paramString, boolean paramBoolean)
  {
    dlc localdlc = (dlc)h.get(paramString);
    Object localObject;
    if (localdlc == null) {
      localObject = a.a(e, paramString, paramBoolean);
    }
    do
    {
      return (dmk)localObject;
      localObject = localdlc;
    } while (b != null);
    if (!paramBoolean) {
      return null;
    }
    b = a.a(e, paramString);
    return localdlc;
  }
  
  void a()
  {
    RealTimeChatService.b(i);
  }
  
  void a(int paramInt, eau parameau)
  {
    Object localObject1;
    Object localObject2;
    synchronized (a)
    {
      localObject1 = (List)g.get(paramInt);
      if (localObject1 == null) {
        return;
      }
      f.addAll((Collection)localObject1);
      g.remove(paramInt);
      localObject1 = f.iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (String)((Iterator)localObject1).next();
        localObject2 = (dlc)h.get(localObject2);
        if (localObject2 != null) {
          ((dlc)localObject2).a(paramInt, false);
        }
      }
    }
    parameau = parameau.c();
    if ((parameau instanceof drx))
    {
      parameau = (drx)parameau;
      localObject1 = parameau.k();
      int j = ((dyv)parameau.c()).a();
      if (ezi.a("Babel", 3))
      {
        int k = ((List)localObject1).size();
        ezi.b("Babel", 63 + "Presence response: requestId=" + paramInt + ", gaiaCount=" + k, new Object[0]);
      }
      parameau = ((List)localObject1).iterator();
      while (parameau.hasNext())
      {
        localObject1 = (dtk)parameau.next();
        localObject2 = b;
        f.remove(localObject2);
        dmk localdmk = a((String)localObject2, true);
        localdmk.a((dtk)localObject1, j);
        a(localdmk, (String)localObject2, j);
      }
    }
    if (!f.isEmpty())
    {
      parameau = String.valueOf(ezi.b(TextUtils.join(",", f)));
      ezi.d("Babel", String.valueOf(parameau).length() + 68 + "Server did not return presence for: requestId=" + paramInt + ", gaiaList=" + parameau, new Object[0]);
    }
    f.clear();
  }
  
  void a(long paramLong)
  {
    if ((!c.d(e)) || (d.a(e))) {}
    for (;;)
    {
      return;
      SparseArray localSparseArray = new SparseArray();
      Iterator localIterator = h.values().iterator();
      Object localObject2;
      Object localObject1;
      while (localIterator.hasNext())
      {
        dlc localdlc = (dlc)localIterator.next();
        j = localdlc.a(paramLong);
        if (j != 0)
        {
          localObject2 = (List)localSparseArray.get(j);
          localObject1 = localObject2;
          if (localObject2 == null)
          {
            localObject1 = new ArrayList();
            localSparseArray.put(j, localObject1);
          }
          ((List)localObject1).add(a);
        }
      }
      int k = localSparseArray.size();
      int j = 0;
      while (j < k)
      {
        int m = localSparseArray.keyAt(j);
        localObject1 = (ArrayList)localSparseArray.valueAt(j);
        int n = ebi.b().a();
        if (ezi.a("Babel", 3))
        {
          int i1 = e;
          int i2 = ((ArrayList)localObject1).size();
          localObject2 = String.valueOf(TextUtils.join(",", (Iterable)localObject1));
          ezi.b("Babel", String.valueOf(localObject2).length() + 117 + "Presence request: requestId=" + n + ", account=" + i1 + ", fieldMask=" + m + ", gaiaCount=" + i2 + ", gaiaList=" + (String)localObject2, new Object[0]);
        }
        g.put(n, localObject1);
        RealTimeChatService.a(n, e, (ArrayList)localObject1, m);
        localObject1 = ((ArrayList)localObject1).iterator();
        while (((Iterator)localObject1).hasNext())
        {
          localObject2 = (String)((Iterator)localObject1).next();
          ((dlc)h.get(localObject2)).a(n, true);
        }
        j += 1;
      }
    }
  }
  
  void a(dmk paramdmk, String paramString, dnv paramdnv, Object paramObject)
  {
    if (paramdmk.a(paramdnv, paramObject, System.currentTimeMillis())) {
      a(paramdmk, paramString, l);
    }
  }
  
  void a(String paramString, dnv paramdnv, Object paramObject)
  {
    dmk localdmk = a(paramString, false);
    if (localdmk != null)
    {
      a(localdmk, paramString, paramdnv, paramObject);
      return;
    }
    new dla(this, b, c, e, paramString, paramdnv, paramObject).execute(new Void[0]);
  }
  
  boolean a(dli paramdli)
  {
    Iterator localIterator = h.values().iterator();
    while (localIterator.hasNext()) {
      if (!((dlc)localIterator.next()).a(paramdli)) {
        localIterator.remove();
      }
    }
    boolean bool = h.isEmpty();
    if (bool) {
      a();
    }
    return !bool;
  }
  
  boolean a(String paramString, dli paramdli, int paramInt)
  {
    if (h.isEmpty()) {
      RealTimeChatService.a(i);
    }
    dlc localdlc2 = (dlc)h.get(paramString);
    dlc localdlc1 = localdlc2;
    if (localdlc2 == null)
    {
      localdlc1 = new dlc(paramString);
      b = a.a(e, paramString, false);
      h.put(paramString, localdlc1);
      if (b == null) {
        new dlb(this, b, c, e, paramString).execute(new Void[0]);
      }
    }
    return localdlc1.a(paramdli, paramInt);
  }
}

/* Location:
 * Qualified Name:     dky
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */