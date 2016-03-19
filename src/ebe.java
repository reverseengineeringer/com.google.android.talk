public final class ebe
  extends dyx
{
  private final String a;
  private final int e;
  private final int[] f;
  
  public ebe(bfd parambfd, String paramString, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    super(parambfd);
    a = paramString;
    int i;
    if (paramBoolean1)
    {
      i = 1;
      e = i;
      if (!paramBoolean3) {
        break label63;
      }
      i = 2;
      label31:
      if (!paramBoolean2) {
        break label69;
      }
    }
    label63:
    label69:
    for (int j = 1;; j = 0)
    {
      f = new int[] { i, j };
      return;
      i = 2;
      break;
      i = 0;
      break label31;
    }
  }
  
  public void p_()
  {
    bfz localbfz = new bfz(aal.oJ, b.a);
    if (e == 1) {
      localbfz.aa(a);
    }
    for (;;)
    {
      a(new dpm(a, e, f));
      return;
      bft.a(localbfz, a);
    }
  }
}

/* Location:
 * Qualified Name:     ebe
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */