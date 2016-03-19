import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TabHost;
import android.widget.TabHost.OnTabChangeListener;
import android.widget.TabHost.TabSpec;
import android.widget.TabWidget;
import java.util.ArrayList;

public class bu
  extends TabHost
  implements TabHost.OnTabChangeListener
{
  private final ArrayList<by> a = new ArrayList();
  private FrameLayout b;
  private Context c;
  private bg d;
  private int e;
  private TabHost.OnTabChangeListener f;
  private by g;
  private boolean h;
  
  public bu(Context paramContext)
  {
    super(paramContext, null);
    a(paramContext, null);
  }
  
  public bu(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramContext, paramAttributeSet);
  }
  
  private bz a(String paramString, bz parambz)
  {
    Object localObject = null;
    int i = 0;
    if (i < a.size())
    {
      by localby = (by)a.get(i);
      if (!a.equals(paramString)) {
        break label213;
      }
      localObject = localby;
    }
    label200:
    label213:
    for (;;)
    {
      i += 1;
      break;
      if (localObject == null) {
        throw new IllegalStateException("No tab known for tag " + paramString);
      }
      paramString = parambz;
      if (g != localObject)
      {
        paramString = parambz;
        if (parambz == null) {
          paramString = d.a();
        }
        if ((g != null) && (g.d != null)) {
          paramString.d(g.d);
        }
        if (localObject != null)
        {
          if (d != null) {
            break label200;
          }
          d = av.instantiate(c, b.getName(), c);
          paramString.a(e, d, a);
        }
      }
      for (;;)
      {
        g = ((by)localObject);
        return paramString;
        paramString.e(d);
      }
    }
  }
  
  private void a(Context paramContext, AttributeSet paramAttributeSet)
  {
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, new int[] { 16842995 }, 0, 0);
    e = paramContext.getResourceId(0, 0);
    paramContext.recycle();
    super.setOnTabChangedListener(this);
  }
  
  public void a(Context paramContext, bg parambg, int paramInt)
  {
    if (findViewById(16908307) == null)
    {
      LinearLayout localLinearLayout = new LinearLayout(paramContext);
      localLinearLayout.setOrientation(1);
      addView(localLinearLayout, new FrameLayout.LayoutParams(-1, -1));
      Object localObject = new TabWidget(paramContext);
      ((TabWidget)localObject).setId(16908307);
      ((TabWidget)localObject).setOrientation(0);
      localLinearLayout.addView((View)localObject, new LinearLayout.LayoutParams(-1, -2, 0.0F));
      localObject = new FrameLayout(paramContext);
      ((FrameLayout)localObject).setId(16908305);
      localLinearLayout.addView((View)localObject, new LinearLayout.LayoutParams(0, 0, 0.0F));
      localObject = new FrameLayout(paramContext);
      b = ((FrameLayout)localObject);
      b.setId(e);
      localLinearLayout.addView((View)localObject, new LinearLayout.LayoutParams(-1, 0, 1.0F));
    }
    super.setup();
    c = paramContext;
    d = parambg;
    e = paramInt;
    if (b == null)
    {
      b = ((FrameLayout)findViewById(e));
      if (b == null) {
        throw new IllegalStateException("No tab content FrameLayout found for id " + e);
      }
    }
    b.setId(paramInt);
    if (getId() == -1) {
      setId(16908306);
    }
  }
  
  public void a()
  {
    ;
    localTabSpec.setContent(new bv(c));
    Object localObject2 = localTabSpec.getTag();
    Object localObject1 = new by((String)localObject2, (Class)localObject1, null);
    if (h)
    {
      d = d.a((String)localObject2);
      if ((d != null) && (!d.isDetached()))
      {
        localObject2 = d.a();
        ((bz)localObject2).d(d);
        ((bz)localObject2).b();
      }
    }
    a.add(localObject1);
    addTab(localTabSpec);
  }
  
  public void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    String str = getCurrentTabTag();
    Object localObject1 = null;
    int i = 0;
    if (i < a.size())
    {
      by localby = (by)a.get(i);
      d = d.a(a);
      Object localObject2 = localObject1;
      if (d != null)
      {
        localObject2 = localObject1;
        if (!d.isDetached())
        {
          if (!a.equals(str)) {
            break label108;
          }
          g = localby;
          localObject2 = localObject1;
        }
      }
      for (;;)
      {
        i += 1;
        localObject1 = localObject2;
        break;
        label108:
        localObject2 = localObject1;
        if (localObject1 == null) {
          localObject2 = d.a();
        }
        ((bz)localObject2).d(d);
      }
    }
    h = true;
    localObject1 = a(str, (bz)localObject1);
    if (localObject1 != null)
    {
      ((bz)localObject1).b();
      d.b();
    }
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    h = false;
  }
  
  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    paramParcelable = (bw)paramParcelable;
    super.onRestoreInstanceState(paramParcelable.getSuperState());
    setCurrentTabByTag(a);
  }
  
  public Parcelable onSaveInstanceState()
  {
    bw localbw = new bw(super.onSaveInstanceState());
    a = getCurrentTabTag();
    return localbw;
  }
  
  public void onTabChanged(String paramString)
  {
    if (h)
    {
      bz localbz = a(paramString, null);
      if (localbz != null) {
        localbz.b();
      }
    }
    if (f != null) {
      f.onTabChanged(paramString);
    }
  }
  
  public void setOnTabChangedListener(TabHost.OnTabChangeListener paramOnTabChangeListener)
  {
    f = paramOnTabChangeListener;
  }
  
  @Deprecated
  public void setup()
  {
    throw new IllegalStateException("Must call setup() that takes a Context and FragmentManager");
  }
}

/* Location:
 * Qualified Name:     bu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */