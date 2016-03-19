public abstract class hg
{
  final hk a;
  
  public hg(hk paramhk)
  {
    a = paramhk;
  }
  
  protected abstract boolean a();
  
  public boolean a(CharSequence paramCharSequence, int paramInt)
  {
    if ((paramCharSequence == null) || (paramInt < 0) || (paramCharSequence.length() - paramInt < 0)) {
      throw new IllegalArgumentException();
    }
    if (a == null) {
      return a();
    }
    return a(paramCharSequence, 0, paramInt);
  }
  
  boolean a(CharSequence paramCharSequence, int paramInt1, int paramInt2)
  {
    boolean bool = false;
    switch (a.a(paramCharSequence, 0, paramInt2))
    {
    default: 
      bool = a();
    case 1: 
      return bool;
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     hg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */