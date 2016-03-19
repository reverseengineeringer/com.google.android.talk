import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.widget.ImageView;
import java.util.UUID;

public final class ahu<TranscodeType>
  implements Cloneable
{
  private static final aia<?, ?> a = new aia((byte)0);
  private static final aug<?> b = ((auk)((auk)new auk().a(akr.c)).a(ahs.d)).a();
  private final ahm c;
  private final ahw d;
  private final Class<TranscodeType> e;
  private final aug<?> f;
  private aug<?> g;
  private aia<?, ? super TranscodeType> h = a;
  private Object i;
  private auj<TranscodeType> j;
  private ahu<TranscodeType> k;
  private Float l;
  private boolean m;
  private boolean n;
  
  ahu(ahm paramahm, ahw paramahw, Class<TranscodeType> paramClass)
  {
    d = paramahw;
    c = ((ahm)aal.a(paramahm, "Argument must not be null"));
    e = paramClass;
    f = paramahw.i();
    g = f;
  }
  
  private ahs a(ahs paramahs)
  {
    switch (ahv.b[paramahs.ordinal()])
    {
    default: 
      paramahs = String.valueOf(g.d);
      throw new IllegalArgumentException(String.valueOf(paramahs).length() + 18 + "unknown priority: " + paramahs);
    case 1: 
      return ahs.c;
    case 2: 
      return ahs.b;
    }
    return ahs.a;
  }
  
  private auh a(auw<TranscodeType> paramauw, aug<?> paramaug, aui paramaui, aia<?, ? super TranscodeType> paramaia, ahs paramahs, int paramInt1, int paramInt2)
  {
    t = true;
    ahm localahm = c;
    Object localObject = i;
    Class localClass = e;
    auj localauj = j;
    alh localalh = c.b();
    avc localavc = a;
    aum localaum = (aum)aum.a.a();
    paramaia = localaum;
    if (localaum == null) {
      paramaia = new aum();
    }
    c = localahm;
    d = localObject;
    e = localClass;
    f = paramaug;
    g = paramInt1;
    h = paramInt2;
    i = paramahs;
    j = paramauw;
    k = localauj;
    b = paramaui;
    l = localalh;
    m = localavc;
    n = auo.a;
    return paramaia;
  }
  
  private auh a(auw<TranscodeType> paramauw, aup paramaup, aia<?, ? super TranscodeType> paramaia, ahs paramahs, int paramInt1, int paramInt2)
  {
    Object localObject;
    if (k != null)
    {
      if (n) {
        throw new IllegalStateException("You cannot use a request as both the main request and a thumbnail, consider using clone() on the request(s) passed to thumbnail()");
      }
      localObject = k.h;
      if (!a.equals(localObject)) {
        break label319;
      }
      localObject = paramaia;
    }
    label316:
    label319:
    for (;;)
    {
      ahs localahs;
      int i2;
      int i1;
      if (k.g.a(8))
      {
        localahs = k.g.d;
        i2 = k.g.k;
        i1 = k.g.j;
        if (!avq.a(paramInt1, paramInt2)) {
          break label316;
        }
        aug localaug = k.g;
        if (avq.a(k, j)) {
          break label316;
        }
        i2 = g.k;
        i1 = g.j;
      }
      for (;;)
      {
        paramaup = new aup(paramaup);
        paramaia = a(paramauw, g, paramaup, paramaia, paramahs, paramInt1, paramInt2);
        n = true;
        paramauw = k.a(paramauw, paramaup, (aia)localObject, localahs, i2, i1);
        n = false;
        paramaup.a(paramaia, paramauw);
        return paramaup;
        localahs = a(paramahs);
        break;
        if (l != null)
        {
          paramaup = new aup(paramaup);
          paramaup.a(a(paramauw, g, paramaup, paramaia, paramahs, paramInt1, paramInt2), a(paramauw, g.b().a(l.floatValue()), paramaup, paramaia, a(paramahs), paramInt1, paramInt2));
          return paramaup;
        }
        return a(paramauw, g, paramaup, paramaia, paramahs, paramInt1, paramInt2);
      }
    }
  }
  
  private ahu<TranscodeType> b(Object paramObject)
  {
    i = paramObject;
    m = true;
    return this;
  }
  
  public ahu<TranscodeType> a()
  {
    try
    {
      ahu localahu = (ahu)super.clone();
      g = g.b();
      h = h.a();
      return localahu;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException)
    {
      throw new RuntimeException(localCloneNotSupportedException);
    }
  }
  
  public ahu<TranscodeType> a(aia<?, ? super TranscodeType> paramaia)
  {
    h = ((aia)aal.a(paramaia, "Argument must not be null"));
    return this;
  }
  
  public ahu<TranscodeType> a(Uri paramUri)
  {
    return b(paramUri);
  }
  
  public ahu<TranscodeType> a(aug<?> paramaug)
  {
    aal.a(paramaug, "Argument must not be null");
    if (f == g) {}
    for (aug localaug = g.b();; localaug = g)
    {
      g = localaug.a(paramaug);
      return this;
    }
  }
  
  public ahu<TranscodeType> a(auj<TranscodeType> paramauj)
  {
    j = paramauj;
    return this;
  }
  
  public ahu<TranscodeType> a(Object paramObject)
  {
    return b(paramObject);
  }
  
  public ahu<TranscodeType> a(String paramString)
  {
    return b(paramString);
  }
  
  public ahu<TranscodeType> a(byte[] paramArrayOfByte)
  {
    return b(paramArrayOfByte).a(((auk)auk.b(new avg(UUID.randomUUID().toString())).a(akr.b)).a());
  }
  
  public auw<TranscodeType> a(ImageView paramImageView)
  {
    avq.a();
    aal.a(paramImageView, "Argument must not be null");
    if ((!g.a(2048)) && (g.n) && (paramImageView.getScaleType() != null)) {
      if (g.t) {
        g = g.b();
      }
    }
    Class localClass;
    switch (ahv.a[paramImageView.getScaleType().ordinal()])
    {
    default: 
      localClass = e;
      if (!Bitmap.class.equals(localClass)) {
        break;
      }
    }
    for (paramImageView = new auq(paramImageView);; paramImageView = new aur(paramImageView))
    {
      return a(paramImageView);
      g.a(c);
      break;
      g.d(c);
      break;
      g.b(c);
      break;
      if (!Drawable.class.isAssignableFrom(localClass)) {
        break label205;
      }
    }
    label205:
    paramImageView = String.valueOf(localClass);
    throw new IllegalArgumentException(String.valueOf(paramImageView).length() + 64 + "Unhandled class: " + paramImageView + ", try .as*(Class).transcode(ResourceTranscoder)");
  }
  
  public <Y extends auw<TranscodeType>> Y a(Y paramY)
  {
    avq.a();
    aal.a(paramY, "Argument must not be null");
    if (!m) {
      throw new IllegalArgumentException("You must call #load() before calling #into()");
    }
    if (paramY.b() != null) {
      d.a(paramY);
    }
    g.t = true;
    auh localauh = a(paramY, null, h, g.d, g.k, g.j);
    paramY.a(localauh);
    d.a(paramY, localauh);
    return paramY;
  }
}

/* Location:
 * Qualified Name:     ahu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */