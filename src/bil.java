public final class bil
{
  private static final boolean a = false;
  private final hq<Integer, bij> b = new hq();
  
  static
  {
    imx localimx = ezi.d;
  }
  
  public bij a(bfd parambfd)
  {
    int i = parambfd.g();
    synchronized (b)
    {
      bij localbij2 = (bij)b.get(Integer.valueOf(i));
      bij localbij1 = localbij2;
      if (localbij2 == null)
      {
        if (a) {
          String.format("Adding participant cache for %s - %d", new Object[] { parambfd.a(), Integer.valueOf(i) });
        }
        localbij1 = new bij(parambfd);
        b.put(Integer.valueOf(i), localbij1);
      }
      return localbij1;
    }
  }
}

/* Location:
 * Qualified Name:     bil
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */