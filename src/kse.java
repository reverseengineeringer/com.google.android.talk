import java.io.Serializable;
import java.util.EnumMap;

final class kse<K extends Enum<K>, V>
  implements Serializable
{
  private static final long serialVersionUID = 0L;
  final EnumMap<K, V> a;
  
  kse(EnumMap<K, V> paramEnumMap)
  {
    a = paramEnumMap;
  }
  
  Object readResolve()
  {
    return new ksd(a);
  }
}

/* Location:
 * Qualified Name:     kse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */