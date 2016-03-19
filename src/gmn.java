import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.support.v4.widget.ContentLoadingProgressBar;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class gmn
  extends BaseAdapter
  implements gmb
{
  private static final int a = aen.jV;
  private gme b;
  private String c;
  private gmr d;
  private gmp e;
  private int f;
  private LayoutInflater g;
  private int h;
  private Context i;
  private ArrayList<gpt> j = new ArrayList();
  private boolean k = true;
  private boolean l = true;
  private boolean m;
  private gma n;
  private boolean o = false;
  
  public gmn(Context paramContext, int paramInt, gmr paramgmr, gmp paramgmp)
  {
    i = paramContext;
    if (paramInt != -1)
    {
      f = paramInt;
      g = LayoutInflater.from(paramContext);
      if (paramgmr == null) {
        break label138;
      }
    }
    for (;;)
    {
      d = paramgmr;
      e = paramgmp;
      paramInt = aal.sF;
      paramgmr = paramContext.obtainStyledAttributes(TypedValuedata, new int[] { paramInt });
      h = paramgmr.getColor(0, paramContext.getResources().getColor(aal.sG));
      paramgmr.recycle();
      n = new gma(paramContext, this);
      return;
      paramInt = a;
      break;
      label138:
      paramgmr = new gmo(this);
    }
  }
  
  public static List<gpt> a(List<gpt> paramList, gpt paramgpt1, gpt paramgpt2)
  {
    String str = null;
    if (aal.a(paramgpt2)) {}
    for (paramgpt2 = paramgpt2.a();; paramgpt2 = null)
    {
      if (aal.a(paramgpt1)) {
        str = paramgpt1.a();
      }
      int i4 = -1;
      int i2 = -1;
      int i1 = 0;
      while (i1 < paramList.size())
      {
        gpt localgpt = (gpt)paramList.get(i1);
        int i6 = i4;
        int i5 = i2;
        if (aal.a(localgpt))
        {
          int i3 = i2;
          if (i2 < 0)
          {
            i3 = i2;
            if (localgpt.a().equals(paramgpt2)) {
              i3 = i1;
            }
          }
          i6 = i4;
          i5 = i3;
          if (i4 < 0)
          {
            i6 = i4;
            i5 = i3;
            if (localgpt.a().equals(str))
            {
              i6 = i1;
              i5 = i3;
            }
          }
        }
        i1 += 1;
        i4 = i6;
        i2 = i5;
      }
      if (i2 >= 0) {
        paramList.remove(i2);
      }
      if ((i4 < 0) && (str != null) && (!str.equals(paramgpt2))) {
        paramList.add(paramgpt1);
      }
      return paramList;
    }
  }
  
  private boolean b(int paramInt)
  {
    if (k) {}
    for (int i1 = -2; (l) && (paramInt == i1 + getCount()); i1 = -1) {
      return true;
    }
    return false;
  }
  
  private boolean c(int paramInt)
  {
    return (k) && (paramInt == getCount() - 1);
  }
  
  public gpt a(int paramInt)
  {
    if ((b(paramInt)) || (c(paramInt))) {}
    while ((j == null) || (j.size() <= 0)) {
      return null;
    }
    return (gpt)j.get(paramInt);
  }
  
  public void a()
  {
    if (k != true)
    {
      k = true;
      notifyDataSetChanged();
    }
  }
  
  public void a(gme paramgme)
  {
    b = paramgme;
  }
  
  public void a(ArrayList<gpt> paramArrayList)
  {
    o = false;
    j = paramArrayList;
    notifyDataSetChanged();
  }
  
  public void a(List<gpt> paramList)
  {
    if ((m) || ((paramList != null) && (paramList.size() <= 1)))
    {
      if (j == null) {
        j = new ArrayList();
      }
      j.clear();
      if (paramList != null)
      {
        paramList = paramList.iterator();
        while (paramList.hasNext())
        {
          gpt localgpt = (gpt)paramList.next();
          j.add(localgpt);
        }
      }
      notifyDataSetChanged();
      return;
    }
    o = true;
    n.a(paramList);
    notifyDataSetChanged();
  }
  
  public void b()
  {
    m = true;
  }
  
  public int getCount()
  {
    int i2 = 1;
    int i3 = 0;
    if (o) {
      return 1;
    }
    int i1;
    if (k)
    {
      i1 = 1;
      if (!l) {
        break label55;
      }
    }
    for (;;)
    {
      if (j != null) {
        i3 = j.size();
      }
      return i1 + i2 + i3;
      i1 = 0;
      break;
      label55:
      i2 = 0;
    }
  }
  
  public long getItemId(int paramInt)
  {
    if (c(paramInt)) {
      return -2L;
    }
    if (b(paramInt)) {
      return -1L;
    }
    if ((j != null) && (j.size() > 0))
    {
      gpt localgpt = (gpt)j.get(paramInt);
      if (aal.a(localgpt)) {
        return localgpt.a().hashCode();
      }
      return -1L;
    }
    return -1L;
  }
  
  public int getItemViewType(int paramInt)
  {
    if (o) {
      return 3;
    }
    if (c(paramInt)) {
      return 2;
    }
    if (b(paramInt)) {
      return 1;
    }
    return 0;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (getItemViewType(paramInt) == 3)
    {
      localObject = paramView;
      if (paramView == null)
      {
        localObject = g.inflate(aen.jY, null);
        ((ContentLoadingProgressBar)localObject).a();
      }
    }
    do
    {
      do
      {
        return (View)localObject;
        if (getItemViewType(paramInt) != 2) {
          break;
        }
        localObject = paramView;
      } while (paramView != null);
      return g.inflate(aen.jX, null);
      if (getItemViewType(paramInt) != 1) {
        break;
      }
      localObject = paramView;
    } while (paramView != null);
    return g.inflate(aen.jW, null);
    paramViewGroup = paramView;
    if (paramView == null) {
      paramViewGroup = g.inflate(f, null);
    }
    gpt localgpt = a(paramInt);
    if ((c != null) && (aal.a(localgpt))) {
      c.equals(localgpt.a());
    }
    Object localObject = b;
    paramView = d;
    gmp localgmp = e;
    paramInt = h;
    if (paramViewGroup.getTag() == null)
    {
      paramView = paramView.a(paramViewGroup);
      paramViewGroup.setTag(paramView);
      label194:
      if ((e != null) && (localObject != null) && (aal.a(localgpt)))
      {
        e.setImageDrawable(null);
        if (TextUtils.isEmpty(localgpt.T_())) {
          break label364;
        }
        ((gme)localObject).a(e);
        ((gme)localObject).a(e, localgpt, 1);
      }
    }
    for (;;)
    {
      if ((d != null) && (aal.a(localgpt)))
      {
        d.setTextColor(paramInt);
        d.setVisibility(0);
        d.setText(localgpt.a());
        d.setContentDescription(i.getResources().getString(fii.s, new Object[] { localgpt.a() }));
      }
      localObject = paramViewGroup;
      if (localgmp == null) {
        break;
      }
      localgmp.a(paramView, localgpt);
      return paramViewGroup;
      paramView = (gmq)paramViewGroup.getTag();
      break label194;
      label364:
      ((gme)localObject).a(e);
      e.setImageBitmap(gme.a(paramViewGroup.getContext()));
    }
  }
  
  public int getViewTypeCount()
  {
    return 4;
  }
  
  public boolean isEnabled(int paramInt)
  {
    return !o;
  }
}

/* Location:
 * Qualified Name:     gmn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */