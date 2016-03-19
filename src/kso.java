import java.util.Arrays;
import java.util.Comparator;

public class kso<K, V>
{
  Comparator<? super V> a;
  kss<K, V>[] b;
  int c;
  boolean d;
  
  public kso()
  {
    this(4);
  }
  
  kso(int paramInt)
  {
    b = new kss[paramInt];
    c = 0;
    d = false;
  }
  
  public ksm<K, V> a()
  {
    switch (c)
    {
    default: 
      if (a != null)
      {
        if (d) {
          b = ((kss[])kxi.a(b, c));
        }
        Arrays.sort(b, 0, c, kxj.a(a).a(kwj.b()));
      }
      if (c != b.length) {
        break;
      }
    }
    for (boolean bool = true;; bool = false)
    {
      d = bool;
      return kxs.a(c, b);
      return kxm.b;
      return krw.a(b[0].getKey(), b[0].getValue());
    }
  }
  
  public kso<K, V> a(K paramK, V paramV)
  {
    int i = c + 1;
    if (i > b.length)
    {
      b = ((kss[])kxi.a(b, ksb.a(b.length, i)));
      d = false;
    }
    paramK = ksm.b(paramK, paramV);
    paramV = b;
    i = c;
    c = (i + 1);
    paramV[i] = paramK;
    return this;
  }
}

/* Location:
 * Qualified Name:     kso
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */