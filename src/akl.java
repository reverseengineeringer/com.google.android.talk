final class akl
{
  final amv a;
  volatile amu b;
  
  public akl(amv paramamv)
  {
    a = paramamv;
  }
  
  public amu a()
  {
    if (b == null) {}
    try
    {
      if (b == null) {
        b = a.a();
      }
      if (b == null) {
        b = new amx();
      }
      return b;
    }
    finally {}
  }
}

/* Location:
 * Qualified Name:     akl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */