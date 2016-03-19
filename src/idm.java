import android.content.Context;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.chromium.net.HttpUrlRequest;

final class idm
  extends iej
{
  private final Context h;
  private final String i;
  private final ieq j;
  private final iet k;
  private final String l;
  private final String m;
  private HttpUrlRequest n;
  private String o;
  private iep p;
  private final boolean q;
  
  public idm(Context paramContext, ihs paramihs, String paramString1, ieq paramieq, iet paramiet, String paramString2, String paramString3, iep paramiep, boolean paramBoolean)
  {
    super(paramihs);
    h = paramContext;
    i = paramString1;
    k = paramiet;
    j = paramieq;
    l = paramString2;
    m = paramString3;
    p = paramiep;
    q = paramBoolean;
  }
  
  public void a()
  {
    Object localObject2 = new HashMap(j().a(i));
    ((Map)localObject2).put("X-Upload-Content-Type", k.e());
    long l1 = k.k();
    if (l1 >= 0L) {
      ((Map)localObject2).put("X-Upload-Content-Length", Long.toString(l1));
    }
    Object localObject1 = String.valueOf(Base64.encodeToString(k.i().c(), 2));
    iyx localiyx;
    Context localContext;
    iet localiet;
    izr localizr;
    label275:
    boolean bool1;
    if (((String)localObject1).length() != 0)
    {
      localObject1 = "sha1=".concat((String)localObject1);
      ((Map)localObject2).put("X-Goog-Hash", localObject1);
      n = iff.a(h, i, 3, (Map)localObject2, g);
      localiyx = new iyx();
      ilh.a(h, idn.class);
      localContext = h;
      localObject1 = m;
      ieq localieq = j;
      localiet = k;
      localObject2 = p;
      boolean bool2 = q;
      localizr = new izr();
      String str = localiet.h().a();
      a = ((String)localObject1);
      b = localieq.e();
      e = localieq.f();
      c = localieq.g();
      l = localieq.i();
      w = str;
      if (localObject2 == iep.d) {
        break label741;
      }
      i1 = 1;
      if (i1 == 0) {
        break label752;
      }
      F = idn.a((iep)localObject2);
      if (localObject2 != iep.a) {
        break label746;
      }
      bool1 = true;
      label300:
      g = Boolean.valueOf(bool1);
      label310:
      if (bool2) {
        H = idn.a(localContext);
      }
      localObject2 = localieq.h();
      localObject1 = localObject2;
      if (TextUtils.isEmpty((CharSequence)localObject2)) {
        localObject1 = idi.a(str);
      }
      k = ((String)localObject1);
      z = new String[] { localObject1 };
      localObject1 = localiet.j();
      if (!TextUtils.isEmpty((CharSequence)localObject1)) {
        B = ((String)localObject1);
      }
      y = new jad();
      y.a = Integer.valueOf(localieq.l());
      q = Long.valueOf(localiet.f() / 1000L);
      if (localiet.l() == null) {
        break label768;
      }
      u = new izl();
      u.b = new jac();
      u.b.a = localiet.l();
      label490:
      if (localiet.m() != null)
      {
        v = new izn();
        v.a = localiet.m();
      }
      h = localiet.d();
      localObject1 = localiet.n();
      if (localObject1 != null)
      {
        E = ((jae)localObject1);
        w = null;
        z = null;
        F = idn.a(iep.c);
        C = 3;
        g = null;
        k = null;
        r = null;
        h = null;
        v = null;
        s = null;
        q = null;
        y = null;
        D = new lsh();
      }
      a = localizr;
      localObject1 = h;
      localObject2 = l;
      if (!j.m()) {
        break label845;
      }
    }
    label741:
    label746:
    label752:
    label768:
    label845:
    for (int i1 = 50;; i1 = 100)
    {
      iil.a((Context)localObject1, localiyx, (String)localObject2, i1);
      localObject1 = lyi.a(localiyx);
      n.a("application/x-protobuf", (byte[])localObject1);
      if (Log.isLoggable("MediaUploader", 2)) {
        aal.a(2, "MediaUploader", localiyx.toString());
      }
      return;
      localObject1 = new String("sha1=");
      break;
      i1 = 0;
      break label275;
      bool1 = false;
      break label300;
      g = Boolean.valueOf(localiet.b());
      break label310;
      if (!aal.d(localContext, localiet.g())) {
        break label490;
      }
      u = new izl();
      u.b = new jac();
      u.b.a = new lfi();
      u.b.a.b = 8;
      break label490;
    }
  }
  
  protected void a(HttpUrlRequest paramHttpUrlRequest)
  {
    paramHttpUrlRequest = new idl(paramHttpUrlRequest.m()).a("Location");
    if ((paramHttpUrlRequest == null) || (paramHttpUrlRequest.size() != 1)) {
      return;
    }
    o = ((String)paramHttpUrlRequest.get(0));
  }
  
  protected HttpUrlRequest b()
  {
    return n;
  }
  
  public String c()
  {
    return o;
  }
}

/* Location:
 * Qualified Name:     idm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */