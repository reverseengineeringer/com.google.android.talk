import android.os.Bundle;
import com.google.android.apps.hangouts.hangout.StressMode;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;
import com.google.android.libraries.social.settings.PreferenceScreen;

public final class elc
  extends img
  implements ija
{
  hpu a;
  elm b;
  bfd c;
  bym d;
  ike e;
  ike f;
  private elf g;
  
  public elc()
  {
    new iiz(this, lifecycle);
  }
  
  public void a()
  {
    c = dvd.e(a.a());
    Object localObject = ((ika)ilh.a(context, ika.class)).b();
    int i = a.a();
    e = new ike(context, (byte)0);
    e.g(StressMode.fc);
    e.h(StressMode.fb);
    e.a(b.b(i));
    ((PreferenceScreen)localObject).c(e);
    f = new ike(context, (byte)0);
    f.g(StressMode.iW);
    f.h(StressMode.iX);
    f.a(b.c(i));
    ((PreferenceScreen)localObject).c(f);
    localObject = new eld(this);
    e.a((ijg)localObject);
    f.a((ijg)localObject);
  }
  
  protected void onAttachBinder(Bundle paramBundle)
  {
    super.onAttachBinder(paramBundle);
    a = ((hpu)binder.a(hpu.class));
    b = ((elm)binder.a(elm.class));
  }
  
  public void onStart()
  {
    super.onStart();
    g = new elf(this);
    RealTimeChatService.a(g);
  }
  
  public void onStop()
  {
    super.onStop();
    RealTimeChatService.b(g);
    g = null;
  }
}

/* Location:
 * Qualified Name:     elc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */