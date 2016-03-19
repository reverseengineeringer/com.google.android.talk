import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

final class cml
  implements clp
{
  static final boolean a = false;
  final cfc b = cfc.a();
  final cmo c = new cmo(this);
  final List<clo> d = new CopyOnWriteArrayList();
  clq e = clq.e;
  hbf f = null;
  khf g;
  private final cmn h = new cmn(this);
  
  static
  {
    imx localimx = ezi.g;
  }
  
  cml()
  {
    b.a(h);
  }
  
  public clq a()
  {
    return e;
  }
  
  public void a(clo paramclo)
  {
    d.add(paramclo);
  }
  
  public void a(boolean paramBoolean)
  {
    if ((f == null) || (g == null)) {
      return;
    }
    khf localkhf = new khf();
    a = g.a;
    if (paramBoolean) {}
    for (int i = 2;; i = 1)
    {
      u = Integer.valueOf(i);
      khi localkhi = new khi();
      c = new khf[] { localkhf };
      f.b(localkhi, new cmm(this, paramBoolean));
      return;
    }
  }
  
  public void b(clo paramclo)
  {
    d.remove(paramclo);
  }
  
  public boolean b()
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (g != null)
    {
      bool1 = bool2;
      if (aal.a(g.b, 0) == 2) {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  public String c()
  {
    if (g == null) {
      return null;
    }
    return g.A;
  }
}

/* Location:
 * Qualified Name:     cml
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */