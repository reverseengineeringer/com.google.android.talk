import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import java.util.concurrent.atomic.AtomicInteger;

final class cej
  implements ceh, ioz
{
  static final ezv a = ezv.a("GlideLoaderManagerImpl");
  private static AtomicInteger c = new AtomicInteger(0);
  Context b;
  private ahw d;
  private boolean e;
  private hpu f;
  
  public cej(Context paramContext)
  {
    a(paramContext);
  }
  
  cej(Context paramContext, iog paramiog)
  {
    paramiog.a(this);
    b = paramContext;
    a(paramContext);
  }
  
  private auj<Drawable> a(String paramString)
  {
    return new cek(this, paramString);
  }
  
  private void a(Context paramContext)
  {
    d = ((ahw)ilh.a(paramContext, ahw.class));
    f = ((hpu)ilh.b(paramContext, hpu.class));
    if ((ceg)ilh.b(paramContext, ceg.class) != null) {}
    for (boolean bool = true;; bool = false)
    {
      e = bool;
      if (!e) {
        e = aal.a(paramContext, "babel_glide_enabled", false);
      }
      b = paramContext;
      return;
    }
  }
  
  private static String b(String paramString)
  {
    String str2 = Uri.parse(paramString).getScheme();
    String str1 = paramString;
    if (!TextUtils.equals(str2, "content"))
    {
      str1 = paramString;
      if (str2 == null)
      {
        paramString = String.valueOf(paramString);
        if (paramString.length() == 0) {
          break label48;
        }
      }
    }
    label48:
    for (paramString = "https:".concat(paramString);; paramString = new String("https:"))
    {
      str1 = paramString;
      return str1;
    }
  }
  
  public void a(Uri paramUri, ImageView paramImageView, ave paramave, auk paramauk)
  {
    if (paramave != null) {
      paramauk.a(paramave);
    }
    paramave = a;
    String str = String.valueOf("loadImageWithGlide_");
    int i = c.incrementAndGet();
    paramave = paramave.b(String.valueOf(str).length() + 11 + str + i);
    d.h().a(paramauk).a(paramUri).a(a(paramave)).a(paramImageView);
  }
  
  public void a(View paramView)
  {
    d.a(paramView);
  }
  
  public void a(String paramString, ImageView paramImageView, auk paramauk)
  {
    Object localObject = a;
    String str = String.valueOf("loadImageWithGlide_");
    int i = c.incrementAndGet();
    localObject = ((ezv)localObject).b(String.valueOf(str).length() + 11 + str + i);
    d.h().a(paramauk).a(paramString).a(a((String)localObject)).a(paramImageView);
  }
  
  public void a(String paramString, auw<Bitmap> paramauw, auk paramauk, hav paramhav)
  {
    paramString = b(paramString);
    if (f != null) {}
    for (int i = f.a(); (paramString.startsWith("https:")) && (paramhav != null); i = -1)
    {
      d.g().a(paramauk).a(new ham(paramString, paramhav, i)).a(paramauw);
      return;
    }
    d.g().a(paramauk).a(paramString).a(paramauw);
  }
  
  public boolean a()
  {
    return e;
  }
  
  public void b(String paramString, auw<Drawable> paramauw, auk paramauk, hav paramhav)
  {
    paramString = b(paramString);
    if (f != null) {}
    for (int i = f.a(); (paramString.startsWith("https:")) && (paramhav != null); i = -1)
    {
      d.h().a(paramauk).a(new ham(paramString, paramhav, i)).a(paramauw);
      return;
    }
    d.h().a(paramauk).a(paramString).a(paramauw);
  }
}

/* Location:
 * Qualified Name:     cej
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */