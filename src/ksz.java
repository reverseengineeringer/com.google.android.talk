import java.io.Serializable;

final class ksz<K>
  implements Serializable
{
  private static final long serialVersionUID = 0L;
  final ksm<K, ?> a;
  
  ksz(ksm<K, ?> paramksm)
  {
    a = paramksm;
  }
  
  Object readResolve()
  {
    return a.g();
  }
}

/* Location:
 * Qualified Name:     ksz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */