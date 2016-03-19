import android.content.Intent;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.FrameLayout;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class cbr
  extends cdu
  implements ean, gqc
{
  public static volatile boolean k = false;
  public List<djo> j;
  final ArrayList<Runnable> l = new ArrayList();
  private boolean n;
  private boolean o;
  private bfd p;
  
  public boolean a(MenuItem paramMenuItem)
  {
    return false;
  }
  
  public boolean a(bfd parambfd, ewy paramewy)
  {
    paramewy = a;
    if ((paramewy != null) && (!bff.f(this, parambfd.g())))
    {
      paramewy.setFlags(paramewy.getFlags() & 0xEFFFFFFF);
      p = parambfd;
      startActivityForResult(paramewy, 100);
      return true;
    }
    return false;
  }
  
  public void b(int paramInt)
  {
    if (k()) {
      return;
    }
    fhr.a(paramInt, this, 103, new cbs(this));
  }
  
  public void b(Runnable paramRunnable)
  {
    l.add(paramRunnable);
  }
  
  public View c(int paramInt)
  {
    FrameLayout localFrameLayout = new FrameLayout(this);
    localFrameLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
    getLayoutInflater().inflate(paramInt, localFrameLayout, true);
    return localFrameLayout;
  }
  
  public boolean k()
  {
    if (Build.VERSION.SDK_INT >= 17) {
      return super.isDestroyed();
    }
    return o;
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    String str = String.valueOf(Integer.toHexString(paramInt1));
    if (str.length() != 0)
    {
      "EsFragmentActivity.onActivityResult ".concat(str);
      super.onActivityResult(paramInt1, paramInt2, paramIntent);
    }
    switch (paramInt1)
    {
    default: 
    case 100: 
    case 101: 
      do
      {
        do
        {
          return;
          new String("EsFragmentActivity.onActivityResult ");
          break;
        } while (p == null);
        if (paramInt2 != -1) {
          ((hpz)A.a(hpz.class)).b(p.g()).b("logged_in", false).d();
        }
        for (;;)
        {
          p = null;
          return;
          new cbt(this, p.a()).execute(new Void[0]);
        }
      } while ((paramInt2 != -1) || (paramIntent == null) || (!paramIntent.getExtras().containsKey("new_conversation_created")));
      finish();
      return;
    case 102: 
      eie.b();
      return;
    }
    n = true;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (!aal.oK) {
      gqa.a(this, this);
    }
    j = A.c(djo.class);
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    Iterator localIterator = j.iterator();
    while (localIterator.hasNext()) {
      ((djo)localIterator.next()).a(getMenuInflater(), paramMenu);
    }
    return super.onCreateOptionsMenu(paramMenu);
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    o = true;
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 82) && (Build.VERSION.SDK_INT <= 16) && ("LGE".equalsIgnoreCase(Build.MANUFACTURER))) {
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  public boolean onKeyUp(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 82) && (Build.VERSION.SDK_INT <= 16) && ("LGE".equalsIgnoreCase(Build.MANUFACTURER)))
    {
      openOptionsMenu();
      return true;
    }
    return super.onKeyUp(paramInt, paramKeyEvent);
  }
  
  public void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    setIntent(paramIntent);
  }
  
  public final boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    boolean bool2 = a(paramMenuItem);
    boolean bool1 = bool2;
    if (!bool2)
    {
      Iterator localIterator = j.iterator();
      bool1 = bool2;
      while (localIterator.hasNext())
      {
        bool2 = ((djo)localIterator.next()).a(this, paramMenuItem);
        bool1 = bool2;
        if (bool2) {
          bool1 = bool2;
        }
      }
    }
    return (bool1) || (super.onOptionsItemSelected(paramMenuItem));
  }
  
  public void onPause()
  {
    super.onPause();
    hpu localhpu = (hpu)A.b(hpu.class);
    if ((localhpu != null) && (localhpu.b())) {
      eck.a(dvd.e(localhpu.a()), false);
    }
    if (exo.b)
    {
      getClass().getSimpleName();
      exo.a();
    }
    RealTimeChatService.a(null);
    ehb.c().a(true);
  }
  
  public boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    Iterator localIterator = j.iterator();
    while (localIterator.hasNext()) {
      ((djo)localIterator.next()).a(paramMenu);
    }
    return super.onPrepareOptionsMenu(paramMenu);
  }
  
  public void onResume()
  {
    super.onResume();
    if (k)
    {
      k = false;
      localObject = aal.d(null);
      ((Intent)localObject).addFlags(67141632);
      startActivity((Intent)localObject);
      finish();
    }
    while (!aal.a(true, false)) {
      return;
    }
    if (n) {
      gqa.a(this, this);
    }
    n = false;
    Object localObject = (hpu)A.b(hpu.class);
    if ((localObject != null) && (((hpu)localObject).b())) {
      eck.a(dvd.e(((hpu)localObject).a()), true);
    }
    if (exo.b) {
      exo.a(getClass().getSimpleName());
    }
    RealTimeChatService.a(this);
    dvd.c(false);
    ehb.c().a(false);
  }
  
  public void onStart()
  {
    super.onStart();
    if (k)
    {
      k = false;
      Intent localIntent = aal.d(null);
      localIntent.addFlags(67141632);
      startActivity(localIntent);
      finish();
    }
  }
  
  public void onStop()
  {
    super.onStop();
    Iterator localIterator = l.iterator();
    while (localIterator.hasNext()) {
      ((Runnable)localIterator.next()).run();
    }
    l.clear();
  }
  
  public void onWindowFocusChanged(boolean paramBoolean)
  {
    super.onWindowFocusChanged(paramBoolean);
    if (paramBoolean)
    {
      Object localObject = (hpu)A.b(hpu.class);
      if ((localObject != null) && (((hpu)localObject).b()))
      {
        int i = ((hpu)localObject).a();
        localObject = dvd.e(i);
        if ((localObject != null) && (!((eot)A.a(eot.class)).a(i))) {
          RealTimeChatService.e((bfd)localObject);
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     cbr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */