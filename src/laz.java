final class laz<V>
  extends lax<V>
{
  static final laz<Object> a = new laz(null);
  private final V b;
  
  laz(V paramV)
  {
    b = paramV;
  }
  
  public V get()
  {
    return (V)b;
  }
}

/* Location:
 * Qualified Name:     laz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */