import android.graphics.Bitmap;
import android.text.TextUtils;
import android.widget.ImageButton;
import com.google.android.apps.hangouts.hangout.FocusedParticipantView;
import com.google.android.apps.hangouts.hangout.ParticipantTrayView;
import java.util.Collection;
import java.util.Iterator;

public final class cjk
  extends ciu
  implements ehg
{
  private final cjl p = new cjl(this);
  private bet q;
  private cjh r;
  
  public cjk(chu paramchu, hkx paramhkx, ParticipantTrayView paramParticipantTrayView, FocusedParticipantView paramFocusedParticipantView)
  {
    super(paramchu, paramhkx, paramParticipantTrayView, paramFocusedParticipantView);
    a(paramhkx.b());
  }
  
  private void q()
  {
    if (m != null) {}
    do
    {
      return;
      if (!a.l()) {
        break;
      }
      localObject = o();
    } while ((localObject == null) || (((cjh)localObject).c() == null));
    c(((cjh)localObject).c());
    return;
    Object localObject = a.h();
    if (q != null) {
      q.b();
    }
    ehd localehd = ehd.a(c.a());
    q = new bet((String)localObject, this);
    localehd.a(q);
  }
  
  public void a(bet parambet)
  {
    q = null;
  }
  
  public void a(cgn paramcgn)
  {
    super.a(paramcgn);
    b.a(p);
    q();
  }
  
  public void a(String paramString1, String paramString2, bet parambet, String paramString3, bfd parambfd)
  {
    q = null;
    if (a.b().equals(paramString1)) {
      b(paramString3);
    }
    if (!TextUtils.isEmpty(paramString2)) {
      c(paramString2);
    }
  }
  
  void b()
  {
    if (q != null)
    {
      q.b();
      q = null;
    }
    b.b(p);
    super.b();
  }
  
  protected void d(int paramInt)
  {
    int i = g;
    super.d(paramInt);
    if ((i != 1) && (paramInt == 1)) {
      q();
    }
    if ((i != 3) && (paramInt == 3))
    {
      cgw localcgw = b.r();
      if (localcgw != null) {
        localcgw.w();
      }
    }
  }
  
  Bitmap j()
  {
    if ((m == null) && (a.l()))
    {
      hbs.a("Expected condition to be true", a.l());
      cjh localcjh = o();
      if (localcjh != null) {}
      for (int i = localcjh.d(); i == 1; i = 0) {
        return bfq.j();
      }
    }
    return super.j();
  }
  
  protected String l()
  {
    return a.a();
  }
  
  public cjh o()
  {
    if ((r == null) && (a != null))
    {
      Object localObject = hgd.a().b();
      if (localObject != null)
      {
        localObject = ((hcs)localObject).l();
        if (localObject != null)
        {
          localObject = ((Collection)localObject).iterator();
          while (((Iterator)localObject).hasNext())
          {
            hil localhil = (hil)((Iterator)localObject).next();
            if (localhil.a().equals(a.a())) {
              if ((localhil.p() instanceof cjh)) {
                r = ((cjh)localhil.p());
              }
            }
          }
        }
      }
    }
    return r;
  }
  
  void p()
  {
    i.setFocusable(false);
    i.setClickable(false);
    if (h()) {
      e.f();
    }
    e.a(this);
  }
}

/* Location:
 * Qualified Name:     cjk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */