import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import com.google.android.apps.hangouts.content.EsProvider;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;
import com.google.android.gms.maps.model.LatLng;
import com.google.api.client.http.AbstractInputStreamContent;
import com.google.api.client.http.HttpContent;
import com.google.api.client.http.HttpMediaType;
import com.google.api.client.http.InputStreamContent;
import com.google.api.client.http.MultipartContent;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

final class bvq
  extends dom<kdw, kdx>
{
  private static final boolean a = false;
  private final Context b;
  private final int v;
  private final int w;
  private List<InputStreamContent> x;
  private MultipartContent y;
  
  static
  {
    imx localimx = ezi.l;
  }
  
  public bvq(Context paramContext, bfd parambfd, efh paramefh, int paramInt, bvx parambvx)
  {
    super(ihw.newBuilder().a(parambfd.a()).b(parambfd.U()).a(new ihp()).a(true).a(), parambvx, "conversations/sendchatmessage", paramefh, new kdw(), new kdx());
    v = parambfd.g();
    b = paramContext;
    w = paramInt;
    x = new ArrayList();
  }
  
  private static AbstractInputStreamContent a(Context paramContext, blb paramblb)
  {
    aen.a(a, "Error: Input media with null URI");
    Object localObject = paramContext.getContentResolver();
    if (("image/gif".equals(d)) || (!aal.b(d))) {}
    for (;;)
    {
      try
      {
        Uri localUri = Uri.parse(a);
        paramContext = ((ContentResolver)localObject).openInputStream(localUri);
        label97:
        ezi.d("Babel_SendMediaMessage", "FileNotFoundException trying to detect how large the attachment is", localFileNotFoundException1);
      }
      catch (FileNotFoundException localFileNotFoundException1)
      {
        try
        {
          l = new File(localUri.getPath()).length();
          if (paramContext != null) {
            break label458;
          }
          paramContext = String.valueOf(a);
          if (paramContext.length() == 0) {
            break label445;
          }
          paramContext = "We could not create an inputStream for the uri: ".concat(paramContext);
          ezi.d("Babel_SendMediaMessage", paramContext, new Object[0]);
          return null;
        }
        catch (FileNotFoundException localFileNotFoundException5)
        {
          long l;
          int i;
          exb localexb;
          for (;;) {}
        }
        localFileNotFoundException1 = localFileNotFoundException1;
        paramContext = null;
      }
      l = 0L;
      continue;
      i = aal.a(paramContext, "babel_thumbnail_photo_upload_size", 320);
      localexb = eye.a();
      try
      {
        localObject = eye.a(paramContext.getContentResolver().openInputStream(Uri.parse(a)));
        if ((localObject == null) || (localObject.length == 0))
        {
          paramContext = String.valueOf(a);
          if (paramContext.length() != 0) {}
          for (paramContext = "Could not parse uri for input stream: ".concat(paramContext);; paramContext = new String("Could not parse uri for input stream: "))
          {
            ezi.e("Babel_SendMediaMessage", paramContext, new Object[0]);
            return null;
          }
          localObject = String.valueOf(a);
        }
      }
      catch (FileNotFoundException localFileNotFoundException2)
      {
        paramContext = null;
      }
    }
    for (;;)
    {
      if (((String)localObject).length() != 0) {}
      for (localObject = "Could not open file corresponding to uri ".concat((String)localObject);; localObject = new String("Could not open file corresponding to uri "))
      {
        ezi.d("Babel_SendMediaMessage", (String)localObject, localFileNotFoundException2);
        l = 0L;
        break;
        if (a.startsWith(EsProvider.c(paramContext)))
        {
          ezi.c("Babel_SendMediaMessage", "Sending cache file.", new Object[0]);
          paramContext = new ByteArrayInputStream((byte[])localObject);
        }
        try
        {
          i = localObject.length;
          l = i;
        }
        catch (FileNotFoundException localFileNotFoundException3) {}
        paramContext = localFileNotFoundException2.a((byte[])localObject, i, i, g);
        if (paramContext == null)
        {
          ezi.e("Babel_SendMediaMessage", "Null bitmap", new Object[0]);
          return null;
        }
        localObject = eye.a(paramContext, 70);
        localFileNotFoundException2.a(paramContext);
        if ((localObject == null) || (localObject.length == 0))
        {
          paramContext = String.valueOf(a);
          if (paramContext.length() != 0) {}
          for (paramContext = "Could not parse uri for bitmap: ".concat(paramContext);; paramContext = new String("Could not parse uri for bitmap: "))
          {
            ezi.e("Babel_SendMediaMessage", paramContext, new Object[0]);
            return null;
          }
        }
        paramContext = new ByteArrayInputStream((byte[])localObject);
        try
        {
          i = localObject.length;
          l = i;
        }
        catch (FileNotFoundException localFileNotFoundException4) {}
      }
      label445:
      paramContext = new String("We could not create an inputStream for the uri: ");
      break label97;
      label458:
      paramContext = new InputStreamContent(d, paramContext);
      paramContext.setLength(l);
      return paramContext;
    }
  }
  
  private void a(bvx parambvx, int paramInt)
  {
    parambvx = new csn().a(parambvx.b()).b(parambvx.a()).d(q.c());
    aen.a(v, SystemClock.elapsedRealtime(), paramInt, parambvx);
  }
  
  private void a(kdw paramkdw)
  {
    bvx localbvx = (bvx)e;
    a(localbvx.b());
    Object localObject1 = new jzr();
    b = bfz.c(localbvx.a());
    if ((!aal.a(b, "babel_contingency_mode_enabled", false)) && (!localbvx.k())) {
      a = don.a(localbvx.b());
    }
    int j;
    label303:
    Object localObject4;
    Object localObject5;
    Object localObject6;
    if (localbvx.j())
    {
      i = 1;
      c = Integer.valueOf(i);
      localObject2 = new jyp();
      a = Integer.valueOf(localbvx.l());
      if (localbvx.m() != null)
      {
        b = new lcf();
        b.a = localbvx.m();
      }
      d = ((jyp)localObject2);
      e = Integer.valueOf(localbvx.n());
      a = ((jzr)localObject1);
      if (localbvx.e() != null)
      {
        d = new kbi();
        d.a = localbvx.e();
      }
      localObject1 = new jxk();
      a = Long.valueOf(localbvx.i());
      requestHeader = a(new dmn().a(v).b(w).a().a((jxk)localObject1).b());
      localObject1 = new kcd();
      localObject2 = localbvx.f();
      j = ((List)localObject2).size();
      if (j <= 0) {
        break label570;
      }
      localObject3 = new mel[j];
      i = 0;
      if (i >= j) {
        break label563;
      }
      localObject4 = (efx)((List)localObject2).get(i);
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
        localObject6 = new mei();
        if ((c & 0x1) == 0) {
          break label539;
        }
        bool = true;
        label421:
        a = Boolean.valueOf(bool);
        if ((c & 0x2) == 0) {
          break label545;
        }
        bool = true;
        label444:
        b = Boolean.valueOf(bool);
        if ((c & 0x4) == 0) {
          break label551;
        }
        bool = true;
        label467:
        c = Boolean.valueOf(bool);
        if ((c & 0x8) == 0) {
          break label557;
        }
      }
    }
    label539:
    label545:
    label551:
    label557:
    for (boolean bool = true;; bool = false)
    {
      d = Boolean.valueOf(bool);
      c = ((mei)localObject6);
      a = Integer.valueOf(a);
      localObject3[i] = localObject5;
      i += 1;
      break label303;
      i = 2;
      break;
      bool = false;
      break label421;
      bool = false;
      break label444;
      bool = false;
      break label467;
    }
    label563:
    a = ((mel[])localObject3);
    label570:
    e = ((kcd)localObject1);
    Object localObject2 = new ArrayList();
    int i = 0;
    localObject1 = null;
    Object localObject3 = localbvx.g().a();
    Object localObject7;
    for (;;)
    {
      if (((Iterator)localObject3).hasNext())
      {
        localObject5 = (bkq)((Iterator)localObject3).next();
        localObject4 = new jxi();
        localObject1 = c;
        if ((bkr.b.equals(c)) || (bkr.c.equals(c)))
        {
          localObject5 = (blb)localObject5;
          localObject5 = (InputStreamContent)a(b, (blb)localObject5);
          j = i;
          if (localObject5 != null)
          {
            x.add(localObject5);
            j = i;
          }
          ((List)localObject2).add(localObject4);
          i = j;
        }
        else if (bkr.d.equals(c))
        {
          localObject5 = (blj)localObject5;
          localObject6 = localbvx.h();
          b = new kbx();
          b.b = new kbz();
          b.b.b = e;
          if ((localObject6 != null) && (((List)localObject6).size() > i)) {
            b.b.a = ((String)((List)localObject6).get(i));
          }
          b.b.d = Boolean.valueOf(true);
          localObject7 = new jzs();
          b = new jzu();
          b.b = e;
          if ((localObject6 == null) || (((List)localObject6).size() <= i)) {
            break label1509;
          }
          b.a = ((String)((List)localObject6).get(i));
          i += 1;
        }
      }
    }
    label1509:
    for (;;)
    {
      b.d = Boolean.valueOf(true);
      f = ((jzs)localObject7);
      j = i;
      break;
      if (bkr.e.equals(c))
      {
        localObject6 = e;
        localObject7 = new lzi();
        n = Double.valueOf(da);
        o = Double.valueOf(db);
        localObject5 = new lyt();
        ((lyt)localObject5).a(lzi.a, localObject7);
        Object localObject8 = new lzp();
        c = ((crv)ilh.a(b, crv.class)).a((geo)localObject6);
        localObject7 = new lyt();
        ((lyt)localObject7).a(lzp.a, localObject8);
        Object localObject9 = new maq();
        s = ((geo)localObject6).b().toString();
        localObject8 = new lyt();
        ((lyt)localObject8).a(maq.a, localObject9);
        c = new kbs();
        c.a = new lzv();
        localObject9 = ((geo)localObject6).c().toString();
        if (!TextUtils.isEmpty((CharSequence)localObject9)) {
          c.a.e = ((String)localObject9);
        }
        c.a.w = ((lyt)localObject7);
        c.a.o = ((lyt)localObject5);
        c.a.n = ((lyt)localObject8);
        localObject9 = new kbs();
        a = new lzv();
        localObject6 = ((geo)localObject6).c().toString();
        if (!TextUtils.isEmpty((CharSequence)localObject6)) {
          a.e = ((String)localObject6);
        }
        a.w = ((lyt)localObject7);
        a.o = ((lyt)localObject5);
        a.n = ((lyt)localObject8);
        g = ((kbs)localObject9);
        j = i;
        break;
      }
      j = i;
      if (!bkr.f.equals(c)) {
        break;
      }
      localObject5 = (blh)localObject5;
      localObject6 = new jzs();
      b = new jzu();
      b.b = e;
      f = ((jzs)localObject6);
      j = i;
      break;
      if ((bkr.e.equals(localObject1)) || (bkr.d.equals(localObject1))) {
        c = ((jxi[])((List)localObject2).toArray(new jxi[((List)localObject2).size()]));
      }
      if ((x != null) && (x.size() != 0)) {
        y = new MultipartContent().setContentParts(Arrays.asList(new HttpContent[] { new dnd(paramkdw), (HttpContent)x.get(0) }));
      }
      return;
    }
  }
  
  protected void a()
  {
    super.a();
    a((bvx)e, 2);
  }
  
  public void a(int paramInt, Exception paramException)
  {
    paramException = e();
    if (paramException == null) {
      return;
    }
    RealTimeChatService.a(v, paramException);
    paramException = (bvx)e;
    String str = paramException.o();
    if (str != null)
    {
      str = String.valueOf(str);
      if (str.length() == 0) {
        break label63;
      }
      "Sending stress message succeeded:".concat(str);
    }
    for (;;)
    {
      a(paramException, 12);
      return;
      label63:
      new String("Sending stress message succeeded:");
    }
  }
  
  public String b()
  {
    if (y != null) {
      return y.getMediaType().build();
    }
    return "application/x-protobuf";
  }
  
  public byte[] c()
  {
    a((kdw)u);
    Object localObject;
    if (a)
    {
      localObject = String.valueOf(j());
      String str = String.valueOf(u);
      new StringBuilder(String.valueOf(localObject).length() + 29 + String.valueOf(str).length()).append("getPostData of url ").append((String)localObject).append(" request: ").append(str);
    }
    if (y != null)
    {
      localObject = new ByteArrayOutputStream(1024);
      try
      {
        y.writeTo((OutputStream)localObject);
        return ((ByteArrayOutputStream)localObject).toByteArray();
      }
      catch (IOException localIOException)
      {
        throw new IllegalStateException("Cannot create a byte array stream", localIOException);
      }
    }
    return lyi.a(u);
  }
  
  public Bundle d()
  {
    Bundle localBundle = super.d();
    if (y != null) {
      localBundle.putString("uploadType", "multipart");
    }
    return localBundle;
  }
}

/* Location:
 * Qualified Name:     bvq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */