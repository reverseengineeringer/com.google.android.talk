import java.io.Serializable;

final class krv
  implements Serializable
{
  private static final long serialVersionUID = 0L;
  final krz<?> a;
  
  krv(krz<?> paramkrz)
  {
    a = paramkrz;
  }
  
  Object readResolve()
  {
    return a.f();
  }
}

/* Location:
 * Qualified Name:     krv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */