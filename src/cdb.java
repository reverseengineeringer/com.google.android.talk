import android.app.Activity;
import android.database.Cursor;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Debug;
import android.os.Debug.MemoryInfo;
import android.text.TextUtils;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.AdapterView.AdapterContextMenuInfo;
import android.widget.ListView;
import android.widget.TextView;
import com.google.android.apps.hangouts.hangout.StressMode;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;

public class cdb
  extends bxv
  implements byv, ck<Cursor>
{
  private byu aj;
  private byu ak;
  private ViewGroup al;
  private boolean am;
  private Cursor an;
  private final cdd ao = new cdd(this);
  private hpu i;
  
  private void s()
  {
    if (!am) {
      return;
    }
    if (ak != null)
    {
      ak.cancel(true);
      ak = null;
    }
    if (!isAdded())
    {
      am = true;
      return;
    }
    fe localfe = getLoaderManager().b(1, null, this);
    if (localfe != null) {
      localfe.u();
    }
    am = false;
  }
  
  protected void a(int paramInt, bzh parambzh)
  {
    super.a(paramInt, parambzh);
    if (e != null)
    {
      if (e.getCount() > 0) {
        al.setVisibility(0);
      }
    }
    else {
      return;
    }
    al.setVisibility(4);
  }
  
  public void a(Cursor paramCursor)
  {
    if (!paramCursor.equals(an))
    {
      an = paramCursor;
      if (e != null)
      {
        paramCursor = new biq(paramCursor);
        if (aj != null) {
          paramCursor.a(aj);
        }
        a(0, paramCursor);
      }
    }
  }
  
  public void a(eim parameim, byu parambyu)
  {
    if (parambyu != ak)
    {
      ezi.e("Babel", "Unexpected contact lookup load state.", new Object[0]);
      hbs.a("Should not have two new items.");
    }
    do
    {
      do
      {
        return;
        ak = null;
      } while ((parameim != c) || (e == null));
      if (aj != null) {
        aj.a();
      }
      aj = parambyu;
      e.a(aj);
    } while (b() == null);
    b().invalidateViews();
  }
  
  public void a(eim parameim, fkg paramfkg, gpx paramgpx)
  {
    super.a(parameim, paramfkg, paramgpx);
    if ((parameim == c) && (e != null))
    {
      paramgpx = new Debug.MemoryInfo();
      Debug.getMemoryInfo(paramgpx);
      if ((paramfkg != null) && (paramgpx.getTotalPss() - paramfkg.a() / 10 < 4096))
      {
        ezi.d("Babel", "Lots of contacts, or low memory, or both, clearing cache.", new Object[0]);
        if (aj != null)
        {
          aj.a();
          aj = null;
          e.a(null);
        }
      }
      if (ak != null) {
        ak.cancel(true);
      }
      ak = new byu(paramfkg, parameim, this);
      ak.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
    }
  }
  
  protected abl[] a()
  {
    return new abl[] { new abl() };
  }
  
  public boolean f()
  {
    if (!super.f()) {
      return false;
    }
    am = true;
    s();
    return true;
  }
  
  protected boolean isEmpty()
  {
    return false;
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    s();
  }
  
  protected void onAttachBinder(Bundle paramBundle)
  {
    super.onAttachBinder(paramBundle);
    i = ((hpu)binder.a(hpu.class));
  }
  
  public boolean onContextItemSelected(MenuItem paramMenuItem)
  {
    ContextMenu.ContextMenuInfo localContextMenuInfo = paramMenuItem.getMenuInfo();
    int j = paramMenuItem.getItemId();
    if ((localContextMenuInfo instanceof AdapterView.AdapterContextMenuInfo))
    {
      paramMenuItem = (fbd)targetView;
      if (j == 1)
      {
        paramMenuItem = paramMenuItem.d();
        if (paramMenuItem != null) {
          RealTimeChatService.a(q(), new String[] { paramMenuItem });
        }
        return true;
      }
      if (j == 2)
      {
        startActivityForResult(aal.p(paramMenuItem.b().b()), 102);
        return true;
      }
    }
    return false;
  }
  
  public void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    super.onCreateContextMenu(paramContextMenu, paramView, paramContextMenuInfo);
    if (paramView == b())
    {
      if ((paramContextMenuInfo instanceof AdapterView.AdapterContextMenuInfo))
      {
        paramView = (fbd)targetView;
        if ((!paramView.i()) && (paramView.b() != null) && (!TextUtils.isEmpty(paramView.b().b()))) {
          paramContextMenu.add(0, 2, 0, StressMode.o);
        }
        paramContextMenu.add(0, 1, 0, StressMode.fw);
      }
      paramContextMenu.setHeaderTitle(StressMode.fE);
    }
  }
  
  public fe<Cursor> onCreateLoader(int paramInt, Bundle paramBundle)
  {
    paramBundle = q();
    if ((paramInt == 1) && (paramBundle != null)) {
      return aal.a(q(), false, 0);
    }
    return null;
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle, aal.gD);
    al = ((ViewGroup)paramLayoutInflater.findViewById(aen.dO));
    if (f != null) {
      f.getViewTreeObserver().addOnGlobalLayoutListener(ao);
    }
    ((TextView)paramLayoutInflater.findViewById(aen.aY)).setOnClickListener(new cdc(this));
    registerForContextMenu(b());
    return paramLayoutInflater;
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    if (ak != null)
    {
      ak.cancel(true);
      ak = null;
    }
    if (aj != null)
    {
      aj.a();
      aj = null;
    }
  }
  
  public void onDestroyView()
  {
    super.onDestroyView();
    aen.a(f, ao);
  }
  
  public void onLoaderReset(fe<Cursor> paramfe) {}
}

/* Location:
 * Qualified Name:     cdb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */