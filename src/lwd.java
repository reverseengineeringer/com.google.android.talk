import java.util.Iterator;
import java.util.Map.Entry;

public final class lwd
{
  private final Iterator<Map.Entry<lvx, Object>> b = a.d.d();
  private Map.Entry<lvx, Object> c;
  private final boolean d;
  
  lwd(lwc paramlwc, boolean paramBoolean)
  {
    if (b.hasNext()) {
      c = ((Map.Entry)b.next());
    }
    d = true;
  }
  
  public void a(lvq paramlvq)
  {
    while ((c != null) && (((lvx)c.getKey()).a() < Integer.MAX_VALUE))
    {
      lvx locallvx = (lvx)c.getKey();
      if ((d) && (locallvx.c() == lxt.i) && (!locallvx.d())) {
        paramlvq.b(locallvx.a(), (lwp)c.getValue());
      }
      for (;;)
      {
        if (!b.hasNext()) {
          break label132;
        }
        c = ((Map.Entry)b.next());
        break;
        lvv.a(locallvx, c.getValue(), paramlvq);
      }
      label132:
      c = null;
    }
  }
}

/* Location:
 * Qualified Name:     lwd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */