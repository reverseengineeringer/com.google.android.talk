import java.util.Iterator;

public abstract class kyp<E>
  implements Iterator<E>
{
  @Deprecated
  public final void remove()
  {
    throw new UnsupportedOperationException();
  }
}

/* Location:
 * Qualified Name:     kyp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */