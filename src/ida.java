public enum ida
{
  final int e;
  
  private ida(int paramInt)
  {
    e = paramInt;
  }
  
  public static ida a(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return null;
    case 0: 
      return a;
    case 1: 
      return b;
    case 2: 
      return c;
    }
    return d;
  }
}

/* Location:
 * Qualified Name:     ida
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */