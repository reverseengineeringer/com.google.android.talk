import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;

public class ksl<K, V>
  extends kte<K, V>
  implements kwt<K, V>
{
  private static final long serialVersionUID = 0L;
  
  ksl(ksm<K, ksf<V>> paramksm, int paramInt)
  {
    super(paramksm, paramInt);
  }
  
  private void readObject(ObjectInputStream paramObjectInputStream)
  {
    paramObjectInputStream.defaultReadObject();
    int m = paramObjectInputStream.readInt();
    if (m < 0) {
      throw new InvalidObjectException(29 + "Invalid key count " + m);
    }
    kso localkso = new kso();
    int i = 0;
    int j = 0;
    while (i < m)
    {
      Object localObject = paramObjectInputStream.readObject();
      int n = paramObjectInputStream.readInt();
      if (n <= 0) {
        throw new InvalidObjectException(31 + "Invalid value count " + n);
      }
      ksh localksh = new ksh();
      int k = 0;
      while (k < n)
      {
        localksh.c(paramObjectInputStream.readObject());
        k += 1;
      }
      localkso.a(localObject, localksh.a());
      j += n;
      i += 1;
    }
    try
    {
      paramObjectInputStream = localkso.a();
      ktg.a.a(this, paramObjectInputStream);
      ktg.b.a(this, j);
      return;
    }
    catch (IllegalArgumentException paramObjectInputStream)
    {
      throw ((InvalidObjectException)new InvalidObjectException(paramObjectInputStream.getMessage()).initCause(paramObjectInputStream));
    }
  }
  
  private void writeObject(ObjectOutputStream paramObjectOutputStream)
  {
    paramObjectOutputStream.defaultWriteObject();
    aal.a(this, paramObjectOutputStream);
  }
  
  public ksf<V> a(K paramK)
  {
    ksf localksf = (ksf)b.get(paramK);
    paramK = localksf;
    if (localksf == null) {
      paramK = kxr.a;
    }
    return paramK;
  }
}

/* Location:
 * Qualified Name:     ksl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */