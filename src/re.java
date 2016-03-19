import android.content.Context;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnKeyListener;
import android.content.DialogInterface.OnMultiChoiceClickListener;
import android.content.res.Resources.Theme;
import android.graphics.drawable.Drawable;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.widget.ListAdapter;

public final class re
{
  private final qw a;
  private int b;
  
  public re(Context paramContext)
  {
    this(paramContext, rd.a(paramContext, 0));
  }
  
  public re(Context paramContext, int paramInt)
  {
    a = new qw(new ContextThemeWrapper(paramContext, rd.a(paramContext, paramInt)));
    b = paramInt;
  }
  
  public Context a()
  {
    return a.a;
  }
  
  public re a(int paramInt)
  {
    a.c = paramInt;
    return this;
  }
  
  public re a(DialogInterface.OnKeyListener paramOnKeyListener)
  {
    a.r = paramOnKeyListener;
    return this;
  }
  
  public re a(Drawable paramDrawable)
  {
    a.d = paramDrawable;
    return this;
  }
  
  public re a(View paramView)
  {
    a.g = paramView;
    return this;
  }
  
  public re a(ListAdapter paramListAdapter, DialogInterface.OnClickListener paramOnClickListener)
  {
    a.t = paramListAdapter;
    a.u = paramOnClickListener;
    return this;
  }
  
  public re a(CharSequence paramCharSequence)
  {
    a.f = paramCharSequence;
    return this;
  }
  
  public re a(CharSequence paramCharSequence, DialogInterface.OnClickListener paramOnClickListener)
  {
    a.i = paramCharSequence;
    a.j = paramOnClickListener;
    return this;
  }
  
  public re a(CharSequence[] paramArrayOfCharSequence, DialogInterface.OnClickListener paramOnClickListener)
  {
    a.s = paramArrayOfCharSequence;
    a.u = paramOnClickListener;
    return this;
  }
  
  public re a(CharSequence[] paramArrayOfCharSequence, boolean[] paramArrayOfBoolean, DialogInterface.OnMultiChoiceClickListener paramOnMultiChoiceClickListener)
  {
    a.s = paramArrayOfCharSequence;
    a.G = paramOnMultiChoiceClickListener;
    a.C = paramArrayOfBoolean;
    a.D = true;
    return this;
  }
  
  public rd b()
  {
    rd localrd = new rd(a.a, b);
    a.a(a);
    localrd.setCancelable(a.o);
    if (a.o) {
      localrd.setCanceledOnTouchOutside(true);
    }
    localrd.setOnCancelListener(a.p);
    localrd.setOnDismissListener(a.q);
    if (a.r != null) {
      localrd.setOnKeyListener(a.r);
    }
    return localrd;
  }
  
  public re b(int paramInt)
  {
    TypedValue localTypedValue = new TypedValue();
    a.a.getTheme().resolveAttribute(paramInt, localTypedValue, true);
    a.c = resourceId;
    return this;
  }
  
  public re b(View paramView)
  {
    a.w = paramView;
    a.v = 0;
    a.B = false;
    return this;
  }
  
  public re b(CharSequence paramCharSequence)
  {
    a.h = paramCharSequence;
    return this;
  }
  
  public re b(CharSequence paramCharSequence, DialogInterface.OnClickListener paramOnClickListener)
  {
    a.k = paramCharSequence;
    a.l = paramOnClickListener;
    return this;
  }
}

/* Location:
 * Qualified Name:     re
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */