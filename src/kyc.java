import java.util.Comparator;

public abstract interface kyc<T>
  extends Iterable<T>
{
  public abstract Comparator<? super T> comparator();
}

/* Location:
 * Qualified Name:     kyc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */