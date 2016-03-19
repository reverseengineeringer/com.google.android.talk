import android.content.Context;
import android.content.Intent;
import android.net.Uri;

public final class abp
{
  private final Intent a;
  private Integer b;
  private String c;
  private String d;
  private String e;
  private String[] f;
  private String g;
  private Float h;
  private boolean i;
  private boolean j;
  private boolean k;
  private int l;
  private int m;
  private int n;
  private int o;
  private boolean p;
  private boolean q;
  
  public abp(Context paramContext, Class<?> paramClass)
  {
    a = new Intent(paramContext, paramClass);
    k = false;
    p = false;
    q = false;
    i = true;
  }
  
  public abp a()
  {
    p = true;
    return this;
  }
  
  public abp a(float paramFloat)
  {
    h = Float.valueOf(paramFloat);
    return this;
  }
  
  public abp a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    k = true;
    l = paramInt1;
    m = paramInt2;
    n = paramInt3;
    o = paramInt4;
    return this;
  }
  
  public abp a(String paramString)
  {
    c = paramString;
    return this;
  }
  
  public abp a(boolean paramBoolean)
  {
    q = paramBoolean;
    return this;
  }
  
  public abp a(String[] paramArrayOfString)
  {
    f = paramArrayOfString;
    return this;
  }
  
  public abp b(String paramString)
  {
    d = paramString;
    return this;
  }
  
  public Intent b()
  {
    a.setAction("android.intent.action.VIEW");
    a.setFlags(67633152);
    if (b != null) {
      a.putExtra("photo_index", b.intValue());
    }
    if (c != null) {
      a.putExtra("initial_photo_uri", c);
    }
    if ((c != null) && (b != null)) {
      throw new IllegalStateException("specified both photo index and photo uri");
    }
    if (d != null)
    {
      a.putExtra("photos_uri", d);
      a.setData(Uri.parse(d));
    }
    if (e != null) {
      a.putExtra("resolved_photo_uri", e);
    }
    if (f != null) {
      a.putExtra("projection", f);
    }
    if (g != null) {
      a.putExtra("thumbnail_uri", g);
    }
    if (h != null) {
      a.putExtra("max_scale", h);
    }
    a.putExtra("watch_network", j);
    a.putExtra("scale_up_animation", k);
    if (k)
    {
      a.putExtra("start_x_extra", l);
      a.putExtra("start_y_extra", m);
      a.putExtra("start_width_extra", n);
      a.putExtra("start_height_extra", o);
    }
    a.putExtra("action_bar_hidden_initially", p);
    a.putExtra("display_thumbs_fullscreen", q);
    a.putExtra("enable_timer_lights_out", i);
    return a;
  }
  
  public abp c(String paramString)
  {
    e = paramString;
    return this;
  }
  
  public abp d(String paramString)
  {
    g = paramString;
    return this;
  }
}

/* Location:
 * Qualified Name:     abp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */