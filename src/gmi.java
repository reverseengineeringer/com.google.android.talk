import android.widget.ImageView;

final class gmi
  extends gml
{
  public final String a;
  public final int b;
  
  public gmi(gmh paramgmh, ImageView paramImageView, String paramString1, String paramString2, int paramInt)
  {
    super(paramgmh);
    f = paramImageView;
    g = paramString1;
    a = paramString2;
    b = paramInt;
  }
  
  public void a()
  {
    glu.g.a(c.c, g, a).a(new gmj(this));
  }
  
  public void a(glp paramglp)
  {
    c.a(paramglp.j(), paramglp.a(), paramglp.c(), paramglp.d(), b, this);
  }
}

/* Location:
 * Qualified Name:     gmi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */