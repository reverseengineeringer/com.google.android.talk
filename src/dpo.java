import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.apps.hangouts.content.EsProvider;
import com.google.android.apps.hangouts.phone.ShowToastForTesting;
import com.google.api.client.http.AbstractInputStreamContent;
import com.google.api.client.http.HttpContent;
import com.google.api.client.http.InputStreamContent;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@Deprecated
public class dpo
  extends dox
{
  private static final Pattern H = Pattern.compile("\\*\\*\\*([\\w]{1})(\\d*)(p?)\\*\\*\\*");
  private static final long serialVersionUID = 1L;
  final boolean A;
  final int B;
  final String C;
  final int D;
  public final long E;
  private long F = -1L;
  private transient InputStream G;
  private long I = 0L;
  private int J = 0;
  private long K = 0L;
  private long L = 0L;
  private boolean M = false;
  private boolean N = false;
  private boolean O = false;
  final String a;
  public final long b;
  public final List<efx> k;
  public final String l;
  final String m;
  final int n;
  final String o;
  final String p;
  public final String q;
  public final String r;
  public final double s;
  public final double t;
  public final String u;
  public final String v;
  public final String w;
  public final int x;
  public final int y;
  public final boolean z;
  
  public dpo()
  {
    super(str2, str1);
    if (this.j == null) {
      throw new NullPointerException("null clientGeneratedId");
    }
    String str3;
    a = str3;
    Object localObject1;
    b = localObject1;
    List localList;
    k = localList;
    String str4;
    l = str4;
    String str5;
    p = str5;
    String str6;
    m = str6;
    int i;
    n = i;
    String str7;
    o = str7;
    int j;
    y = j;
    int i1;
    x = i1;
    String str8;
    q = str8;
    String str9;
    r = str9;
    Object localObject2;
    s = localObject2;
    Object localObject3;
    t = localObject3;
    String str10;
    u = str10;
    String str11;
    v = str11;
    String str12;
    w = str12;
    E = System.currentTimeMillis();
    boolean bool;
    z = bool;
    A = false;
    int i2;
    B = i2;
    String str13;
    C = str13;
    int i3;
    D = i3;
    p();
  }
  
  private dvn c(long paramLong, int paramInt)
  {
    if (K > 0L)
    {
      if (System.currentTimeMillis() < K + paramLong) {
        return new dvn(102, null, 0L, true, null);
      }
    }
    else if (J > 0)
    {
      if (J > paramInt) {
        return new dvn(102, null, 0L, true, null);
      }
    }
    else
    {
      if ((M) && (paramInt < 5))
      {
        Intent localIntent = new Intent();
        localIntent.setClass(aal.oJ, ShowToastForTesting.class);
        localIntent.putExtra("toast_text", "authentication");
        return new dvn(100, new ewy(localIntent), 0L, true, null);
      }
      if (O) {
        return new dvn(109, null, 0L, true, null);
      }
      if ((L > 0L) && (paramInt == 0)) {
        return new dvn(105, null, L, true, null);
      }
    }
    return null;
  }
  
  private void p()
  {
    if (k == null) {}
    do
    {
      do
      {
        return;
        Iterator localIterator;
        while (!localIterator.hasNext()) {
          localIterator = k.iterator();
        }
        localObject = (efx)localIterator.next();
      } while (a != 0);
      localObject = b;
    } while (localObject == null);
    Object localObject = H.matcher((CharSequence)localObject);
    int i = 0;
    label63:
    String str1;
    String str2;
    String str3;
    if (((Matcher)localObject).find(i))
    {
      str1 = ((Matcher)localObject).group(1);
      str2 = ((Matcher)localObject).group(2);
      str3 = ((Matcher)localObject).group(3);
    }
    for (;;)
    {
      try
      {
        if (!TextUtils.isEmpty(str2)) {
          continue;
        }
        i = 0;
        switch (str1.charAt(0))
        {
        case 'C': 
          N |= "p".equals(str3);
        }
      }
      catch (NumberFormatException localNumberFormatException)
      {
        continue;
      }
      i = ((Matcher)localObject).end();
      break label63;
      break;
      i = Integer.parseInt(str2);
      continue;
      ezi.d("Babel_RequestWriter", 38 + "failure injection counter: " + i, new Object[0]);
      J = i;
      continue;
      ezi.d("Babel_RequestWriter", 35 + "failure injection time: " + i, new Object[0]);
      K = (i * 1000);
      continue;
      ezi.d("Babel_RequestWriter", 42 + "failure injection max latency: " + i, new Object[0]);
      I = (i * 1000);
      continue;
      ezi.d("Babel_RequestWriter", "failure inject auth error", new Object[0]);
      M = true;
      continue;
      ezi.d("Babel_RequestWriter", "failure inject fatal (retry limit)", new Object[0]);
      O = true;
      continue;
      ezi.d("Babel_RequestWriter", "failure inject server backoff", new Object[0]);
      L = (i * 1000);
    }
  }
  
  public boolean E_()
  {
    return true;
  }
  
  public dvn a(long paramLong, int paramInt)
  {
    if (!N) {
      return c(paramLong, paramInt);
    }
    return null;
  }
  
  public lyi a(String paramString, int paramInt1, int paramInt2)
  {
    Object localObject1;
    if (ezi.a("Babel_RequestWriter", 3))
    {
      localObject1 = String.valueOf(this.j);
      if (((String)localObject1).length() != 0)
      {
        localObject1 = "sendMessage build protobuf clientGeneratedId=".concat((String)localObject1);
        ezi.b("Babel_RequestWriter", (String)localObject1, new Object[0]);
      }
    }
    else
    {
      localObject2 = new jzr();
      b = bfz.c(this.j);
      if ((!aal.a(aal.oJ, "babel_contingency_mode_enabled", false)) && (!A)) {
        a = don.a(c);
      }
      if (!z) {
        break label480;
      }
    }
    Object localObject3;
    Object localObject4;
    Object localObject5;
    label480:
    for (int i = 1;; i = 2)
    {
      c = Integer.valueOf(i);
      localObject1 = new jyp();
      a = Integer.valueOf(B);
      if (C != null)
      {
        b = new lcf();
        b.a = C;
      }
      d = ((jyp)localObject1);
      e = Integer.valueOf(D);
      localObject1 = new kdw();
      a = ((jzr)localObject2);
      localObject2 = new kcd();
      int j = k.size();
      if (j <= 0) {
        break label493;
      }
      localObject3 = new mel[j];
      i = 0;
      while (i < j)
      {
        localObject4 = (efx)k.get(i);
        localObject5 = new mel();
        if (b != null) {
          b = b;
        }
        if (d != null)
        {
          d = new mek();
          d.a = d;
          b = b;
        }
        if (c != 0)
        {
          mei localmei = new mei();
          if ((c & 0x1) != 0) {
            a = Boolean.valueOf(true);
          }
          if ((c & 0x2) != 0) {
            b = Boolean.valueOf(true);
          }
          if ((c & 0x4) != 0) {
            c = Boolean.valueOf(true);
          }
          if ((c & 0x8) != 0) {
            d = Boolean.valueOf(true);
          }
          c = localmei;
        }
        a = Integer.valueOf(a);
        localObject3[i] = localObject5;
        i += 1;
      }
      localObject1 = new String("sendMessage build protobuf clientGeneratedId=");
      break;
    }
    a = ((mel[])localObject3);
    label493:
    e = ((kcd)localObject2);
    if (!TextUtils.isEmpty(l))
    {
      f = new jzs();
      f.b = new jzu();
      f.b.b = l;
      if (p != null)
      {
        f.b.a = p;
        f.b.d = Boolean.valueOf(true);
      }
    }
    if ("hangouts/location".equals(m))
    {
      if (doo.e)
      {
        localObject2 = q;
        localObject3 = o;
        new StringBuilder(String.valueOf(localObject2).length() + 22 + String.valueOf(localObject3).length()).append("Sending location: ").append((String)localObject2).append("url:").append((String)localObject3);
      }
      localObject3 = new lzi();
      n = Double.valueOf(s);
      o = Double.valueOf(t);
      localObject2 = new lyt();
      ((lyt)localObject2).a(lzi.a, localObject3);
      localObject4 = new lzp();
      c = o;
      localObject3 = new lyt();
      ((lyt)localObject3).a(lzp.a, localObject4);
      localObject5 = new maq();
      s = u;
      localObject4 = new lyt();
      ((lyt)localObject4).a(maq.a, localObject5);
      localObject5 = new lzv();
      if (!TextUtils.isEmpty(q)) {
        e = q;
      }
      w = ((lyt)localObject3);
      o = ((lyt)localObject2);
      n = ((lyt)localObject4);
      localObject2 = new kbs();
      a = ((lzv)localObject5);
      g = ((kbs)localObject2);
    }
    if (a != null)
    {
      d = new kbi();
      d.a = a;
    }
    Object localObject2 = new jxk();
    a = Long.valueOf(b);
    requestHeader = don.a((jxk)localObject2, false, paramString, paramInt1, paramInt2, h);
    return (lyi)localObject1;
  }
  
  public void a(bfd parambfd, dvn paramdvn)
  {
    super.a(parambfd, paramdvn);
    if ((paramdvn != null) && (paramdvn.c() != 0))
    {
      aal.a(parambfd, 1523);
      aen.a(parambfd.g(), System.currentTimeMillis(), 5, new csn().a(paramdvn.c()).b(j).a(c));
    }
  }
  
  public boolean a(cwk paramcwk, dvn paramdvn)
  {
    if ((paramdvn.c() == 101) || (paramdvn.c() == 102) || (paramdvn.c() == 103)) {
      return true;
    }
    return super.a(paramcwk, paramdvn);
  }
  
  public boolean a(String paramString)
  {
    return paramString.startsWith(j);
  }
  
  public long b()
  {
    if (I == 0L) {
      return Long.MAX_VALUE;
    }
    return I;
  }
  
  public HttpContent b(String paramString, int paramInt1, int paramInt2)
  {
    paramString = a(paramString, paramInt1, paramInt2);
    if (paramString != null) {
      i = paramString.toString();
    }
    return new dnd(paramString);
  }
  
  public dvn b(long paramLong, int paramInt)
  {
    if (N) {
      return c(paramLong, paramInt);
    }
    return null;
  }
  
  public cwi d()
  {
    return new ebv(this);
  }
  
  public String e()
  {
    if (k.size() == 1)
    {
      String str = k.get(0)).b;
      if (aal.u(str)) {
        return str;
      }
    }
    return null;
  }
  
  public String f()
  {
    return "conversations/sendchatmessage";
  }
  
  protected efh g()
  {
    if (o()) {
      return efh.a;
    }
    return efh.b;
  }
  
  public int l()
  {
    return 4;
  }
  
  public AbstractInputStreamContent m()
  {
    int i = 1;
    hbs.b("Expected condition to be false", o());
    Object localObject1;
    if (o != null)
    {
      localObject1 = aal.oJ.getContentResolver();
      if ((!"image/gif".equals(m)) && (aal.b(m))) {
        break label142;
      }
    }
    for (;;)
    {
      Object localObject3;
      try
      {
        localObject3 = Uri.parse(o);
        G = ((ContentResolver)localObject1).openInputStream((Uri)localObject3);
        F = new File(((Uri)localObject3).getPath()).length();
        if (G != null) {
          break;
        }
        localObject1 = String.valueOf(o);
        if (((String)localObject1).length() == 0) {
          break label415;
        }
        localObject1 = "We could not create an inputStream for the uri: ".concat((String)localObject1);
        ezi.d("Babel_RequestWriter", (String)localObject1, new Object[0]);
        return null;
      }
      catch (FileNotFoundException localFileNotFoundException1)
      {
        ezi.d("Babel_RequestWriter", "FileNotFoundException trying to detect how large the  attachment is", localFileNotFoundException1);
        continue;
      }
      label142:
      int j = aal.a(aal.oJ, "babel_thumbnail_photo_upload_size", 320);
      localObject2 = eye.a();
      for (;;)
      {
        try
        {
          localObject3 = eye.a(aal.oJ.getContentResolver().openInputStream(Uri.parse(o)));
          if ((localObject3 == null) || (localObject3.length <= 0)) {
            continue;
          }
          if (!o.startsWith(EsProvider.c(aal.oJ))) {
            continue;
          }
          ezi.c("Babel_RequestWriter", "Sending cache file.", new Object[0]);
          G = new ByteArrayInputStream((byte[])localObject3);
          F = localObject3.length;
        }
        catch (FileNotFoundException localFileNotFoundException2)
        {
          byte[] arrayOfByte;
          localObject2 = String.valueOf(o);
          if (((String)localObject2).length() == 0) {
            continue;
          }
          localObject2 = "Could not open file corresponding to uri ".concat((String)localObject2);
          ezi.d("Babel_RequestWriter", (String)localObject2, localFileNotFoundException2);
          i = 0;
          continue;
          localObject2 = new String("Could not open file corresponding to uri ");
          continue;
          localObject2 = new String("Failing to send image for uri: ");
          continue;
        }
        if (i != 0) {
          break;
        }
        localObject2 = String.valueOf(o);
        if (((String)localObject2).length() == 0) {
          continue;
        }
        localObject2 = "Failing to send image for uri: ".concat((String)localObject2);
        ezi.d("Babel_RequestWriter", (String)localObject2, new Object[0]);
        break;
        localObject3 = ((exb)localObject2).a((byte[])localObject3, j, j, n);
        if (localObject3 == null) {
          continue;
        }
        arrayOfByte = eye.a((Bitmap)localObject3, 70);
        ((exb)localObject2).a((Bitmap)localObject3);
        if ((arrayOfByte == null) || (arrayOfByte.length <= 0)) {
          continue;
        }
        G = new ByteArrayInputStream(arrayOfByte);
        F = arrayOfByte.length;
      }
      label415:
      localObject2 = new String("We could not create an inputStream for the uri: ");
    }
    Object localObject2 = new InputStreamContent(m, G);
    ((InputStreamContent)localObject2).setLength(F);
    return (AbstractInputStreamContent)localObject2;
  }
  
  public int n()
  {
    if (!o()) {
      return 1;
    }
    return 0;
  }
  
  public boolean o()
  {
    return (o == null) || ("hangouts/location".equals(m)) || (p != null);
  }
  
  public String toString()
  {
    String str1 = String.valueOf(super.toString());
    String str2 = String.valueOf(ezi.b(aal.a(k, null)));
    return String.valueOf(str1).length() + 7 + String.valueOf(str2).length() + str1 + "text [" + str2 + "]";
  }
}

/* Location:
 * Qualified Name:     dpo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */