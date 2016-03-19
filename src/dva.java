import java.util.Iterator;
import java.util.Set;

public final class dva
{
  final String a;
  final int b;
  
  public dva(egx paramegx)
  {
    a = paramegx.a();
    b = paramegx.b();
  }
  
  public dva(String paramString)
  {
    a = paramString;
    b = 1;
  }
  
  public void a(bfz parambfz)
  {
    parambfz.c(a, b);
    if (bfz.a(a))
    {
      if (b == 2) {
        parambfz.m(a, 4L);
      }
    }
    else {
      return;
    }
    parambfz.l(a, 4L);
  }
  
  public void b(bfz parambfz)
  {
    parambfz.a();
    try
    {
      parambfz.c(a, b);
      Iterator localIterator = parambfz.ae(a).iterator();
      while (localIterator.hasNext()) {
        parambfz.c((String)localIterator.next(), b);
      }
    }
    finally
    {
      parambfz.c();
    }
    parambfz.c();
  }
}

/* Location:
 * Qualified Name:     dva
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */