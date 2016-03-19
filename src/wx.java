import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.widget.CompoundButton;

final class wx
{
  private final CompoundButton a;
  private final vv b;
  private ColorStateList c = null;
  private PorterDuff.Mode d = null;
  private boolean e = false;
  private boolean f = false;
  private boolean g;
  
  wx(CompoundButton paramCompoundButton, vv paramvv)
  {
    a = paramCompoundButton;
    b = paramvv;
  }
  
  private void b()
  {
    Object localObject = a;
    localObject = oa.a.a((CompoundButton)localObject);
    if ((localObject != null) && ((e) || (f)))
    {
      localObject = fv.a.c((Drawable)localObject).mutate();
      if (e) {
        fv.a((Drawable)localObject, c);
      }
      if (f) {
        fv.a((Drawable)localObject, d);
      }
      if (((Drawable)localObject).isStateful()) {
        ((Drawable)localObject).setState(a.getDrawableState());
      }
      a.setButtonDrawable((Drawable)localObject);
    }
  }
  
  int a(int paramInt)
  {
    int i = paramInt;
    if (Build.VERSION.SDK_INT < 17)
    {
      Object localObject = a;
      localObject = oa.a.a((CompoundButton)localObject);
      i = paramInt;
      if (localObject != null) {
        i = paramInt + ((Drawable)localObject).getIntrinsicWidth();
      }
    }
    return i;
  }
  
  void a()
  {
    if (g)
    {
      g = false;
      return;
    }
    g = true;
    b();
  }
  
  void a(ColorStateList paramColorStateList)
  {
    c = paramColorStateList;
    e = true;
    b();
  }
  
  void a(PorterDuff.Mode paramMode)
  {
    d = paramMode;
    f = true;
    b();
  }
  
  void a(AttributeSet paramAttributeSet, int paramInt)
  {
    paramAttributeSet = a.getContext().obtainStyledAttributes(paramAttributeSet, sb.X, paramInt, 0);
    try
    {
      if (paramAttributeSet.hasValue(sb.Y))
      {
        paramInt = paramAttributeSet.getResourceId(sb.Y, 0);
        if (paramInt != 0) {
          a.setButtonDrawable(b.a(paramInt));
        }
      }
      CompoundButton localCompoundButton;
      Object localObject2;
      if (paramAttributeSet.hasValue(sb.Z))
      {
        localCompoundButton = a;
        localObject2 = paramAttributeSet.getColorStateList(sb.Z);
        oa.a.a(localCompoundButton, (ColorStateList)localObject2);
      }
      if (paramAttributeSet.hasValue(sb.aa))
      {
        localCompoundButton = a;
        localObject2 = aal.b(paramAttributeSet.getInt(sb.aa, -1));
        oa.a.a(localCompoundButton, (PorterDuff.Mode)localObject2);
      }
      return;
    }
    finally
    {
      paramAttributeSet.recycle();
    }
  }
}

/* Location:
 * Qualified Name:     wx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */