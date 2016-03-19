import java.util.Arrays;

public class dpe
  extends dpf
{
  private static final long serialVersionUID = 1L;
  public int a;
  public int b;
  public int c;
  public int d;
  public int j;
  public byte[] k;
  public byte[] l;
  public byte[] m;
  public byte[] n;
  public byte[] o;
  
  public dpe(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, byte[] paramArrayOfByte3, byte[] paramArrayOfByte4, byte[] paramArrayOfByte5)
  {
    a = paramInt1;
    b = paramInt2;
    c = paramInt3;
    d = paramInt4;
    j = paramInt5;
    k = paramArrayOfByte1;
    l = paramArrayOfByte2;
    m = paramArrayOfByte3;
    n = paramArrayOfByte4;
    o = paramArrayOfByte5;
  }
  
  public String a()
  {
    return "ui_queue";
  }
  
  public lyi a(String paramString, int paramInt1, int paramInt2)
  {
    kar localkar = new kar();
    c = Boolean.valueOf(false);
    requestHeader = don.a(null, true, paramString, paramInt1, paramInt2, h);
    paramString = new kas();
    a = Integer.valueOf(a);
    if (k != null) {
      b = Arrays.copyOf(k, k.length);
    }
    f = paramString;
    paramString = new kas();
    a = Integer.valueOf(b);
    if (l != null) {
      b = Arrays.copyOf(l, l.length);
    }
    g = paramString;
    paramString = new kas();
    a = Integer.valueOf(c);
    if (m != null) {
      b = Arrays.copyOf(m, m.length);
    }
    h = paramString;
    paramString = new kas();
    a = Integer.valueOf(d);
    if (n != null) {
      b = Arrays.copyOf(n, n.length);
    }
    i = paramString;
    paramString = new kas();
    a = Integer.valueOf(j);
    if (o != null) {
      b = Arrays.copyOf(o, o.length);
    }
    k = paramString;
    return localkar;
  }
  
  public void a(bfd parambfd, dvn paramdvn)
  {
    paramdvn = ecx.b(parambfd.g());
    parambfd = String.valueOf(ezi.b(parambfd.a()));
    if (parambfd.length() != 0) {}
    for (parambfd = "SyncBaselineSuggestedContactsOperation failed: ".concat(parambfd);; parambfd = new String("SyncBaselineSuggestedContactsOperation failed: "))
    {
      ezi.d("Babel_RequestWriter", parambfd, new Object[0]);
      paramdvn.a(0);
      return;
    }
  }
  
  public boolean a(cwi paramcwi)
  {
    hbs.a(getClass(), paramcwi.getClass());
    return true;
  }
  
  public String f()
  {
    return "contacts/getsuggestedentities";
  }
}

/* Location:
 * Qualified Name:     dpe
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */