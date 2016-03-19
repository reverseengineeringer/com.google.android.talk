import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.Cursor;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.apps.hangouts.content.EsProvider;
import com.google.android.apps.hangouts.hangout.StressMode;
import java.util.List;

public final class cgc
  implements cgm, ck<Cursor>
{
  String a;
  private final cfc b = cfc.a();
  private cgd c;
  private Context d;
  private chc e;
  private bfd f;
  private cgn g;
  private String h;
  
  public cgc(Context paramContext, bfd parambfd, String paramString1, String paramString2)
  {
    d = paramContext;
    f = parambfd;
    a = paramString1;
    h = paramString2;
  }
  
  private void a(String paramString1, String paramString2)
  {
    if (e != null)
    {
      chc localchc = e;
      String str = paramString1;
      if (TextUtils.isEmpty(paramString1)) {
        str = d.getResources().getString(StressMode.cu);
      }
      localchc.a(str);
      e.b(paramString2);
    }
  }
  
  public void a(int paramInt) {}
  
  public void a(cgn paramcgn)
  {
    g = paramcgn;
    c = new cgd(this);
    b.a(c);
    if (a != null) {
      paramcgn.f().a(0, null, this);
    }
    c.f();
  }
  
  public void a(qe paramqe)
  {
    e = ((chc)paramqe.c());
    e.a(d.getResources().getString(StressMode.cu));
    c();
  }
  
  void b()
  {
    if (a != null) {
      g.f().b(0, null, this);
    }
  }
  
  void c()
  {
    String str = null;
    Object localObject = b.r();
    if (h != null)
    {
      a(h, null);
      return;
    }
    if ((localObject != null) && (((cgw)localObject).J() == 1))
    {
      hbs.b("Expected non-null", localObject);
      localObject = ((cgw)localObject).T();
      if (((List)localObject).size() != 1) {
        break label129;
      }
      localObject = (chb)((List)localObject).get(0);
      if (((chb)localObject).b() != null)
      {
        str = ezm.p(((chb)localObject).a());
        localObject = ezm.q(((chb)localObject).a());
      }
    }
    for (;;)
    {
      if (str != null)
      {
        a(str, (String)localObject);
        return;
        str = ezm.p(((chb)localObject).a());
        localObject = null;
      }
      else
      {
        b();
        return;
        b();
        return;
        label129:
        localObject = null;
      }
    }
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration) {}
  
  public fe<Cursor> onCreateLoader(int paramInt, Bundle paramBundle)
  {
    if (paramInt != 0) {}
    while (a == null) {
      return null;
    }
    return new dhq(d, f, EsProvider.a(EsProvider.h, g.a().g()), bey.a, "conversation_id=?", new String[] { a }, null);
  }
  
  public void onLoaderReset(fe<Cursor> paramfe) {}
  
  public void r_()
  {
    if (c != null)
    {
      b.b(c);
      c = null;
    }
  }
}

/* Location:
 * Qualified Name:     cgc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */