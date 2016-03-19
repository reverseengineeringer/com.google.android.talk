import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.provider.ContactsContract;
import android.provider.ContactsContract.Contacts;
import android.text.TextUtils;
import com.google.android.apps.hangouts.R.drawable;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class bhs
  extends ejc
  implements exv
{
  static final boolean a = false;
  static final ezv b = ezv.a("ImageRequest");
  final bhv c;
  private boolean i = false;
  
  static
  {
    imx localimx = ezi.d;
  }
  
  public bhs(eyd parameyd, bhv parambhv, String paramString, boolean paramBoolean, Object paramObject)
  {
    super(paramBoolean, parameyd, paramString, paramObject);
    c = parambhv;
  }
  
  public bhs(eyd parameyd, bhv parambhv, boolean paramBoolean, Object paramObject)
  {
    this(parameyd, parambhv, null, paramBoolean, paramObject);
  }
  
  private void a(eys parameys, exs paramexs, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (((paramBoolean1) && (parameys != null) && (parameys.e() != null) && (paramexs == null) && (!f.p())) || ((paramBoolean1) && (parameys == null) && (paramexs != null) && (!f.p())) || ((paramBoolean1) && (f.p()) && (parameys == null) && (paramexs == null)) || ((!paramBoolean1) && (parameys == null) && (paramexs == null))) {}
    for (boolean bool = true;; bool = false)
    {
      hbs.a("Expected condition to be true", bool);
      if (!o()) {
        break;
      }
      String str = b.b("deliverImageOnCorrectThread");
      try
      {
        c.a(parameys, paramexs, paramBoolean1, this, paramBoolean2);
        return;
      }
      finally
      {
        b.c(str);
      }
    }
  }
  
  private static eis b(String paramString)
  {
    Object localObject1;
    if (a)
    {
      localObject1 = String.valueOf(paramString);
      if (((String)localObject1).length() == 0) {
        break label89;
      }
      "loading local image ".concat((String)localObject1);
    }
    Object localObject2;
    ContentResolver localContentResolver;
    for (;;)
    {
      localObject2 = Uri.parse(paramString);
      localContentResolver = aal.oJ.getContentResolver();
      try
      {
        if (paramString.startsWith(ContactsContract.AUTHORITY_URI.toString()))
        {
          localObject1 = (dcj)ilh.a(aal.oJ, dcj.class);
          if (!((dcj)localObject1).a("android.permission.READ_CONTACTS"))
          {
            boolean bool = ((dcj)localObject1).a("android.permission.WRITE_CONTACTS");
            if (!bool)
            {
              return null;
              label89:
              new String("loading local image ");
              continue;
            }
          }
        }
        if (paramString.startsWith(ContactsContract.Contacts.CONTENT_URI.toString()))
        {
          localObject1 = localContentResolver.openAssetFileDescriptor((Uri)localObject2, "r").createInputStream();
          localObject2 = "image/jpeg";
          if (localObject1 != null)
          {
            localObject1 = new eis(eye.a((InputStream)localObject1), (String)localObject2, true);
            return (eis)localObject1;
          }
        }
      }
      catch (IOException localIOException)
      {
        paramString = String.valueOf(paramString);
        if (paramString.length() == 0) {}
      }
    }
    for (paramString = "exception reading image ".concat(paramString);; paramString = new String("exception reading image "))
    {
      ezi.d("Babel_medialoader", paramString, localIOException);
      return null;
      InputStream localInputStream = localContentResolver.openInputStream((Uri)localObject2);
      localObject2 = eye.b(localContentResolver, (Uri)localObject2);
      break;
    }
  }
  
  public ejb a(byte[] paramArrayOfByte)
  {
    int k = 0;
    Object localObject1 = null;
    Object localObject2;
    label55:
    Object localObject3;
    int j;
    if (a)
    {
      localObject2 = String.valueOf(toString());
      if (((String)localObject2).length() != 0) {
        "ImageRequest decodeBytes starting for request ".concat((String)localObject2);
      }
    }
    else
    {
      if (exs.a(paramArrayOfByte)) {
        break label354;
      }
      if ((paramArrayOfByte == null) || (paramArrayOfByte.length == 0)) {
        break label230;
      }
      bool = true;
      hbs.a("Expected condition to be true", bool);
      localObject2 = eye.a();
      localObject3 = (eyd)f;
      int m = ((eyd)f).h();
      j = m;
      if (m == 0) {
        j = aal.a(new ByteArrayInputStream(paramArrayOfByte), paramArrayOfByte.length);
      }
      localObject3 = ((exb)localObject2).a(paramArrayOfByte, ((eyd)localObject3).d(), ((eyd)localObject3).e(), j);
      if (a)
      {
        if (paramArrayOfByte != null) {
          break label236;
        }
        j = k;
        label142:
        if (localObject3 != null) {
          break label242;
        }
        paramArrayOfByte = null;
        label149:
        paramArrayOfByte = String.valueOf(paramArrayOfByte);
        new StringBuilder(String.valueOf(paramArrayOfByte).length() + 55).append("decodeStaticImageBytes in bytes=").append(j).append(" bitmap out=").append(paramArrayOfByte);
      }
      if (localObject3 != null) {
        break label254;
      }
      ((eit)ilh.a(aal.oJ, eit.class)).a(this);
      paramArrayOfByte = (byte[])localObject1;
    }
    label230:
    label236:
    label242:
    label254:
    do
    {
      return paramArrayOfByte;
      new String("ImageRequest decodeBytes starting for request ");
      break;
      bool = false;
      break label55;
      j = paramArrayOfByte.length;
      break label142;
      paramArrayOfByte = Integer.valueOf(((Bitmap)localObject3).getWidth());
      break label149;
      paramArrayOfByte = b((Bitmap)localObject3);
      if (paramArrayOfByte != localObject3) {
        ((exb)localObject2).a((Bitmap)localObject3);
      }
      localObject1 = new eys(paramArrayOfByte, c());
      ((eys)localObject1).a();
      ((exb)localObject2).a(c(), (eys)localObject1);
      paramArrayOfByte = (byte[])localObject1;
    } while (!a);
    paramArrayOfByte = String.valueOf(toString());
    if (paramArrayOfByte.length() != 0)
    {
      "ImageRequest decodeBytes ended for request ".concat(paramArrayOfByte);
      return (ejb)localObject1;
    }
    new String("ImageRequest decodeBytes ended for request ");
    return (ejb)localObject1;
    label354:
    boolean bool = ((eyd)f).j();
    if (bool) {}
    for (localObject1 = this;; localObject1 = null)
    {
      paramArrayOfByte = new exs(paramArrayOfByte, (exv)localObject1, eye.a());
      if (!paramArrayOfByte.f()) {
        break;
      }
      ((eit)ilh.a(aal.oJ, eit.class)).a(this);
      return null;
    }
    if (bool)
    {
      paramArrayOfByte.a(false);
      return null;
    }
    return paramArrayOfByte;
  }
  
  public void a(Bitmap paramBitmap)
  {
    Bitmap localBitmap = b(paramBitmap);
    if (localBitmap != paramBitmap) {
      eye.a().a(paramBitmap);
    }
    paramBitmap = new eys(localBitmap, c());
    paramBitmap.a();
    eye.a().a(c(), paramBitmap);
    new Thread(new bhu(this, paramBitmap), "STATIC_GIF_TRANSFER_THREAD").start();
  }
  
  public void a(ejb paramejb)
  {
    if (a)
    {
      String str = String.valueOf(toString());
      if (str.length() == 0) {
        break label55;
      }
      "ImageRequest deliverDecoded for request ".concat(str);
    }
    for (;;)
    {
      if (c != null)
      {
        if (!(paramejb instanceof exs)) {
          break;
        }
        a(null, (exs)paramejb, true, false);
      }
      return;
      label55:
      new String("ImageRequest deliverDecoded for request ");
    }
    paramejb = (eys)paramejb;
    paramejb.a();
    a(paramejb, null, true, false);
  }
  
  public void a(boolean paramBoolean)
  {
    if ((f instanceof eyd)) {
      ((eyd)f).b(paramBoolean);
    }
  }
  
  boolean a(eyg parameyg, int paramInt)
  {
    hbs.b("Expected non-null", parameyg);
    hbs.b("Expected non-null", parameyg.t());
    long l = System.currentTimeMillis();
    Object localObject;
    if (a)
    {
      localObject = String.valueOf(toString());
      new StringBuilder(String.valueOf(localObject).length() + 61).append("ImageRequest loadImageFromVolley retryCount=").append(paramInt).append(" this=").append((String)localObject);
    }
    if (paramInt > 5) {
      ezi.d("Babel_medialoader", "Load image from volley retried several times and failed.", new Object[0]);
    }
    do
    {
      return false;
      localObject = cvx.a();
    } while ((i) && (((agu)localObject).b().a(parameyg.t()) == null));
    ((agu)localObject).a(new axl(parameyg, new agx(this, l, parameyg, paramInt, this), new agw(this, this)));
    return true;
  }
  
  protected final Bitmap b(Bitmap paramBitmap)
  {
    int m = 0;
    exb localexb = eye.a();
    eyd localeyd = (eyd)this.f;
    int j;
    Object localObject1;
    if ((paramBitmap.getWidth() != localeyd.d()) || (paramBitmap.getHeight() != localeyd.e()))
    {
      j = 1;
      int k = m;
      if (localeyd.k())
      {
        k = m;
        if (j != 0) {
          k = 1;
        }
      }
      if ((k == 0) && (!localeyd.l()))
      {
        localObject1 = paramBitmap;
        if (!localeyd.i()) {}
      }
      else
      {
        if (!localeyd.i()) {
          break label359;
        }
        localObject1 = eye.a(paramBitmap);
        paramBitmap = (Bitmap)localObject1;
      }
    }
    for (;;)
    {
      Bitmap localBitmap = localexb.b(localeyd.d(), localeyd.e());
      Canvas localCanvas = new Canvas(localBitmap);
      Matrix localMatrix = new Matrix();
      Object localObject2;
      if (j != 0)
      {
        localMatrix.postScale(localeyd.d() / paramBitmap.getWidth(), localeyd.e() / paramBitmap.getHeight());
        localObject2 = new Paint();
        ((Paint)localObject2).setFilterBitmap(true);
      }
      for (;;)
      {
        localCanvas.drawBitmap(paramBitmap, localMatrix, (Paint)localObject2);
        if (localeyd.l())
        {
          localObject2 = aal.oJ.getResources();
          if (localeyd.m() != beo.b) {
            break label319;
          }
          paramBitmap = ((BitmapDrawable)((Resources)localObject2).getDrawable(R.drawable.aI)).getBitmap();
        }
        for (;;)
        {
          fii.a(paramBitmap, "SMS badge should not be empty!");
          float f = ((Resources)localObject2).getDimension(aal.eJ);
          localCanvas.drawBitmap(paramBitmap, localeyd.d() - paramBitmap.getWidth() - f, localeyd.e() - paramBitmap.getHeight() - f, null);
          if (localObject1 != null) {
            localexb.a((Bitmap)localObject1);
          }
          localObject1 = localBitmap;
          return (Bitmap)localObject1;
          j = 0;
          break;
          label319:
          if (localeyd.m() == beo.c) {
            paramBitmap = ((BitmapDrawable)((Resources)localObject2).getDrawable(R.drawable.bc)).getBitmap();
          } else {
            paramBitmap = null;
          }
        }
        localObject2 = null;
      }
      label359:
      localObject1 = null;
    }
  }
  
  public void b(boolean paramBoolean)
  {
    i = paramBoolean;
  }
  
  public boolean d()
  {
    return i;
  }
  
  public boolean e()
  {
    eys localeys = eye.a().a(c());
    String str;
    if (localeys != null) {
      if (a)
      {
        str = String.valueOf(c());
        if (str.length() == 0) {
          break label65;
        }
        "Cache hit for image request: ".concat(str);
      }
    }
    while ((localeys != null) && (c != null))
    {
      a(localeys, null, true, true);
      return true;
      label65:
      new String("Cache hit for image request: ");
      continue;
      if (a)
      {
        str = String.valueOf(c());
        if (str.length() != 0) {
          "Cache miss for image request: ".concat(str);
        } else {
          new String("Cache miss for image request: ");
        }
      }
    }
    return false;
  }
  
  public boolean f()
  {
    return !f.p();
  }
  
  public void g()
  {
    if (c != null) {
      a(null, null, false, false);
    }
  }
  
  public void h()
  {
    if (c != null) {
      a(null, null, true, false);
    }
  }
  
  public eis k_()
  {
    Object localObject5 = null;
    int j = 0;
    String str = b.b("MediaBytes.getMediaBytes");
    label135:
    label328:
    label331:
    for (;;)
    {
      Object localObject4;
      try
      {
        localObject4 = f;
        if (((eyg)localObject4).q() != null)
        {
          Object localObject1 = String.valueOf(((eyg)localObject4).q());
          if (((String)localObject1).length() != 0)
          {
            localObject1 = "file://".concat((String)localObject1);
            if (!TextUtils.isEmpty((CharSequence)localObject1)) {
              break label135;
            }
            j = 1;
            localObject1 = null;
            break label331;
            if (j == 0) {
              break label328;
            }
            ((eit)ilh.a(aal.oJ, eit.class)).a(this);
            localObject1 = localObject5;
            return (eis)localObject1;
          }
          localObject1 = new String("file://");
          continue;
        }
        localObject3 = ((eyg)localObject4).n();
      }
      finally
      {
        b.c(str);
      }
      Object localObject3;
      continue;
      if (((localObject4 instanceof eyd)) && (((eyd)localObject4).g()))
      {
        localObject3 = eye.a(Uri.parse((String)localObject3));
        if (localObject3 == null)
        {
          j = 1;
          localObject3 = null;
        }
        else
        {
          localObject4 = new ByteArrayOutputStream();
          ((Bitmap)localObject3).compress(Bitmap.CompressFormat.JPEG, 80, (OutputStream)localObject4);
          localObject3 = new eis(((ByteArrayOutputStream)localObject4).toByteArray(), "image/jpeg", false);
        }
      }
      else if ((((String)localObject3).startsWith("content://")) || (((String)localObject3).startsWith("android.resource://")) || (((String)localObject3).startsWith("file://")))
      {
        localObject4 = b((String)localObject3);
        localObject3 = localObject4;
        if (localObject4 == null)
        {
          localObject3 = localObject4;
          j = 1;
        }
      }
      else if (eia.a((String)localObject3))
      {
        if (eia.b == null) {
          eia.b = new eia();
        }
        eia.b.a(this);
        localObject3 = null;
      }
      else
      {
        boolean bool = a(f, 0);
        if (!bool)
        {
          j = 1;
          localObject3 = null;
        }
        else
        {
          j = 0;
          localObject3 = null;
          break label331;
        }
      }
    }
  }
  
  public String toString()
  {
    eyd localeyd = (eyd)f;
    String str = String.valueOf(super.toString());
    int j = localeyd.d();
    int k = localeyd.e();
    boolean bool = a();
    return String.valueOf(str).length() + 68 + str + " ImageRequest:  (" + j + "x" + k + ") shouldUseLoaderQueue=" + bool;
  }
}

/* Location:
 * Qualified Name:     bhs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */