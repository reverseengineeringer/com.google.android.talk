import android.app.Activity;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnCreateContextMenuListener;
import android.view.ViewGroup;
import android.view.animation.Animation;
import java.io.FileDescriptor;
import java.io.PrintWriter;

public class av
  implements ComponentCallbacks, View.OnCreateContextMenuListener
{
  private static final if<String, Class<?>> a = new if();
  static final Object j = new Object();
  boolean A;
  int B;
  bh C;
  bf D;
  bh E;
  av F;
  int G;
  int H;
  String I;
  boolean J;
  boolean K;
  boolean L;
  boolean M;
  boolean N;
  boolean O = true;
  boolean P;
  int Q;
  ViewGroup R;
  View S;
  View T;
  boolean U;
  boolean V = true;
  cl W;
  boolean X;
  boolean Y;
  Object Z = null;
  Object aa = j;
  Object ab = null;
  Object ac = j;
  Object ad = null;
  Object ae = j;
  Boolean af;
  Boolean ag;
  em ah = null;
  em ai = null;
  int k = 0;
  View l;
  int m;
  Bundle n;
  SparseArray<Parcelable> o;
  int p = -1;
  String q;
  Bundle r;
  av s;
  int t = -1;
  int u;
  boolean v;
  boolean w;
  boolean x;
  boolean y;
  boolean z;
  
  static boolean a(Context paramContext, String paramString)
  {
    try
    {
      Class localClass2 = (Class)a.get(paramString);
      Class localClass1 = localClass2;
      if (localClass2 == null)
      {
        localClass1 = paramContext.getClassLoader().loadClass(paramString);
        a.put(paramString, localClass1);
      }
      boolean bool = av.class.isAssignableFrom(localClass1);
      return bool;
    }
    catch (ClassNotFoundException paramContext) {}
    return false;
  }
  
  public static av instantiate(Context paramContext, String paramString)
  {
    return instantiate(paramContext, paramString, null);
  }
  
  public static av instantiate(Context paramContext, String paramString, Bundle paramBundle)
  {
    try
    {
      Class localClass2 = (Class)a.get(paramString);
      Class localClass1 = localClass2;
      if (localClass2 == null)
      {
        localClass1 = paramContext.getClassLoader().loadClass(paramString);
        a.put(paramString, localClass1);
      }
      paramContext = (av)localClass1.newInstance();
      if (paramBundle != null)
      {
        paramBundle.setClassLoader(paramContext.getClass().getClassLoader());
        r = paramBundle;
      }
      return paramContext;
    }
    catch (ClassNotFoundException paramContext)
    {
      throw new ax("Unable to instantiate fragment " + paramString + ": make sure class name exists, is public, and has an empty constructor that is public", paramContext);
    }
    catch (InstantiationException paramContext)
    {
      throw new ax("Unable to instantiate fragment " + paramString + ": make sure class name exists, is public, and has an empty constructor that is public", paramContext);
    }
    catch (IllegalAccessException paramContext)
    {
      throw new ax("Unable to instantiate fragment " + paramString + ": make sure class name exists, is public, and has an empty constructor that is public", paramContext);
    }
  }
  
  void M_()
  {
    p = -1;
    q = null;
    v = false;
    w = false;
    x = false;
    y = false;
    z = false;
    A = false;
    B = 0;
    C = null;
    E = null;
    D = null;
    G = 0;
    H = 0;
    I = null;
    J = false;
    K = false;
    M = false;
    W = null;
    X = false;
    Y = false;
  }
  
  View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    if (E != null) {
      E.noteStateNotSaved();
    }
    return onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
  }
  
  final void a(int paramInt, av paramav)
  {
    p = paramInt;
    if (paramav != null)
    {
      q = (q + ":" + p);
      return;
    }
    q = ("android:fragment:" + p);
  }
  
  void a(Configuration paramConfiguration)
  {
    onConfigurationChanged(paramConfiguration);
    if (E != null) {
      E.a(paramConfiguration);
    }
  }
  
  boolean a(Menu paramMenu)
  {
    boolean bool2 = false;
    boolean bool3 = false;
    if (!J)
    {
      boolean bool1 = bool3;
      if (N)
      {
        bool1 = bool3;
        if (O)
        {
          bool1 = true;
          onPrepareOptionsMenu(paramMenu);
        }
      }
      bool2 = bool1;
      if (E != null) {
        bool2 = bool1 | E.a(paramMenu);
      }
    }
    return bool2;
  }
  
  boolean a(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    boolean bool2 = false;
    boolean bool3 = false;
    if (!J)
    {
      boolean bool1 = bool3;
      if (N)
      {
        bool1 = bool3;
        if (O)
        {
          bool1 = true;
          onCreateOptionsMenu(paramMenu, paramMenuInflater);
        }
      }
      bool2 = bool1;
      if (E != null) {
        bool2 = bool1 | E.a(paramMenu, paramMenuInflater);
      }
    }
    return bool2;
  }
  
  boolean a(MenuItem paramMenuItem)
  {
    if (!J)
    {
      if ((N) && (O) && (onOptionsItemSelected(paramMenuItem))) {}
      while ((E != null) && (E.a(paramMenuItem))) {
        return true;
      }
    }
    return false;
  }
  
  void b(Bundle paramBundle)
  {
    if (E != null) {
      E.noteStateNotSaved();
    }
    P = false;
    onCreate(paramBundle);
    if (!P) {
      throw new en("Fragment " + this + " did not call through to super.onCreate()");
    }
    if (paramBundle != null)
    {
      paramBundle = paramBundle.getParcelable("android:support:fragments");
      if (paramBundle != null)
      {
        if (E == null) {
          h();
        }
        E.a(paramBundle, null);
        E.j();
      }
    }
  }
  
  void b(Menu paramMenu)
  {
    if (!J)
    {
      if ((N) && (O)) {
        onOptionsMenuClosed(paramMenu);
      }
      if (E != null) {
        E.b(paramMenu);
      }
    }
  }
  
  boolean b(MenuItem paramMenuItem)
  {
    if (!J)
    {
      if (onContextItemSelected(paramMenuItem)) {}
      while ((E != null) && (E.b(paramMenuItem))) {
        return true;
      }
    }
    return false;
  }
  
  void c(Bundle paramBundle)
  {
    if (E != null) {
      E.noteStateNotSaved();
    }
    P = false;
    onActivityCreated(paramBundle);
    if (!P) {
      throw new en("Fragment " + this + " did not call through to super.onActivityCreated()");
    }
    if (E != null) {
      E.k();
    }
  }
  
  void d(Bundle paramBundle)
  {
    onSaveInstanceState(paramBundle);
    if (E != null)
    {
      Parcelable localParcelable = E.i();
      if (localParcelable != null) {
        paramBundle.putParcelable("android:support:fragments", localParcelable);
      }
    }
  }
  
  public void dump(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mFragmentId=#");
    paramPrintWriter.print(Integer.toHexString(G));
    paramPrintWriter.print(" mContainerId=#");
    paramPrintWriter.print(Integer.toHexString(H));
    paramPrintWriter.print(" mTag=");
    paramPrintWriter.println(I);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mState=");
    paramPrintWriter.print(k);
    paramPrintWriter.print(" mIndex=");
    paramPrintWriter.print(p);
    paramPrintWriter.print(" mWho=");
    paramPrintWriter.print(q);
    paramPrintWriter.print(" mBackStackNesting=");
    paramPrintWriter.println(B);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mAdded=");
    paramPrintWriter.print(v);
    paramPrintWriter.print(" mRemoving=");
    paramPrintWriter.print(w);
    paramPrintWriter.print(" mResumed=");
    paramPrintWriter.print(x);
    paramPrintWriter.print(" mFromLayout=");
    paramPrintWriter.print(y);
    paramPrintWriter.print(" mInLayout=");
    paramPrintWriter.println(z);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mHidden=");
    paramPrintWriter.print(J);
    paramPrintWriter.print(" mDetached=");
    paramPrintWriter.print(K);
    paramPrintWriter.print(" mMenuVisible=");
    paramPrintWriter.print(O);
    paramPrintWriter.print(" mHasMenu=");
    paramPrintWriter.println(N);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mRetainInstance=");
    paramPrintWriter.print(L);
    paramPrintWriter.print(" mRetaining=");
    paramPrintWriter.print(M);
    paramPrintWriter.print(" mUserVisibleHint=");
    paramPrintWriter.println(V);
    if (C != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mFragmentManager=");
      paramPrintWriter.println(C);
    }
    if (D != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mHost=");
      paramPrintWriter.println(D);
    }
    if (F != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mParentFragment=");
      paramPrintWriter.println(F);
    }
    if (r != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mArguments=");
      paramPrintWriter.println(r);
    }
    if (n != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mSavedFragmentState=");
      paramPrintWriter.println(n);
    }
    if (o != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mSavedViewState=");
      paramPrintWriter.println(o);
    }
    if (s != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mTarget=");
      paramPrintWriter.print(s);
      paramPrintWriter.print(" mTargetRequestCode=");
      paramPrintWriter.println(u);
    }
    if (Q != 0)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mNextAnim=");
      paramPrintWriter.println(Q);
    }
    if (R != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mContainer=");
      paramPrintWriter.println(R);
    }
    if (S != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mView=");
      paramPrintWriter.println(S);
    }
    if (T != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mInnerView=");
      paramPrintWriter.println(S);
    }
    if (l != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mAnimatingAway=");
      paramPrintWriter.println(l);
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mStateAfterAnimating=");
      paramPrintWriter.println(m);
    }
    if (W != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.println("Loader Manager:");
      W.a(paramString + "  ", paramFileDescriptor, paramPrintWriter, paramArrayOfString);
    }
    if (E != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.println("Child " + E + ":");
      E.a(paramString + "  ", paramFileDescriptor, paramPrintWriter, paramArrayOfString);
    }
  }
  
  public final boolean equals(Object paramObject)
  {
    return super.equals(paramObject);
  }
  
  public final ba getActivity()
  {
    if (D == null) {
      return null;
    }
    return (ba)D.h();
  }
  
  public boolean getAllowEnterTransitionOverlap()
  {
    if (ag == null) {
      return true;
    }
    return ag.booleanValue();
  }
  
  public boolean getAllowReturnTransitionOverlap()
  {
    if (af == null) {
      return true;
    }
    return af.booleanValue();
  }
  
  public final Bundle getArguments()
  {
    return r;
  }
  
  public final bg getChildFragmentManager()
  {
    if (E == null)
    {
      h();
      if (k < 5) {
        break label31;
      }
      E.m();
    }
    for (;;)
    {
      return E;
      label31:
      if (k >= 4) {
        E.l();
      } else if (k >= 2) {
        E.k();
      } else if (k > 0) {
        E.j();
      }
    }
  }
  
  public Context getContext()
  {
    if (D == null) {
      return null;
    }
    return D.i();
  }
  
  public Object getEnterTransition()
  {
    return Z;
  }
  
  public Object getExitTransition()
  {
    return ab;
  }
  
  public final bg getFragmentManager()
  {
    return C;
  }
  
  public final Object getHost()
  {
    if (D == null) {
      return null;
    }
    return D.g();
  }
  
  public final int getId()
  {
    return G;
  }
  
  public LayoutInflater getLayoutInflater(Bundle paramBundle)
  {
    paramBundle = D.c();
    getChildFragmentManager();
    jg.a(paramBundle, E.t());
    return paramBundle;
  }
  
  public cj getLoaderManager()
  {
    if (W != null) {
      return W;
    }
    if (D == null) {
      throw new IllegalStateException("Fragment " + this + " not attached to Activity");
    }
    Y = true;
    W = D.a(q, X, true);
    return W;
  }
  
  public final av getParentFragment()
  {
    return F;
  }
  
  public Object getReenterTransition()
  {
    if (ac == j) {
      return getExitTransition();
    }
    return ac;
  }
  
  public final Resources getResources()
  {
    if (D == null) {
      throw new IllegalStateException("Fragment " + this + " not attached to Activity");
    }
    return D.i().getResources();
  }
  
  public final boolean getRetainInstance()
  {
    return L;
  }
  
  public Object getReturnTransition()
  {
    if (aa == j) {
      return getEnterTransition();
    }
    return aa;
  }
  
  public Object getSharedElementEnterTransition()
  {
    return ad;
  }
  
  public Object getSharedElementReturnTransition()
  {
    if (ae == j) {
      return getSharedElementEnterTransition();
    }
    return ae;
  }
  
  public final String getString(int paramInt)
  {
    return getResources().getString(paramInt);
  }
  
  public final String getString(int paramInt, Object... paramVarArgs)
  {
    return getResources().getString(paramInt, paramVarArgs);
  }
  
  public final String getTag()
  {
    return I;
  }
  
  public final av getTargetFragment()
  {
    return s;
  }
  
  public final int getTargetRequestCode()
  {
    return u;
  }
  
  public final CharSequence getText(int paramInt)
  {
    return getResources().getText(paramInt);
  }
  
  public boolean getUserVisibleHint()
  {
    return V;
  }
  
  public View getView()
  {
    return S;
  }
  
  void h()
  {
    E = new bh();
    E.a(D, new aw(this), this);
  }
  
  public final boolean hasOptionsMenu()
  {
    return N;
  }
  
  public final int hashCode()
  {
    return super.hashCode();
  }
  
  void i()
  {
    if (E != null)
    {
      E.noteStateNotSaved();
      E.g();
    }
    P = false;
    onStart();
    if (!P) {
      throw new en("Fragment " + this + " did not call through to super.onStart()");
    }
    if (E != null) {
      E.l();
    }
    if (W != null) {
      W.g();
    }
  }
  
  public final boolean isAdded()
  {
    return (D != null) && (v);
  }
  
  public final boolean isDetached()
  {
    return K;
  }
  
  public final boolean isHidden()
  {
    return J;
  }
  
  public final boolean isInLayout()
  {
    return z;
  }
  
  public final boolean isMenuVisible()
  {
    return O;
  }
  
  public final boolean isRemoving()
  {
    return w;
  }
  
  public final boolean isResumed()
  {
    return x;
  }
  
  public final boolean isVisible()
  {
    return (isAdded()) && (!isHidden()) && (S != null) && (S.getWindowToken() != null) && (S.getVisibility() == 0);
  }
  
  void j()
  {
    if (E != null)
    {
      E.noteStateNotSaved();
      E.g();
    }
    P = false;
    onResume();
    if (!P) {
      throw new en("Fragment " + this + " did not call through to super.onResume()");
    }
    if (E != null)
    {
      E.m();
      E.g();
    }
  }
  
  void k()
  {
    onLowMemory();
    if (E != null) {
      E.s();
    }
  }
  
  void l()
  {
    if (E != null) {
      E.n();
    }
    P = false;
    onPause();
    if (!P) {
      throw new en("Fragment " + this + " did not call through to super.onPause()");
    }
  }
  
  void m()
  {
    if (E != null) {
      E.o();
    }
    P = false;
    onStop();
    if (!P) {
      throw new en("Fragment " + this + " did not call through to super.onStop()");
    }
  }
  
  void n()
  {
    if (E != null) {
      E.p();
    }
    if (X)
    {
      X = false;
      if (!Y)
      {
        Y = true;
        W = D.a(q, X, false);
      }
      if (W != null)
      {
        if (!D.m()) {
          break label83;
        }
        W.d();
      }
    }
    return;
    label83:
    W.c();
  }
  
  void o()
  {
    if (E != null) {
      E.q();
    }
    P = false;
    onDestroyView();
    if (!P) {
      throw new en("Fragment " + this + " did not call through to super.onDestroyView()");
    }
    if (W != null) {
      W.f();
    }
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    P = true;
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent) {}
  
  @Deprecated
  public void onAttach(Activity paramActivity)
  {
    P = true;
  }
  
  public void onAttach(Context paramContext)
  {
    P = true;
    if (D == null) {}
    for (paramContext = null;; paramContext = D.h())
    {
      if (paramContext != null)
      {
        P = false;
        onAttach(paramContext);
      }
      return;
    }
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    P = true;
  }
  
  public boolean onContextItemSelected(MenuItem paramMenuItem)
  {
    return false;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    P = true;
  }
  
  public Animation onCreateAnimation(int paramInt1, boolean paramBoolean, int paramInt2)
  {
    return null;
  }
  
  public void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    getActivity().onCreateContextMenu(paramContextMenu, paramView, paramContextMenuInfo);
  }
  
  public void onCreateOptionsMenu(Menu paramMenu, MenuInflater paramMenuInflater) {}
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    return null;
  }
  
  public void onDestroy()
  {
    P = true;
    if (!Y)
    {
      Y = true;
      W = D.a(q, X, false);
    }
    if (W != null) {
      W.h();
    }
  }
  
  public void onDestroyOptionsMenu() {}
  
  public void onDestroyView()
  {
    P = true;
  }
  
  public void onDetach()
  {
    P = true;
  }
  
  public void onHiddenChanged(boolean paramBoolean) {}
  
  @Deprecated
  public void onInflate(Activity paramActivity, AttributeSet paramAttributeSet, Bundle paramBundle)
  {
    P = true;
  }
  
  public void onInflate(Context paramContext, AttributeSet paramAttributeSet, Bundle paramBundle)
  {
    P = true;
    if (D == null) {}
    for (paramContext = null;; paramContext = D.h())
    {
      if (paramContext != null)
      {
        P = false;
        onInflate(paramContext, paramAttributeSet, paramBundle);
      }
      return;
    }
  }
  
  public void onLowMemory()
  {
    P = true;
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    return false;
  }
  
  public void onOptionsMenuClosed(Menu paramMenu) {}
  
  public void onPause()
  {
    P = true;
  }
  
  public void onPrepareOptionsMenu(Menu paramMenu) {}
  
  public void onRequestPermissionsResult(int paramInt, String[] paramArrayOfString, int[] paramArrayOfInt) {}
  
  public void onResume()
  {
    P = true;
  }
  
  public void onSaveInstanceState(Bundle paramBundle) {}
  
  public void onStart()
  {
    P = true;
    if (!X)
    {
      X = true;
      if (!Y)
      {
        Y = true;
        W = D.a(q, X, false);
      }
      if (W != null) {
        W.b();
      }
    }
  }
  
  public void onStop()
  {
    P = true;
  }
  
  public void onViewCreated(View paramView, Bundle paramBundle) {}
  
  public void onViewStateRestored(Bundle paramBundle)
  {
    P = true;
  }
  
  void p()
  {
    if (E != null) {
      E.r();
    }
    P = false;
    onDestroy();
    if (!P) {
      throw new en("Fragment " + this + " did not call through to super.onDestroy()");
    }
  }
  
  public void registerForContextMenu(View paramView)
  {
    paramView.setOnCreateContextMenuListener(this);
  }
  
  public final void requestPermissions(String[] paramArrayOfString, int paramInt)
  {
    if (D == null) {
      throw new IllegalStateException("Fragment " + this + " not attached to Activity");
    }
    D.a(this, paramArrayOfString, paramInt);
  }
  
  public void setAllowEnterTransitionOverlap(boolean paramBoolean)
  {
    ag = Boolean.valueOf(paramBoolean);
  }
  
  public void setAllowReturnTransitionOverlap(boolean paramBoolean)
  {
    af = Boolean.valueOf(paramBoolean);
  }
  
  public void setArguments(Bundle paramBundle)
  {
    if (p >= 0) {
      throw new IllegalStateException("Fragment already active");
    }
    r = paramBundle;
  }
  
  public void setEnterSharedElementCallback(em paramem)
  {
    ah = paramem;
  }
  
  public void setEnterTransition(Object paramObject)
  {
    Z = paramObject;
  }
  
  public void setExitSharedElementCallback(em paramem)
  {
    ai = paramem;
  }
  
  public void setExitTransition(Object paramObject)
  {
    ab = paramObject;
  }
  
  public void setHasOptionsMenu(boolean paramBoolean)
  {
    if (N != paramBoolean)
    {
      N = paramBoolean;
      if ((isAdded()) && (!isHidden())) {
        D.d();
      }
    }
  }
  
  public void setInitialSavedState(ay paramay)
  {
    if (p >= 0) {
      throw new IllegalStateException("Fragment already active");
    }
    if ((paramay != null) && (a != null)) {}
    for (paramay = a;; paramay = null)
    {
      n = paramay;
      return;
    }
  }
  
  public void setMenuVisibility(boolean paramBoolean)
  {
    if (O != paramBoolean)
    {
      O = paramBoolean;
      if ((N) && (isAdded()) && (!isHidden())) {
        D.d();
      }
    }
  }
  
  public void setReenterTransition(Object paramObject)
  {
    ac = paramObject;
  }
  
  public void setRetainInstance(boolean paramBoolean)
  {
    if ((paramBoolean) && (F != null)) {
      throw new IllegalStateException("Can't retain fragements that are nested in other fragments");
    }
    L = paramBoolean;
  }
  
  public void setReturnTransition(Object paramObject)
  {
    aa = paramObject;
  }
  
  public void setSharedElementEnterTransition(Object paramObject)
  {
    ad = paramObject;
  }
  
  public void setSharedElementReturnTransition(Object paramObject)
  {
    ae = paramObject;
  }
  
  public void setTargetFragment(av paramav, int paramInt)
  {
    s = paramav;
    u = paramInt;
  }
  
  public void setUserVisibleHint(boolean paramBoolean)
  {
    if ((!V) && (paramBoolean) && (k < 4)) {
      C.a(this);
    }
    V = paramBoolean;
    if (!paramBoolean) {}
    for (paramBoolean = true;; paramBoolean = false)
    {
      U = paramBoolean;
      return;
    }
  }
  
  public boolean shouldShowRequestPermissionRationale(String paramString)
  {
    if (D != null) {
      return D.a(paramString);
    }
    return false;
  }
  
  public void startActivity(Intent paramIntent)
  {
    if (D == null) {
      throw new IllegalStateException("Fragment " + this + " not attached to Activity");
    }
    D.a(this, paramIntent, -1);
  }
  
  public void startActivityForResult(Intent paramIntent, int paramInt)
  {
    if (D == null) {
      throw new IllegalStateException("Fragment " + this + " not attached to Activity");
    }
    D.a(this, paramIntent, paramInt);
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(128);
    aal.a(this, localStringBuilder);
    if (p >= 0)
    {
      localStringBuilder.append(" #");
      localStringBuilder.append(p);
    }
    if (G != 0)
    {
      localStringBuilder.append(" id=0x");
      localStringBuilder.append(Integer.toHexString(G));
    }
    if (I != null)
    {
      localStringBuilder.append(" ");
      localStringBuilder.append(I);
    }
    localStringBuilder.append('}');
    return localStringBuilder.toString();
  }
  
  public void unregisterForContextMenu(View paramView)
  {
    paramView.setOnCreateContextMenuListener(null);
  }
}

/* Location:
 * Qualified Name:     av
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */