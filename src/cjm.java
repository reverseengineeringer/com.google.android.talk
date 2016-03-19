import android.content.res.Configuration;
import android.content.res.Resources;
import android.text.TextUtils;
import com.google.android.apps.hangouts.hangout.FocusedParticipantView;
import com.google.android.apps.hangouts.hangout.ParticipantTrayView;
import com.google.android.apps.hangouts.hangout.StressMode;

public final class cjm
  extends ciu
  implements hjl
{
  private final ciy p = new ciy(this);
  private boolean q;
  
  public cjm(chu paramchu, hkx paramhkx, ParticipantTrayView paramParticipantTrayView, FocusedParticipantView paramFocusedParticipantView)
  {
    super(paramchu, paramhkx, paramParticipantTrayView, paramFocusedParticipantView);
    a(getResources().getString(StressMode.eC));
    if (getResourcesgetConfigurationorientation == 1) {}
    for (;;)
    {
      q = bool;
      return;
      bool = false;
    }
  }
  
  public void a(cgn paramcgn)
  {
    super.a(paramcgn);
    b.a(p);
    paramcgn = b.k();
    if (paramcgn != null) {
      paramcgn.a(this);
    }
    if ((paramcgn != null) && (paramcgn.g())) {}
    for (int i = 3;; i = 1)
    {
      d(i);
      return;
    }
  }
  
  public void b()
  {
    b.b(p);
    super.b();
  }
  
  protected int c(int paramInt)
  {
    Object localObject = b.k();
    float f1;
    float f2;
    float f3;
    if (localObject != null)
    {
      f1 = ((hjk)localObject).i();
      f2 = ((hjk)localObject).j();
      f3 = paramInt;
    }
    for (int i = (int)(f1 / f2 * f3);; i = 0)
    {
      int j = i;
      if (i == 0)
      {
        localObject = new hlp(16, 10);
        if (!q) {
          break label111;
        }
        localObject = new hlp(b, a);
      }
      label111:
      for (;;)
      {
        j = (int)(a / b * paramInt);
        return j;
      }
    }
  }
  
  protected void d(int paramInt)
  {
    super.d(paramInt);
    if ((m == null) && (paramInt == 1))
    {
      String str = c.a().q();
      if (!TextUtils.isEmpty(str)) {
        c(str);
      }
    }
  }
  
  protected String l()
  {
    return "localParticipant";
  }
  
  public void o()
  {
    ezi.d("Babel_calls", "Camera encountered an error", new Object[0]);
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    if (orientation == 1) {}
    for (boolean bool1 = true;; bool1 = false)
    {
      boolean bool2 = q;
      q = bool1;
      super.onConfigurationChanged(paramConfiguration);
      return;
    }
  }
  
  public void p()
  {
    f();
  }
  
  public void r_()
  {
    hjk localhjk = b.k();
    if (localhjk != null) {
      localhjk.a(null);
    }
    b.b(p);
  }
}

/* Location:
 * Qualified Name:     cjm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */