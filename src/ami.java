import java.util.ArrayList;
import java.util.List;

final class ami<K, V>
{
  final K a;
  ami<K, V> b = this;
  ami<K, V> c = this;
  private List<V> d;
  
  public ami()
  {
    this(null);
  }
  
  public ami(K paramK)
  {
    a = paramK;
  }
  
  public V a()
  {
    int i = b();
    if (i > 0) {
      return (V)d.remove(i - 1);
    }
    return null;
  }
  
  public void a(V paramV)
  {
    if (d == null) {
      d = new ArrayList();
    }
    d.add(paramV);
  }
  
  public int b()
  {
    if (d != null) {
      return d.size();
    }
    return 0;
  }
}

/* Location:
 * Qualified Name:     ami
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */