import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.libraries.social.settings.PreferenceScreen;
import java.util.ArrayList;
import java.util.List;

public class ijc
  implements Comparable<ijc>
{
  private boolean A = true;
  private List<ijc> B;
  private boolean C;
  private Context a;
  ijf b;
  private ijs c;
  private long d;
  private ijg e;
  private ijh f;
  private int g = Integer.MAX_VALUE;
  private CharSequence h;
  private int i;
  private CharSequence j;
  private int k;
  private Drawable l;
  private String m;
  private Intent n;
  private String o;
  private boolean p = true;
  private boolean q = true;
  private boolean r;
  private boolean s = true;
  private String t;
  private Object u;
  private boolean v = true;
  private boolean w = true;
  private boolean x = true;
  private int y = aal.uS;
  private int z;
  
  public ijc(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public ijc(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, aal.uO);
  }
  
  public ijc(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    a = paramContext;
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, ikc.ar, paramInt, 0);
    paramInt = paramContext.getIndexCount();
    if (paramInt >= 0)
    {
      int i1 = paramContext.getIndex(paramInt);
      if (i1 == ikc.aw) {
        k = paramContext.getResourceId(i1, 0);
      }
      for (;;)
      {
        paramInt -= 1;
        break;
        if (i1 == ikc.ax)
        {
          m = paramContext.getString(i1);
        }
        else if (i1 == ikc.aE)
        {
          i = paramContext.getResourceId(i1, 0);
          h = paramContext.getString(i1);
        }
        else if (i1 == ikc.aD)
        {
          j = paramContext.getString(i1);
        }
        else if (i1 == ikc.az)
        {
          g = paramContext.getInt(i1, g);
        }
        else if (i1 == ikc.av)
        {
          o = paramContext.getString(i1);
        }
        else if (i1 == ikc.ay)
        {
          y = paramContext.getResourceId(i1, y);
        }
        else if (i1 == ikc.aF)
        {
          z = paramContext.getResourceId(i1, z);
        }
        else if (i1 == ikc.au)
        {
          p = paramContext.getBoolean(i1, true);
        }
        else if (i1 == ikc.aB)
        {
          q = paramContext.getBoolean(i1, true);
        }
        else if (i1 == ikc.aA)
        {
          s = paramContext.getBoolean(i1, s);
        }
        else if (i1 == ikc.at)
        {
          t = paramContext.getString(i1);
        }
        else if (i1 == ikc.as)
        {
          u = a(paramContext, i1);
        }
        else if (i1 == ikc.aC)
        {
          x = paramContext.getBoolean(i1, x);
        }
      }
    }
    paramContext.recycle();
    if (!getClass().getName().startsWith("com.google")) {
      A = false;
    }
  }
  
  private void a()
  {
    if (TextUtils.isEmpty(t)) {
      return;
    }
    Object localObject = d(t);
    if (localObject != null)
    {
      if (B == null) {
        B = new ArrayList();
      }
      B.add(this);
      f(((ijc)localObject).E());
      return;
    }
    localObject = t;
    String str1 = m;
    String str2 = String.valueOf(h);
    throw new IllegalStateException(String.valueOf(localObject).length() + 52 + String.valueOf(str1).length() + String.valueOf(str2).length() + "Dependency \"" + (String)localObject + "\" not found for preference \"" + str1 + "\" (title: \"" + str2 + "\"");
  }
  
  private void a(SharedPreferences.Editor paramEditor)
  {
    if (c.f()) {}
    try
    {
      paramEditor.apply();
      return;
    }
    catch (AbstractMethodError localAbstractMethodError)
    {
      paramEditor.commit();
    }
  }
  
  private void a(View paramView, boolean paramBoolean)
  {
    paramView.setEnabled(paramBoolean);
    if ((paramView instanceof ViewGroup))
    {
      paramView = (ViewGroup)paramView;
      int i1 = paramView.getChildCount() - 1;
      while (i1 >= 0)
      {
        a(paramView.getChildAt(i1), paramBoolean);
        i1 -= 1;
      }
    }
  }
  
  private void c()
  {
    if (t != null)
    {
      ijc localijc = d(t);
      if ((localijc != null) && (B != null)) {
        B.remove(this);
      }
    }
  }
  
  public void A()
  {
    if (b != null) {
      b.a();
    }
  }
  
  protected void B()
  {
    if (b != null) {
      b.b();
    }
  }
  
  public ijs C()
  {
    return c;
  }
  
  protected void D()
  {
    a();
  }
  
  public boolean E()
  {
    return !p();
  }
  
  protected void F()
  {
    c();
  }
  
  boolean G()
  {
    return A;
  }
  
  StringBuilder H()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    CharSequence localCharSequence = o();
    if (!TextUtils.isEmpty(localCharSequence)) {
      localStringBuilder.append(localCharSequence).append(' ');
    }
    localCharSequence = g();
    if (!TextUtils.isEmpty(localCharSequence)) {
      localStringBuilder.append(localCharSequence).append(' ');
    }
    if (localStringBuilder.length() > 0) {
      localStringBuilder.setLength(localStringBuilder.length() - 1);
    }
    return localStringBuilder;
  }
  
  public void K_() {}
  
  public int a(ijc paramijc)
  {
    int i3 = 0;
    int i1 = 0;
    if (g != g) {
      i1 = g - g;
    }
    while (h == h) {
      return i1;
    }
    if (h == null) {
      return 1;
    }
    if (h == null) {
      return -1;
    }
    int i5 = h.length();
    int i6 = h.length();
    int i7 = Math.min(i5, i6);
    int i2 = 0;
    for (;;)
    {
      if (i2 >= i7) {
        break label147;
      }
      int i4 = Character.toLowerCase(h.charAt(i2)) - Character.toLowerCase(h.charAt(i3));
      i1 = i4;
      if (i4 != 0) {
        break;
      }
      i3 += 1;
      i2 += 1;
    }
    label147:
    return i5 - i6;
  }
  
  public View a(View paramView, ViewGroup paramViewGroup)
  {
    View localView = paramView;
    if (paramView == null) {
      localView = a(paramViewGroup);
    }
    a(localView);
    return localView;
  }
  
  public View a(ViewGroup paramViewGroup)
  {
    LayoutInflater localLayoutInflater = (LayoutInflater)a.getSystemService("layout_inflater");
    paramViewGroup = localLayoutInflater.inflate(y, paramViewGroup, false);
    ViewGroup localViewGroup = (ViewGroup)paramViewGroup.findViewById(fkr.p);
    if (localViewGroup != null)
    {
      if (z != 0) {
        localLayoutInflater.inflate(z, localViewGroup);
      }
    }
    else {
      return paramViewGroup;
    }
    localViewGroup.setVisibility(8);
    return paramViewGroup;
  }
  
  protected Object a(TypedArray paramTypedArray, int paramInt)
  {
    return null;
  }
  
  public void a(Intent paramIntent)
  {
    n = paramIntent;
  }
  
  public void a(Parcelable paramParcelable)
  {
    C = true;
    if ((paramParcelable != ijd.EMPTY_STATE) && (paramParcelable != null)) {
      throw new IllegalArgumentException("Wrong state class -- expecting Preference State");
    }
  }
  
  public void a(View paramView)
  {
    int i1 = 0;
    Object localObject = (TextView)paramView.findViewById(fkr.o);
    CharSequence localCharSequence;
    if (localObject != null)
    {
      localCharSequence = o();
      if (TextUtils.isEmpty(localCharSequence)) {
        break label242;
      }
      ((TextView)localObject).setText(localCharSequence);
      ((TextView)localObject).setVisibility(0);
      if ((q()) && (!p())) {
        ((TextView)localObject).setTextColor(y().getResources().getColor(aal.uR));
      }
    }
    localObject = (TextView)paramView.findViewById(fkr.m);
    if (localObject != null)
    {
      localCharSequence = g();
      if (TextUtils.isEmpty(localCharSequence)) {
        break label251;
      }
      ((TextView)localObject).setText(localCharSequence);
      ((TextView)localObject).setVisibility(0);
      if ((q()) && (!p())) {
        ((TextView)localObject).setTextColor(y().getResources().getColor(aal.uR));
      }
    }
    label144:
    localObject = (ImageView)paramView.findViewById(fkr.h);
    if (localObject != null)
    {
      if ((k != 0) || (l != null))
      {
        if (l == null) {
          l = y().getResources().getDrawable(k);
        }
        if (l != null) {
          ((ImageView)localObject).setImageDrawable(l);
        }
      }
      if (l == null) {
        break label260;
      }
    }
    for (;;)
    {
      ((ImageView)localObject).setVisibility(i1);
      if (x) {
        a(paramView, p());
      }
      return;
      label242:
      ((TextView)localObject).setVisibility(8);
      break;
      label251:
      ((TextView)localObject).setVisibility(8);
      break label144;
      label260:
      i1 = 8;
    }
  }
  
  public void a(PreferenceScreen paramPreferenceScreen)
  {
    if (!p()) {}
    do
    {
      Object localObject;
      do
      {
        return;
        K_();
        if (f != null)
        {
          f.a();
          return;
        }
        localObject = C();
        if (localObject == null) {
          break;
        }
        localObject = ((ijs)localObject).k();
      } while ((paramPreferenceScreen != null) && (localObject != null) && (((ijv)localObject).a(this)));
    } while (n == null);
    y().startActivity(n);
  }
  
  public void a(ijg paramijg)
  {
    e = paramijg;
  }
  
  public void a(ijh paramijh)
  {
    f = paramijh;
  }
  
  protected void a(ijs paramijs)
  {
    c = paramijs;
    d = paramijs.b();
    if ((!w()) || (!z().contains(m)))
    {
      if (u != null) {
        a(false, u);
      }
      return;
    }
    a(true, null);
  }
  
  protected void a(boolean paramBoolean, Object paramObject) {}
  
  protected boolean a(Object paramObject)
  {
    return (e == null) || (e.a(this, paramObject));
  }
  
  public void b(Bundle paramBundle)
  {
    c(paramBundle);
  }
  
  public void b(CharSequence paramCharSequence)
  {
    if (((paramCharSequence == null) && (j != null)) || ((paramCharSequence != null) && (!paramCharSequence.equals(j))))
    {
      j = paramCharSequence;
      A();
    }
  }
  
  public void b(Object paramObject)
  {
    u = paramObject;
  }
  
  protected boolean b(boolean paramBoolean)
  {
    boolean bool = false;
    if (w())
    {
      if (!paramBoolean) {
        bool = true;
      }
      if (paramBoolean == c(bool)) {
        return true;
      }
      SharedPreferences.Editor localEditor = c.e();
      localEditor.putBoolean(m, paramBoolean);
      a(localEditor);
      return true;
    }
    return false;
  }
  
  void c(Bundle paramBundle)
  {
    if (u())
    {
      C = false;
      Parcelable localParcelable = e();
      if (!C) {
        throw new IllegalStateException("Derived class did not call super.onSaveInstanceState()");
      }
      if (localParcelable != null) {
        paramBundle.putParcelable(m, localParcelable);
      }
    }
  }
  
  public void c(CharSequence paramCharSequence)
  {
    if (((paramCharSequence == null) && (h != null)) || ((paramCharSequence != null) && (!paramCharSequence.equals(h))))
    {
      i = 0;
      h = paramCharSequence;
      A();
    }
  }
  
  public void c(String paramString)
  {
    m = paramString;
    if ((r) && (!u())) {
      t();
    }
  }
  
  protected boolean c(boolean paramBoolean)
  {
    if (!w()) {
      return paramBoolean;
    }
    return c.c().getBoolean(m, paramBoolean);
  }
  
  protected ijc d(String paramString)
  {
    if ((TextUtils.isEmpty(paramString)) || (c == null)) {
      return null;
    }
    return c.a(paramString);
  }
  
  public void d(int paramInt)
  {
    if (paramInt != y) {
      A = false;
    }
    y = paramInt;
  }
  
  public void d(Bundle paramBundle)
  {
    e(paramBundle);
  }
  
  public void d(boolean paramBoolean)
  {
    if (p != paramBoolean)
    {
      p = paramBoolean;
      e(E());
      A();
    }
  }
  
  public Parcelable e()
  {
    C = true;
    return ijd.EMPTY_STATE;
  }
  
  public void e(int paramInt)
  {
    if (paramInt != z) {
      A = false;
    }
    z = paramInt;
  }
  
  void e(Bundle paramBundle)
  {
    if (u())
    {
      paramBundle = paramBundle.getParcelable(m);
      if (paramBundle != null)
      {
        C = false;
        a(paramBundle);
        if (!C) {
          throw new IllegalStateException("Derived class did not call super.onRestoreInstanceState()");
        }
      }
    }
  }
  
  public void e(String paramString)
  {
    c();
    t = paramString;
    a();
  }
  
  public void e(boolean paramBoolean)
  {
    List localList = B;
    if (localList == null) {}
    for (;;)
    {
      return;
      int i2 = localList.size();
      int i1 = 0;
      while (i1 < i2)
      {
        ((ijc)localList.get(i1)).f(paramBoolean);
        i1 += 1;
      }
    }
  }
  
  public void f(int paramInt)
  {
    if (paramInt != g)
    {
      g = paramInt;
      B();
    }
  }
  
  public void f(boolean paramBoolean)
  {
    if (v == paramBoolean) {
      if (paramBoolean) {
        break label32;
      }
    }
    label32:
    for (paramBoolean = true;; paramBoolean = false)
    {
      v = paramBoolean;
      e(E());
      A();
      return;
    }
  }
  
  protected boolean f(String paramString)
  {
    if (w())
    {
      if (paramString == g(null)) {
        return true;
      }
      SharedPreferences.Editor localEditor = c.e();
      localEditor.putString(m, paramString);
      a(localEditor);
      return true;
    }
    return false;
  }
  
  public CharSequence g()
  {
    return j;
  }
  
  protected String g(String paramString)
  {
    if (!w()) {
      return paramString;
    }
    return c.c().getString(m, paramString);
  }
  
  public void g(int paramInt)
  {
    c(a.getString(paramInt));
    i = paramInt;
  }
  
  public void g(boolean paramBoolean)
  {
    if (w == paramBoolean) {
      if (paramBoolean) {
        break label32;
      }
    }
    label32:
    for (paramBoolean = true;; paramBoolean = false)
    {
      w = paramBoolean;
      e(E());
      A();
      return;
    }
  }
  
  public void h(int paramInt)
  {
    b(a.getString(paramInt));
  }
  
  public Intent j()
  {
    return n;
  }
  
  public String k()
  {
    return o;
  }
  
  public int l()
  {
    return y;
  }
  
  public int m()
  {
    return z;
  }
  
  public int n()
  {
    return g;
  }
  
  public CharSequence o()
  {
    return h;
  }
  
  public boolean p()
  {
    return (p) && (v) && (w);
  }
  
  public boolean q()
  {
    return q;
  }
  
  long r()
  {
    return d;
  }
  
  public String s()
  {
    return m;
  }
  
  void t()
  {
    if (m == null) {
      throw new IllegalStateException("Preference does not have a key assigned.");
    }
    r = true;
  }
  
  public String toString()
  {
    return H().toString();
  }
  
  public boolean u()
  {
    return !TextUtils.isEmpty(m);
  }
  
  public boolean v()
  {
    return s;
  }
  
  protected boolean w()
  {
    return (c != null) && (v()) && (u());
  }
  
  public void x()
  {
    s = true;
  }
  
  public Context y()
  {
    return a;
  }
  
  public SharedPreferences z()
  {
    if (c == null) {
      return null;
    }
    return c.c();
  }
}

/* Location:
 * Qualified Name:     ijc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */