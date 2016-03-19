import android.text.TextUtils;
import android.util.SparseArray;
import com.google.android.apps.hangouts.hangout.DebugOverlayTextView;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

public final class cfu
  extends hku
{
  public cfu(DebugOverlayTextView paramDebugOverlayTextView)
  {
    super((byte)0);
  }
  
  public void a(juk paramjuk)
  {
    if (!ezi.a("Babel_hangout_overlay"))
    {
      a.setText(null);
      a.setVisibility(8);
      return;
    }
    label43:
    Object localObject1;
    if ((d == null) || (d.length == 0))
    {
      paramjuk = null;
      if (paramjuk == null) {
        break label542;
      }
      localObject1 = a;
      if (aal.a(k, 0) == 2) {
        d = paramjuk;
      }
      localObject1 = a;
      if ((aal.a(k, 0) == 0) && (aal.a(a, 0) == 2)) {
        e = paramjuk;
      }
      localObject1 = a;
      if ((aal.a(k, 0) == 1) && (aal.a(a, 0) == 2)) {
        f.put(aal.a(l, 0), paramjuk);
      }
      if (!ezi.a("Babel_hangout_overlay", 2)) {
        break label635;
      }
      localDebugOverlayTextView = a;
      b.setLength(0);
      localObject2 = a.f();
      if (localObject2 == null) {
        break label635;
      }
      if (c != null) {
        break label544;
      }
      b.append("Focus is null, waiting...\n");
      paramjuk = ((hks)localObject2).l();
      localObject1 = b;
      if (paramjuk.e() != 2) {
        break label614;
      }
    }
    label542:
    label544:
    label563:
    label608:
    label614:
    for (paramjuk = "P2P ";; paramjuk = "Cloud ")
    {
      ((StringBuilder)localObject1).append(paramjuk);
      if (d != null) {
        b.append(String.format("\nBW: asbw (%d), arbw (%d), txbr (%d), rtxbr (%d)", new Object[] { d.z, d.A, d.B, d.C }));
      }
      if (e != null) {
        b.append(String.format("\nLocal (%s): \n%dx%d %dfps IN / %dfps OUT", new Object[] { e.F, e.O, e.P, e.p, e.q }));
      }
      paramjuk = ((hks)localObject2).p().values().iterator();
      while (paramjuk.hasNext())
      {
        localObject1 = (hkx)paramjuk.next();
        localObject2 = (jun)f.get(((hkx)localObject1).q());
        if (localObject2 != null)
        {
          b.append("\n");
          b.append(String.format("Remote: %s\n%dx%d %dfps IN / %dfps OUT", new Object[] { ((hkx)localObject1).b(), O, P, q, r }));
          b.append(String.format(" | Renderer: %.2f IN / %.2f OUT", new Object[] { s, u }));
        }
      }
      paramjuk = d[(d.length - 1)];
      break label43;
      break;
      localObject3 = b;
      if (c.e())
      {
        paramjuk = "muted";
        if (!c.d()) {
          break label608;
        }
      }
      for (localObject1 = "muted";; localObject1 = "on")
      {
        ((StringBuilder)localObject3).append(String.format("Focus is video %s/audio %s\n", new Object[] { paramjuk, localObject1 }));
        break;
        paramjuk = "on";
        break label563;
      }
    }
    if (!TextUtils.isEmpty(b)) {
      paramjuk = b;
    }
    label635:
    a.setVisibility(0);
    DebugOverlayTextView localDebugOverlayTextView = a;
    Object localObject2 = a;
    b.setLength(0);
    Object localObject3 = a.f();
    if (localObject3 == null) {
      paramjuk = "Not in a call";
    }
    for (;;)
    {
      localDebugOverlayTextView.setText(paramjuk);
      return;
      if (c == null)
      {
        b.append("Focus is null, waiting...\n");
        paramjuk = ((hks)localObject3).l();
        localObject1 = b;
        if (paramjuk.e() != 2) {
          break label1125;
        }
      }
      label1073:
      label1119:
      label1125:
      for (paramjuk = "P2P ";; paramjuk = "Cloud ")
      {
        ((StringBuilder)localObject1).append(paramjuk);
        if (d != null) {
          b.append(String.format("\nBW: asbw (%d), arbw (%d), txbr (%d), rtxbr (%d)", new Object[] { d.z, d.A, d.B, d.C }));
        }
        if (e != null) {
          b.append(String.format("\nLocal (%s): \n%dx%d %dfps IN / %dfps OUT", new Object[] { e.F, e.O, e.P, e.p, e.q }));
        }
        paramjuk = ((hks)localObject3).p().values().iterator();
        while (paramjuk.hasNext())
        {
          localObject1 = (hkx)paramjuk.next();
          localObject3 = (jun)f.get(((hkx)localObject1).q());
          if (localObject3 != null)
          {
            b.append("\n");
            b.append(String.format("Remote: %s\n%dx%d %dfps IN / %dfps OUT", new Object[] { ((hkx)localObject1).b(), O, P, q, r }));
            b.append(String.format(" | Renderer: %.2f IN / %.2f OUT", new Object[] { s, u }));
          }
        }
        StringBuilder localStringBuilder = b;
        if (c.e())
        {
          paramjuk = "muted";
          if (!c.d()) {
            break label1119;
          }
        }
        for (localObject1 = "muted";; localObject1 = "on")
        {
          localStringBuilder.append(String.format("Focus is video %s/audio %s\n", new Object[] { paramjuk, localObject1 }));
          break;
          paramjuk = "on";
          break label1073;
        }
      }
      if (TextUtils.isEmpty(b)) {
        paramjuk = "Getting debug stats ...";
      } else {
        paramjuk = b.toString();
      }
    }
  }
  
  public void b(hkx paramhkx)
  {
    a.f.delete(paramhkx.q());
  }
  
  public void c(hkx paramhkx)
  {
    if (paramhkx.equals(a.c)) {
      a.c = paramhkx;
    }
  }
  
  public void d(hkx paramhkx)
  {
    a.c = paramhkx;
  }
}

/* Location:
 * Qualified Name:     cfu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */