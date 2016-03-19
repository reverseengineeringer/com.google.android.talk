import java.io.Serializable;

final class ktl
  implements Serializable
{
  private static final long serialVersionUID = 0L;
  final Object[] a;
  
  ktl(Object[] paramArrayOfObject)
  {
    a = paramArrayOfObject;
  }
  
  Object readResolve()
  {
    return kth.a(a);
  }
}

/* Location:
 * Qualified Name:     ktl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */