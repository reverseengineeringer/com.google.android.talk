import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Collection;
import java.util.HashMap;
import java.util.Set;

public final class krs<K, V>
  extends kre<K, V>
{
  private static final long serialVersionUID = 0L;
  transient int c = 2;
  
  public krs()
  {
    super(new HashMap());
  }
  
  private void readObject(ObjectInputStream paramObjectInputStream)
  {
    paramObjectInputStream.defaultReadObject();
    c = 2;
    int k = paramObjectInputStream.readInt();
    a(kwj.c());
    int i = 0;
    while (i < k)
    {
      Collection localCollection = b(paramObjectInputStream.readObject());
      int m = paramObjectInputStream.readInt();
      int j = 0;
      while (j < m)
      {
        localCollection.add(paramObjectInputStream.readObject());
        j += 1;
      }
      i += 1;
    }
  }
  
  private void writeObject(ObjectOutputStream paramObjectOutputStream)
  {
    paramObjectOutputStream.defaultWriteObject();
    aal.a(this, paramObjectOutputStream);
  }
  
  Set<V> a()
  {
    return aen.a(c);
  }
}

/* Location:
 * Qualified Name:     krs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */