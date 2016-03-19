import java.util.Comparator;

public final class ktr<K, V>
  extends kso<K, V>
{
  private final Comparator<? super K> e;
  
  public ktr(Comparator<? super K> paramComparator)
  {
    e = ((Comparator)fii.a(paramComparator));
  }
}

/* Location:
 * Qualified Name:     ktr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */