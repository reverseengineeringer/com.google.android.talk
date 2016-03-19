final class kry
  extends ksr
{
  private static final long serialVersionUID = 0L;
  
  kry(krw<?, ?> paramkrw)
  {
    super(paramkrw);
  }
  
  Object readResolve()
  {
    return a(new krx());
  }
}

/* Location:
 * Qualified Name:     kry
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */