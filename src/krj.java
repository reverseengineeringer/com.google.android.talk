import java.util.Comparator;

final class krj
  extends kri
{
  krj()
  {
    super((byte)0);
  }
  
  private static kri a(int paramInt)
  {
    if (paramInt < 0) {
      return kri.b;
    }
    if (paramInt > 0) {
      return kri.c;
    }
    return kri.a;
  }
  
  public int a()
  {
    return 0;
  }
  
  public <T> kri a(T paramT1, T paramT2, Comparator<T> paramComparator)
  {
    return a(paramComparator.compare(paramT1, paramT2));
  }
  
  public kri a(boolean paramBoolean1, boolean paramBoolean2)
  {
    return a(aal.b(paramBoolean2, paramBoolean1));
  }
  
  public kri b(boolean paramBoolean1, boolean paramBoolean2)
  {
    return a(aal.b(paramBoolean1, paramBoolean2));
  }
}

/* Location:
 * Qualified Name:     krj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */