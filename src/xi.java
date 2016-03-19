import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff.Mode;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;

public final class xi
  extends Spinner
  implements kn
{
  static final boolean a;
  private static final boolean e;
  private static final int[] f;
  xl b;
  int c;
  final Rect d;
  private vv g;
  private wt h;
  private Context i;
  private ze j;
  private SpinnerAdapter k;
  private boolean l;
  
  static
  {
    if (Build.VERSION.SDK_INT >= 23)
    {
      bool = true;
      a = bool;
      if (Build.VERSION.SDK_INT < 16) {
        break label45;
      }
    }
    label45:
    for (boolean bool = true;; bool = false)
    {
      e = bool;
      f = new int[] { 16843505 };
      return;
      bool = false;
      break;
    }
  }
  
  public xi(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, aen.ad);
  }
  
  public xi(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    this(paramContext, paramAttributeSet, paramInt, (byte)0);
  }
  
  private xi(Context paramContext, AttributeSet paramAttributeSet, int paramInt, byte paramByte)
  {
    this(paramContext, paramAttributeSet, paramInt, -1);
  }
  
  /* Error */
  private xi(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 8
    //   3: aload_0
    //   4: aload_1
    //   5: aload_2
    //   6: iload_3
    //   7: invokespecial 62	android/widget/Spinner:<init>	(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    //   10: aload_0
    //   11: new 64	android/graphics/Rect
    //   14: dup
    //   15: invokespecial 66	android/graphics/Rect:<init>	()V
    //   18: putfield 68	xi:d	Landroid/graphics/Rect;
    //   21: aload_1
    //   22: aload_2
    //   23: getstatic 73	sb:bI	[I
    //   26: iload_3
    //   27: invokestatic 78	vw:a	(Landroid/content/Context;Landroid/util/AttributeSet;[II)Lvw;
    //   30: astore 9
    //   32: aload_0
    //   33: aload 9
    //   35: invokevirtual 81	vw:b	()Lvv;
    //   38: putfield 83	xi:g	Lvv;
    //   41: aload_0
    //   42: new 85	wt
    //   45: dup
    //   46: aload_0
    //   47: aload_0
    //   48: getfield 83	xi:g	Lvv;
    //   51: invokespecial 88	wt:<init>	(Landroid/view/View;Lvv;)V
    //   54: putfield 90	xi:h	Lwt;
    //   57: aload 9
    //   59: getstatic 93	sb:bM	I
    //   62: iconst_0
    //   63: invokevirtual 96	vw:f	(II)I
    //   66: istore 5
    //   68: iload 5
    //   70: ifeq +220 -> 290
    //   73: new 98	st
    //   76: dup
    //   77: aload_1
    //   78: iload 5
    //   80: invokespecial 101	st:<init>	(Landroid/content/Context;I)V
    //   83: astore 7
    //   85: aload_0
    //   86: aload 7
    //   88: putfield 103	xi:i	Landroid/content/Context;
    //   91: aload_0
    //   92: getfield 103	xi:i	Landroid/content/Context;
    //   95: ifnull +155 -> 250
    //   98: getstatic 35	android/os/Build$VERSION:SDK_INT	I
    //   101: bipush 11
    //   103: if_icmplt +241 -> 344
    //   106: aload_1
    //   107: aload_2
    //   108: getstatic 42	xi:f	[I
    //   111: iload_3
    //   112: iconst_0
    //   113: invokevirtual 109	android/content/Context:obtainStyledAttributes	(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
    //   116: astore_1
    //   117: iload 4
    //   119: istore 5
    //   121: aload_1
    //   122: iconst_0
    //   123: invokevirtual 115	android/content/res/TypedArray:hasValue	(I)Z
    //   126: ifeq +11 -> 137
    //   129: aload_1
    //   130: iconst_0
    //   131: iconst_0
    //   132: invokevirtual 118	android/content/res/TypedArray:getInt	(II)I
    //   135: istore 5
    //   137: iload 5
    //   139: istore 6
    //   141: aload_1
    //   142: ifnull +11 -> 153
    //   145: aload_1
    //   146: invokevirtual 121	android/content/res/TypedArray:recycle	()V
    //   149: iload 5
    //   151: istore 6
    //   153: iload 6
    //   155: iconst_1
    //   156: if_icmpne +94 -> 250
    //   159: new 123	xl
    //   162: dup
    //   163: aload_0
    //   164: aload_0
    //   165: getfield 103	xi:i	Landroid/content/Context;
    //   168: aload_2
    //   169: iload_3
    //   170: invokespecial 126	xl:<init>	(Lxi;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    //   173: astore_1
    //   174: aload_0
    //   175: getfield 103	xi:i	Landroid/content/Context;
    //   178: aload_2
    //   179: getstatic 73	sb:bI	[I
    //   182: iload_3
    //   183: invokestatic 78	vw:a	(Landroid/content/Context;Landroid/util/AttributeSet;[II)Lvw;
    //   186: astore 7
    //   188: aload_0
    //   189: aload 7
    //   191: getstatic 129	sb:bJ	I
    //   194: bipush -2
    //   196: invokevirtual 131	vw:e	(II)I
    //   199: putfield 133	xi:c	I
    //   202: aload_1
    //   203: aload 7
    //   205: getstatic 136	sb:bK	I
    //   208: invokevirtual 139	vw:a	(I)Landroid/graphics/drawable/Drawable;
    //   211: invokevirtual 142	xl:a	(Landroid/graphics/drawable/Drawable;)V
    //   214: aload_1
    //   215: aload 9
    //   217: getstatic 145	sb:bL	I
    //   220: invokevirtual 148	vw:d	(I)Ljava/lang/String;
    //   223: invokevirtual 151	xl:a	(Ljava/lang/CharSequence;)V
    //   226: aload 7
    //   228: invokevirtual 153	vw:a	()V
    //   231: aload_0
    //   232: aload_1
    //   233: putfield 155	xi:b	Lxl;
    //   236: aload_0
    //   237: new 157	xj
    //   240: dup
    //   241: aload_0
    //   242: aload_0
    //   243: aload_1
    //   244: invokespecial 160	xj:<init>	(Lxi;Landroid/view/View;Lxl;)V
    //   247: putfield 162	xi:j	Lze;
    //   250: aload 9
    //   252: invokevirtual 153	vw:a	()V
    //   255: aload_0
    //   256: iconst_1
    //   257: putfield 164	xi:l	Z
    //   260: aload_0
    //   261: getfield 166	xi:k	Landroid/widget/SpinnerAdapter;
    //   264: ifnull +16 -> 280
    //   267: aload_0
    //   268: aload_0
    //   269: getfield 166	xi:k	Landroid/widget/SpinnerAdapter;
    //   272: invokevirtual 170	xi:setAdapter	(Landroid/widget/SpinnerAdapter;)V
    //   275: aload_0
    //   276: aconst_null
    //   277: putfield 166	xi:k	Landroid/widget/SpinnerAdapter;
    //   280: aload_0
    //   281: getfield 90	xi:h	Lwt;
    //   284: aload_2
    //   285: iload_3
    //   286: invokevirtual 173	wt:a	(Landroid/util/AttributeSet;I)V
    //   289: return
    //   290: getstatic 37	xi:a	Z
    //   293: ifne +9 -> 302
    //   296: aload_1
    //   297: astore 7
    //   299: goto -214 -> 85
    //   302: aconst_null
    //   303: astore 7
    //   305: goto -220 -> 85
    //   308: astore_1
    //   309: aconst_null
    //   310: astore_1
    //   311: iload 4
    //   313: istore 6
    //   315: aload_1
    //   316: ifnull -163 -> 153
    //   319: aload_1
    //   320: invokevirtual 121	android/content/res/TypedArray:recycle	()V
    //   323: iload 4
    //   325: istore 6
    //   327: goto -174 -> 153
    //   330: astore_2
    //   331: aload 8
    //   333: astore_1
    //   334: aload_1
    //   335: ifnull +7 -> 342
    //   338: aload_1
    //   339: invokevirtual 121	android/content/res/TypedArray:recycle	()V
    //   342: aload_2
    //   343: athrow
    //   344: iconst_1
    //   345: istore 6
    //   347: goto -194 -> 153
    //   350: astore_2
    //   351: goto -17 -> 334
    //   354: astore 7
    //   356: goto -45 -> 311
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	359	0	this	xi
    //   0	359	1	paramContext	Context
    //   0	359	2	paramAttributeSet	AttributeSet
    //   0	359	3	paramInt1	int
    //   0	359	4	paramInt2	int
    //   66	84	5	m	int
    //   139	207	6	n	int
    //   83	221	7	localObject1	Object
    //   354	1	7	localException	Exception
    //   1	331	8	localObject2	Object
    //   30	221	9	localvw	vw
    // Exception table:
    //   from	to	target	type
    //   106	117	308	java/lang/Exception
    //   106	117	330	finally
    //   121	137	350	finally
    //   121	137	354	java/lang/Exception
  }
  
  int a(SpinnerAdapter paramSpinnerAdapter, Drawable paramDrawable)
  {
    if (paramSpinnerAdapter == null) {
      return 0;
    }
    int i3 = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 0);
    int i4 = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 0);
    int m = Math.max(0, getSelectedItemPosition());
    int i5 = Math.min(paramSpinnerAdapter.getCount(), m + 15);
    int n = Math.max(0, m - (15 - (i5 - m)));
    View localView = null;
    int i1 = 0;
    m = 0;
    if (n < i5)
    {
      int i2 = paramSpinnerAdapter.getItemViewType(n);
      if (i2 == m) {
        break label204;
      }
      localView = null;
      m = i2;
    }
    label204:
    for (;;)
    {
      localView = paramSpinnerAdapter.getView(n, localView, this);
      if (localView.getLayoutParams() == null) {
        localView.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
      }
      localView.measure(i3, i4);
      i1 = Math.max(i1, localView.getMeasuredWidth());
      n += 1;
      break;
      if (paramDrawable != null)
      {
        paramDrawable.getPadding(d);
        return d.left + d.right + i1;
      }
      return i1;
    }
  }
  
  public void a(ColorStateList paramColorStateList)
  {
    if (h != null) {
      h.a(paramColorStateList);
    }
  }
  
  public void a(PorterDuff.Mode paramMode)
  {
    if (h != null) {
      h.a(paramMode);
    }
  }
  
  protected void drawableStateChanged()
  {
    super.drawableStateChanged();
    if (h != null) {
      h.b();
    }
  }
  
  public int getDropDownHorizontalOffset()
  {
    if (b != null) {
      return b.h();
    }
    if (e) {
      return super.getDropDownHorizontalOffset();
    }
    return 0;
  }
  
  public int getDropDownVerticalOffset()
  {
    if (b != null) {
      return b.i();
    }
    if (e) {
      return super.getDropDownVerticalOffset();
    }
    return 0;
  }
  
  public int getDropDownWidth()
  {
    if (b != null) {
      return c;
    }
    if (e) {
      return super.getDropDownWidth();
    }
    return 0;
  }
  
  public Drawable getPopupBackground()
  {
    if (b != null) {
      return b.f();
    }
    if (e) {
      return super.getPopupBackground();
    }
    return null;
  }
  
  public Context getPopupContext()
  {
    if (b != null) {
      return i;
    }
    if (a) {
      return super.getPopupContext();
    }
    return null;
  }
  
  public CharSequence getPrompt()
  {
    if (b != null) {
      return b.a();
    }
    return super.getPrompt();
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    if ((b != null) && (b.n())) {
      b.k();
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    if ((b != null) && (View.MeasureSpec.getMode(paramInt1) == Integer.MIN_VALUE)) {
      setMeasuredDimension(Math.min(Math.max(getMeasuredWidth(), a(getAdapter(), getBackground())), View.MeasureSpec.getSize(paramInt1)), getMeasuredHeight());
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if ((j != null) && (j.onTouch(this, paramMotionEvent))) {
      return true;
    }
    return super.onTouchEvent(paramMotionEvent);
  }
  
  public boolean performClick()
  {
    if ((b != null) && (!b.n()))
    {
      b.c();
      return true;
    }
    return super.performClick();
  }
  
  public void setAdapter(SpinnerAdapter paramSpinnerAdapter)
  {
    if (!l) {
      k = paramSpinnerAdapter;
    }
    do
    {
      return;
      super.setAdapter(paramSpinnerAdapter);
    } while (b == null);
    if (i == null) {}
    for (Context localContext = getContext();; localContext = i)
    {
      b.a(new xk(paramSpinnerAdapter, localContext.getTheme()));
      return;
    }
  }
  
  public void setBackgroundDrawable(Drawable paramDrawable)
  {
    super.setBackgroundDrawable(paramDrawable);
    if (h != null) {
      h.a();
    }
  }
  
  public void setBackgroundResource(int paramInt)
  {
    super.setBackgroundResource(paramInt);
    if (h != null) {
      h.a(paramInt);
    }
  }
  
  public void setDropDownHorizontalOffset(int paramInt)
  {
    if (b != null) {
      b.a(paramInt);
    }
    while (!e) {
      return;
    }
    super.setDropDownHorizontalOffset(paramInt);
  }
  
  public void setDropDownVerticalOffset(int paramInt)
  {
    if (b != null) {
      b.b(paramInt);
    }
    while (!e) {
      return;
    }
    super.setDropDownVerticalOffset(paramInt);
  }
  
  public void setDropDownWidth(int paramInt)
  {
    if (b != null) {
      c = paramInt;
    }
    while (!e) {
      return;
    }
    super.setDropDownWidth(paramInt);
  }
  
  public void setPopupBackgroundDrawable(Drawable paramDrawable)
  {
    if (b != null) {
      b.a(paramDrawable);
    }
    while (!e) {
      return;
    }
    super.setPopupBackgroundDrawable(paramDrawable);
  }
  
  public void setPopupBackgroundResource(int paramInt)
  {
    setPopupBackgroundDrawable(getPopupContext().getDrawable(paramInt));
  }
  
  public void setPrompt(CharSequence paramCharSequence)
  {
    if (b != null)
    {
      b.a(paramCharSequence);
      return;
    }
    super.setPrompt(paramCharSequence);
  }
}

/* Location:
 * Qualified Name:     xi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */