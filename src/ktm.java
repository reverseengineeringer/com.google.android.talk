import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Comparator;

public class ktm<K, V>
  extends kte<K, V>
  implements kwt<K, V>
{
  private static final long serialVersionUID = 0L;
  private final transient kth<V> a;
  
  private void readObject(ObjectInputStream paramObjectInputStream)
  {
    paramObjectInputStream.defaultReadObject();
    Comparator localComparator = (Comparator)paramObjectInputStream.readObject();
    int m = paramObjectInputStream.readInt();
    if (m < 0) {
      throw new InvalidObjectException(29 + "Invalid key count " + m);
    }
    kso localkso = new kso();
    int j = 0;
    int i = 0;
    Object localObject1;
    while (j < m)
    {
      Object localObject2 = paramObjectInputStream.readObject();
      int n = paramObjectInputStream.readInt();
      if (n <= 0) {
        throw new InvalidObjectException(31 + "Invalid value count " + n);
      }
      if (localComparator == null) {}
      for (localObject1 = new kti();; localObject1 = new ktv(localComparator))
      {
        int k = 0;
        while (k < n)
        {
          ((kti)localObject1).c(paramObjectInputStream.readObject());
          k += 1;
        }
      }
      localObject1 = ((kti)localObject1).a();
      if (((kth)localObject1).size() != n)
      {
        paramObjectInputStream = String.valueOf(localObject2);
        throw new InvalidObjectException(String.valueOf(paramObjectInputStream).length() + 40 + "Duplicate key-value pairs exist for key " + paramObjectInputStream);
      }
      localkso.a(localObject2, localObject1);
      j += 1;
      i += n;
    }
    for (;;)
    {
      try
      {
        paramObjectInputStream = localkso.a();
        ktg.a.a(this, paramObjectInputStream);
        ktg.b.a(this, i);
        localObject1 = ktg.c;
        if (localComparator == null)
        {
          paramObjectInputStream = kxt.a;
          ((kxx)localObject1).a(this, paramObjectInputStream);
          return;
        }
      }
      catch (IllegalArgumentException paramObjectInputStream)
      {
        throw ((InvalidObjectException)new InvalidObjectException(paramObjectInputStream.getMessage()).initCause(paramObjectInputStream));
      }
      paramObjectInputStream = ktu.a(localComparator);
    }
  }
  
  private void writeObject(ObjectOutputStream paramObjectOutputStream)
  {
    paramObjectOutputStream.defaultWriteObject();
    paramObjectOutputStream.writeObject(e());
    aal.a(this, paramObjectOutputStream);
  }
  
  public kth<V> a(K paramK)
  {
    return (kth)aal.d((kth)b.get(paramK), a);
  }
  
  Comparator<? super V> e()
  {
    if ((a instanceof ktu)) {
      return ((ktu)a).comparator();
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     ktm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */