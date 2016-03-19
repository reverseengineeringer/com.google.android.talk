import android.content.Context;
import android.media.AudioManager;
import android.os.Bundle;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

public final class clc
  implements cla, ilu, iov, ioz
{
  private final List<Runnable> a = new CopyOnWriteArrayList();
  private final Context b;
  private cmu c;
  
  clc(Context paramContext, iog paramiog)
  {
    b = paramContext;
    paramiog.a(this);
  }
  
  public void X_()
  {
    if (a()) {
      c.a(aal.c(b));
    }
  }
  
  public cla a(ilh paramilh)
  {
    paramilh.a(cla.class, this);
    return this;
  }
  
  public void a(Context paramContext, ilh paramilh, Bundle paramBundle)
  {
    c = ((cmu)paramilh.a(cmu.class));
  }
  
  public void a(Runnable paramRunnable)
  {
    
    if (a())
    {
      a.add(paramRunnable);
      return;
    }
    paramRunnable.run();
  }
  
  public boolean a()
  {
    return ((AudioManager)b.getSystemService("audio")).isMicrophoneMute();
  }
  
  public void c()
  {
    aal.w();
    ((AudioManager)b.getSystemService("audio")).setMicrophoneMute(false);
    aal.c(2609);
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext()) {
      ((Runnable)localIterator.next()).run();
    }
    a.clear();
  }
}

/* Location:
 * Qualified Name:     clc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */