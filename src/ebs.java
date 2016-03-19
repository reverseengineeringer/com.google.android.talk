public final class ebs
  extends dyx
{
  public static final boolean a = false;
  private final String e;
  private final byte[] f;
  private final long g;
  private final boolean h;
  
  static
  {
    imx localimx = ezi.o;
  }
  
  public ebs(bfd parambfd, String paramString, byte[] paramArrayOfByte, long paramLong, boolean paramBoolean)
  {
    super(parambfd);
    e = paramString;
    f = paramArrayOfByte;
    g = paramLong;
    h = paramBoolean;
  }
  
  public void p_()
  {
    bfz localbfz = new bfz(aal.oJ, b.a);
    if ((!h) && (g > 0L))
    {
      bgo localbgo = localbfz.b(g);
      if ((localbgo != null) && (f == emc.c)) {
        return;
      }
      localbfz.b(g, emc.c, System.currentTimeMillis());
      bft.b(localbfz, g);
    }
    a(new ebt(e, f, g, h));
  }
}

/* Location:
 * Qualified Name:     ebs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */