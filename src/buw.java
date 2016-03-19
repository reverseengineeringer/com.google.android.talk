import android.content.res.Resources;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.TextView;
import com.google.android.apps.hangouts.conversation.v2.stickerpicker.impl.SlidingTabLayout;
import com.google.android.apps.hangouts.hangout.StressMode;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

final class buw
  extends br
{
  int a = 0;
  private ArrayList<buz> c = new ArrayList();
  private av d;
  
  public buw(but parambut, bg parambg, av paramav)
  {
    super(parambg);
    d = paramav;
    parambg = parambut.c();
    int i = 0;
    while (i < i.size())
    {
      paramav = (dro)i.get(i);
      buz localbuz = new buz(this);
      a = i;
      e = c.b;
      d = c.a;
      f = c.c;
      c = a;
      b = b;
      c.add(localbuz);
      if (c.equals(parambg)) {
        a = i;
      }
      i += 1;
    }
  }
  
  public av a(int paramInt)
  {
    String str = b.i.get(paramInt)).a;
    buh localbuh = new buh();
    Bundle localBundle = new Bundle();
    localBundle.putString("album_id", str);
    localbuh.setArguments(localBundle);
    return localbuh;
  }
  
  public Object a(ViewGroup paramViewGroup, int paramInt)
  {
    paramViewGroup = (av)super.a(paramViewGroup, paramInt);
    paramViewGroup.setTargetFragment(d, 5);
    return paramViewGroup;
  }
  
  void a(buz parambuz)
  {
    if (!b.isAdded()) {}
    View localView;
    do
    {
      do
      {
        return;
      } while (b.b == null);
      localView = b.b.a(a);
    } while (localView == null);
    Object localObject1 = b.getResources();
    Object localObject2 = c;
    if (bus.a.containsKey(localObject2))
    {
      localObject1 = ((Resources)localObject1).getString(aal.a((Integer)bus.a.get(localObject2), 0));
      localView.setContentDescription((CharSequence)localObject1);
      localObject2 = (ImageView)localView.findViewById(aen.hP);
      if (!b.g.a()) {
        break label248;
      }
      if (!"Recent".equals(c)) {
        break label202;
      }
      ((ImageView)localObject2).setImageResource(aal.kW);
      ((ImageView)localObject2).setScaleType(ImageView.ScaleType.CENTER);
    }
    for (;;)
    {
      ((ImageView)localObject2).setAlpha(0.0F);
      ((ImageView)localObject2).animate().alpha(1.0F).setDuration(250L).start();
      ((TextView)localView.findViewById(aen.hQ)).setText(b);
      return;
      localObject1 = ((Resources)localObject1).getString(StressMode.qd);
      break;
      label202:
      b.g.a(e, (ImageView)localObject2, b.h.b(b.getResources().getInteger(aal.kX)));
    }
    label248:
    if ((g != null) && (g.b != null))
    {
      ((ImageView)localObject2).setImageBitmap(g.b.e());
      ((ImageView)localObject2).setScaleType(ImageView.ScaleType.FIT_CENTER);
    }
    for (;;)
    {
      ((ImageView)localObject2).setAlpha(0.0F);
      ((ImageView)localObject2).animate().alpha(1.0F).setDuration(250L).start();
      break;
      if ((g != null) && (g.a != null))
      {
        ((ImageView)localObject2).setImageDrawable(g.a);
        ((ImageView)localObject2).setScaleType(ImageView.ScaleType.FIT_CENTER);
        g.a.a();
      }
      else
      {
        if (!"Recent".equals(c)) {
          break label396;
        }
        ((ImageView)localObject2).setImageResource(aal.kW);
        ((ImageView)localObject2).setScaleType(ImageView.ScaleType.CENTER);
      }
    }
    label396:
    localObject1 = String.valueOf(c);
    if (((String)localObject1).length() != 0) {}
    for (localObject1 = "No cache item set:".concat((String)localObject1);; localObject1 = new String("No cache item set:"))
    {
      hbs.a((String)localObject1);
      break;
    }
  }
  
  public int b()
  {
    return c.size();
  }
  
  public CharSequence c(int paramInt)
  {
    if (c.size() >= paramInt) {
      return c.get(paramInt)).b;
    }
    return "";
  }
  
  void e()
  {
    if (!b.g.a())
    {
      Iterator localIterator = c.iterator();
      while (localIterator.hasNext())
      {
        buz localbuz = (buz)localIterator.next();
        if (g != null)
        {
          g.a();
          g = null;
        }
      }
    }
    c = new ArrayList();
  }
  
  public void f()
  {
    Iterator localIterator = c.iterator();
    while (localIterator.hasNext())
    {
      buz localbuz = (buz)localIterator.next();
      if (b.g.a())
      {
        a(localbuz);
      }
      else if ("Recent".equals(c))
      {
        a(localbuz);
      }
      else
      {
        eyd localeyd = new eyd(e, null).a(b.getResources().getInteger(aal.kX));
        localeyd.b(d);
        if (b.f.get(d) != null)
        {
          localObject = String.valueOf(d);
          if (((String)localObject).length() == 0) {
            break label277;
          }
        }
        label277:
        for (Object localObject = "Canceling previous request for ".concat((String)localObject);; localObject = new String("Canceling previous request for "))
        {
          ezi.c("Babel_StickersPagerFrag", (String)localObject, new Object[0]);
          b.e.b((ehx)b.f.get(d));
          b.f.remove(d);
          localObject = new bit(b.d.a(), localeyd, f, new bux(this, localbuz), this);
          b.f.put(d, localObject);
          b.e.a((ehx)localObject);
          break;
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     buw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */