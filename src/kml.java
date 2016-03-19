public final class kml
  extends lyb<kml>
{
  public static final lyc<kmi, kml> a = lyc.a(kml.class, 784139050L);
  private static final kml[] c = new kml[0];
  public lyt b = null;
  
  public kml()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (b != null) {
      paramlxz.b(1, b);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (b != null) {
      i = j + lxz.d(1, b);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     kml
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */