import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnDismissListener;
import android.content.DialogInterface.OnKeyListener;
import android.view.KeyEvent;
import android.view.KeyEvent.DispatcherState;
import android.view.View;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import android.widget.ListAdapter;

public final class to
  implements DialogInterface.OnClickListener, DialogInterface.OnDismissListener, DialogInterface.OnKeyListener, ua
{
  tj a;
  private tl b;
  private rd c;
  private ua d;
  
  public to(tl paramtl)
  {
    b = paramtl;
  }
  
  public void a()
  {
    Object localObject = b;
    re localre = new re(((tl)localObject).e());
    a = new tj(localre.a(), aal.bk);
    a.a(this);
    b.a(a);
    localre.a(a.a(), this);
    View localView = ((tl)localObject).q();
    if (localView != null) {
      localre.a(localView);
    }
    for (;;)
    {
      localre.a(this);
      c = localre.b();
      c.setOnDismissListener(this);
      localObject = c.getWindow().getAttributes();
      type = 1003;
      flags |= 0x20000;
      c.show();
      return;
      localre.a(((tl)localObject).p()).a(((tl)localObject).o());
    }
  }
  
  public void a(tl paramtl, boolean paramBoolean)
  {
    if (((paramBoolean) || (paramtl == b)) && (c != null)) {
      c.dismiss();
    }
    if (d != null) {
      d.a(paramtl, paramBoolean);
    }
  }
  
  public boolean a(tl paramtl)
  {
    if (d != null) {
      return d.a(paramtl);
    }
    return false;
  }
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    b.a((tp)a.a().getItem(paramInt), 0);
  }
  
  public void onDismiss(DialogInterface paramDialogInterface)
  {
    a.a(b, true);
  }
  
  public boolean onKey(DialogInterface paramDialogInterface, int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 82) || (paramInt == 4)) {
      if ((paramKeyEvent.getAction() == 0) && (paramKeyEvent.getRepeatCount() == 0))
      {
        paramDialogInterface = c.getWindow();
        if (paramDialogInterface != null)
        {
          paramDialogInterface = paramDialogInterface.getDecorView();
          if (paramDialogInterface != null)
          {
            paramDialogInterface = paramDialogInterface.getKeyDispatcherState();
            if (paramDialogInterface != null)
            {
              paramDialogInterface.startTracking(paramKeyEvent, this);
              return true;
            }
          }
        }
      }
      else if ((paramKeyEvent.getAction() == 1) && (!paramKeyEvent.isCanceled()))
      {
        Object localObject = c.getWindow();
        if (localObject != null)
        {
          localObject = ((Window)localObject).getDecorView();
          if (localObject != null)
          {
            localObject = ((View)localObject).getKeyDispatcherState();
            if ((localObject != null) && (((KeyEvent.DispatcherState)localObject).isTracking(paramKeyEvent)))
            {
              b.a(true);
              paramDialogInterface.dismiss();
              return true;
            }
          }
        }
      }
    }
    return b.performShortcut(paramInt, paramKeyEvent, 0);
  }
}

/* Location:
 * Qualified Name:     to
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */