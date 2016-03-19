import android.content.Context;
import android.graphics.Bitmap;
import java.security.MessageDigest;

public final class asq
  implements ajd<asn>
{
  private final ajd<Bitmap> b;
  private final amd c;
  
  private asq(ajd<Bitmap> paramajd, amd paramamd)
  {
    b = ((ajd)aal.a(paramajd, "Argument must not be null"));
    c = ((amd)aal.a(paramamd, "Argument must not be null"));
  }
  
  public asq(Context paramContext, ajd<Bitmap> paramajd)
  {
    this(paramajd, ahk.a(paramContext).a());
  }
  
  public alr<asn> a(alr<asn> paramalr, int paramInt1, int paramInt2)
  {
    asn localasn = (asn)paramalr.c();
    Object localObject = new aqy(localasn.b(), c);
    alr localalr = b.a((alr)localObject, paramInt1, paramInt2);
    if (!localObject.equals(localalr)) {
      ((alr)localObject).e();
    }
    localObject = (Bitmap)localalr.c();
    localasn.a(b, (Bitmap)localObject);
    return paramalr;
  }
  
  public void a(MessageDigest paramMessageDigest)
  {
    b.a(paramMessageDigest);
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject instanceof asq))
    {
      paramObject = (asq)paramObject;
      return b.equals(b);
    }
    return false;
  }
  
  public int hashCode()
  {
    return b.hashCode();
  }
}

/* Location:
 * Qualified Name:     asq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */