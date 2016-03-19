import android.graphics.Rect;
import android.os.Build.VERSION;
import android.view.View;

public final class my
{
  public static final nc a = new nc();
  public final Object b;
  
  static
  {
    if (Build.VERSION.SDK_INT >= 22)
    {
      a = new na((byte)0);
      return;
    }
    if (Build.VERSION.SDK_INT >= 21)
    {
      a = new na();
      return;
    }
    if (Build.VERSION.SDK_INT >= 19)
    {
      a = new nf();
      return;
    }
    if (Build.VERSION.SDK_INT >= 18)
    {
      a = new ne();
      return;
    }
    if (Build.VERSION.SDK_INT >= 17)
    {
      a = new nd((byte)0);
      return;
    }
    if (Build.VERSION.SDK_INT >= 16)
    {
      a = new nd();
      return;
    }
    if (Build.VERSION.SDK_INT >= 14)
    {
      a = new nb();
      return;
    }
  }
  
  public my(Object paramObject)
  {
    b = paramObject;
  }
  
  public Object a()
  {
    return b;
  }
  
  public void a(int paramInt)
  {
    a.a(b, paramInt);
  }
  
  public void a(Rect paramRect)
  {
    a.a(b, paramRect);
  }
  
  public void a(View paramView)
  {
    a.c(b, paramView);
  }
  
  public void a(CharSequence paramCharSequence)
  {
    a.c(b, paramCharSequence);
  }
  
  public void a(Object paramObject)
  {
    a.b(b, a);
  }
  
  public void a(boolean paramBoolean)
  {
    a.c(b, paramBoolean);
  }
  
  public boolean a(mz parammz)
  {
    return a.a(b, w);
  }
  
  public int b()
  {
    return a.b(b);
  }
  
  public void b(Rect paramRect)
  {
    a.c(b, paramRect);
  }
  
  public void b(View paramView)
  {
    a.a(b, paramView);
  }
  
  public void b(CharSequence paramCharSequence)
  {
    a.a(b, paramCharSequence);
  }
  
  public void b(Object paramObject)
  {
    a.c(b, a);
  }
  
  public void b(boolean paramBoolean)
  {
    a.d(b, paramBoolean);
  }
  
  public void c(Rect paramRect)
  {
    a.b(b, paramRect);
  }
  
  public void c(View paramView)
  {
    a.b(b, paramView);
  }
  
  public void c(CharSequence paramCharSequence)
  {
    a.b(b, paramCharSequence);
  }
  
  public void c(boolean paramBoolean)
  {
    a.h(b, paramBoolean);
  }
  
  public boolean c()
  {
    return a.k(b);
  }
  
  public void d(Rect paramRect)
  {
    a.d(b, paramRect);
  }
  
  public void d(boolean paramBoolean)
  {
    a.i(b, paramBoolean);
  }
  
  public boolean d()
  {
    return a.l(b);
  }
  
  public void e(boolean paramBoolean)
  {
    a.g(b, paramBoolean);
  }
  
  public boolean e()
  {
    return a.r(b);
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      do
      {
        return true;
        if (paramObject == null) {
          return false;
        }
        if (getClass() != paramObject.getClass()) {
          return false;
        }
        paramObject = (my)paramObject;
        if (b != null) {
          break;
        }
      } while (b == null);
      return false;
    } while (b.equals(b));
    return false;
  }
  
  public void f(boolean paramBoolean)
  {
    a.a(b, paramBoolean);
  }
  
  public boolean f()
  {
    return a.s(b);
  }
  
  public void g(boolean paramBoolean)
  {
    a.e(b, paramBoolean);
  }
  
  public boolean g()
  {
    return a.p(b);
  }
  
  public void h(boolean paramBoolean)
  {
    a.b(b, paramBoolean);
  }
  
  public boolean h()
  {
    return a.i(b);
  }
  
  public int hashCode()
  {
    if (b == null) {
      return 0;
    }
    return b.hashCode();
  }
  
  public void i(boolean paramBoolean)
  {
    a.f(b, paramBoolean);
  }
  
  public boolean i()
  {
    return a.m(b);
  }
  
  public boolean j()
  {
    return a.j(b);
  }
  
  public CharSequence k()
  {
    return a.e(b);
  }
  
  public CharSequence l()
  {
    return a.c(b);
  }
  
  public CharSequence m()
  {
    return a.d(b);
  }
  
  public void n()
  {
    a.q(b);
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(super.toString());
    Object localObject = new Rect();
    a((Rect)localObject);
    localStringBuilder.append("; boundsInParent: " + localObject);
    c((Rect)localObject);
    localStringBuilder.append("; boundsInScreen: " + localObject);
    localStringBuilder.append("; packageName: ").append(k());
    localStringBuilder.append("; className: ").append(l());
    localStringBuilder.append("; text: ").append(a.f(b));
    localStringBuilder.append("; contentDescription: ").append(m());
    localStringBuilder.append("; viewId: ").append(a.t(b));
    localStringBuilder.append("; checkable: ").append(a.g(b));
    localStringBuilder.append("; checked: ").append(a.h(b));
    localStringBuilder.append("; focusable: ").append(c());
    localStringBuilder.append("; focused: ").append(d());
    localStringBuilder.append("; selected: ").append(g());
    localStringBuilder.append("; clickable: ").append(h());
    localStringBuilder.append("; longClickable: ").append(i());
    localStringBuilder.append("; enabled: ").append(j());
    localStringBuilder.append("; password: ").append(a.n(b));
    localStringBuilder.append("; scrollable: " + a.o(b));
    localStringBuilder.append("; [");
    int i = b();
    if (i != 0)
    {
      int j = 1 << Integer.numberOfTrailingZeros(i);
      i = (j ^ 0xFFFFFFFF) & i;
      switch (j)
      {
      default: 
        localObject = "ACTION_UNKNOWN";
      }
      for (;;)
      {
        localStringBuilder.append((String)localObject);
        if (i != 0) {
          localStringBuilder.append(", ");
        }
        break;
        localObject = "ACTION_FOCUS";
        continue;
        localObject = "ACTION_CLEAR_FOCUS";
        continue;
        localObject = "ACTION_SELECT";
        continue;
        localObject = "ACTION_CLEAR_SELECTION";
        continue;
        localObject = "ACTION_CLICK";
        continue;
        localObject = "ACTION_LONG_CLICK";
        continue;
        localObject = "ACTION_ACCESSIBILITY_FOCUS";
        continue;
        localObject = "ACTION_CLEAR_ACCESSIBILITY_FOCUS";
        continue;
        localObject = "ACTION_NEXT_AT_MOVEMENT_GRANULARITY";
        continue;
        localObject = "ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY";
        continue;
        localObject = "ACTION_NEXT_HTML_ELEMENT";
        continue;
        localObject = "ACTION_PREVIOUS_HTML_ELEMENT";
        continue;
        localObject = "ACTION_SCROLL_FORWARD";
        continue;
        localObject = "ACTION_SCROLL_BACKWARD";
        continue;
        localObject = "ACTION_CUT";
        continue;
        localObject = "ACTION_COPY";
        continue;
        localObject = "ACTION_PASTE";
        continue;
        localObject = "ACTION_SET_SELECTION";
      }
    }
    localStringBuilder.append("]");
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     my
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */