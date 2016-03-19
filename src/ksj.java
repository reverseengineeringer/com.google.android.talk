import java.io.Serializable;

final class ksj
  implements Serializable
{
  private static final long serialVersionUID = 0L;
  final Object[] a;
  
  ksj(Object[] paramArrayOfObject)
  {
    a = paramArrayOfObject;
  }
  
  Object readResolve()
  {
    return ksf.a(a);
  }
}

/* Location:
 * Qualified Name:     ksj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */