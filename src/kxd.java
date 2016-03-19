import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Collection;
import java.util.List;
import java.util.Map;

public final class kxd<K, V>
  extends kql<K, V>
{
  private static final long serialVersionUID = 0L;
  transient kog<? extends List<V>> c;
  
  public kxd(Map<K, Collection<V>> paramMap, kog<? extends List<V>> paramkog)
  {
    super(paramMap);
    c = ((kog)fii.a(paramkog));
  }
  
  private void readObject(ObjectInputStream paramObjectInputStream)
  {
    paramObjectInputStream.defaultReadObject();
    c = ((kog)paramObjectInputStream.readObject());
    a((Map)paramObjectInputStream.readObject());
  }
  
  private void writeObject(ObjectOutputStream paramObjectOutputStream)
  {
    paramObjectOutputStream.defaultWriteObject();
    paramObjectOutputStream.writeObject(c);
    paramObjectOutputStream.writeObject(e());
  }
  
  protected List<V> a()
  {
    return (List)c.a();
  }
}

/* Location:
 * Qualified Name:     kxd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */