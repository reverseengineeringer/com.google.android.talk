import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import java.security.MessageDigest;

public final class aqw
  implements ajd<BitmapDrawable>
{
  private final Context b;
  private final amd c;
  private final ajd<Bitmap> d;
  
  public aqw(Context paramContext, ajd<Bitmap> paramajd)
  {
    this(paramContext, ahk.a(paramContext).a(), paramajd);
  }
  
  private aqw(Context paramContext, amd paramamd, ajd<Bitmap> paramajd)
  {
    b = paramContext.getApplicationContext();
    c = ((amd)aal.a(paramamd, "Argument must not be null"));
    d = ((ajd)aal.a(paramajd, "Argument must not be null"));
  }
  
  public alr<BitmapDrawable> a(alr<BitmapDrawable> paramalr, int paramInt1, int paramInt2)
  {
    aqy localaqy = aqy.a(((BitmapDrawable)paramalr.c()).getBitmap(), c);
    Object localObject = d.a(localaqy, paramInt1, paramInt2);
    if (localObject.equals(localaqy)) {
      return paramalr;
    }
    paramalr = b;
    localObject = (Bitmap)((alr)localObject).c();
    return aru.a(paramalr.getResources(), ahk.a(paramalr).a(), (Bitmap)localObject);
  }
  
  public void a(MessageDigest paramMessageDigest)
  {
    d.a(paramMessageDigest);
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject instanceof aqw))
    {
      paramObject = (aqw)paramObject;
      return d.equals(d);
    }
    return false;
  }
  
  public int hashCode()
  {
    return d.hashCode();
  }
}

/* Location:
 * Qualified Name:     aqw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */