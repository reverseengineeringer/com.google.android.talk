package android.support.v7.widget;

import a;
import aaa;
import aab;
import aac;
import aad;
import aae;
import aag;
import aah;
import aai;
import aal;
import aam;
import aan;
import aao;
import aap;
import abg;
import abh;
import abi;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Build.VERSION;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.TypedValue;
import android.view.FocusFinder;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.Interpolator;
import ic;
import java.util.ArrayList;
import java.util.List;
import jx;
import kb;
import kc;
import kd;
import km;
import ko;
import ks;
import lc;
import ms;
import mu;
import oz;
import wq;
import ya;
import zn;
import zt;
import zu;
import zx;
import zy;
import zz;

public class RecyclerView
  extends ViewGroup
  implements kc, km
{
  private static final Class<?>[] A;
  public static final boolean a;
  public static final Interpolator z;
  private final aah B;
  private aai C;
  private boolean D;
  private final Rect E;
  private a F;
  private final ArrayList<aad> G;
  private aad H;
  private boolean I;
  private boolean J;
  private int K;
  private final AccessibilityManager L;
  private int M;
  private oz N;
  private oz O;
  private oz P;
  private oz Q;
  private int R;
  private int S;
  private VelocityTracker T;
  private int U;
  private int V;
  private int W;
  private int aa;
  private int ab;
  private final int ac;
  private final int ad;
  private float ae;
  private aae af;
  private List<aae> ag;
  private zy ah;
  private a ai;
  private final int[] aj;
  private final kd ak;
  private final int[] al;
  private final int[] am;
  private final int[] an;
  private Runnable ao;
  private final abi ap;
  public final aag b;
  public zn c;
  public ya d;
  public final abg e;
  public final Runnable f;
  public zu g;
  public aab h;
  public final ArrayList<aaa> i;
  public boolean j;
  public boolean k;
  public boolean l;
  public boolean m;
  public boolean n;
  public boolean o;
  public final boolean p;
  public List<a> q;
  public boolean r;
  public zx s;
  public final aan t;
  public final aam u;
  public boolean v;
  public boolean w;
  public boolean x;
  public aap y;
  
  static
  {
    if ((Build.VERSION.SDK_INT == 18) || (Build.VERSION.SDK_INT == 19) || (Build.VERSION.SDK_INT == 20)) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      A = new Class[] { Context.class, AttributeSet.class, Integer.TYPE, Integer.TYPE };
      z = new zt();
      return;
    }
  }
  
  public RecyclerView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public RecyclerView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  /* Error */
  public RecyclerView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: aload_2
    //   3: iload_3
    //   4: invokespecial 158	android/view/ViewGroup:<init>	(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    //   7: aload_0
    //   8: new 160	aah
    //   11: dup
    //   12: aload_0
    //   13: invokespecial 163	aah:<init>	(Landroid/support/v7/widget/RecyclerView;)V
    //   16: putfield 165	android/support/v7/widget/RecyclerView:B	Laah;
    //   19: aload_0
    //   20: new 167	aag
    //   23: dup
    //   24: aload_0
    //   25: invokespecial 168	aag:<init>	(Landroid/support/v7/widget/RecyclerView;)V
    //   28: putfield 170	android/support/v7/widget/RecyclerView:b	Laag;
    //   31: aload_0
    //   32: new 172	abg
    //   35: dup
    //   36: invokespecial 173	abg:<init>	()V
    //   39: putfield 175	android/support/v7/widget/RecyclerView:e	Labg;
    //   42: aload_0
    //   43: new 177	zr
    //   46: dup
    //   47: aload_0
    //   48: invokespecial 178	zr:<init>	(Landroid/support/v7/widget/RecyclerView;)V
    //   51: putfield 180	android/support/v7/widget/RecyclerView:f	Ljava/lang/Runnable;
    //   54: aload_0
    //   55: new 182	android/graphics/Rect
    //   58: dup
    //   59: invokespecial 183	android/graphics/Rect:<init>	()V
    //   62: putfield 185	android/support/v7/widget/RecyclerView:E	Landroid/graphics/Rect;
    //   65: aload_0
    //   66: new 187	java/util/ArrayList
    //   69: dup
    //   70: invokespecial 188	java/util/ArrayList:<init>	()V
    //   73: putfield 190	android/support/v7/widget/RecyclerView:i	Ljava/util/ArrayList;
    //   76: aload_0
    //   77: new 187	java/util/ArrayList
    //   80: dup
    //   81: invokespecial 188	java/util/ArrayList:<init>	()V
    //   84: putfield 192	android/support/v7/widget/RecyclerView:G	Ljava/util/ArrayList;
    //   87: aload_0
    //   88: iconst_0
    //   89: putfield 194	android/support/v7/widget/RecyclerView:r	Z
    //   92: aload_0
    //   93: iconst_0
    //   94: putfield 196	android/support/v7/widget/RecyclerView:M	I
    //   97: aload_0
    //   98: new 198	aaw
    //   101: dup
    //   102: iconst_0
    //   103: invokespecial 201	aaw:<init>	(B)V
    //   106: putfield 203	android/support/v7/widget/RecyclerView:s	Lzx;
    //   109: aload_0
    //   110: iconst_0
    //   111: putfield 205	android/support/v7/widget/RecyclerView:R	I
    //   114: aload_0
    //   115: iconst_m1
    //   116: putfield 207	android/support/v7/widget/RecyclerView:S	I
    //   119: aload_0
    //   120: ldc -48
    //   122: putfield 210	android/support/v7/widget/RecyclerView:ae	F
    //   125: aload_0
    //   126: new 212	aan
    //   129: dup
    //   130: aload_0
    //   131: invokespecial 213	aan:<init>	(Landroid/support/v7/widget/RecyclerView;)V
    //   134: putfield 215	android/support/v7/widget/RecyclerView:t	Laan;
    //   137: aload_0
    //   138: new 217	aam
    //   141: dup
    //   142: invokespecial 218	aam:<init>	()V
    //   145: putfield 220	android/support/v7/widget/RecyclerView:u	Laam;
    //   148: aload_0
    //   149: iconst_0
    //   150: putfield 222	android/support/v7/widget/RecyclerView:v	Z
    //   153: aload_0
    //   154: iconst_0
    //   155: putfield 224	android/support/v7/widget/RecyclerView:w	Z
    //   158: aload_0
    //   159: new 226	zy
    //   162: dup
    //   163: aload_0
    //   164: invokespecial 227	zy:<init>	(Landroid/support/v7/widget/RecyclerView;)V
    //   167: putfield 229	android/support/v7/widget/RecyclerView:ah	Lzy;
    //   170: aload_0
    //   171: iconst_0
    //   172: putfield 231	android/support/v7/widget/RecyclerView:x	Z
    //   175: aload_0
    //   176: iconst_2
    //   177: newarray <illegal type>
    //   179: putfield 233	android/support/v7/widget/RecyclerView:aj	[I
    //   182: aload_0
    //   183: iconst_2
    //   184: newarray <illegal type>
    //   186: putfield 235	android/support/v7/widget/RecyclerView:al	[I
    //   189: aload_0
    //   190: iconst_2
    //   191: newarray <illegal type>
    //   193: putfield 237	android/support/v7/widget/RecyclerView:am	[I
    //   196: aload_0
    //   197: iconst_2
    //   198: newarray <illegal type>
    //   200: putfield 239	android/support/v7/widget/RecyclerView:an	[I
    //   203: aload_0
    //   204: new 241	zs
    //   207: dup
    //   208: aload_0
    //   209: invokespecial 242	zs:<init>	(Landroid/support/v7/widget/RecyclerView;)V
    //   212: putfield 244	android/support/v7/widget/RecyclerView:ao	Ljava/lang/Runnable;
    //   215: aload_0
    //   216: new 246	abi
    //   219: dup
    //   220: aload_0
    //   221: invokespecial 247	abi:<init>	(Landroid/support/v7/widget/RecyclerView;)V
    //   224: putfield 249	android/support/v7/widget/RecyclerView:ap	Labi;
    //   227: aload_0
    //   228: iconst_1
    //   229: invokevirtual 253	android/support/v7/widget/RecyclerView:setScrollContainer	(Z)V
    //   232: aload_0
    //   233: iconst_1
    //   234: invokevirtual 256	android/support/v7/widget/RecyclerView:setFocusableInTouchMode	(Z)V
    //   237: getstatic 114	android/os/Build$VERSION:SDK_INT	I
    //   240: bipush 16
    //   242: if_icmplt +342 -> 584
    //   245: iconst_1
    //   246: istore 4
    //   248: aload_0
    //   249: iload 4
    //   251: putfield 258	android/support/v7/widget/RecyclerView:p	Z
    //   254: aload_1
    //   255: invokestatic 264	android/view/ViewConfiguration:get	(Landroid/content/Context;)Landroid/view/ViewConfiguration;
    //   258: astore 5
    //   260: aload_0
    //   261: aload 5
    //   263: invokevirtual 268	android/view/ViewConfiguration:getScaledTouchSlop	()I
    //   266: putfield 270	android/support/v7/widget/RecyclerView:ab	I
    //   269: aload_0
    //   270: aload 5
    //   272: invokevirtual 273	android/view/ViewConfiguration:getScaledMinimumFlingVelocity	()I
    //   275: putfield 275	android/support/v7/widget/RecyclerView:ac	I
    //   278: aload_0
    //   279: aload 5
    //   281: invokevirtual 278	android/view/ViewConfiguration:getScaledMaximumFlingVelocity	()I
    //   284: putfield 280	android/support/v7/widget/RecyclerView:ad	I
    //   287: getstatic 285	ks:a	Llc;
    //   290: aload_0
    //   291: invokevirtual 290	lc:a	(Landroid/view/View;)I
    //   294: iconst_2
    //   295: if_icmpne +295 -> 590
    //   298: iconst_1
    //   299: istore 4
    //   301: aload_0
    //   302: iload 4
    //   304: invokevirtual 293	android/support/v7/widget/RecyclerView:setWillNotDraw	(Z)V
    //   307: aload_0
    //   308: getfield 203	android/support/v7/widget/RecyclerView:s	Lzx;
    //   311: aload_0
    //   312: getfield 229	android/support/v7/widget/RecyclerView:ah	Lzy;
    //   315: invokevirtual 298	zx:a	(Lzy;)V
    //   318: aload_0
    //   319: invokevirtual 300	android/support/v7/widget/RecyclerView:a	()V
    //   322: aload_0
    //   323: new 302	ya
    //   326: dup
    //   327: new 304	yc
    //   330: dup
    //   331: aload_0
    //   332: invokespecial 305	yc:<init>	(Landroid/support/v7/widget/RecyclerView;)V
    //   335: invokespecial 308	ya:<init>	(Lyc;)V
    //   338: putfield 310	android/support/v7/widget/RecyclerView:d	Lya;
    //   341: getstatic 285	ks:a	Llc;
    //   344: aload_0
    //   345: invokevirtual 312	lc:n	(Landroid/view/View;)I
    //   348: ifne +8 -> 356
    //   351: aload_0
    //   352: iconst_1
    //   353: invokestatic 315	ks:c	(Landroid/view/View;I)V
    //   356: aload_0
    //   357: aload_0
    //   358: invokevirtual 319	android/support/v7/widget/RecyclerView:getContext	()Landroid/content/Context;
    //   361: ldc_w 321
    //   364: invokevirtual 325	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   367: checkcast 327	android/view/accessibility/AccessibilityManager
    //   370: putfield 329	android/support/v7/widget/RecyclerView:L	Landroid/view/accessibility/AccessibilityManager;
    //   373: aload_0
    //   374: new 331	aap
    //   377: dup
    //   378: aload_0
    //   379: invokespecial 332	aap:<init>	(Landroid/support/v7/widget/RecyclerView;)V
    //   382: invokevirtual 335	android/support/v7/widget/RecyclerView:a	(Laap;)V
    //   385: aload_2
    //   386: ifnull +180 -> 566
    //   389: aload_1
    //   390: aload_2
    //   391: getstatic 339	wa:Q	[I
    //   394: iload_3
    //   395: iconst_0
    //   396: invokevirtual 343	android/content/Context:obtainStyledAttributes	(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
    //   399: astore 5
    //   401: aload 5
    //   403: getstatic 344	wa:R	I
    //   406: invokevirtual 350	android/content/res/TypedArray:getString	(I)Ljava/lang/String;
    //   409: astore 6
    //   411: aload 5
    //   413: invokevirtual 353	android/content/res/TypedArray:recycle	()V
    //   416: aload 6
    //   418: ifnull +148 -> 566
    //   421: aload 6
    //   423: invokevirtual 359	java/lang/String:trim	()Ljava/lang/String;
    //   426: astore 5
    //   428: aload 5
    //   430: invokevirtual 362	java/lang/String:length	()I
    //   433: ifeq +133 -> 566
    //   436: aload 5
    //   438: iconst_0
    //   439: invokevirtual 366	java/lang/String:charAt	(I)C
    //   442: bipush 46
    //   444: if_icmpne +152 -> 596
    //   447: new 368	java/lang/StringBuilder
    //   450: dup
    //   451: invokespecial 369	java/lang/StringBuilder:<init>	()V
    //   454: aload_1
    //   455: invokevirtual 372	android/content/Context:getPackageName	()Ljava/lang/String;
    //   458: invokevirtual 376	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   461: aload 5
    //   463: invokevirtual 376	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   466: invokevirtual 379	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   469: astore 5
    //   471: aload_0
    //   472: invokevirtual 383	android/support/v7/widget/RecyclerView:isInEditMode	()Z
    //   475: ifeq +171 -> 646
    //   478: aload_0
    //   479: invokevirtual 389	java/lang/Object:getClass	()Ljava/lang/Class;
    //   482: invokevirtual 393	java/lang/Class:getClassLoader	()Ljava/lang/ClassLoader;
    //   485: astore 6
    //   487: aload 6
    //   489: aload 5
    //   491: invokevirtual 399	java/lang/ClassLoader:loadClass	(Ljava/lang/String;)Ljava/lang/Class;
    //   494: ldc_w 401
    //   497: invokevirtual 405	java/lang/Class:asSubclass	(Ljava/lang/Class;)Ljava/lang/Class;
    //   500: astore 8
    //   502: aload 8
    //   504: getstatic 130	android/support/v7/widget/RecyclerView:A	[Ljava/lang/Class;
    //   507: invokevirtual 409	java/lang/Class:getConstructor	([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    //   510: astore 6
    //   512: iconst_4
    //   513: anewarray 385	java/lang/Object
    //   516: astore 7
    //   518: aload 7
    //   520: iconst_0
    //   521: aload_1
    //   522: aastore
    //   523: aload 7
    //   525: iconst_1
    //   526: aload_2
    //   527: aastore
    //   528: aload 7
    //   530: iconst_2
    //   531: iload_3
    //   532: invokestatic 413	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   535: aastore
    //   536: aload 7
    //   538: iconst_3
    //   539: iconst_0
    //   540: invokestatic 413	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   543: aastore
    //   544: aload 7
    //   546: astore_1
    //   547: aload 6
    //   549: iconst_1
    //   550: invokevirtual 418	java/lang/reflect/Constructor:setAccessible	(Z)V
    //   553: aload_0
    //   554: aload 6
    //   556: aload_1
    //   557: invokevirtual 422	java/lang/reflect/Constructor:newInstance	([Ljava/lang/Object;)Ljava/lang/Object;
    //   560: checkcast 401	aab
    //   563: invokevirtual 425	android/support/v7/widget/RecyclerView:a	(Laab;)V
    //   566: aload_0
    //   567: new 427	kd
    //   570: dup
    //   571: aload_0
    //   572: invokespecial 430	kd:<init>	(Landroid/view/View;)V
    //   575: putfield 432	android/support/v7/widget/RecyclerView:ak	Lkd;
    //   578: aload_0
    //   579: iconst_1
    //   580: invokevirtual 435	android/support/v7/widget/RecyclerView:setNestedScrollingEnabled	(Z)V
    //   583: return
    //   584: iconst_0
    //   585: istore 4
    //   587: goto -339 -> 248
    //   590: iconst_0
    //   591: istore 4
    //   593: goto -292 -> 301
    //   596: aload 5
    //   598: ldc_w 437
    //   601: invokevirtual 441	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   604: ifeq +6 -> 610
    //   607: goto -136 -> 471
    //   610: new 368	java/lang/StringBuilder
    //   613: dup
    //   614: invokespecial 369	java/lang/StringBuilder:<init>	()V
    //   617: ldc 2
    //   619: invokevirtual 445	java/lang/Class:getPackage	()Ljava/lang/Package;
    //   622: invokevirtual 450	java/lang/Package:getName	()Ljava/lang/String;
    //   625: invokevirtual 376	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   628: bipush 46
    //   630: invokevirtual 453	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   633: aload 5
    //   635: invokevirtual 376	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   638: invokevirtual 379	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   641: astore 5
    //   643: goto -172 -> 471
    //   646: aload_1
    //   647: invokevirtual 454	android/content/Context:getClassLoader	()Ljava/lang/ClassLoader;
    //   650: astore 6
    //   652: goto -165 -> 487
    //   655: astore_1
    //   656: aload 8
    //   658: iconst_0
    //   659: anewarray 118	java/lang/Class
    //   662: invokevirtual 409	java/lang/Class:getConstructor	([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    //   665: astore 6
    //   667: aconst_null
    //   668: astore_1
    //   669: goto -122 -> 547
    //   672: astore 6
    //   674: aload 6
    //   676: aload_1
    //   677: invokevirtual 458	java/lang/NoSuchMethodException:initCause	(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    //   680: pop
    //   681: new 460	java/lang/IllegalStateException
    //   684: dup
    //   685: new 368	java/lang/StringBuilder
    //   688: dup
    //   689: invokespecial 369	java/lang/StringBuilder:<init>	()V
    //   692: aload_2
    //   693: invokeinterface 463 1 0
    //   698: invokevirtual 376	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   701: ldc_w 465
    //   704: invokevirtual 376	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   707: aload 5
    //   709: invokevirtual 376	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   712: invokevirtual 379	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   715: aload 6
    //   717: invokespecial 468	java/lang/IllegalStateException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   720: athrow
    //   721: astore_1
    //   722: new 460	java/lang/IllegalStateException
    //   725: dup
    //   726: new 368	java/lang/StringBuilder
    //   729: dup
    //   730: invokespecial 369	java/lang/StringBuilder:<init>	()V
    //   733: aload_2
    //   734: invokeinterface 463 1 0
    //   739: invokevirtual 376	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   742: ldc_w 470
    //   745: invokevirtual 376	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   748: aload 5
    //   750: invokevirtual 376	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   753: invokevirtual 379	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   756: aload_1
    //   757: invokespecial 468	java/lang/IllegalStateException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   760: athrow
    //   761: astore_1
    //   762: new 460	java/lang/IllegalStateException
    //   765: dup
    //   766: new 368	java/lang/StringBuilder
    //   769: dup
    //   770: invokespecial 369	java/lang/StringBuilder:<init>	()V
    //   773: aload_2
    //   774: invokeinterface 463 1 0
    //   779: invokevirtual 376	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   782: ldc_w 472
    //   785: invokevirtual 376	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   788: aload 5
    //   790: invokevirtual 376	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   793: invokevirtual 379	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   796: aload_1
    //   797: invokespecial 468	java/lang/IllegalStateException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   800: athrow
    //   801: astore_1
    //   802: new 460	java/lang/IllegalStateException
    //   805: dup
    //   806: new 368	java/lang/StringBuilder
    //   809: dup
    //   810: invokespecial 369	java/lang/StringBuilder:<init>	()V
    //   813: aload_2
    //   814: invokeinterface 463 1 0
    //   819: invokevirtual 376	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   822: ldc_w 472
    //   825: invokevirtual 376	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   828: aload 5
    //   830: invokevirtual 376	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   833: invokevirtual 379	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   836: aload_1
    //   837: invokespecial 468	java/lang/IllegalStateException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   840: athrow
    //   841: astore_1
    //   842: new 460	java/lang/IllegalStateException
    //   845: dup
    //   846: new 368	java/lang/StringBuilder
    //   849: dup
    //   850: invokespecial 369	java/lang/StringBuilder:<init>	()V
    //   853: aload_2
    //   854: invokeinterface 463 1 0
    //   859: invokevirtual 376	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   862: ldc_w 474
    //   865: invokevirtual 376	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   868: aload 5
    //   870: invokevirtual 376	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   873: invokevirtual 379	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   876: aload_1
    //   877: invokespecial 468	java/lang/IllegalStateException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   880: athrow
    //   881: astore_1
    //   882: new 460	java/lang/IllegalStateException
    //   885: dup
    //   886: new 368	java/lang/StringBuilder
    //   889: dup
    //   890: invokespecial 369	java/lang/StringBuilder:<init>	()V
    //   893: aload_2
    //   894: invokeinterface 463 1 0
    //   899: invokevirtual 376	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   902: ldc_w 476
    //   905: invokevirtual 376	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   908: aload 5
    //   910: invokevirtual 376	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   913: invokevirtual 379	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   916: aload_1
    //   917: invokespecial 468	java/lang/IllegalStateException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   920: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	921	0	this	RecyclerView
    //   0	921	1	paramContext	Context
    //   0	921	2	paramAttributeSet	AttributeSet
    //   0	921	3	paramInt	int
    //   246	346	4	bool	boolean
    //   258	651	5	localObject1	Object
    //   409	257	6	localObject2	Object
    //   672	44	6	localNoSuchMethodException	NoSuchMethodException
    //   516	29	7	arrayOfObject	Object[]
    //   500	157	8	localClass	Class
    // Exception table:
    //   from	to	target	type
    //   502	518	655	java/lang/NoSuchMethodException
    //   528	544	655	java/lang/NoSuchMethodException
    //   656	667	672	java/lang/NoSuchMethodException
    //   471	487	721	java/lang/ClassNotFoundException
    //   487	502	721	java/lang/ClassNotFoundException
    //   502	518	721	java/lang/ClassNotFoundException
    //   528	544	721	java/lang/ClassNotFoundException
    //   547	566	721	java/lang/ClassNotFoundException
    //   646	652	721	java/lang/ClassNotFoundException
    //   656	667	721	java/lang/ClassNotFoundException
    //   674	721	721	java/lang/ClassNotFoundException
    //   471	487	761	java/lang/reflect/InvocationTargetException
    //   487	502	761	java/lang/reflect/InvocationTargetException
    //   502	518	761	java/lang/reflect/InvocationTargetException
    //   528	544	761	java/lang/reflect/InvocationTargetException
    //   547	566	761	java/lang/reflect/InvocationTargetException
    //   646	652	761	java/lang/reflect/InvocationTargetException
    //   656	667	761	java/lang/reflect/InvocationTargetException
    //   674	721	761	java/lang/reflect/InvocationTargetException
    //   471	487	801	java/lang/InstantiationException
    //   487	502	801	java/lang/InstantiationException
    //   502	518	801	java/lang/InstantiationException
    //   528	544	801	java/lang/InstantiationException
    //   547	566	801	java/lang/InstantiationException
    //   646	652	801	java/lang/InstantiationException
    //   656	667	801	java/lang/InstantiationException
    //   674	721	801	java/lang/InstantiationException
    //   471	487	841	java/lang/IllegalAccessException
    //   487	502	841	java/lang/IllegalAccessException
    //   502	518	841	java/lang/IllegalAccessException
    //   528	544	841	java/lang/IllegalAccessException
    //   547	566	841	java/lang/IllegalAccessException
    //   646	652	841	java/lang/IllegalAccessException
    //   656	667	841	java/lang/IllegalAccessException
    //   674	721	841	java/lang/IllegalAccessException
    //   471	487	881	java/lang/ClassCastException
    //   487	502	881	java/lang/ClassCastException
    //   502	518	881	java/lang/ClassCastException
    //   528	544	881	java/lang/ClassCastException
    //   547	566	881	java/lang/ClassCastException
    //   646	652	881	java/lang/ClassCastException
    //   656	667	881	java/lang/ClassCastException
    //   674	721	881	java/lang/ClassCastException
  }
  
  private void A()
  {
    t.a();
    if (h != null) {
      h.D();
    }
  }
  
  private void B()
  {
    if (T != null) {
      T.clear();
    }
    stopNestedScroll();
    boolean bool2 = false;
    if (N != null) {
      bool2 = N.c();
    }
    boolean bool1 = bool2;
    if (O != null) {
      bool1 = bool2 | O.c();
    }
    bool2 = bool1;
    if (P != null) {
      bool2 = bool1 | P.c();
    }
    bool1 = bool2;
    if (Q != null) {
      bool1 = bool2 | Q.c();
    }
    if (bool1) {
      ks.a.m(this);
    }
  }
  
  private void C()
  {
    B();
    a(0);
  }
  
  private void D()
  {
    boolean bool2 = true;
    if (r)
    {
      c.a();
      x();
      h.b();
    }
    int i1;
    label67:
    aam localaam;
    if ((s != null) && (h.g()))
    {
      c.b();
      if ((!v) && (!w)) {
        break label202;
      }
      i1 = 1;
      localaam = u;
      if ((!l) || (s == null) || ((!r) && (i1 == 0) && (!h.t)) || ((r) && (!g.b))) {
        break label207;
      }
      bool1 = true;
      label127:
      g = bool1;
      localaam = u;
      if ((!u.g) || (i1 == 0) || (r)) {
        break label217;
      }
      if ((s == null) || (!h.g())) {
        break label212;
      }
      i1 = 1;
      label179:
      if (i1 == 0) {
        break label217;
      }
    }
    label202:
    label207:
    label212:
    label217:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      h = bool1;
      return;
      c.e();
      break;
      i1 = 0;
      break label67;
      bool1 = false;
      break label127;
      i1 = 0;
      break label179;
    }
  }
  
  private void a(MotionEvent paramMotionEvent)
  {
    int i1 = jx.b(paramMotionEvent);
    if (jx.b(paramMotionEvent, i1) == S) {
      if (i1 != 0) {
        break label75;
      }
    }
    label75:
    for (i1 = 1;; i1 = 0)
    {
      S = jx.b(paramMotionEvent, i1);
      int i2 = (int)(jx.c(paramMotionEvent, i1) + 0.5F);
      W = i2;
      U = i2;
      i1 = (int)(jx.d(paramMotionEvent, i1) + 0.5F);
      aa = i1;
      V = i1;
      return;
    }
  }
  
  public static aao b(View paramView)
  {
    if (paramView == null) {
      return null;
    }
    return getLayoutParamsc;
  }
  
  public aao a(View paramView)
  {
    ViewParent localViewParent = paramView.getParent();
    if ((localViewParent != null) && (localViewParent != this)) {
      throw new IllegalArgumentException("View " + paramView + " is not a direct child of " + this);
    }
    return b(paramView);
  }
  
  void a()
  {
    c = new zn(new wq(this));
  }
  
  public void a(int paramInt)
  {
    if (paramInt == R) {
      return;
    }
    R = paramInt;
    if (paramInt != 2) {
      A();
    }
    g(paramInt);
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    int i1 = 0;
    if (h == null) {
      Log.e("RecyclerView", "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
    }
    for (;;)
    {
      return;
      if (!n)
      {
        if (!h.i()) {
          paramInt1 = 0;
        }
        if (!h.j()) {
          paramInt2 = i1;
        }
        while ((paramInt1 != 0) || (paramInt2 != 0))
        {
          t.b(paramInt1, paramInt2);
          return;
        }
      }
    }
  }
  
  public void a(int paramInt1, int paramInt2, Object paramObject)
  {
    int i2 = d.c();
    int i1 = 0;
    while (i1 < i2)
    {
      View localView = d.c(i1);
      aao localaao = b(localView);
      if ((localaao != null) && (!localaao.c()) && (b >= paramInt1) && (b < paramInt1 + paramInt2))
      {
        localaao.b(2);
        localaao.a(paramObject);
        getLayoutParamse = true;
      }
      i1 += 1;
    }
    b.c(paramInt1, paramInt2);
  }
  
  public void a(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    int i2 = d.c();
    int i1 = 0;
    if (i1 < i2)
    {
      aao localaao = b(d.c(i1));
      if ((localaao != null) && (!localaao.c()))
      {
        if (b < paramInt1 + paramInt2) {
          break label82;
        }
        localaao.a(-paramInt2, paramBoolean);
        u.e = true;
      }
      for (;;)
      {
        i1 += 1;
        break;
        label82:
        if (b >= paramInt1)
        {
          localaao.a(paramInt1 - 1, -paramInt2, paramBoolean);
          u.e = true;
        }
      }
    }
    b.a(paramInt1, paramInt2, paramBoolean);
    requestLayout();
  }
  
  public void a(aaa paramaaa)
  {
    if (h != null) {
      h.a("Cannot add item decoration during a scroll  or layout");
    }
    if (i.isEmpty()) {
      setWillNotDraw(false);
    }
    i.add(paramaaa);
    u();
    requestLayout();
  }
  
  public void a(aab paramaab)
  {
    if (paramaab == h) {
      return;
    }
    if (h != null)
    {
      if (j) {
        h.b(this, b);
      }
      h.a(null);
    }
    b.a();
    d.a();
    h = paramaab;
    if (paramaab != null)
    {
      if (r != null) {
        throw new IllegalArgumentException("LayoutManager " + paramaab + " is already attached to a RecyclerView: " + r);
      }
      h.a(this);
      if (j) {
        h.s();
      }
    }
    requestLayout();
  }
  
  public void a(aad paramaad)
  {
    G.add(paramaad);
  }
  
  @Deprecated
  public void a(aae paramaae)
  {
    af = paramaae;
  }
  
  public void a(aao paramaao)
  {
    View localView = a;
    if (localView.getParent() == this) {}
    for (int i1 = 1;; i1 = 0)
    {
      b.b(a(localView));
      if (!paramaao.n()) {
        break;
      }
      d.a(localView, -1, localView.getLayoutParams(), true);
      return;
    }
    if (i1 == 0)
    {
      d.a(localView);
      return;
    }
    d.e(localView);
  }
  
  public void a(aao paramaao, zz paramzz)
  {
    paramaao.a(0, 8192);
    if ((u.i) && (paramaao.t()) && (!paramaao.m()) && (!paramaao.c()))
    {
      long l1 = b(paramaao);
      e.a(l1, paramaao);
    }
    e.a(paramaao, paramzz);
  }
  
  public void a(aap paramaap)
  {
    y = paramaap;
    ks.a(this, y);
  }
  
  public void a(String paramString)
  {
    if (r())
    {
      if (paramString == null) {
        throw new IllegalStateException("Cannot call this method while RecyclerView is computing a layout or scrolling");
      }
      throw new IllegalStateException(paramString);
    }
  }
  
  public void a(zu paramzu)
  {
    g();
    if (g != null) {
      g.b(B);
    }
    if (s != null) {
      s.f();
    }
    if (h != null)
    {
      h.c(b);
      h.b(b);
    }
    b.a();
    c.a();
    zu localzu = g;
    g = paramzu;
    if (paramzu != null) {
      paramzu.a(B);
    }
    b.a(localzu, g, false);
    u.e = true;
    x();
    requestLayout();
  }
  
  public void a(boolean paramBoolean)
  {
    if (I)
    {
      if ((paramBoolean) && (m) && (!n) && (h != null) && (g != null)) {
        t();
      }
      I = false;
      if (!n) {
        m = false;
      }
    }
  }
  
  boolean a(int paramInt1, int paramInt2, MotionEvent paramMotionEvent)
  {
    int i2 = 0;
    int i8 = 0;
    int i4 = 0;
    int i6 = 0;
    int i5 = 0;
    int i1 = 0;
    int i3 = 0;
    int i7 = 0;
    e();
    if (g != null)
    {
      f();
      o();
      aal.a("RV Scroll");
      i2 = i8;
      if (paramInt1 != 0)
      {
        i1 = h.a(paramInt1, b, u);
        i2 = paramInt1 - i1;
      }
      i3 = i7;
      i4 = i6;
      if (paramInt2 != 0)
      {
        i3 = h.b(paramInt2, b, u);
        i4 = paramInt2 - i3;
      }
      aal.b();
      z();
      p();
      a(false);
      i5 = i1;
    }
    if (!i.isEmpty()) {
      invalidate();
    }
    if (dispatchNestedScroll(i5, i3, i2, i4, al))
    {
      W -= al[0];
      aa -= al[1];
      if (paramMotionEvent != null) {
        paramMotionEvent.offsetLocation(al[0], al[1]);
      }
      paramMotionEvent = an;
      paramMotionEvent[0] += al[0];
      paramMotionEvent = an;
      paramMotionEvent[1] += al[1];
    }
    while (ks.a.a(this) == 2)
    {
      if ((i5 != 0) || (i3 != 0)) {
        h(i5, i3);
      }
      if (!awakenScrollBars()) {
        invalidate();
      }
      if ((i5 == 0) && (i3 == 0)) {
        break;
      }
      return true;
    }
    float f1;
    float f2;
    float f3;
    float f4;
    if (paramMotionEvent != null)
    {
      f1 = paramMotionEvent.getX();
      f2 = i2;
      f3 = paramMotionEvent.getY();
      f4 = i4;
      i2 = 0;
      if (f2 >= 0.0F) {
        break label466;
      }
      i();
      i1 = i2;
      if (N.a(-f2 / getWidth(), 1.0F - f3 / getHeight())) {
        i1 = 1;
      }
      label386:
      if (f4 >= 0.0F) {
        break label517;
      }
      k();
      i2 = i1;
      if (O.a(-f4 / getHeight(), f1 / getWidth())) {
        i2 = 1;
      }
    }
    for (;;)
    {
      if ((i2 != 0) || (f2 != 0.0F) || (f4 != 0.0F)) {
        ks.a.m(this);
      }
      c(paramInt1, paramInt2);
      break;
      label466:
      i1 = i2;
      if (f2 <= 0.0F) {
        break label386;
      }
      j();
      i1 = i2;
      if (!P.a(f2 / getWidth(), f3 / getHeight())) {
        break label386;
      }
      i1 = 1;
      break label386;
      label517:
      i2 = i1;
      if (f4 > 0.0F)
      {
        l();
        i2 = i1;
        if (Q.a(f4 / getHeight(), 1.0F - f1 / getWidth())) {
          i2 = 1;
        }
      }
    }
    return false;
  }
  
  boolean a(AccessibilityEvent paramAccessibilityEvent)
  {
    boolean bool = false;
    int i2 = 0;
    if (r()) {
      if (paramAccessibilityEvent == null) {
        break label49;
      }
    }
    label49:
    for (int i1 = ms.a.a(paramAccessibilityEvent);; i1 = 0)
    {
      if (i1 == 0) {
        i1 = i2;
      }
      for (;;)
      {
        K = (i1 | K);
        bool = true;
        return bool;
      }
    }
  }
  
  public void addFocusables(ArrayList<View> paramArrayList, int paramInt1, int paramInt2)
  {
    super.addFocusables(paramArrayList, paramInt1, paramInt2);
  }
  
  long b(aao paramaao)
  {
    if (g.b) {
      return d;
    }
    return b;
  }
  
  public void b()
  {
    k = true;
  }
  
  public void b(int paramInt)
  {
    if (n) {
      return;
    }
    h();
    if (h == null)
    {
      Log.e("RecyclerView", "Cannot scroll to position a LayoutManager set. Call setLayoutManager with a non-null argument.");
      return;
    }
    h.c(paramInt);
    awakenScrollBars();
  }
  
  public void b(aaa paramaaa)
  {
    a(paramaaa);
  }
  
  public void b(aae paramaae)
  {
    if (ag == null) {
      ag = new ArrayList();
    }
    ag.add(paramaae);
  }
  
  public boolean b(int paramInt1, int paramInt2)
  {
    if (h == null) {
      Log.e("RecyclerView", "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument.");
    }
    boolean bool2;
    int i1;
    do
    {
      do
      {
        return false;
      } while (n);
      bool1 = h.i();
      bool2 = h.j();
      if (bool1)
      {
        i1 = paramInt1;
        if (Math.abs(paramInt1) >= ac) {}
      }
      else
      {
        i1 = 0;
      }
      if (bool2)
      {
        paramInt1 = paramInt2;
        if (Math.abs(paramInt2) >= ac) {}
      }
      else
      {
        paramInt1 = 0;
      }
    } while (((i1 == 0) && (paramInt1 == 0)) || (dispatchNestedPreFling(i1, paramInt1)));
    if ((bool1) || (bool2)) {}
    for (boolean bool1 = true;; bool1 = false)
    {
      dispatchNestedFling(i1, paramInt1, bool1);
      if (!bool1) {
        break;
      }
      paramInt2 = Math.max(-ad, Math.min(i1, ad));
      paramInt1 = Math.max(-ad, Math.min(paramInt1, ad));
      t.a(paramInt2, paramInt1);
      return true;
    }
  }
  
  public int c(View paramView)
  {
    paramView = b(paramView);
    if (paramView != null) {
      return paramView.d();
    }
    return -1;
  }
  
  public zu c()
  {
    return g;
  }
  
  public void c(int paramInt)
  {
    if (h == null) {
      return;
    }
    h.c(paramInt);
    awakenScrollBars();
  }
  
  public void c(int paramInt1, int paramInt2)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (N != null)
    {
      bool1 = bool2;
      if (!N.a())
      {
        bool1 = bool2;
        if (paramInt1 > 0) {
          bool1 = N.c();
        }
      }
    }
    bool2 = bool1;
    if (P != null)
    {
      bool2 = bool1;
      if (!P.a())
      {
        bool2 = bool1;
        if (paramInt1 < 0) {
          bool2 = bool1 | P.c();
        }
      }
    }
    bool1 = bool2;
    if (O != null)
    {
      bool1 = bool2;
      if (!O.a())
      {
        bool1 = bool2;
        if (paramInt2 > 0) {
          bool1 = bool2 | O.c();
        }
      }
    }
    bool2 = bool1;
    if (Q != null)
    {
      bool2 = bool1;
      if (!Q.a())
      {
        bool2 = bool1;
        if (paramInt2 < 0) {
          bool2 = bool1 | Q.c();
        }
      }
    }
    if (bool2) {
      ks.a.m(this);
    }
  }
  
  public boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return ((paramLayoutParams instanceof aac)) && (h.a((aac)paramLayoutParams));
  }
  
  public int computeHorizontalScrollExtent()
  {
    if (h.i()) {
      return h.d(u);
    }
    return 0;
  }
  
  public int computeHorizontalScrollOffset()
  {
    if (h.i()) {
      return h.b(u);
    }
    return 0;
  }
  
  public int computeHorizontalScrollRange()
  {
    if (h.i()) {
      return h.f(u);
    }
    return 0;
  }
  
  public int computeVerticalScrollExtent()
  {
    if (h.j()) {
      return h.e(u);
    }
    return 0;
  }
  
  public int computeVerticalScrollOffset()
  {
    if (h.j()) {
      return h.c(u);
    }
    return 0;
  }
  
  public int computeVerticalScrollRange()
  {
    if (h.j()) {
      return h.g(u);
    }
    return 0;
  }
  
  public aab d()
  {
    return h;
  }
  
  public aao d(int paramInt)
  {
    int i2 = d.c();
    int i1 = 0;
    while (i1 < i2)
    {
      aao localaao = b(d.c(i1));
      if ((localaao != null) && (!localaao.m()) && (b == paramInt)) {
        return localaao;
      }
      i1 += 1;
    }
    return null;
  }
  
  public Rect d(View paramView)
  {
    aac localaac = (aac)paramView.getLayoutParams();
    if (!e) {
      return d;
    }
    Rect localRect = d;
    localRect.set(0, 0, 0, 0);
    int i2 = i.size();
    int i1 = 0;
    while (i1 < i2)
    {
      E.set(0, 0, 0, 0);
      ((aaa)i.get(i1)).a(E, paramView, this);
      left += E.left;
      top += E.top;
      right += E.right;
      bottom += E.bottom;
      i1 += 1;
    }
    e = false;
    return localRect;
  }
  
  public void d(int paramInt1, int paramInt2)
  {
    if (paramInt1 < 0)
    {
      i();
      N.a(-paramInt1);
      if (paramInt2 >= 0) {
        break label72;
      }
      k();
      O.a(-paramInt2);
    }
    for (;;)
    {
      if ((paramInt1 != 0) || (paramInt2 != 0)) {
        ks.a.m(this);
      }
      return;
      if (paramInt1 <= 0) {
        break;
      }
      j();
      P.a(paramInt1);
      break;
      label72:
      if (paramInt2 > 0)
      {
        l();
        Q.a(paramInt2);
      }
    }
  }
  
  public boolean dispatchNestedFling(float paramFloat1, float paramFloat2, boolean paramBoolean)
  {
    return ak.a(paramFloat1, paramFloat2, paramBoolean);
  }
  
  public boolean dispatchNestedPreFling(float paramFloat1, float paramFloat2)
  {
    return ak.a(paramFloat1, paramFloat2);
  }
  
  public boolean dispatchNestedPreScroll(int paramInt1, int paramInt2, int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    return ak.a(paramInt1, paramInt2, paramArrayOfInt1, paramArrayOfInt2);
  }
  
  public boolean dispatchNestedScroll(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int[] paramArrayOfInt)
  {
    return ak.a(paramInt1, paramInt2, paramInt3, paramInt4, paramArrayOfInt);
  }
  
  protected void dispatchRestoreInstanceState(SparseArray<Parcelable> paramSparseArray)
  {
    dispatchThawSelfOnly(paramSparseArray);
  }
  
  protected void dispatchSaveInstanceState(SparseArray<Parcelable> paramSparseArray)
  {
    dispatchFreezeSelfOnly(paramSparseArray);
  }
  
  public void draw(Canvas paramCanvas)
  {
    int i3 = 1;
    int i4 = 0;
    super.draw(paramCanvas);
    int i2 = i.size();
    int i1 = 0;
    while (i1 < i2)
    {
      i.get(i1);
      i1 += 1;
    }
    int i5;
    if ((N != null) && (!N.a()))
    {
      i5 = paramCanvas.save();
      if (D)
      {
        i1 = getPaddingBottom();
        paramCanvas.rotate(270.0F);
        paramCanvas.translate(i1 + -getHeight(), 0.0F);
        if ((N == null) || (!N.a(paramCanvas))) {
          break label448;
        }
        i2 = 1;
        label117:
        paramCanvas.restoreToCount(i5);
      }
    }
    for (;;)
    {
      i1 = i2;
      if (O != null)
      {
        i1 = i2;
        if (!O.a())
        {
          i5 = paramCanvas.save();
          if (D) {
            paramCanvas.translate(getPaddingLeft(), getPaddingTop());
          }
          if ((O == null) || (!O.a(paramCanvas))) {
            break label453;
          }
          i1 = 1;
          label191:
          i1 = i2 | i1;
          paramCanvas.restoreToCount(i5);
        }
      }
      i2 = i1;
      if (P != null)
      {
        i2 = i1;
        if (!P.a())
        {
          i5 = paramCanvas.save();
          int i6 = getWidth();
          if (!D) {
            break label458;
          }
          i2 = getPaddingTop();
          label246:
          paramCanvas.rotate(90.0F);
          paramCanvas.translate(-i2, -i6);
          if ((P == null) || (!P.a(paramCanvas))) {
            break label463;
          }
          i2 = 1;
          label284:
          i2 = i1 | i2;
          paramCanvas.restoreToCount(i5);
        }
      }
      i1 = i2;
      if (Q != null)
      {
        i1 = i2;
        if (!Q.a())
        {
          i5 = paramCanvas.save();
          paramCanvas.rotate(180.0F);
          if (!D) {
            break label468;
          }
          paramCanvas.translate(-getWidth() + getPaddingRight(), -getHeight() + getPaddingBottom());
          label361:
          i1 = i4;
          if (Q != null)
          {
            i1 = i4;
            if (Q.a(paramCanvas)) {
              i1 = 1;
            }
          }
          i1 = i2 | i1;
          paramCanvas.restoreToCount(i5);
        }
      }
      if ((i1 == 0) && (s != null) && (i.size() > 0) && (s.g())) {
        i1 = i3;
      }
      for (;;)
      {
        if (i1 != 0) {
          ks.a.m(this);
        }
        return;
        i1 = 0;
        break;
        label448:
        i2 = 0;
        break label117;
        label453:
        i1 = 0;
        break label191;
        label458:
        i2 = 0;
        break label246;
        label463:
        i2 = 0;
        break label284;
        label468:
        paramCanvas.translate(-getWidth(), -getHeight());
        break label361;
      }
      i2 = 0;
    }
  }
  
  public boolean drawChild(Canvas paramCanvas, View paramView, long paramLong)
  {
    return super.drawChild(paramCanvas, paramView, paramLong);
  }
  
  public void e()
  {
    int i3 = 0;
    if (!l) {}
    label160:
    label167:
    do
    {
      do
      {
        return;
        if (r)
        {
          aal.a("RV FullInvalidate");
          t();
          aal.b();
          return;
        }
      } while (!c.d());
      if ((c.a(4)) && (!c.a(11)))
      {
        aal.a("RV PartialInvalidate");
        f();
        c.b();
        int i1;
        if (!m)
        {
          int i4 = d.b();
          i1 = 0;
          int i2 = i3;
          if (i1 < i4)
          {
            aao localaao = b(d.b(i1));
            if ((localaao == null) || (localaao.c()) || (!localaao.t())) {
              break label160;
            }
            i2 = 1;
          }
          if (i2 == 0) {
            break label167;
          }
          t();
        }
        for (;;)
        {
          a(true);
          aal.b();
          return;
          i1 += 1;
          break;
          c.c();
        }
      }
    } while (!c.d());
    aal.a("RV FullInvalidate");
    t();
    aal.b();
  }
  
  public void e(int paramInt)
  {
    int i2 = d.b();
    int i1 = 0;
    while (i1 < i2)
    {
      d.b(i1).offsetTopAndBottom(paramInt);
      i1 += 1;
    }
  }
  
  public void e(int paramInt1, int paramInt2)
  {
    int i2 = View.MeasureSpec.getMode(paramInt1);
    int i1 = View.MeasureSpec.getMode(paramInt2);
    paramInt1 = View.MeasureSpec.getSize(paramInt1);
    paramInt2 = View.MeasureSpec.getSize(paramInt2);
    switch (i2)
    {
    default: 
      paramInt1 = ks.a.p(this);
    }
    switch (i1)
    {
    default: 
      paramInt2 = ks.a.q(this);
    }
    setMeasuredDimension(paramInt1, paramInt2);
  }
  
  public void e(View paramView)
  {
    b(paramView);
    if (q != null)
    {
      int i1 = q.size() - 1;
      while (i1 >= 0)
      {
        q.get(i1);
        i1 -= 1;
      }
    }
  }
  
  public void f()
  {
    if (!I)
    {
      I = true;
      if (!n) {
        m = false;
      }
    }
  }
  
  public void f(int paramInt)
  {
    int i2 = d.b();
    int i1 = 0;
    while (i1 < i2)
    {
      d.b(i1).offsetLeftAndRight(paramInt);
      i1 += 1;
    }
  }
  
  public void f(int paramInt1, int paramInt2)
  {
    int i5 = d.c();
    int i1;
    int i2;
    int i3;
    int i4;
    label25:
    aao localaao;
    if (paramInt1 < paramInt2)
    {
      i1 = -1;
      i2 = paramInt2;
      i3 = paramInt1;
      i4 = 0;
      if (i4 >= i5) {
        break label127;
      }
      localaao = b(d.c(i4));
      if ((localaao != null) && (b >= i3) && (b <= i2))
      {
        if (b != paramInt1) {
          break label117;
        }
        localaao.a(paramInt2 - paramInt1, false);
      }
    }
    for (;;)
    {
      u.e = true;
      i4 += 1;
      break label25;
      i1 = 1;
      i2 = paramInt1;
      i3 = paramInt2;
      break;
      label117:
      localaao.a(i1, false);
    }
    label127:
    b.a(paramInt1, paramInt2);
    requestLayout();
  }
  
  public View focusSearch(View paramView, int paramInt)
  {
    View localView2 = FocusFinder.getInstance().findNextFocus(this, paramView, paramInt);
    View localView1 = localView2;
    if (localView2 == null)
    {
      localView1 = localView2;
      if (g != null)
      {
        localView1 = localView2;
        if (h != null)
        {
          localView1 = localView2;
          if (!r())
          {
            localView1 = localView2;
            if (!n)
            {
              f();
              localView1 = h.d(paramInt, b, u);
              a(false);
            }
          }
        }
      }
    }
    if (localView1 != null) {
      return localView1;
    }
    return super.focusSearch(paramView, paramInt);
  }
  
  public void g()
  {
    if (n)
    {
      a("Do not setLayoutFrozen in layout or scroll");
      n = false;
      if ((m) && (h != null) && (g != null)) {
        requestLayout();
      }
      m = false;
    }
  }
  
  void g(int paramInt)
  {
    if (af != null) {
      af.a(this, paramInt);
    }
    if (ag != null)
    {
      int i1 = ag.size() - 1;
      while (i1 >= 0)
      {
        ((aae)ag.get(i1)).a(this, paramInt);
        i1 -= 1;
      }
    }
  }
  
  public void g(int paramInt1, int paramInt2)
  {
    int i2 = d.c();
    int i1 = 0;
    while (i1 < i2)
    {
      aao localaao = b(d.c(i1));
      if ((localaao != null) && (!localaao.c()) && (b >= paramInt1))
      {
        localaao.a(paramInt2, false);
        u.e = true;
      }
      i1 += 1;
    }
    b.b(paramInt1, paramInt2);
    requestLayout();
  }
  
  public ViewGroup.LayoutParams generateDefaultLayoutParams()
  {
    if (h == null) {
      throw new IllegalStateException("RecyclerView has no LayoutManager");
    }
    return h.f();
  }
  
  public ViewGroup.LayoutParams generateLayoutParams(AttributeSet paramAttributeSet)
  {
    if (h == null) {
      throw new IllegalStateException("RecyclerView has no LayoutManager");
    }
    return h.a(getContext(), paramAttributeSet);
  }
  
  public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    if (h == null) {
      throw new IllegalStateException("RecyclerView has no LayoutManager");
    }
    return h.a(paramLayoutParams);
  }
  
  public int getBaseline()
  {
    if (h != null) {
      return -1;
    }
    return super.getBaseline();
  }
  
  protected int getChildDrawingOrder(int paramInt1, int paramInt2)
  {
    if (ai == null) {
      return super.getChildDrawingOrder(paramInt1, paramInt2);
    }
    return ai.a_();
  }
  
  public void h()
  {
    a(0);
    A();
  }
  
  public void h(int paramInt1, int paramInt2)
  {
    int i1 = getScrollX();
    int i2 = getScrollY();
    onScrollChanged(i1, i2, i1, i2);
    if (af != null) {
      af.a(this, paramInt1, paramInt2);
    }
    if (ag != null)
    {
      i1 = ag.size() - 1;
      while (i1 >= 0)
      {
        ((aae)ag.get(i1)).a(this, paramInt1, paramInt2);
        i1 -= 1;
      }
    }
  }
  
  public boolean hasNestedScrollingParent()
  {
    return ak.b();
  }
  
  void i()
  {
    if (N != null) {
      return;
    }
    N = new oz(getContext());
    if (D)
    {
      N.a(getMeasuredHeight() - getPaddingTop() - getPaddingBottom(), getMeasuredWidth() - getPaddingLeft() - getPaddingRight());
      return;
    }
    N.a(getMeasuredHeight(), getMeasuredWidth());
  }
  
  public boolean isAttachedToWindow()
  {
    return j;
  }
  
  public boolean isNestedScrollingEnabled()
  {
    return ak.a();
  }
  
  void j()
  {
    if (P != null) {
      return;
    }
    P = new oz(getContext());
    if (D)
    {
      P.a(getMeasuredHeight() - getPaddingTop() - getPaddingBottom(), getMeasuredWidth() - getPaddingLeft() - getPaddingRight());
      return;
    }
    P.a(getMeasuredHeight(), getMeasuredWidth());
  }
  
  void k()
  {
    if (O != null) {
      return;
    }
    O = new oz(getContext());
    if (D)
    {
      O.a(getMeasuredWidth() - getPaddingLeft() - getPaddingRight(), getMeasuredHeight() - getPaddingTop() - getPaddingBottom());
      return;
    }
    O.a(getMeasuredWidth(), getMeasuredHeight());
  }
  
  void l()
  {
    if (Q != null) {
      return;
    }
    Q = new oz(getContext());
    if (D)
    {
      Q.a(getMeasuredWidth() - getPaddingLeft() - getPaddingRight(), getMeasuredHeight() - getPaddingTop() - getPaddingBottom());
      return;
    }
    Q.a(getMeasuredWidth(), getMeasuredHeight());
  }
  
  void m()
  {
    Q = null;
    O = null;
    P = null;
    N = null;
  }
  
  public void n()
  {
    if (s != null)
    {
      s.f();
      s.a(null);
    }
    s = null;
    if (s != null) {
      s.a(ah);
    }
  }
  
  public void o()
  {
    M += 1;
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    M = 0;
    j = true;
    l = false;
    if (h != null) {
      h.s();
    }
    x = false;
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    if (s != null) {
      s.f();
    }
    l = false;
    h();
    j = false;
    if (h != null) {
      h.b(this, b);
    }
    removeCallbacks(ao);
    while (abh.d.a() != null) {}
  }
  
  public void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    int i2 = i.size();
    int i1 = 0;
    while (i1 < i2)
    {
      i.get(i1);
      i1 += 1;
    }
  }
  
  public boolean onGenericMotionEvent(MotionEvent paramMotionEvent)
  {
    float f3 = 0.0F;
    if (h == null) {}
    label173:
    label176:
    for (;;)
    {
      return false;
      if ((!n) && ((jx.a.b(paramMotionEvent) & 0x2) != 0) && (paramMotionEvent.getAction() == 8))
      {
        float f1;
        if (h.j())
        {
          f1 = -jx.e(paramMotionEvent, 9);
          if (!h.i()) {
            break label173;
          }
        }
        for (float f2 = jx.e(paramMotionEvent, 10);; f2 = 0.0F)
        {
          if ((f1 == 0.0F) && (f2 == 0.0F)) {
            break label176;
          }
          if (ae == Float.MIN_VALUE)
          {
            TypedValue localTypedValue = new TypedValue();
            if (getContext().getTheme().resolveAttribute(16842829, localTypedValue, true)) {
              ae = localTypedValue.getDimension(getContext().getResources().getDisplayMetrics());
            }
          }
          else
          {
            f3 = ae;
          }
          a((int)(f2 * f3), (int)(f1 * f3), paramMotionEvent);
          return false;
          f1 = 0.0F;
          break;
        }
      }
    }
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    int i3 = -1;
    boolean bool1 = true;
    if (n)
    {
      bool1 = false;
      return bool1;
    }
    int i2 = paramMotionEvent.getAction();
    if ((i2 == 3) || (i2 == 0)) {
      H = null;
    }
    int i4 = G.size();
    int i1 = 0;
    if (i1 < i4)
    {
      aad localaad = (aad)G.get(i1);
      if ((localaad.a(paramMotionEvent)) && (i2 != 3)) {
        H = localaad;
      }
    }
    for (i1 = 1;; i1 = 0)
    {
      if (i1 == 0) {
        break label112;
      }
      C();
      return true;
      i1 += 1;
      break;
    }
    label112:
    if (h == null) {
      return false;
    }
    boolean bool2 = h.i();
    boolean bool3 = h.j();
    if (T == null) {
      T = VelocityTracker.obtain();
    }
    T.addMovement(paramMotionEvent);
    i2 = jx.a(paramMotionEvent);
    i1 = jx.b(paramMotionEvent);
    switch (i2)
    {
    case 4: 
    default: 
      if (R != 1) {
        return false;
      }
      break;
    case 0: 
      label216:
      if (J) {
        J = false;
      }
      S = jx.b(paramMotionEvent, 0);
      i1 = (int)(paramMotionEvent.getX() + 0.5F);
      W = i1;
      U = i1;
      i1 = (int)(paramMotionEvent.getY() + 0.5F);
      aa = i1;
      V = i1;
      if (R == 2)
      {
        getParent().requestDisallowInterceptTouchEvent(true);
        a(1);
      }
      paramMotionEvent = an;
      an[1] = 0;
      paramMotionEvent[0] = 0;
      if (!bool2) {}
      break;
    }
    for (i1 = 1;; i1 = 0)
    {
      i2 = i1;
      if (bool3) {
        i2 = i1 | 0x2;
      }
      startNestedScroll(i2);
      break label216;
      S = jx.b(paramMotionEvent, i1);
      i2 = (int)(jx.c(paramMotionEvent, i1) + 0.5F);
      W = i2;
      U = i2;
      i1 = (int)(jx.d(paramMotionEvent, i1) + 0.5F);
      aa = i1;
      V = i1;
      break label216;
      i2 = jx.a(paramMotionEvent, S);
      if (i2 < 0)
      {
        Log.e("RecyclerView", "Error processing scroll; pointer index for id " + S + " not found. Did any MotionEvents get skipped?");
        return false;
      }
      i1 = (int)(jx.c(paramMotionEvent, i2) + 0.5F);
      i2 = (int)(jx.d(paramMotionEvent, i2) + 0.5F);
      if (R == 1) {
        break label216;
      }
      i1 -= U;
      i4 = i2 - V;
      int i5;
      if ((bool2) && (Math.abs(i1) > ab))
      {
        i2 = U;
        i5 = ab;
        if (i1 < 0)
        {
          i1 = -1;
          label533:
          W = (i1 * i5 + i2);
        }
      }
      for (i1 = 1;; i1 = 0)
      {
        i2 = i1;
        if (bool3)
        {
          i2 = i1;
          if (Math.abs(i4) > ab)
          {
            i2 = V;
            i5 = ab;
            if (i4 >= 0) {
              break label614;
            }
          }
        }
        label614:
        for (i1 = i3;; i1 = 1)
        {
          aa = (i2 + i1 * i5);
          i2 = 1;
          if (i2 == 0) {
            break;
          }
          a(1);
          break;
          i1 = 1;
          break label533;
        }
        a(paramMotionEvent);
        break label216;
        T.clear();
        stopNestedScroll();
        break label216;
        C();
        break label216;
        break;
      }
    }
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    f();
    aal.a("RV OnLayout");
    t();
    aal.b();
    a(false);
    l = true;
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    if (o)
    {
      f();
      D();
      if (u.h)
      {
        u.f = true;
        o = false;
        a(false);
      }
    }
    else
    {
      if (g == null) {
        break label104;
      }
      u.b = g.a();
      label64:
      if (h != null) {
        break label115;
      }
      e(paramInt1, paramInt2);
    }
    for (;;)
    {
      u.f = false;
      return;
      c.e();
      u.f = false;
      break;
      label104:
      u.b = 0;
      break label64;
      label115:
      h.b(paramInt1, paramInt2);
    }
  }
  
  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    C = ((aai)paramParcelable);
    super.onRestoreInstanceState(C.getSuperState());
    if ((h != null) && (C.a != null)) {
      h.a(C.a);
    }
  }
  
  protected Parcelable onSaveInstanceState()
  {
    aai localaai = new aai(super.onSaveInstanceState());
    if (C != null)
    {
      a = C.a;
      return localaai;
    }
    if (h != null)
    {
      a = h.h();
      return localaai;
    }
    a = null;
    return localaai;
  }
  
  public void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    if ((paramInt1 != paramInt3) || (paramInt2 != paramInt4)) {
      m();
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    int i7 = 0;
    if ((n) || (J)) {}
    label141:
    label150:
    label156:
    do
    {
      return false;
      i1 = paramMotionEvent.getAction();
      if (H != null)
      {
        if (i1 == 0) {
          H = null;
        }
      }
      else
      {
        if (i1 == 0) {
          break label150;
        }
        i2 = G.size();
        i1 = 0;
        if (i1 >= i2) {
          break label150;
        }
        localObject = (aad)G.get(i1);
        if (!((aad)localObject).a(paramMotionEvent)) {
          break label141;
        }
        H = ((aad)localObject);
        i1 = 1;
      }
      for (;;)
      {
        if (i1 == 0) {
          break label156;
        }
        C();
        return true;
        H.a(this, paramMotionEvent);
        if ((i1 == 3) || (i1 == 1)) {
          H = null;
        }
        i1 = 1;
        continue;
        i1 += 1;
        break;
        i1 = 0;
      }
    } while (h == null);
    boolean bool1 = h.i();
    boolean bool2 = h.j();
    if (T == null) {
      T = VelocityTracker.obtain();
    }
    Object localObject = MotionEvent.obtain(paramMotionEvent);
    int i3 = jx.a(paramMotionEvent);
    int i2 = jx.b(paramMotionEvent);
    if (i3 == 0)
    {
      int[] arrayOfInt = an;
      an[1] = 0;
      arrayOfInt[0] = 0;
    }
    ((MotionEvent)localObject).offsetLocation(an[0], an[1]);
    int i1 = i7;
    switch (i3)
    {
    default: 
      i1 = i7;
    case 4: 
      if (i1 == 0) {
        T.addMovement((MotionEvent)localObject);
      }
      ((MotionEvent)localObject).recycle();
      return true;
    case 0: 
      S = jx.b(paramMotionEvent, 0);
      i1 = (int)(paramMotionEvent.getX() + 0.5F);
      W = i1;
      U = i1;
      i1 = (int)(paramMotionEvent.getY() + 0.5F);
      aa = i1;
      V = i1;
      if (!bool1) {
        break;
      }
    }
    for (i1 = 1;; i1 = 0)
    {
      i2 = i1;
      if (bool2) {
        i2 = i1 | 0x2;
      }
      startNestedScroll(i2);
      i1 = i7;
      break;
      S = jx.b(paramMotionEvent, i2);
      i1 = (int)(jx.c(paramMotionEvent, i2) + 0.5F);
      W = i1;
      U = i1;
      i1 = (int)(jx.d(paramMotionEvent, i2) + 0.5F);
      aa = i1;
      V = i1;
      i1 = i7;
      break;
      i1 = jx.a(paramMotionEvent, S);
      if (i1 < 0)
      {
        Log.e("RecyclerView", "Error processing scroll; pointer index for id " + S + " not found. Did any MotionEvents get skipped?");
        return false;
      }
      int i8 = (int)(jx.c(paramMotionEvent, i1) + 0.5F);
      int i9 = (int)(jx.d(paramMotionEvent, i1) + 0.5F);
      int i4 = W - i8;
      i3 = aa - i9;
      i1 = i3;
      i2 = i4;
      if (dispatchNestedPreScroll(i4, i3, am, al))
      {
        i2 = i4 - am[0];
        i1 = i3 - am[1];
        ((MotionEvent)localObject).offsetLocation(al[0], al[1]);
        paramMotionEvent = an;
        paramMotionEvent[0] += al[0];
        paramMotionEvent = an;
        paramMotionEvent[1] += al[1];
      }
      i3 = i1;
      i4 = i2;
      if (R != 1)
      {
        if ((!bool1) || (Math.abs(i2) <= ab)) {
          break label1061;
        }
        if (i2 <= 0) {
          break label894;
        }
        i2 -= ab;
      }
      label733:
      label783:
      label855:
      label894:
      label906:
      label924:
      label984:
      label1045:
      label1061:
      for (i3 = 1;; i3 = 0)
      {
        int i5 = i1;
        int i6 = i3;
        if (bool2)
        {
          i5 = i1;
          i6 = i3;
          if (Math.abs(i1) > ab)
          {
            if (i1 <= 0) {
              break label906;
            }
            i5 = i1 - ab;
            i6 = 1;
          }
        }
        i3 = i5;
        i4 = i2;
        if (i6 != 0)
        {
          a(1);
          i4 = i2;
          i3 = i5;
        }
        i1 = i7;
        if (R != 1) {
          break;
        }
        W = (i8 - al[0]);
        aa = (i9 - al[1]);
        if (bool1) {
          if (!bool2) {
            break label924;
          }
        }
        for (;;)
        {
          i1 = i7;
          if (!a(i4, i3, (MotionEvent)localObject)) {
            break;
          }
          getParent().requestDisallowInterceptTouchEvent(true);
          i1 = i7;
          break;
          i2 += ab;
          break label733;
          i5 = i1 + ab;
          break label783;
          i4 = 0;
          break label855;
          i3 = 0;
        }
        a(paramMotionEvent);
        i1 = i7;
        break;
        T.addMovement((MotionEvent)localObject);
        T.computeCurrentVelocity(1000, ad);
        float f1;
        if (bool1)
        {
          f1 = -ko.a(T, S);
          if (!bool2) {
            break label1045;
          }
        }
        for (float f2 = -ko.b(T, S);; f2 = 0.0F)
        {
          if (((f1 == 0.0F) && (f2 == 0.0F)) || (!b((int)f1, (int)f2))) {
            a(0);
          }
          B();
          i1 = 1;
          break;
          f1 = 0.0F;
          break label984;
        }
        C();
        i1 = i7;
        break;
      }
    }
  }
  
  public void p()
  {
    M -= 1;
    if (M <= 0)
    {
      M = 0;
      int i1 = K;
      K = 0;
      if ((i1 != 0) && (q()))
      {
        AccessibilityEvent localAccessibilityEvent = AccessibilityEvent.obtain();
        localAccessibilityEvent.setEventType(2048);
        ms.a.a(localAccessibilityEvent, i1);
        sendAccessibilityEventUnchecked(localAccessibilityEvent);
      }
    }
  }
  
  public boolean q()
  {
    return (L != null) && (L.isEnabled());
  }
  
  public boolean r()
  {
    return M > 0;
  }
  
  public void removeDetachedView(View paramView, boolean paramBoolean)
  {
    aao localaao = b(paramView);
    if (localaao != null)
    {
      if (!localaao.n()) {
        break label32;
      }
      localaao.i();
    }
    label32:
    while (localaao.c())
    {
      e(paramView);
      super.removeDetachedView(paramView, paramBoolean);
      return;
    }
    throw new IllegalArgumentException("Called removeDetachedView with a view which is not flagged as tmp detached." + localaao);
  }
  
  public void requestChildFocus(View paramView1, View paramView2)
  {
    Object localObject;
    if ((!h.c(this)) && (paramView2 != null))
    {
      E.set(0, 0, paramView2.getWidth(), paramView2.getHeight());
      localObject = paramView2.getLayoutParams();
      if ((localObject instanceof aac))
      {
        localObject = (aac)localObject;
        if (!e)
        {
          localObject = d;
          Rect localRect = E;
          left -= left;
          localRect = E;
          right += right;
          localRect = E;
          top -= top;
          localRect = E;
          int i1 = bottom;
          bottom = (bottom + i1);
        }
      }
      offsetDescendantRectToMyCoords(paramView2, E);
      offsetRectIntoDescendantCoords(paramView1, E);
      localObject = E;
      if (l) {
        break label209;
      }
    }
    label209:
    for (boolean bool = true;; bool = false)
    {
      requestChildRectangleOnScreen(paramView1, (Rect)localObject, bool);
      super.requestChildFocus(paramView1, paramView2);
      return;
    }
  }
  
  public boolean requestChildRectangleOnScreen(View paramView, Rect paramRect, boolean paramBoolean)
  {
    return h.a(this, paramView, paramRect, paramBoolean);
  }
  
  public void requestDisallowInterceptTouchEvent(boolean paramBoolean)
  {
    int i2 = G.size();
    int i1 = 0;
    while (i1 < i2)
    {
      G.get(i1);
      i1 += 1;
    }
    super.requestDisallowInterceptTouchEvent(paramBoolean);
  }
  
  public void requestLayout()
  {
    if ((!I) && (!n))
    {
      super.requestLayout();
      return;
    }
    m = true;
  }
  
  public void s()
  {
    if ((!x) && (j))
    {
      ks.a(this, ao);
      x = true;
    }
  }
  
  public void scrollBy(int paramInt1, int paramInt2)
  {
    if (h == null) {}
    boolean bool1;
    boolean bool2;
    do
    {
      Log.e("RecyclerView", "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
      do
      {
        return;
      } while (n);
      bool1 = h.i();
      bool2 = h.j();
    } while ((!bool1) && (!bool2));
    if (bool1) {
      if (!bool2) {
        break label74;
      }
    }
    for (;;)
    {
      a(paramInt1, paramInt2, null);
      return;
      paramInt1 = 0;
      break;
      label74:
      paramInt2 = 0;
    }
  }
  
  public void scrollTo(int paramInt1, int paramInt2) {}
  
  public void sendAccessibilityEventUnchecked(AccessibilityEvent paramAccessibilityEvent)
  {
    if (a(paramAccessibilityEvent)) {
      return;
    }
    super.sendAccessibilityEventUnchecked(paramAccessibilityEvent);
  }
  
  public void setClipToPadding(boolean paramBoolean)
  {
    if (paramBoolean != D) {
      m();
    }
    D = paramBoolean;
    super.setClipToPadding(paramBoolean);
    if (l) {
      requestLayout();
    }
  }
  
  public void setNestedScrollingEnabled(boolean paramBoolean)
  {
    ak.a(paramBoolean);
  }
  
  public boolean startNestedScroll(int paramInt)
  {
    return ak.a(paramInt);
  }
  
  public void stopNestedScroll()
  {
    ak.c();
  }
  
  void t()
  {
    int i7 = 1;
    if (g == null)
    {
      Log.e("RecyclerView", "No adapter attached; skipping layout");
      return;
    }
    if (h == null)
    {
      Log.e("RecyclerView", "No layout manager attached; skipping layout");
      return;
    }
    e.a();
    f();
    o();
    D();
    Object localObject1 = u;
    if ((u.g) && (w)) {}
    int i8;
    label159:
    int i2;
    Object localObject2;
    long l1;
    for (boolean bool = true;; bool = false)
    {
      i = bool;
      w = false;
      v = false;
      u.f = u.h;
      u.b = g.a();
      localObject1 = aj;
      i8 = d.b();
      if (i8 != 0) {
        break;
      }
      localObject1[0] = 0;
      localObject1[1] = 0;
      if (!u.g) {
        break label434;
      }
      i2 = d.b();
      i1 = 0;
      while (i1 < i2)
      {
        localObject1 = b(d.b(i1));
        if ((!((aao)localObject1).c()) && ((!((aao)localObject1).j()) || (g.b)))
        {
          localObject2 = s;
          zx.c((aao)localObject1);
          ((aao)localObject1).q();
          localObject2 = ((zx)localObject2).a((aao)localObject1);
          e.a((aao)localObject1, (zz)localObject2);
          if ((u.i) && (((aao)localObject1).t()) && (!((aao)localObject1).m()) && (!((aao)localObject1).c()) && (!((aao)localObject1).j()))
          {
            l1 = b((aao)localObject1);
            e.a(l1, (aao)localObject1);
          }
        }
        i1 += 1;
      }
    }
    int i1 = Integer.MAX_VALUE;
    int i3 = Integer.MIN_VALUE;
    int i5 = 0;
    label346:
    int i4;
    int i6;
    if (i5 < i8)
    {
      localObject2 = b(d.b(i5));
      i4 = i1;
      if (((aao)localObject2).c()) {
        break label1140;
      }
      i6 = ((aao)localObject2).d();
      i2 = i1;
      if (i6 < i1) {
        i2 = i6;
      }
      i4 = i2;
      if (i6 <= i3) {
        break label1140;
      }
      i1 = i6;
    }
    for (;;)
    {
      i5 += 1;
      i3 = i1;
      i1 = i2;
      break label346;
      localObject1[0] = i1;
      localObject1[1] = i3;
      break label159;
      label434:
      if (u.h)
      {
        v();
        bool = u.e;
        u.e = false;
        h.c(b, u);
        u.e = bool;
        i1 = 0;
        if (i1 < d.b())
        {
          localObject1 = b(d.b(i1));
          if ((!((aao)localObject1).c()) && (!e.b((aao)localObject1)))
          {
            zx.c((aao)localObject1);
            bool = ((aao)localObject1).a(8192);
            localObject2 = s;
            ((aao)localObject1).q();
            localObject2 = ((zx)localObject2).a((aao)localObject1);
            if (!bool) {
              break label592;
            }
            a((aao)localObject1, (zz)localObject2);
          }
          for (;;)
          {
            i1 += 1;
            break;
            label592:
            e.b((aao)localObject1, (zz)localObject2);
          }
        }
        w();
        c.c();
        u.b = g.a();
        u.d = 0;
        u.f = false;
        h.c(b, u);
        u.e = false;
        C = null;
        localObject1 = u;
        if ((!u.g) || (s == null)) {
          break label892;
        }
        bool = true;
        label701:
        g = bool;
        if (!u.g) {
          break label923;
        }
        i2 = d.b();
        i1 = 0;
        label728:
        if (i1 >= i2) {
          break label912;
        }
        localObject1 = b(d.b(i1));
        if (!((aao)localObject1).c())
        {
          l1 = b((aao)localObject1);
          localObject2 = s.b((aao)localObject1);
          aao localaao = e.a(l1);
          if ((localaao == null) || (localaao.c())) {
            break label898;
          }
          zz localzz = e.a(localaao);
          localaao.a(false);
          if (localaao != localObject1)
          {
            g = ((aao)localObject1);
            a(localaao);
            b.b(localaao);
            ((aao)localObject1).a(false);
            h = localaao;
          }
          if (s.a(localaao, (aao)localObject1, localzz, (zz)localObject2)) {
            s();
          }
        }
      }
      for (;;)
      {
        i1 += 1;
        break label728;
        w();
        break;
        label892:
        bool = false;
        break label701;
        label898:
        e.c((aao)localObject1, (zz)localObject2);
      }
      label912:
      e.a(ap);
      label923:
      a(false);
      h.b(b);
      u.c = u.b;
      r = false;
      u.g = false;
      u.h = false;
      p();
      h.t = false;
      if (b.b != null) {
        b.b.clear();
      }
      e.a();
      i3 = aj[0];
      i4 = aj[1];
      i5 = d.b();
      if (i5 == 0)
      {
        i1 = i7;
        if (i3 == 0)
        {
          if (i4 == 0) {
            break label1068;
          }
          i1 = i7;
        }
      }
      while (i1 != 0)
      {
        h(0, 0);
        return;
        label1068:
        i1 = 0;
        continue;
        i2 = 0;
        for (;;)
        {
          if (i2 >= i5) {
            break label1135;
          }
          localObject1 = b(d.b(i2));
          if (!((aao)localObject1).c())
          {
            i6 = ((aao)localObject1).d();
            i1 = i7;
            if (i6 < i3) {
              break;
            }
            i1 = i7;
            if (i6 > i4) {
              break;
            }
          }
          i2 += 1;
        }
        label1135:
        i1 = 0;
      }
      break;
      label1140:
      i1 = i3;
      i2 = i4;
    }
  }
  
  void u()
  {
    int i2 = d.c();
    int i1 = 0;
    while (i1 < i2)
    {
      d.c(i1).getLayoutParams()).e = true;
      i1 += 1;
    }
    b.g();
  }
  
  void v()
  {
    int i2 = d.c();
    int i1 = 0;
    while (i1 < i2)
    {
      aao localaao = b(d.c(i1));
      if (!localaao.c()) {
        localaao.b();
      }
      i1 += 1;
    }
  }
  
  void w()
  {
    int i2 = d.c();
    int i1 = 0;
    while (i1 < i2)
    {
      aao localaao = b(d.c(i1));
      if (!localaao.c()) {
        localaao.a();
      }
      i1 += 1;
    }
    b.f();
  }
  
  void x()
  {
    int i2 = d.c();
    int i1 = 0;
    while (i1 < i2)
    {
      aao localaao = b(d.c(i1));
      if ((localaao != null) && (!localaao.c())) {
        localaao.b(6);
      }
      i1 += 1;
    }
    u();
    b.e();
  }
  
  public boolean y()
  {
    return (!l) || (r) || (c.d());
  }
  
  public void z()
  {
    int i2 = d.b();
    int i1 = 0;
    while (i1 < i2)
    {
      View localView = d.b(i1);
      Object localObject = a(localView);
      if ((localObject != null) && (h != null))
      {
        localObject = h.a;
        int i3 = localView.getLeft();
        int i4 = localView.getTop();
        if ((i3 != ((View)localObject).getLeft()) || (i4 != ((View)localObject).getTop())) {
          ((View)localObject).layout(i3, i4, ((View)localObject).getWidth() + i3, ((View)localObject).getHeight() + i4);
        }
      }
      i1 += 1;
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.RecyclerView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */