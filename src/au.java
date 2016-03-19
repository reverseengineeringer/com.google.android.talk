import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnDismissListener;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;

public class au
  extends av
  implements DialogInterface.OnCancelListener, DialogInterface.OnDismissListener
{
  int a = 0;
  int b = 0;
  boolean c = true;
  boolean d = true;
  int e = -1;
  Dialog f;
  boolean g;
  boolean h;
  boolean i;
  
  public int a(bz parambz, String paramString)
  {
    h = false;
    i = true;
    parambz.a(this, paramString);
    g = false;
    e = parambz.b();
    return e;
  }
  
  public Dialog a(Bundle paramBundle)
  {
    return new Dialog(getActivity(), d());
  }
  
  public void a()
  {
    a(false);
  }
  
  public void a(int paramInt)
  {
    a = 1;
    if ((a == 2) || (a == 3)) {
      b = 16973913;
    }
    if (paramInt != 0) {
      b = paramInt;
    }
  }
  
  public void a(Dialog paramDialog, int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return;
    case 3: 
      paramDialog.getWindow().addFlags(24);
    }
    paramDialog.requestWindowFeature(1);
  }
  
  public void a(bg parambg, String paramString)
  {
    h = false;
    i = true;
    parambg = parambg.a();
    parambg.a(this, paramString);
    parambg.b();
  }
  
  void a(boolean paramBoolean)
  {
    if (h) {
      return;
    }
    h = true;
    i = false;
    if (f != null)
    {
      f.dismiss();
      f = null;
    }
    g = true;
    if (e >= 0)
    {
      getFragmentManager().b(e);
      e = -1;
      return;
    }
    bz localbz = getFragmentManager().a();
    localbz.a(this);
    if (paramBoolean)
    {
      localbz.c();
      return;
    }
    localbz.b();
  }
  
  public void b()
  {
    a(true);
  }
  
  public void b(boolean paramBoolean)
  {
    c = paramBoolean;
    if (f != null) {
      f.setCancelable(paramBoolean);
    }
  }
  
  public Dialog c()
  {
    return f;
  }
  
  public int d()
  {
    return b;
  }
  
  public boolean e()
  {
    return c;
  }
  
  public void f()
  {
    d = false;
  }
  
  public LayoutInflater getLayoutInflater(Bundle paramBundle)
  {
    if (!d) {
      return super.getLayoutInflater(paramBundle);
    }
    f = a(paramBundle);
    if (f != null)
    {
      a(f, a);
      return (LayoutInflater)f.getContext().getSystemService("layout_inflater");
    }
    return (LayoutInflater)D.i().getSystemService("layout_inflater");
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    if (!d) {}
    do
    {
      do
      {
        return;
        View localView = getView();
        if (localView != null)
        {
          if (localView.getParent() != null) {
            throw new IllegalStateException("DialogFragment can not be attached to a container view");
          }
          f.setContentView(localView);
        }
        f.setOwnerActivity(getActivity());
        f.setCancelable(c);
        f.setOnCancelListener(this);
        f.setOnDismissListener(this);
      } while (paramBundle == null);
      paramBundle = paramBundle.getBundle("android:savedDialogState");
    } while (paramBundle == null);
    f.onRestoreInstanceState(paramBundle);
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    if (!i) {
      h = false;
    }
  }
  
  public void onCancel(DialogInterface paramDialogInterface) {}
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (H == 0) {}
    for (boolean bool = true;; bool = false)
    {
      d = bool;
      if (paramBundle != null)
      {
        a = paramBundle.getInt("android:style", 0);
        b = paramBundle.getInt("android:theme", 0);
        c = paramBundle.getBoolean("android:cancelable", true);
        d = paramBundle.getBoolean("android:showsDialog", d);
        e = paramBundle.getInt("android:backStackId", -1);
      }
      return;
    }
  }
  
  public void onDestroyView()
  {
    super.onDestroyView();
    if (f != null)
    {
      g = true;
      f.dismiss();
      f = null;
    }
  }
  
  public void onDetach()
  {
    super.onDetach();
    if ((!i) && (!h)) {
      h = true;
    }
  }
  
  public void onDismiss(DialogInterface paramDialogInterface)
  {
    if (!g) {
      a(true);
    }
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    if (f != null)
    {
      Bundle localBundle = f.onSaveInstanceState();
      if (localBundle != null) {
        paramBundle.putBundle("android:savedDialogState", localBundle);
      }
    }
    if (a != 0) {
      paramBundle.putInt("android:style", a);
    }
    if (b != 0) {
      paramBundle.putInt("android:theme", b);
    }
    if (!c) {
      paramBundle.putBoolean("android:cancelable", c);
    }
    if (!d) {
      paramBundle.putBoolean("android:showsDialog", d);
    }
    if (e != -1) {
      paramBundle.putInt("android:backStackId", e);
    }
  }
  
  public void onStart()
  {
    super.onStart();
    if (f != null)
    {
      g = false;
      f.show();
    }
  }
  
  public void onStop()
  {
    super.onStop();
    if (f != null) {
      f.hide();
    }
  }
}

/* Location:
 * Qualified Name:     au
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */