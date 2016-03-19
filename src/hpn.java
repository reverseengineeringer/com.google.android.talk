import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;

public final class hpn
  implements hpk
{
  private final int a;
  private String b;
  private ColorStateList c;
  private Drawable d;
  private Drawable e;
  
  public hpn(int paramInt, String paramString)
  {
    a = paramInt;
    b = paramString;
    c = null;
    d = null;
    e = null;
  }
  
  public hpn a(int paramInt)
  {
    return a(ColorStateList.valueOf(paramInt));
  }
  
  public hpn a(ColorStateList paramColorStateList)
  {
    c = paramColorStateList;
    return this;
  }
  
  public hpn a(Drawable paramDrawable)
  {
    d = paramDrawable;
    return this;
  }
  
  public boolean a()
  {
    return true;
  }
  
  public int b()
  {
    return aal.tn;
  }
  
  public hpn b(Drawable paramDrawable)
  {
    e = paramDrawable;
    return this;
  }
  
  public int c()
  {
    return a;
  }
  
  public String d()
  {
    return b;
  }
  
  public ColorStateList e()
  {
    return c;
  }
  
  public Drawable f()
  {
    return d;
  }
  
  public Drawable g()
  {
    return e;
  }
}

/* Location:
 * Qualified Name:     hpn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */