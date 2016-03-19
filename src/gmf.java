import android.widget.ImageView;

final class gmf
  extends gml
{
  public final int a;
  public final String b;
  public final gpt c;
  
  public gmf(gme paramgme, ImageView paramImageView, gpt paramgpt, int paramInt)
  {
    super(paramgme);
    boolean bool = aal.a(paramgpt);
    f = paramImageView;
    c = paramgpt;
    if (bool) {}
    for (paramgme = paramgpt.a();; paramgme = null)
    {
      g = paramgme;
      paramgme = (gme)localObject;
      if (bool) {
        paramgme = paramgpt.Q_();
      }
      b = paramgme;
      a = paramInt;
      return;
    }
  }
  
  public void a()
  {
    glu.g.a(d.c, g, b, a).a(new gmg(this));
  }
  
  public void a(glp paramglp)
  {
    gme.a(d, paramglp.j(), paramglp.a(), this);
  }
}

/* Location:
 * Qualified Name:     gmf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */