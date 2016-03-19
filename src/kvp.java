import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.concurrent.ConcurrentMap;

public final class kvp<K, V>
  extends kur<K, V>
{
  private static final long serialVersionUID = 3L;
  
  public kvp(kvr paramkvr1, kvr paramkvr2, kng<Object> paramkng1, kng<Object> paramkng2, long paramLong1, long paramLong2, int paramInt1, int paramInt2, avb paramavb, ConcurrentMap<K, V> paramConcurrentMap)
  {
    super(paramkvr1, paramkvr2, paramkng1, paramkng2, paramLong1, paramLong2, paramInt1, paramInt2, paramavb, paramConcurrentMap);
  }
  
  private void readObject(ObjectInputStream paramObjectInputStream)
  {
    paramObjectInputStream.defaultReadObject();
    j = a(paramObjectInputStream).j();
    b(paramObjectInputStream);
  }
  
  private Object readResolve()
  {
    return j;
  }
  
  private void writeObject(ObjectOutputStream paramObjectOutputStream)
  {
    paramObjectOutputStream.defaultWriteObject();
    a(paramObjectOutputStream);
  }
}

/* Location:
 * Qualified Name:     kvp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */