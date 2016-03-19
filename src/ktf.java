import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class ktf<K, V>
{
  kwt<K, V> a;
  Comparator<? super K> b;
  Comparator<? super V> c;
  
  public ktf()
  {
    this(new kww(8).b().a());
  }
  
  private ktf(kwt<K, V> paramkwt)
  {
    a = paramkwt;
  }
  
  public kte<K, V> a()
  {
    if (c != null)
    {
      localObject1 = a.b().values().iterator();
      while (((Iterator)localObject1).hasNext()) {
        Collections.sort((List)((Iterator)localObject1).next(), c);
      }
    }
    if (b != null)
    {
      aal.c(8, "expectedKeys");
      localObject1 = new kww(8).b().a();
      localObject2 = kxj.a(b).d().a(a.b().entrySet()).iterator();
      while (((Iterator)localObject2).hasNext())
      {
        localObject3 = (Map.Entry)((Iterator)localObject2).next();
        ((kwt)localObject1).a(((Map.Entry)localObject3).getKey(), (Iterable)((Map.Entry)localObject3).getValue());
      }
      a = ((kwt)localObject1);
    }
    Object localObject3 = a;
    if ((localObject3 instanceof kte))
    {
      localObject1 = (kte)localObject3;
      if (((kte)localObject1).a()) {}
    }
    do
    {
      return (kte<K, V>)localObject1;
      if (((kwt)localObject3).j()) {
        return krm.a;
      }
      if (!(localObject3 instanceof ksl)) {
        break;
      }
      localObject2 = (ksl)localObject3;
      localObject1 = localObject2;
    } while (!((ksl)localObject2).a());
    Object localObject1 = new kso(((kwt)localObject3).b().size());
    Object localObject2 = ((kwt)localObject3).b().entrySet().iterator();
    int i = 0;
    if (((Iterator)localObject2).hasNext())
    {
      localObject3 = (Map.Entry)((Iterator)localObject2).next();
      ksf localksf = ksf.a((Collection)((Map.Entry)localObject3).getValue());
      if (localksf.isEmpty()) {
        break label361;
      }
      ((kso)localObject1).a(((Map.Entry)localObject3).getKey(), localksf);
      i = localksf.size() + i;
    }
    label361:
    for (;;)
    {
      break;
      return new ksl(((kso)localObject1).a(), i);
    }
  }
  
  public ktf<K, V> a(K paramK, V paramV)
  {
    aal.e(paramK, paramV);
    a.a(paramK, paramV);
    return this;
  }
}

/* Location:
 * Qualified Name:     ktf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */