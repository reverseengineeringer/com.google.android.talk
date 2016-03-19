import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.widget.TextView;

public class ikg
  extends ijc
{
  public boolean a;
  private CharSequence c;
  private CharSequence d;
  private boolean e;
  private boolean f;
  private boolean g;
  
  public ikg(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  public boolean E()
  {
    boolean bool2 = false;
    boolean bool1;
    if (g) {
      bool1 = a;
    }
    for (;;)
    {
      if (!bool1)
      {
        bool1 = bool2;
        if (!super.E()) {}
      }
      else
      {
        bool1 = true;
      }
      return bool1;
      if (!a) {
        bool1 = true;
      } else {
        bool1 = false;
      }
    }
  }
  
  protected void K_()
  {
    super.K_();
    if (!a()) {}
    for (boolean bool = true;; bool = false)
    {
      f = true;
      if (a(Boolean.valueOf(bool))) {
        break;
      }
      return;
    }
    a(bool);
  }
  
  protected Object a(TypedArray paramTypedArray, int paramInt)
  {
    return Boolean.valueOf(paramTypedArray.getBoolean(paramInt, false));
  }
  
  protected void a(Parcelable paramParcelable)
  {
    if ((paramParcelable == null) || (!paramParcelable.getClass().equals(ikh.class)))
    {
      super.a(paramParcelable);
      return;
    }
    paramParcelable = (ikh)paramParcelable;
    super.a(paramParcelable.getSuperState());
    a(a);
  }
  
  public void a(boolean paramBoolean)
  {
    if (a != paramBoolean) {}
    for (int i = 1;; i = 0)
    {
      if ((i != 0) || (!e))
      {
        a = paramBoolean;
        e = true;
        b(paramBoolean);
        if (i != 0)
        {
          e(E());
          A();
        }
      }
      return;
    }
  }
  
  protected void a(boolean paramBoolean, Object paramObject)
  {
    if (paramBoolean) {}
    for (paramBoolean = c(a);; paramBoolean = ((Boolean)paramObject).booleanValue())
    {
      a(paramBoolean);
      return;
    }
  }
  
  public boolean a()
  {
    return a;
  }
  
  public void b(View paramView)
  {
    AccessibilityManager localAccessibilityManager = (AccessibilityManager)y().getSystemService("accessibility");
    if ((f) && (localAccessibilityManager.isEnabled()))
    {
      AccessibilityEvent localAccessibilityEvent = AccessibilityEvent.obtain();
      localAccessibilityEvent.setEventType(1);
      paramView.onInitializeAccessibilityEvent(localAccessibilityEvent);
      paramView.dispatchPopulateAccessibilityEvent(localAccessibilityEvent);
      localAccessibilityManager.sendAccessibilityEvent(localAccessibilityEvent);
    }
    f = false;
  }
  
  public void c(View paramView)
  {
    int j = 0;
    paramView = (TextView)paramView.findViewById(fkr.m);
    int k;
    int i;
    if (paramView != null)
    {
      k = 1;
      if ((!a) || (TextUtils.isEmpty(c))) {
        break label93;
      }
      paramView.setText(c);
      i = 0;
      if (i == 0) {
        break label135;
      }
      CharSequence localCharSequence = g();
      if (TextUtils.isEmpty(localCharSequence)) {
        break label135;
      }
      paramView.setText(localCharSequence);
      i = 0;
    }
    label93:
    label135:
    for (;;)
    {
      if (i == 0) {}
      for (i = j;; i = 8)
      {
        if (i != paramView.getVisibility()) {
          paramView.setVisibility(i);
        }
        return;
        i = k;
        if (a) {
          break;
        }
        i = k;
        if (TextUtils.isEmpty(d)) {
          break;
        }
        paramView.setText(d);
        i = 0;
        break;
      }
    }
  }
  
  protected Parcelable e()
  {
    Object localObject = super.e();
    if (v()) {
      return (Parcelable)localObject;
    }
    localObject = new ikh((Parcelable)localObject);
    a = a();
    return (Parcelable)localObject;
  }
  
  public void e(CharSequence paramCharSequence)
  {
    c = paramCharSequence;
    if (a()) {
      A();
    }
  }
  
  public void f(CharSequence paramCharSequence)
  {
    d = paramCharSequence;
    if (!a()) {
      A();
    }
  }
  
  public void h(boolean paramBoolean)
  {
    g = paramBoolean;
  }
}

/* Location:
 * Qualified Name:     ikg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */