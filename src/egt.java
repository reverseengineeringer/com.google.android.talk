import android.content.Intent;
import android.os.Bundle;
import android.os.SystemClock;
import android.util.Base64;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

public final class egt
{
  private static final boolean a = false;
  
  static
  {
    imx localimx = ezi.l;
  }
  
  public static List<egs> a(Intent paramIntent, int paramInt, boolean paramBoolean)
  {
    if (paramIntent.getExtras().containsKey("payload"))
    {
      bfd localbfd = dvd.e(paramInt);
      String str = paramIntent.getStringExtra("payload");
      long l1 = paramIntent.getLongExtra("timestamp", 0L);
      long l2 = paramIntent.getLongExtra("gcm_handle_timestamps", 0L);
      long l3 = SystemClock.elapsedRealtime();
      if ((paramBoolean) && (exo.b)) {}
      for (int i = 1;; i = 0)
      {
        if (i != 0) {
          new exr().a("recv_server_update").a(localbfd).c(str.length()).b();
        }
        paramIntent = a(str, l1, l2, l3 * 1000L, paramInt);
        if (i != 0) {
          exo.d();
        }
        return paramIntent;
      }
    }
    return null;
  }
  
  private static List<egs> a(String paramString, long paramLong1, long paramLong2, long paramLong3, int paramInt)
  {
    try
    {
      Object localObject = new jwz();
      paramString = Base64.decode(paramString, 0);
      jwz localjwz = (jwz)lyi.b((lyi)localObject, paramString, paramString.length);
      if (a)
      {
        paramString = String.valueOf(localjwz);
        new StringBuilder(String.valueOf(paramString).length() + 23).append("ClientBatchUpdate from:").append(paramString);
      }
      int j = a.length;
      if (j > 0)
      {
        localObject = new ArrayList();
        int i = 0;
        for (;;)
        {
          paramString = (String)localObject;
          if (i >= j) {
            break;
          }
          a(a[i], paramLong1, paramLong2, paramLong3, paramInt, (ArrayList)localObject);
          i += 1;
        }
        return paramString;
      }
    }
    catch (lyg paramString)
    {
      paramString = String.valueOf(paramString);
      ezi.e("Babel", String.valueOf(paramString).length() + 31 + "Problem parsing client update: " + paramString, new Object[0]);
      paramString = null;
    }
    ezi.e("Babel", "received a client update with no contents", new Object[0]);
    return null;
  }
  
  public static void a(Intent paramIntent, long paramLong1, long paramLong2)
  {
    paramIntent.putExtra("timestamp", paramLong1);
    paramIntent.putExtra("gcm_handle_timestamps", paramLong2);
  }
  
  public static void a(Intent paramIntent, String paramString)
  {
    paramIntent.putExtra("payload", paramString);
  }
  
  private static void a(efo paramefo, exr paramexr, int paramInt1, long paramLong, int paramInt2)
  {
    bfd localbfd = dvd.e(paramInt1);
    paramexr.a().a("server_update_field").b(paramefo.getClass().getSimpleName()).a(paramLong).b(c).a(paramInt2).c(a).a(localbfd).b();
  }
  
  private static void a(kez paramkez, long paramLong1, long paramLong2, long paramLong3, int paramInt, ArrayList<egs> paramArrayList)
  {
    Object localObject1;
    int j;
    int i;
    if (a)
    {
      localObject1 = String.valueOf(paramkez);
      new StringBuilder(String.valueOf(localObject1).length() + 27).append("received ClientStateUpdate ").append((String)localObject1);
      localObject1 = paramkez.getClass().getMethods();
      j = localObject1.length;
      i = 0;
      while (i < j)
      {
        localObject2 = localObject1[i];
        if ((((Method)localObject2).getName().startsWith("has")) && (((Method)localObject2).getParameterTypes().length == 0) && (((Method)localObject2).getGenericReturnType() == Boolean.TYPE)) {}
        try
        {
          bool1 = aal.a((Boolean)((Method)localObject2).invoke(paramkez, new Object[0]), false);
          if (bool1)
          {
            String str = String.valueOf(((Method)localObject2).getName());
            new StringBuilder(String.valueOf(str).length() + 13).append("   ").append(str).append(" ==> ").append(bool1);
          }
        }
        catch (Exception localException)
        {
          for (;;)
          {
            localObject2 = String.valueOf(((Method)localObject2).getName());
            localObject3 = String.valueOf(localException);
            new StringBuilder(String.valueOf(localObject2).length() + 38 + String.valueOf(localObject3).length()).append("oops, couldn't invoke ").append((String)localObject2).append(" gave exception ").append((String)localObject3);
          }
        }
        i += 1;
      }
    }
    Object localObject2 = dvd.e(paramInt);
    boolean bool4 = exo.b;
    long l3 = System.currentTimeMillis();
    Object localObject3 = ((bfd)localObject2).b();
    long l1;
    boolean bool2;
    if (bool4)
    {
      localObject1 = new exr();
      i = 0;
      l1 = 0L;
      bool2 = false;
      boolean bool3 = false;
      if (a != null)
      {
        Object localObject4 = a;
        j = aal.a(a, 0);
        long l2 = aal.a(c, 0L);
        paramArrayList.add(new efn(j));
        bool1 = bool3;
        if (b != null)
        {
          localObject4 = b;
          bool1 = bool3;
          if (a != null) {
            bool1 = aal.a(a.a, false);
          }
        }
        bool2 = bool1;
        i = j;
        l1 = l2;
        if (bool4)
        {
          ((exr)localObject1).a().a("server_update_field").b("ClientStateUpdateHeader").a(l3).a(j).a(bool1).a((bfd)localObject2).b();
          l1 = l2;
          i = j;
          bool2 = bool1;
        }
      }
      if (ezi.a("Babel", 3))
      {
        localObject3 = String.valueOf(localObject3);
        ezi.a("Babel", String.valueOf(localObject3).length() + 59 + "parseServerUpdates: acct=" + (String)localObject3 + ", activeClientState is " + i, new Object[0]);
      }
      j = i;
      if (i != 1)
      {
        localObject3 = (eck)eck.a.get(Integer.valueOf(((bfd)localObject2).g()));
        if (localObject3 == null) {
          break label1224;
        }
      }
    }
    label1224:
    for (boolean bool1 = e;; bool1 = false)
    {
      j = i;
      if (bool1)
      {
        if (ezi.a("Babel", 3)) {
          ezi.a("Babel", 54 + "Overwrite active client state from server: " + i, new Object[0]);
        }
        j = 1;
      }
      if (bool2) {
        j = 2;
      }
      if ((b != null) || ((c != null) && (p != null) && (c.a.h != null)))
      {
        localObject3 = new ega(p);
        if ((((ega)localObject3).j() == null) && (((bfd)localObject2).t())) {
          ((ega)localObject3).b(((bfd)localObject2).v());
        }
        if (bool4) {
          ((exr)localObject1).a().a("server_update_field").b("Conversation").a(l3).a(j).a(bool2).c(a).a((bfd)localObject2).b();
        }
        paramArrayList.add(localObject3);
      }
      if (o != null) {
        paramArrayList.add(new egh(o));
      }
      if (c != null)
      {
        bool1 = dvp.i.b(paramInt);
        localObject3 = egf.a(c.a, j, l1, bool1, paramInt, paramLong1, paramLong2, paramLong3);
        if (localObject3 != null)
        {
          if (bool4) {
            ((exr)localObject1).a().a("server_update_field").b(localObject3.getClass().getSimpleName()).a(l3).b(c).a(j).a(bool2).b(e).c(a).a((bfd)localObject2).b();
          }
          paramArrayList.add(localObject3);
        }
      }
      if (d != null)
      {
        localObject3 = new egu(d);
        if (bool4) {
          a((efo)localObject3, (exr)localObject1, paramInt, l3, j);
        }
        paramArrayList.add(localObject3);
      }
      if (e != null)
      {
        localObject3 = new egv(e);
        if (bool4) {
          a((efo)localObject3, (exr)localObject1, paramInt, l3, j);
        }
        paramArrayList.add(localObject3);
      }
      if (h != null)
      {
        localObject3 = new egy(h);
        if (bool4) {
          a((efo)localObject3, (exr)localObject1, paramInt, l3, j);
        }
        paramArrayList.add(localObject3);
      }
      if (g != null) {
        paramArrayList.add(new egp(g));
      }
      if (q != null)
      {
        localObject3 = new egr(q);
        if (bool4) {
          ((exr)localObject1).a().a("server_update_field").b("SelfPresenceNotification").a(l3).a(j).a(bool2).a((bfd)localObject2).b();
        }
        paramArrayList.add(localObject3);
      }
      if (m == null) {
        break label1230;
      }
      localObject3 = ilh.c(aal.oJ, dwa.class).iterator();
      while (((Iterator)localObject3).hasNext()) {
        ((dwa)((Iterator)localObject3).next()).a(paramInt, m.a);
      }
      localObject1 = null;
      break;
    }
    label1230:
    if (paramkez.i != null)
    {
      localObject3 = new egx(paramkez.i);
      if (bool4) {
        ((exr)localObject1).a().a("server_update_field").b("ViewModificationNotification").c(((egx)localObject3).a()).a(l3).a(j).a(bool2).a((bfd)localObject2).b();
      }
      paramArrayList.add(localObject3);
    }
    if (f != null) {
      paramArrayList.add(new egk(f));
    }
    if (k != null) {
      paramArrayList.add(new egd(k));
    }
    if (x != null) {
      paramArrayList.add(new egc(x));
    }
    if (s != null) {
      paramArrayList.add(new efp(s));
    }
    if (w != null) {
      paramArrayList.add(new efz(w, a.h));
    }
    if (v != null) {
      paramArrayList.add(new egq(v));
    }
    if (paramkez.j != null) {
      paramArrayList.add(new ege(paramkez.j));
    }
    if (paramArrayList.isEmpty()) {
      ezi.d("Babel", "Unexpected update type from babel server", new Object[0]);
    }
  }
}

/* Location:
 * Qualified Name:     egt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */