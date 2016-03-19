import android.os.Handler;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;
import com.google.android.gms.herrevad.PredictedNetworkQuality;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

final class cfg
  extends hlj
{
  cfg(cfc paramcfc) {}
  
  public void a(int paramInt)
  {
    a.p.removeCallbacks(a.b);
    if (a.q != null)
    {
      cfx.a(a.c, a.q.e(), paramInt, false);
      localObject = a.q.q();
      a.a((hcs)localObject);
    }
    Object localObject = a;
    if (o != null) {
      o.b();
    }
    o = null;
    k = null;
    l = true;
    m = true;
    e = null;
    g = null;
    j.clear();
    n = null;
    i = null;
    super.a(paramInt);
    paramInt = a.a.size();
    ezi.c("Babel_calls", 55 + "Call ended with " + paramInt + " active CallServiceListeners", new Object[0]);
  }
  
  public void a(hkw paramhkw)
  {
    int i = 1;
    a.e = paramhkw;
    Object localObject1 = (hbf)a.o().a(hbf.class);
    Object localObject3 = ((hbf)localObject1).a();
    Object localObject2;
    int j;
    if (localObject3 != null)
    {
      localObject2 = a;
      q.r();
      if (q.e().g() == null) {
        q.a(a);
      }
      if (j != null) {
        q.b(j.a);
      }
      j = aal.a(b, -1);
      if (j == 3)
      {
        q.i();
        q.c(n);
        ((hbb)((cfc)localObject2).o().a(hbb.class)).a(new cff((cfc)localObject2));
      }
    }
    else
    {
      ((hbf)localObject1).a(new cfh(this));
      a.q.v();
      if (!a.q.u()) {
        break label309;
      }
      localObject3 = a;
      hbs.a("Expected condition to be true", q.u());
      localObject2 = q.t();
      localObject1 = localObject2;
      if (localObject2 == null) {
        localObject1 = new ArrayList();
      }
      cfc.a((List)localObject1);
      q.B();
    }
    label309:
    label403:
    for (;;)
    {
      super.a(paramhkw);
      return;
      localObject3 = q;
      if ((j == 1) || (j == 2)) {}
      for (boolean bool = true;; bool = false)
      {
        ((cgw)localObject3).b(bool);
        break;
      }
      localObject1 = a;
      if ((q != null) && (q.G()) && (q.H() == 0)) {}
      for (;;)
      {
        if (i == 0) {
          break label403;
        }
        ezi.c("Babel_calls", "No one in hangout, will leave on timeout.", new Object[0]);
        long l = aal.a(a.c, "babel_lonely_hangout_timeout_ms", eea.s);
        a.p.postDelayed(a.b, l);
        break;
        i = 0;
      }
    }
  }
  
  public void a(hkx paramhkx)
  {
    if (a.j.containsKey(paramhkx.a()))
    {
      Object localObject1 = String.valueOf(paramhkx.toString());
      if (((String)localObject1).length() != 0) {}
      for (localObject1 = "Map dup: already has participant: ".concat((String)localObject1);; localObject1 = new String("Map dup: already has participant: "))
      {
        ezi.e("Babel_calls", (String)localObject1, new Object[0]);
        localObject1 = a.j.entrySet().iterator();
        while (((Iterator)localObject1).hasNext())
        {
          Object localObject2 = (Map.Entry)((Iterator)localObject1).next();
          String str = (String)((Map.Entry)localObject2).getKey();
          localObject2 = String.valueOf(((hkx)((Map.Entry)localObject2).getValue()).toString());
          ezi.e("Babel_calls", String.valueOf(str).length() + 20 + String.valueOf(localObject2).length() + "Map dup: key=" + str + " value=" + (String)localObject2, new Object[0]);
        }
      }
      hbs.a("Map dup: already has participant");
    }
    if (paramhkx.g()) {
      a.n = paramhkx;
    }
    a.j.put(paramhkx.a(), paramhkx);
    super.a(paramhkx);
  }
  
  public void a(kju paramkju)
  {
    Object localObject3 = null;
    int j = 0;
    super.a(paramkju);
    aal.c(2677);
    if (a.q == null) {
      aal.c(2011);
    }
    label151:
    label238:
    label519:
    label529:
    label541:
    label612:
    for (;;)
    {
      return;
      Object localObject1 = aal.oJ;
      bfd localbfd = a.q.l();
      if (dvd.d(localbfd)) {
        aal.c(2589);
      }
      hcs localhcs = a.q.q();
      int i = localhcs.p();
      if ((i == 19) || (i == 26))
      {
        aal.c(2012);
        return;
      }
      Object localObject2 = a;
      if (h == null)
      {
        localObject1 = null;
        l = ((juy)localObject1);
        if (k != null)
        {
          localObject1 = a.q.S();
          if (localObject1 != null) {
            break label519;
          }
          localObject1 = null;
          if (localObject1 != null)
          {
            juz localjuz = k.c;
            localObject2 = localjuz;
            if (localjuz == null)
            {
              localObject2 = new juz();
              k.c = ((juz)localObject2);
            }
            b = new jva();
            b.a = ((String)localObject1);
          }
        }
        if (!a.g.y())
        {
          if (f != null) {
            break label529;
          }
          localObject1 = localObject3;
          RealTimeChatService.a(localbfd, (String)localObject1, paramkju);
        }
        if (localhcs.d()) {
          break label541;
        }
        aal.c(2177);
      }
      for (;;)
      {
        if (!a.q.Q()) {
          break label612;
        }
        RealTimeChatService.n(localbfd, a.q.R());
        return;
        localObject1 = new juy();
        int k = h.b;
        i = j;
        switch (k)
        {
        case 10: 
        case 11: 
        case 12: 
        case 13: 
        case 14: 
        case 15: 
        case 16: 
        default: 
          ezi.d("Babel_calls", 54 + "Unknown connectivity manager network type: " + k, new Object[0]);
          i = j;
        }
        for (;;)
        {
          a = Integer.valueOf(i);
          b = Integer.valueOf(h.c);
          c = Long.valueOf(h.d);
          d = Long.valueOf(h.e);
          break;
          i = 4;
          continue;
          i = 1;
          continue;
          i = 5;
          continue;
          i = 2;
          continue;
          i = 3;
        }
        localObject1 = ((cyx)localObject1).f();
        break label151;
        localObject1 = f.a;
        break label238;
        aal.c(2176);
        if (aal.c(localbfd))
        {
          paramkju = aal.a(aal.oJ, "babel_hangout_upload_end_causes", "6,10,29,47").split(",");
          localObject1 = Integer.toString(localhcs.r());
          if (Arrays.asList(paramkju).contains(localObject1)) {
            a.q.e("");
          }
        }
      }
    }
  }
  
  public void b(hkx paramhkx)
  {
    hbs.a("Expected condition to be true", a.j.containsKey(paramhkx.a()));
    if (paramhkx.g()) {
      a.n = null;
    }
    a.j.remove(paramhkx.a());
    super.b(paramhkx);
  }
  
  public void c(hkx paramhkx)
  {
    hbs.a("Expected condition to be true", a.j.containsKey(paramhkx.a()));
    a.j.put(paramhkx.a(), paramhkx);
    if (paramhkx.k()) {
      a.k = paramhkx;
    }
    if (paramhkx.g())
    {
      a.l = paramhkx.d();
      a.n = paramhkx;
    }
    super.c(paramhkx);
  }
  
  public void d(hkx paramhkx)
  {
    a.k = paramhkx;
    super.d(paramhkx);
  }
}

/* Location:
 * Qualified Name:     cfg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */