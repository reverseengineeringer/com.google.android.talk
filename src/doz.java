import android.text.TextUtils;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;

public class doz
  extends dor
{
  private static final long serialVersionUID = 3L;
  public final boolean a;
  public final boolean b;
  public final boolean j;
  public final byte[] k;
  public final long l;
  public final String m;
  public final int n;
  public final long o;
  public final egf p;
  public String q;
  public final dos r;
  
  public doz(dos paramdos)
  {
    super(null);
    r = paramdos;
    a = true;
    b = true;
    j = false;
    n = 1;
    k = null;
    l = 0L;
    m = null;
    p = null;
    q = null;
    o = 0L;
  }
  
  public doz(dos paramdos, String paramString)
  {
    this(paramdos);
    q = paramString;
  }
  
  public doz(String paramString1, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, byte[] paramArrayOfByte, long paramLong1, String paramString2, long paramLong2, egf paramegf)
  {
    super(paramString1);
    a = paramBoolean1;
    b = paramBoolean2;
    j = paramBoolean3;
    k = paramArrayOfByte;
    l = paramLong1;
    m = paramString2;
    n = aal.a(aal.oJ, "babel_smaxevperconv", 20);
    p = paramegf;
    r = null;
    o = paramLong2;
    q = null;
  }
  
  public lyi a(String paramString, int paramInt1, int paramInt2)
  {
    Object localObject2;
    Object localObject3;
    int i;
    if (ezi.a("Babel_RequestWriter", 3))
    {
      localObject1 = String.valueOf("GetConversationRequest build protobuf:  conversationId=");
      localObject2 = c;
      boolean bool1 = a;
      boolean bool2 = b;
      localObject3 = String.valueOf(Arrays.toString(k));
      long l1 = l;
      i = n;
      ezi.b("Babel_RequestWriter", String.valueOf(localObject1).length() + 158 + String.valueOf(localObject2).length() + String.valueOf(localObject3).length() + (String)localObject1 + (String)localObject2 + " includeConversationMetadata=" + bool1 + " includeEvents=" + bool2 + " continuationToken=" + (String)localObject3 + " continuationEventTimestamp=" + l1 + " maxEventsPerConversation=" + i, new Object[0]);
    }
    Object localObject1 = new kag();
    if (c != null)
    {
      a = new jyb();
      a.a = don.a(c);
    }
    for (;;)
    {
      b = Boolean.valueOf(a);
      c = Boolean.valueOf(b);
      if (j) {
        g = Integer.valueOf(1);
      }
      requestHeader = don.a(paramString, paramInt1, paramInt2, h);
      if ((k != null) || (l != 0L))
      {
        paramString = new jzp();
        if (k != null) {
          b = Arrays.copyOf(k, k.length);
        }
        if (l != 0L) {
          a = Long.valueOf(l);
        }
        d = paramString;
      }
      f = Integer.valueOf(n);
      return (lyi)localObject1;
      if (r == null) {
        break;
      }
      localObject2 = new jyb();
      b = new kbi[r.d.size()];
      localObject3 = r.d.iterator();
      i = 0;
      while (((Iterator)localObject3).hasNext())
      {
        cyx localcyx = (cyx)((Iterator)localObject3).next();
        b[i] = aal.a(localcyx, r.b);
        i += 1;
      }
      c = Integer.valueOf(r.a);
      a = ((jyb)localObject2);
    }
    throw new IllegalStateException("must specify either conversationId or participantsQuery");
  }
  
  public void a(bfd parambfd, dvn paramdvn)
  {
    super.a(parambfd, paramdvn);
    if (m != null) {
      ebo.b(parambfd.g()).d(m);
    }
    if ((r != null) && (q == null))
    {
      HashSet localHashSet = new HashSet();
      localHashSet.add(r);
      dvd.e(parambfd).a(localHashSet, ebi.b().a());
    }
    if (q != null) {
      RealTimeChatService.e(parambfd, q);
    }
    if ((paramdvn.c() == 111) && (c != null)) {
      RealTimeChatService.r(parambfd, c);
    }
  }
  
  public boolean a(cwi paramcwi)
  {
    hbs.a(getClass(), paramcwi.getClass());
    paramcwi = (doz)paramcwi;
    return (TextUtils.equals(c, c)) && (a == a) && (b == b) && (l == l) && (r == null) && (r == null) && (TextUtils.equals(m, m)) && (p == null) && (p == null);
  }
  
  public boolean a(cwk paramcwk, dvn paramdvn)
  {
    if (r != null) {}
    for (int i = 1; (i == 0) && (super.a(paramcwk, paramdvn)); i = 0) {
      return true;
    }
    return false;
  }
  
  public long b()
  {
    if ((a) && (b) && (r == null)) {}
    for (int i = 1; i != 0; i = 0) {
      return super.b();
    }
    return TimeUnit.SECONDS.toMillis(60L);
  }
  
  public String f()
  {
    return "conversations/getconversation";
  }
  
  public int l()
  {
    return 4;
  }
}

/* Location:
 * Qualified Name:     doz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */