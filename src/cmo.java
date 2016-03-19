import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

final class cmo
  extends hbn
{
  cmo(cml paramcml) {}
  
  private void a(boolean paramBoolean)
  {
    hbs.b("Expected non-null", a.g);
    Object localObject = a.e;
    if (!aal.a(a.g.k, false)) {
      a.e = clq.e;
    }
    while (localObject != a.e)
    {
      localObject = a.d.iterator();
      while (((Iterator)localObject).hasNext()) {
        ((clo)((Iterator)localObject).next()).a(a.e, paramBoolean);
      }
      if (aal.a(a.g.u, 0) == 2) {
        a.e = clq.d;
      } else if (aal.a(a.g.w, 0) == 2) {
        a.e = clq.c;
      } else if (aal.a(a.g.b, 0) == 2) {
        a.e = clq.b;
      } else {
        a.e = clq.a;
      }
    }
  }
  
  public void a()
  {
    a.g = ((khf)a.f.b().values().iterator().next());
    a(true);
  }
}

/* Location:
 * Qualified Name:     cmo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */