import android.text.Html;
import android.text.TextUtils;

public final class bgo
{
  public final int A;
  public final int B;
  public final String C;
  public final int D;
  public final String E;
  public final String F;
  public final String G;
  public final int H;
  public final long I;
  public final int J;
  private String K = null;
  public final String a;
  public final String b;
  public final String c;
  public final String d;
  public final String e;
  public final emc f;
  public final emd g;
  public final long h;
  public final long i;
  public final String j;
  public final String k;
  public final String l;
  public final String m;
  public final String n;
  public final String o;
  public final String p;
  public final String q;
  public final double r;
  public final double s;
  public final String t;
  public final String u;
  public final String v;
  public final String w;
  public final int x;
  public final String y;
  public final int z;
  
  public bgo(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, emc paramemc, emd paramemd, long paramLong1, long paramLong2, String paramString6, String paramString7, String paramString8, String paramString9, String paramString10, String paramString11, String paramString12, double paramDouble1, double paramDouble2, String paramString13, String paramString14, int paramInt1, String paramString15, int paramInt2, int paramInt3, int paramInt4, String paramString16, int paramInt5, String paramString17, String paramString18, String paramString19, int paramInt6, String paramString20, String paramString21, String paramString22, long paramLong3, int paramInt7)
  {
    a = paramString1;
    b = paramString2;
    c = paramString3;
    d = paramString4;
    e = paramString5;
    f = paramemc;
    g = paramemd;
    h = paramLong1;
    i = paramLong2;
    j = paramString6;
    k = paramString7;
    l = paramString8;
    m = paramString9;
    n = paramString10;
    o = paramString11;
    p = paramString12;
    q = paramString22;
    r = paramDouble1;
    s = paramDouble2;
    t = paramString13;
    u = paramString14;
    v = paramString20;
    w = paramString21;
    x = paramInt1;
    y = paramString15;
    z = paramInt2;
    A = paramInt3;
    B = paramInt4;
    C = paramString16;
    D = paramInt5;
    E = paramString17;
    F = paramString18;
    G = paramString19;
    H = paramInt6;
    I = paramLong3;
    J = paramInt7;
  }
  
  public String a()
  {
    if (K == null)
    {
      if (!TextUtils.isEmpty(e)) {
        break label28;
      }
      K = "";
    }
    for (;;)
    {
      return K;
      label28:
      if (x == 3) {
        K = e;
      } else {
        K = Html.fromHtml(e).toString();
      }
    }
  }
}

/* Location:
 * Qualified Name:     bgo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */