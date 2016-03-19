import android.text.TextUtils;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class drl
  extends dqf
{
  private static final long serialVersionUID = 2L;
  private boolean A;
  private boolean B;
  private boolean C;
  private boolean D;
  private boolean E;
  private boolean F;
  private boolean G;
  private boolean H;
  private final boolean I;
  private final boolean J;
  private final long K;
  private List<eyu<Integer, Boolean>> L;
  private String[] M;
  private List<dml> N;
  private byte[][] O;
  private final cyx g;
  private final dtk h;
  private final int i;
  private Map<String, dkc> j;
  private transient kct k;
  private String l;
  private Integer m;
  private boolean n;
  private boolean o;
  private boolean p;
  private boolean q;
  private boolean r;
  private boolean s;
  private boolean t;
  private boolean u;
  private boolean v;
  private boolean w;
  private boolean x;
  private boolean y;
  private boolean z;
  
  private drl(kaq paramkaq)
  {
    super(responseHeader, -1L);
    if (a != null)
    {
      localObject1 = a;
      g = aal.a((jzh)localObject1, null);
      label128:
      Object localObject2;
      String str1;
      String str2;
      if (f != null)
      {
        h = new dtk(f, g.b(), System.currentTimeMillis());
        i = aal.a(q, 0);
        p = aal.a(Boolean.valueOf(g.o), false);
        localObject1 = g;
        j = new HashMap();
        localObject1 = a;
        i2 = localObject1.length;
        i1 = 0;
        if (i1 >= i2) {
          break label298;
        }
        localObject2 = localObject1[i1];
        if (dqf.a)
        {
          str1 = String.valueOf(ezi.b(a.a));
          str2 = String.valueOf(c);
          new StringBuilder(String.valueOf(str1).length() + 32 + String.valueOf(str2).length()).append("phoneNumber=").append(str1).append(" verificationStatus=").append(str2);
        }
        if (!TextUtils.isEmpty(a.a)) {
          break label259;
        }
        ezi.d("Babel", "skipping empty phone number", new Object[0]);
      }
      for (;;)
      {
        i1 += 1;
        break label128;
        h = null;
        break;
        label259:
        localObject2 = new dkc((kcs)localObject2);
        if (((dkc)localObject2).b()) {
          j.put(((dkc)localObject2).a(), localObject2);
        }
      }
      label298:
      k = g;
      if (k.b != null)
      {
        O = new byte[k.b.length][];
        localObject1 = k.b;
        int i3 = localObject1.length;
        i1 = 0;
        i2 = 0;
        while (i1 < i3)
        {
          localObject2 = localObject1[i1];
          O[i2] = lyi.a((lyi)localObject2);
          i2 += 1;
          i1 += 1;
        }
      }
      O = new byte[0][];
      w = aal.a(Boolean.valueOf(g.u), false);
      x = aal.a(Boolean.valueOf(g.v), false);
      N = new ArrayList(s.length);
      localObject1 = s;
      int i2 = localObject1.length;
      int i1 = 0;
      while (i1 < i2)
      {
        localObject2 = localObject1[i1];
        N.add(new dml((jzv)localObject2));
        i1 += 1;
      }
      i2 = h.length;
      if (dqf.a)
      {
        localObject1 = String.valueOf("GetSelfInfoResponse bitCount status: ");
        new StringBuilder(String.valueOf(localObject1).length() + 11).append((String)localObject1).append(i2);
      }
      i1 = 0;
      if (i1 < i2)
      {
        localObject1 = h[i1];
        if (dqf.a)
        {
          localObject2 = String.valueOf("GetSelfInfoResponse configBit: ");
          str1 = String.valueOf(a);
          str2 = String.valueOf(b);
          new StringBuilder(String.valueOf(localObject2).length() + 3 + String.valueOf(str1).length() + String.valueOf(str2).length()).append((String)localObject2).append(str1).append(" : ").append(str2);
        }
        switch (aal.a(a, 0))
        {
        }
        for (;;)
        {
          i1 += 1;
          break;
          n = aal.a(b, false);
          continue;
          o = aal.a(b, false);
          continue;
          q = aal.a(b, false);
          continue;
          r = aal.a(b, false);
          continue;
          s = aal.a(b, false);
          continue;
          t = aal.a(b, false);
          continue;
          u = aal.a(b, false);
          continue;
          v = aal.a(b, false);
          continue;
          y = aal.a(b, false);
          continue;
          z = aal.a(b, false);
          continue;
          A = aal.a(b, false);
          continue;
          B = aal.a(b, false);
          continue;
          C = aal.a(b, false);
          continue;
          D = aal.a(b, false);
          continue;
          E = aal.a(b, false);
          continue;
          F = aal.a(b, false);
          continue;
          G = aal.a(b, false);
          continue;
          H = aal.a(b, false);
        }
      }
      boolean bool;
      if (d != null)
      {
        bool = true;
        I = bool;
        if (!I) {
          break label1257;
        }
        J = aal.a(d.a, false);
      }
      for (K = aal.a(d.b, 0L);; K = 0L)
      {
        localObject1 = l;
        if ((localObject1 == null) || (c.length <= 0)) {
          break label1270;
        }
        L = new ArrayList(c.length);
        localObject1 = c;
        i2 = localObject1.length;
        i1 = 0;
        while (i1 < i2)
        {
          localObject2 = localObject1[i1];
          L.add(new eyu(a, b));
          i1 += 1;
        }
        bool = false;
        break;
        label1257:
        J = false;
      }
      label1270:
      if (p != null)
      {
        M = new String[p.length];
        i1 = 0;
        while (i1 < p.length)
        {
          M[i1] = p[i1].b;
          i1 += 1;
        }
      }
    }
    else
    {
      g = null;
      h = null;
      i = 0;
      j = null;
      k = null;
      I = false;
      J = false;
      K = 0L;
    }
    Object localObject1 = r;
    if (localObject1 != null)
    {
      l = a;
      m = Integer.valueOf(aal.a(b, 0));
      ezm.a(l, m);
    }
    if (dqf.a)
    {
      paramkaq = String.valueOf(paramkaq);
      new StringBuilder(String.valueOf(paramkaq).length() + 25).append("GetSelfInfoResponse from:").append(paramkaq);
    }
  }
  
  public static dqf parseFrom(kaq paramkaq)
  {
    if (a(responseHeader)) {
      return new dqs(responseHeader);
    }
    return new drl(paramkaq);
  }
  
  public static dqf parseFrom(byte[] paramArrayOfByte)
  {
    return parseFrom((kaq)lyi.b(new kaq(), paramArrayOfByte, paramArrayOfByte.length));
  }
  
  private void readObject(ObjectInputStream paramObjectInputStream)
  {
    paramObjectInputStream.defaultReadObject();
    kct localkct = new kct();
    paramObjectInputStream = (byte[])paramObjectInputStream.readObject();
    k = ((kct)lyi.b(localkct, paramObjectInputStream, paramObjectInputStream.length));
  }
  
  private void writeObject(ObjectOutputStream paramObjectOutputStream)
  {
    paramObjectOutputStream.defaultWriteObject();
    paramObjectOutputStream.writeObject(lyi.a(k));
  }
  
  public cyx k()
  {
    return g;
  }
  
  public Map<String, dkc> l()
  {
    return j;
  }
  
  public byte[][] m()
  {
    return O;
  }
  
  public bfe n()
  {
    bfe localbfe = new bfe();
    a = i;
    b = n;
    c = o;
    i = p;
    d = q;
    e = r;
    o = s;
    f = t;
    g = v;
    h = u;
    j = w;
    k = x;
    l = y;
    m = z;
    n = A;
    p = B;
    q = C;
    r = D;
    s = E;
    u = l;
    v = m;
    w = F;
    t = G;
    x = H;
    y = N;
    return localbfe;
  }
  
  public boolean o()
  {
    return J;
  }
  
  public long p()
  {
    return K;
  }
  
  public List<eyu<Integer, Boolean>> q()
  {
    return L;
  }
  
  public String[] r()
  {
    return M;
  }
  
  public List<dml> s()
  {
    return N;
  }
}

/* Location:
 * Qualified Name:     drl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */