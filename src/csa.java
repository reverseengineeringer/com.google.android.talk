import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.gms.maps.GoogleMapOptions;

public final class csa
  extends gfj
  implements crs
{
  public fet a;
  private final int c = Math.round(TypedValue.applyDimension(1, 400.0F, getResources().getDisplayMetrics()));
  
  public csa(Context paramContext)
  {
    super(paramContext, new GoogleMapOptions().a());
  }
  
  private int a(int paramInt1, int paramInt2)
  {
    int i = paramInt1;
    switch (paramInt2)
    {
    default: 
      i = c;
    case 1073741824: 
      return i;
    }
    return Math.min(c, paramInt1);
  }
  
  public void a(av paramav, String paramString1, String paramString2, double paramDouble1, double paramDouble2, fet paramfet)
  {
    a = paramfet;
    b.a(null);
    if (b.a() == null)
    {
      paramfet = getContext();
      int i = fhr.a(paramfet);
      Object localObject = aal.a(paramfet, i, fhr.e(paramfet));
      String str = aal.e(paramfet, i);
      LinearLayout localLinearLayout = new LinearLayout(getContext());
      localLinearLayout.setOrientation(1);
      localLinearLayout.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
      addView(localLinearLayout);
      TextView localTextView = new TextView(getContext());
      localTextView.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
      localTextView.setText((CharSequence)localObject);
      localLinearLayout.addView(localTextView);
      if (str != null)
      {
        localObject = new Button(paramfet);
        ((Button)localObject).setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
        ((Button)localObject).setText(str);
        localLinearLayout.addView((View)localObject);
        ((Button)localObject).setOnClickListener(new fxu(paramfet, i));
      }
    }
    b.b();
    a(new gfm(this, paramDouble1, paramDouble2, paramString1, paramString2, paramav));
    paramav = getResources();
    if (!TextUtils.isEmpty(paramString2)) {
      if (!TextUtils.isEmpty(paramString1)) {
        paramav = paramav.getString(aal.nF, new Object[] { paramString1, paramString2 });
      }
    }
    for (;;)
    {
      setContentDescription(paramav);
      setLongClickable(true);
      return;
      paramav = paramav.getString(aal.nD, new Object[] { paramString2 });
      continue;
      paramav = paramav.getString(aal.nE);
    }
  }
  
  /* Error */
  public void a(gfh paramgfh, double paramDouble1, double paramDouble2, String paramString1, String paramString2, av paramav)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 180	csa:getContext	()Landroid/content/Context;
    //   4: astore 9
    //   6: aload 9
    //   8: ifnull +9 -> 17
    //   11: aload 9
    //   13: invokestatic 183	gfl:a	(Landroid/content/Context;)I
    //   16: pop
    //   17: new 185	gfi
    //   20: dup
    //   21: aload_0
    //   22: aload 6
    //   24: dload_2
    //   25: dload 4
    //   27: aload 8
    //   29: invokespecial 188	gfi:<init>	(Lcsa;Ljava/lang/String;DDLav;)V
    //   32: astore 8
    //   34: aload_1
    //   35: getfield 193	gfh:a	Lgfq;
    //   38: new 195	ghn
    //   41: dup
    //   42: aload_1
    //   43: aload 8
    //   45: invokespecial 198	ghn:<init>	(Lgfh;Lgfi;)V
    //   48: invokeinterface 203 2 0
    //   53: new 205	com/google/android/gms/maps/model/LatLng
    //   56: dup
    //   57: dload_2
    //   58: dload 4
    //   60: invokespecial 208	com/google/android/gms/maps/model/LatLng:<init>	(DD)V
    //   63: astore 8
    //   65: aload 8
    //   67: invokestatic 211	aal:a	(Lcom/google/android/gms/maps/model/LatLng;)Lgfg;
    //   70: astore 9
    //   72: aload_1
    //   73: getfield 193	gfh:a	Lgfq;
    //   76: aload 9
    //   78: invokevirtual 216	gfg:a	()Lfxx;
    //   81: invokeinterface 219 2 0
    //   86: aload_1
    //   87: new 221	com/google/android/gms/maps/model/MarkerOptions
    //   90: dup
    //   91: invokespecial 222	com/google/android/gms/maps/model/MarkerOptions:<init>	()V
    //   94: aload 8
    //   96: invokevirtual 225	com/google/android/gms/maps/model/MarkerOptions:a	(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;
    //   99: aload 6
    //   101: invokevirtual 228	com/google/android/gms/maps/model/MarkerOptions:a	(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;
    //   104: aload 7
    //   106: invokevirtual 230	com/google/android/gms/maps/model/MarkerOptions:b	(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;
    //   109: invokevirtual 233	gfh:a	(Lcom/google/android/gms/maps/model/MarkerOptions;)Lgjh;
    //   112: invokevirtual 237	gjh:a	()V
    //   115: return
    //   116: astore_1
    //   117: new 239	ax
    //   120: dup
    //   121: aload_1
    //   122: invokespecial 242	ax:<init>	(Landroid/os/RemoteException;)V
    //   125: athrow
    //   126: astore_1
    //   127: new 239	ax
    //   130: dup
    //   131: aload_1
    //   132: invokespecial 242	ax:<init>	(Landroid/os/RemoteException;)V
    //   135: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	136	0	this	csa
    //   0	136	1	paramgfh	gfh
    //   0	136	2	paramDouble1	double
    //   0	136	4	paramDouble2	double
    //   0	136	6	paramString1	String
    //   0	136	7	paramString2	String
    //   0	136	8	paramav	av
    //   4	73	9	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   34	53	116	android/os/RemoteException
    //   72	86	126	android/os/RemoteException
  }
  
  public void a(String paramString) {}
  
  public void b()
  {
    b.c();
    b.d();
  }
  
  public void b_() {}
  
  public void c_() {}
  
  public void d_() {}
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    onTouchEvent(paramMotionEvent);
    return false;
  }
  
  public void onMeasure(int paramInt1, int paramInt2)
  {
    int i = View.MeasureSpec.getSize(paramInt1);
    int j = View.MeasureSpec.getSize(paramInt2);
    paramInt1 = View.MeasureSpec.getMode(paramInt1);
    paramInt2 = View.MeasureSpec.getMode(paramInt2);
    paramInt1 = View.MeasureSpec.makeMeasureSpec(Math.min(a(i, paramInt1), a(j, paramInt2)), 1073741824);
    super.onMeasure(paramInt1, paramInt1);
  }
}

/* Location:
 * Qualified Name:     csa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */