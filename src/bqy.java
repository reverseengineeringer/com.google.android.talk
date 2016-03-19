import android.content.Context;
import android.database.Cursor;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.Toast;
import com.google.android.apps.hangouts.hangout.StressMode;
import java.util.Iterator;
import java.util.List;

final class bqy
  implements ccb, ioo, iow, ioz
{
  private Context a;
  private bfd b;
  private int c = 1;
  private int d = 2;
  private long e = -1L;
  private long f = -1L;
  private bqz g;
  private final bvg h;
  
  bqy(Context paramContext, bfd parambfd, iog paramiog)
  {
    a = paramContext;
    b = parambfd;
    paramiog.a(this);
    g = ((bqz)ilh.a(paramContext, bqz.class));
    h = ((bvg)ilh.a(paramContext, bvg.class));
  }
  
  private void a(Context paramContext, int paramInt, String paramString)
  {
    if (d == 2)
    {
      if (b.l()) {}
      for (paramInt = StressMode.iC;; paramInt = StressMode.iB)
      {
        Toast.makeText(paramContext, paramInt, 0).show();
        return;
      }
    }
    h.a(b.g(), paramString, paramInt);
  }
  
  void a(long paramLong)
  {
    if (e == -1L) {
      e = paramLong;
    }
  }
  
  void a(Cursor paramCursor)
  {
    c = paramCursor.getInt(7);
    d = paramCursor.getInt(8);
  }
  
  public void a(Bundle paramBundle)
  {
    if (paramBundle != null)
    {
      e = paramBundle.getLong("key_last_compose_time_ms", -1L);
      f = paramBundle.getLong("key_otr_on_timestamp_ms", -1L);
    }
  }
  
  void a(Menu paramMenu, boolean paramBoolean1, boolean paramBoolean2)
  {
    boolean bool3 = true;
    MenuItem localMenuItem = paramMenu.findItem(aen.fw);
    paramMenu = paramMenu.findItem(aen.fx);
    Object localObject = a;
    int i = b.g();
    localObject = ilh.c((Context)localObject, bhj.class).iterator();
    boolean bool1;
    label106:
    label120:
    boolean bool2;
    while (((Iterator)localObject).hasNext()) {
      if (((bhj)((Iterator)localObject).next()).a(i))
      {
        i = 0;
        if (i == 0) {
          break label208;
        }
        if ((c != 2) || (paramBoolean1)) {
          break label186;
        }
        bool1 = true;
        if ((c != 1) || (paramBoolean1)) {
          break label192;
        }
        paramBoolean1 = true;
        if ((!bool1) || (paramBoolean2)) {
          break label197;
        }
        bool2 = true;
        label132:
        localMenuItem.setVisible(bool2);
        localMenuItem.setEnabled(bool1);
        if ((!paramBoolean1) || (paramBoolean2)) {
          break label203;
        }
      }
    }
    label186:
    label192:
    label197:
    label203:
    for (paramBoolean2 = bool3;; paramBoolean2 = false)
    {
      paramMenu.setVisible(paramBoolean2);
      paramMenu.setEnabled(paramBoolean1);
      return;
      i = 1;
      break;
      bool1 = false;
      break label106;
      paramBoolean1 = false;
      break label120;
      bool2 = false;
      break label132;
    }
    label208:
    localMenuItem.setVisible(false);
    paramMenu.setVisible(false);
  }
  
  public boolean a()
  {
    return c == 2;
  }
  
  boolean a(Context paramContext, MenuItem paramMenuItem, String paramString)
  {
    if (paramMenuItem.getItemId() == aen.fw)
    {
      a(paramContext, 1, paramString);
      return true;
    }
    if (paramMenuItem.getItemId() == aen.fx)
    {
      a(paramContext, 2, paramString);
      return true;
    }
    return false;
  }
  
  boolean a(bg parambg)
  {
    if ((e != -1L) && (f != -1L) && (f > e))
    {
      bqx.a(a, parambg);
      f = -1L;
      e = -1L;
      return false;
    }
    e = -1L;
    f = -1L;
    return true;
  }
  
  void b(long paramLong)
  {
    if (paramLong > f) {
      f = paramLong;
    }
  }
  
  public void b(Bundle paramBundle)
  {
    paramBundle.putLong("key_last_compose_time_ms", e);
    paramBundle.putLong("key_otr_on_timestamp_ms", f);
  }
  
  public boolean b()
  {
    return b.m();
  }
  
  public boolean c()
  {
    return g.u();
  }
  
  int d()
  {
    return c;
  }
}

/* Location:
 * Qualified Name:     bqy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */