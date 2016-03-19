import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class buh
  extends img
{
  static final ezv a = ezv.a("Babel_Stickers");
  static int b = 0;
  GridView c;
  String d;
  hpu e;
  ceh f;
  cei g;
  
  private void a()
  {
    if ((f.a()) && (c != null))
    {
      int i = 0;
      while (i < c.getChildCount())
      {
        View localView = c.getChildAt(i);
        f.a(localView);
        i += 1;
      }
    }
  }
  
  void a(GridView paramGridView, ArrayList<bul> paramArrayList)
  {
    if ((getActivity() == null) || (paramGridView == null)) {
      return;
    }
    if ((!f.a()) && (paramGridView.getAdapter() != null)) {
      ((bum)paramGridView.getAdapter()).a();
    }
    if (paramArrayList != null)
    {
      paramGridView.setAdapter(new bum(this, paramArrayList));
      return;
    }
    paramGridView.setAdapter(null);
  }
  
  void a(String paramString, boolean paramBoolean)
  {
    List localList = getTargetFragmenti;
    int i;
    if ((!localList.isEmpty()) && (paramString != null))
    {
      Iterator localIterator1 = localList.iterator();
      i = -1;
      dro localdro;
      do
      {
        j = i;
        if (!localIterator1.hasNext()) {
          break;
        }
        localdro = (dro)localIterator1.next();
      } while ("Recent".equals(a));
      Iterator localIterator2 = e.iterator();
      for (;;)
      {
        if (localIterator2.hasNext())
        {
          drp localdrp = (drp)localIterator2.next();
          if (paramString.equals(a))
          {
            i = localList.size();
            j = localList.indexOf(localdro);
            i = e.size() - e.indexOf(localdrp) + (i - j) * 1000;
            label173:
            if (i == -1) {
              break;
            }
          }
        }
      }
    }
    for (int j = i;; j = -1)
    {
      if (j == -1)
      {
        paramString = String.valueOf(paramString);
        if (paramString.length() != 0)
        {
          paramString = "Photo not found for log: ".concat(paramString);
          ezi.e("Babel_Stickers", paramString, new Object[0]);
        }
      }
      do
      {
        return;
        paramString = new String("Photo not found for log: ");
        break;
        aal.a(dvd.e(((hpu)binder.a(hpu.class)).a()), 1900, j);
      } while (!paramBoolean);
      aal.a(dvd.e(((hpu)binder.a(hpu.class)).a()), 2240, j);
      return;
      break;
      break label173;
    }
  }
  
  protected void onAttachBinder(Bundle paramBundle)
  {
    super.onAttachBinder(paramBundle);
    e = ((hpu)binder.a(hpu.class));
    f = ((ceh)binder.a(ceh.class));
    g = ((cei)binder.a(cei.class));
  }
  
  public void onCreate(Bundle paramBundle)
  {
    a.b("onCreate");
    super.onCreate(paramBundle);
    d = getArguments().getString("album_id");
    a.c("onCreate");
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    c = ((GridView)paramLayoutInflater.inflate(aal.lb, paramViewGroup, false));
    a(c, null);
    c.setOnItemClickListener(new bui(this));
    return c;
  }
  
  public void onDestroy()
  {
    a();
    super.onDestroy();
  }
  
  public void onDestroyView()
  {
    if ((c != null) && (c.getAdapter() != null))
    {
      if (!f.a()) {
        break label60;
      }
      a();
    }
    for (;;)
    {
      ((bum)c.getAdapter()).clear();
      a(c, null);
      super.onDestroyView();
      return;
      label60:
      ezi.c("Babel_Stickers", "Clearing cache.", new Object[0]);
      ((bum)c.getAdapter()).a();
    }
  }
  
  public void onStart()
  {
    if (!getTargetFragmenti.isEmpty()) {
      new buk(this).execute(new Void[0]);
    }
    for (;;)
    {
      super.onStart();
      return;
      ezi.d("Babel_Stickers", "No sticker cache at start.", new Object[0]);
    }
  }
}

/* Location:
 * Qualified Name:     buh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */