import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;

final class wt
{
  private final View a;
  private final vv b;
  private vu c;
  private vu d;
  
  wt(View paramView, vv paramvv)
  {
    a = paramView;
    b = paramvv;
  }
  
  private void b(ColorStateList paramColorStateList)
  {
    if (paramColorStateList != null)
    {
      if (c == null) {
        c = new vu();
      }
      c.a = paramColorStateList;
      c.d = true;
    }
    for (;;)
    {
      b();
      return;
      c = null;
    }
  }
  
  void a()
  {
    b(null);
  }
  
  void a(int paramInt)
  {
    if (b != null) {}
    for (ColorStateList localColorStateList = b.b(paramInt);; localColorStateList = null)
    {
      b(localColorStateList);
      return;
    }
  }
  
  void a(ColorStateList paramColorStateList)
  {
    if (d == null) {
      d = new vu();
    }
    d.a = paramColorStateList;
    d.d = true;
    b();
  }
  
  void a(PorterDuff.Mode paramMode)
  {
    if (d == null) {
      d = new vu();
    }
    d.b = paramMode;
    d.c = true;
    b();
  }
  
  void a(AttributeSet paramAttributeSet, int paramInt)
  {
    paramAttributeSet = a.getContext().obtainStyledAttributes(paramAttributeSet, sb.di, paramInt, 0);
    try
    {
      Object localObject1;
      if (paramAttributeSet.hasValue(sb.dj))
      {
        localObject1 = b.b(paramAttributeSet.getResourceId(sb.dj, -1));
        if (localObject1 != null) {
          b((ColorStateList)localObject1);
        }
      }
      Object localObject3;
      if (paramAttributeSet.hasValue(sb.dk))
      {
        localObject1 = a;
        localObject3 = paramAttributeSet.getColorStateList(sb.dk);
        ks.a.a((View)localObject1, (ColorStateList)localObject3);
      }
      if (paramAttributeSet.hasValue(sb.dl))
      {
        localObject1 = a;
        localObject3 = aal.b(paramAttributeSet.getInt(sb.dl, -1));
        ks.a.a((View)localObject1, (PorterDuff.Mode)localObject3);
      }
      return;
    }
    finally
    {
      paramAttributeSet.recycle();
    }
  }
  
  void b()
  {
    Drawable localDrawable = a.getBackground();
    if (localDrawable != null)
    {
      if (d == null) {
        break label35;
      }
      vv.a(localDrawable, d, a.getDrawableState());
    }
    label35:
    while (c == null) {
      return;
    }
    vv.a(localDrawable, c, a.getDrawableState());
  }
}

/* Location:
 * Qualified Name:     wt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */