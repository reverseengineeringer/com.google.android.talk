import android.content.Context;
import android.database.Cursor;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.data.DataHolder;
import java.text.Collator;
import java.util.ArrayList;
import java.util.HashMap;

public abstract class gny
{
  public static volatile boolean n = true;
  public final Context a;
  final goc b;
  public final boolean c;
  public final int d;
  public final Bundle e;
  public final Bundle f;
  public final boolean g;
  public final String h;
  public final gpn i;
  ConnectionResult j;
  DataHolder k;
  DataHolder l;
  Cursor m;
  private final Object o = new Object();
  private boolean p;
  private boolean q;
  private Exception r;
  private boolean s;
  private final Collator t = Collator.getInstance();
  
  protected gny(Context paramContext, goc paramgoc, boolean paramBoolean, int paramInt, Bundle paramBundle1, Bundle paramBundle2, String paramString)
  {
    a = paramContext;
    b = paramgoc;
    c = paramBoolean;
    d = paramInt;
    e = paramBundle1;
    f = paramBundle2;
    if (!TextUtils.isEmpty(paramString))
    {
      paramBoolean = true;
      g = paramBoolean;
      if (!g) {
        break label111;
      }
      label77:
      h = paramString;
      if (!aal.q(3)) {
        break label117;
      }
    }
    label111:
    label117:
    for (paramContext = new gpn("aggregator");; paramContext = gpo.a)
    {
      i = paramContext;
      return;
      paramBoolean = false;
      break;
      paramString = null;
      break label77;
    }
  }
  
  protected static void a(gob paramgob, HashMap<String, Integer> paramHashMap)
  {
    paramgob.a(-1);
    while (paramgob.c())
    {
      String str = paramgob.a("gaia_id");
      if (!TextUtils.isEmpty(str)) {
        paramHashMap.put(str, Integer.valueOf(paramgob.b()));
      }
    }
  }
  
  private void e()
  {
    try
    {
      new goa(this).start();
      return;
    }
    catch (Exception localException)
    {
      aal.a("PeopleAggregator", "Unable to start thread", localException);
      a(null, localException);
    }
  }
  
  private void f()
  {
    synchronized (o)
    {
      if ((!p) || (!q)) {
        return;
      }
      if (!j.b())
      {
        d();
        return;
      }
    }
    try
    {
      new gnz(this).start();
      return;
    }
    catch (Exception localException)
    {
      aal.a("PeopleAggregator", "Unable to start thread", localException);
      d();
    }
  }
  
  protected int a(Cursor paramCursor, gpp paramgpp, gop paramgop, HashMap<String, String> paramHashMap)
  {
    int i1 = -1;
    long l1 = -1L;
    paramCursor.moveToPosition(-1);
    ArrayList localArrayList1 = new ArrayList(3);
    ArrayList localArrayList2 = new ArrayList(6);
    int i2 = 0;
    int i3;
    if (paramCursor.moveToNext())
    {
      long l2 = paramCursor.getLong(0);
      if (l2 == l1) {
        break label256;
      }
      localArrayList1.clear();
      localArrayList2.clear();
      i1 = paramCursor.getPosition();
      i3 = i2 + 1;
      i2 = i1;
      l1 = l2;
    }
    for (i1 = i3;; i1 = i3)
    {
      String str = paramCursor.getString(2);
      if (("vnd.android.cursor.item/email_v2".equals(str)) || ("vnd.android.cursor.item/phone_v2".equals(str)))
      {
        str = paramCursor.getString(3);
        if ((TextUtils.isEmpty(str)) || (localArrayList2.contains(str))) {
          break label241;
        }
        localArrayList2.add(str);
        str = (String)paramHashMap.get(str);
        if ((!TextUtils.isEmpty(str)) && (!localArrayList1.contains(str)))
        {
          localArrayList1.add(str);
          paramgpp.a(str, i2);
          paramgop.a(Integer.valueOf(i2), str);
        }
      }
      i3 = i1;
      i1 = i2;
      i2 = i3;
      break;
      return i2;
      label241:
      i3 = i1;
      i1 = i2;
      i2 = i3;
      break;
      label256:
      i3 = i2;
      i2 = i1;
    }
  }
  
  protected int a(String paramString1, String paramString2)
  {
    if (TextUtils.isEmpty(paramString1))
    {
      if (TextUtils.isEmpty(paramString2)) {
        return 0;
      }
      return -1;
    }
    if (TextUtils.isEmpty(paramString2)) {
      return 1;
    }
    return t.compare(paramString1, paramString2);
  }
  
  protected DataHolder a()
  {
    return l;
  }
  
  protected abstract gnq a(gob paramgob1, gob paramgob2, Cursor paramCursor);
  
  void a(Cursor paramCursor, Exception paramException)
  {
    if (paramCursor != null) {
      i.a("contacts loaded");
    }
    for (;;)
    {
      int i1;
      if (aal.q(3))
      {
        ??? = new StringBuilder("Contacts loaded.  exception=").append(paramException).append("  size=");
        if (paramCursor != null) {
          break label103;
        }
        i1 = -1;
        ((StringBuilder)???).append(i1);
        aal.q(3);
      }
      synchronized (o)
      {
        q = true;
        m = paramCursor;
        r = paramException;
        f();
        return;
        i.a("contacts load failure");
        continue;
        label103:
        i1 = paramCursor.getCount();
      }
    }
  }
  
  public void a(ConnectionResult arg1, DataHolder[] paramArrayOfDataHolder)
  {
    if (???.b()) {
      i.a("people loaded");
    }
    for (;;)
    {
      int i1;
      if (aal.q(3))
      {
        ??? = new StringBuilder("People loaded.  status=").append(???).append("  size=");
        if ((paramArrayOfDataHolder != null) && (paramArrayOfDataHolder.length >= 2) && (paramArrayOfDataHolder[0] != null)) {
          break label146;
        }
        i1 = -1;
        ((StringBuilder)???).append(i1);
        aal.q(3);
      }
      synchronized (o)
      {
        p = true;
        j = ???;
        if (j.b())
        {
          k = paramArrayOfDataHolder[0];
          l = paramArrayOfDataHolder[1];
        }
        if (!g)
        {
          f();
          return;
          i.a("people load failure");
          continue;
          label146:
          i1 = paramArrayOfDataHolder[0].d();
        }
      }
    }
    if (j.b())
    {
      e();
      return;
    }
    synchronized (o)
    {
      q = true;
      d();
      return;
    }
  }
  
  public void b()
  {
    if (!g) {
      e();
    }
  }
  
  protected void b(gob paramgob, HashMap<String, String> paramHashMap)
  {
    paramgob.a(-1);
    while (paramgob.c()) {
      paramHashMap.put(paramgob.a("value"), paramgob.a("gaia_id"));
    }
  }
  
  protected abstract Cursor c();
  
  void d()
  {
    synchronized (o)
    {
      aal.b(p);
      aal.b(q);
      if (k != null) {
        k.f();
      }
      if (l != null) {
        l.f();
      }
      if (m != null) {
        m.close();
      }
      if (s) {
        return;
      }
      s = true;
      b.a(8, null);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     gny
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */