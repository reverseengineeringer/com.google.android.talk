public abstract class kng<T>
{
  public final int a(T paramT)
  {
    if (paramT == null) {
      return 0;
    }
    return b(paramT);
  }
  
  public final boolean a(T paramT1, T paramT2)
  {
    if (paramT1 == paramT2) {
      return true;
    }
    if ((paramT1 == null) || (paramT2 == null)) {
      return false;
    }
    return b(paramT1, paramT2);
  }
  
  protected abstract int b(T paramT);
  
  protected abstract boolean b(T paramT1, T paramT2);
}

/* Location:
 * Qualified Name:     kng
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */