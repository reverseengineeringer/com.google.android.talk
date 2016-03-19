import android.content.Context;
import android.graphics.Point;
import android.graphics.drawable.Drawable;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import android.widget.VideoView;
import com.google.android.apps.hangouts.conversation.v2.gallerypicker.impl.GalleryItemView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class btb
  extends zu<aao>
  implements aho<bso>, ahp<bso>
{
  Context c;
  bpq d;
  final List<bso> e;
  int[] f;
  private final ahu<Drawable> g;
  private final View h;
  private final View i;
  private final Map<String, Integer> j = new HashMap();
  private final int k;
  
  btb(Context paramContext, List<bso> paramList, View paramView, ahw paramahw)
  {
    i = paramView.findViewById(aal.kH);
    h = paramView.findViewById(aal.kA);
    c = paramContext;
    e = paramList;
    int m = 0;
    while (m < e.size())
    {
      paramList = (bso)e.get(m);
      j.put(a, Integer.valueOf(m));
      m += 1;
    }
    paramList = paramahw.h();
    if (auk.w == null) {
      auk.w = (auk)((auk)new auk().c(paramContext.getApplicationContext())).c();
    }
    g = paramList.a(auk.w);
    a(true);
    paramList = ((WindowManager)paramContext.getSystemService("window")).getDefaultDisplay();
    paramView = new Point();
    paramList.getSize(paramView);
    k = (x * 60 / 100);
    d = ((bpq)ilh.a(paramContext, bpq.class));
    b(d.h());
  }
  
  private <T extends bkq> void b(List<T> paramList)
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      bkq localbkq = (bkq)localIterator.next();
      if (e.get(aal.a((Integer)j.get(b), 0)) != null)
      {
        if ((c == bkr.b) || (c == bkr.c)) {
          if (c != bkr.b) {
            break label173;
          }
        }
        label173:
        for (paramList = bsq.b;; paramList = bsq.a)
        {
          paramList = new bsp(b, paramList).a();
          g = true;
          localArrayList.add(paramList);
          e.get(aal.a((Integer)j.get(b), 0))).g = true;
          break;
        }
      }
    }
    a(localArrayList);
  }
  
  public int a()
  {
    return e.size();
  }
  
  public int a(int paramInt)
  {
    return 0;
  }
  
  public aao a(ViewGroup paramViewGroup, int paramInt)
  {
    paramViewGroup = LayoutInflater.from(paramViewGroup.getContext()).inflate(aen.hN, paramViewGroup, false);
    getLayoutParamswidth = k;
    if (f == null) {
      paramViewGroup.getViewTreeObserver().addOnPreDrawListener(new btc(this, paramViewGroup));
    }
    return new btg(paramViewGroup);
  }
  
  public void a(aao paramaao, int paramInt)
  {
    if (i != null) {
      i.setVisibility(8);
    }
    bso localbso = (bso)e.get(paramInt);
    paramaao = (btg)paramaao;
    boolean bool;
    if (b == bsq.a)
    {
      bool = true;
      paramaao.b(bool);
      p = localbso;
      if (b != bsq.b) {
        break label160;
      }
      ave localave = new ave(e, 0L, 0);
      g.a().a(auk.b(localave)).a(d).a(r);
    }
    for (;;)
    {
      q.a((View)q.getParent(), localbso, true);
      q.setOnClickListener(new bte(this, paramInt));
      return;
      bool = false;
      break;
      label160:
      if (b == bsq.a)
      {
        s.setVideoURI(d);
        s.setOnPreparedListener(new btd(this, paramaao));
        paramaao.a(c);
      }
    }
  }
  
  void a(List<bso> paramList)
  {
    if (paramList.isEmpty())
    {
      h.setVisibility(0);
      return;
    }
    h.setVisibility(8);
  }
  
  public long b(int paramInt)
  {
    return e.get(paramInt)).c;
  }
  
  public List<bso> c(int paramInt)
  {
    return Collections.singletonList(e.get(paramInt));
  }
  
  ksf<bso> c()
  {
    for (;;)
    {
      int m;
      try
      {
        Object localObject1 = new ksh();
        m = 0;
        if (m < e.size())
        {
          bso localbso = (bso)e.get(m);
          if (g) {
            ((ksh)localObject1).c(localbso);
          }
        }
        else
        {
          localObject1 = ((ksh)localObject1).a();
          return (ksf<bso>)localObject1;
        }
      }
      finally {}
      m += 1;
    }
  }
  
  int d()
  {
    Iterator localIterator = e.iterator();
    int m = 0;
    if (localIterator.hasNext())
    {
      if (!nextg) {
        break label45;
      }
      m += 1;
    }
    label45:
    for (;;)
    {
      break;
      return m;
    }
  }
}

/* Location:
 * Qualified Name:     btb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */