import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

public class ba
  extends at
  implements al, am
{
  final Handler a = new bb(this);
  final mnl b = new mnl(new bc(this));
  boolean c;
  boolean d;
  boolean e;
  boolean f;
  boolean g;
  boolean h;
  boolean i;
  
  private static String a(View paramView)
  {
    char c3 = 'F';
    char c2 = '.';
    StringBuilder localStringBuilder = new StringBuilder(128);
    localStringBuilder.append(paramView.getClass().getName());
    localStringBuilder.append('{');
    localStringBuilder.append(Integer.toHexString(System.identityHashCode(paramView)));
    localStringBuilder.append(' ');
    char c1;
    label118:
    label135:
    label152:
    label169:
    label186:
    label203:
    label220:
    label244:
    label261:
    int j;
    Object localObject;
    switch (paramView.getVisibility())
    {
    default: 
      localStringBuilder.append('.');
      if (paramView.isFocusable())
      {
        c1 = 'F';
        localStringBuilder.append(c1);
        if (!paramView.isEnabled()) {
          break label562;
        }
        c1 = 'E';
        localStringBuilder.append(c1);
        if (!paramView.willNotDraw()) {
          break label568;
        }
        c1 = '.';
        localStringBuilder.append(c1);
        if (!paramView.isHorizontalScrollBarEnabled()) {
          break label574;
        }
        c1 = 'H';
        localStringBuilder.append(c1);
        if (!paramView.isVerticalScrollBarEnabled()) {
          break label580;
        }
        c1 = 'V';
        localStringBuilder.append(c1);
        if (!paramView.isClickable()) {
          break label586;
        }
        c1 = 'C';
        localStringBuilder.append(c1);
        if (!paramView.isLongClickable()) {
          break label592;
        }
        c1 = 'L';
        localStringBuilder.append(c1);
        localStringBuilder.append(' ');
        if (!paramView.isFocused()) {
          break label598;
        }
        c1 = c3;
        localStringBuilder.append(c1);
        if (!paramView.isSelected()) {
          break label604;
        }
        c1 = 'S';
        localStringBuilder.append(c1);
        c1 = c2;
        if (paramView.isPressed()) {
          c1 = 'P';
        }
        localStringBuilder.append(c1);
        localStringBuilder.append(' ');
        localStringBuilder.append(paramView.getLeft());
        localStringBuilder.append(',');
        localStringBuilder.append(paramView.getTop());
        localStringBuilder.append('-');
        localStringBuilder.append(paramView.getRight());
        localStringBuilder.append(',');
        localStringBuilder.append(paramView.getBottom());
        j = paramView.getId();
        if (j != -1)
        {
          localStringBuilder.append(" #");
          localStringBuilder.append(Integer.toHexString(j));
          localObject = paramView.getResources();
          if ((j != 0) && (localObject != null)) {
            switch (0xFF000000 & j)
            {
            }
          }
        }
      }
      break;
    }
    for (;;)
    {
      try
      {
        paramView = ((Resources)localObject).getResourcePackageName(j);
        String str = ((Resources)localObject).getResourceTypeName(j);
        localObject = ((Resources)localObject).getResourceEntryName(j);
        localStringBuilder.append(" ");
        localStringBuilder.append(paramView);
        localStringBuilder.append(":");
        localStringBuilder.append(str);
        localStringBuilder.append("/");
        localStringBuilder.append((String)localObject);
      }
      catch (Resources.NotFoundException paramView)
      {
        label562:
        label568:
        label574:
        label580:
        label586:
        label592:
        label598:
        label604:
        continue;
      }
      localStringBuilder.append("}");
      return localStringBuilder.toString();
      localStringBuilder.append('V');
      break;
      localStringBuilder.append('I');
      break;
      localStringBuilder.append('G');
      break;
      c1 = '.';
      break label118;
      c1 = '.';
      break label135;
      c1 = 'D';
      break label152;
      c1 = '.';
      break label169;
      c1 = '.';
      break label186;
      c1 = '.';
      break label203;
      c1 = '.';
      break label220;
      c1 = '.';
      break label244;
      c1 = '.';
      break label261;
      paramView = "app";
      continue;
      paramView = "android";
    }
  }
  
  private void a(String paramString, PrintWriter paramPrintWriter, View paramView)
  {
    paramPrintWriter.print(paramString);
    if (paramView == null) {
      paramPrintWriter.println("null");
    }
    for (;;)
    {
      return;
      paramPrintWriter.println(a(paramView));
      if ((paramView instanceof ViewGroup))
      {
        paramView = (ViewGroup)paramView;
        int k = paramView.getChildCount();
        if (k > 0)
        {
          paramString = paramString + "  ";
          int j = 0;
          while (j < k)
          {
            a(paramString, paramPrintWriter, paramView.getChildAt(j));
            j += 1;
          }
        }
      }
    }
  }
  
  void B_()
  {
    b.a(g);
    b.o();
  }
  
  public bg C_()
  {
    return b.b();
  }
  
  final View a(View paramView, String paramString, Context paramContext, AttributeSet paramAttributeSet)
  {
    return b.a(paramView, paramString, paramContext, paramAttributeSet);
  }
  
  public void a(av paramav) {}
  
  public void a(av paramav, Intent paramIntent, int paramInt)
  {
    if (paramInt == -1)
    {
      super.startActivityForResult(paramIntent, -1);
      return;
    }
    if ((0xFFFF0000 & paramInt) != 0) {
      throw new IllegalArgumentException("Can only use lower 16 bits for requestCode");
    }
    super.startActivityForResult(paramIntent, (p + 1 << 16) + (0xFFFF & paramInt));
  }
  
  void a(boolean paramBoolean)
  {
    if (!f)
    {
      f = true;
      g = paramBoolean;
      a.removeMessages(1);
      B_();
    }
  }
  
  public boolean a(View paramView, Menu paramMenu)
  {
    return super.onPreparePanel(0, paramView, paramMenu);
  }
  
  public final void a_(int paramInt)
  {
    if (i) {
      i = false;
    }
    while ((paramInt & 0xFF00) == 0) {
      return;
    }
    throw new IllegalArgumentException("Can only use lower 8 bits for requestCode");
  }
  
  public void dump(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    int j = Build.VERSION.SDK_INT;
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("Local FragmentActivity ");
    paramPrintWriter.print(Integer.toHexString(System.identityHashCode(this)));
    paramPrintWriter.println(" State:");
    String str = paramString + "  ";
    paramPrintWriter.print(str);
    paramPrintWriter.print("mCreated=");
    paramPrintWriter.print(c);
    paramPrintWriter.print("mResumed=");
    paramPrintWriter.print(d);
    paramPrintWriter.print(" mStopped=");
    paramPrintWriter.print(e);
    paramPrintWriter.print(" mReallyStopped=");
    paramPrintWriter.println(f);
    b.a(str, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
    b.b().a(paramString, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
    paramPrintWriter.print(paramString);
    paramPrintWriter.println("View Hierarchy:");
    a(paramString + "  ", paramPrintWriter, getWindow().getDecorView());
  }
  
  public cj f()
  {
    return b.c();
  }
  
  public void f_()
  {
    if (Build.VERSION.SDK_INT >= 21)
    {
      finishAfterTransition();
      return;
    }
    finish();
  }
  
  public void g_()
  {
    b.l();
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    b.f();
    int j = paramInt1 >> 16;
    if (j != 0)
    {
      j -= 1;
      int k = b.d();
      if ((k == 0) || (j < 0) || (j >= k))
      {
        new StringBuilder("Activity result fragment index out of range: 0x").append(Integer.toHexString(paramInt1));
        return;
      }
      av localav = (av)b.a(new ArrayList(k)).get(j);
      if (localav == null)
      {
        new StringBuilder("Activity result no fragment exists for index: 0x").append(Integer.toHexString(paramInt1));
        return;
      }
      localav.onActivityResult(0xFFFF & paramInt1, paramInt2, paramIntent);
      return;
    }
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
  }
  
  public void onBackPressed()
  {
    if (!b.b().c()) {
      f_();
    }
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    b.a(paramConfiguration);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    b.e();
    super.onCreate(paramBundle);
    bd localbd = (bd)getLastNonConfigurationInstance();
    if (localbd != null) {
      b.a(c);
    }
    Parcelable localParcelable;
    mnl localmnl;
    if (paramBundle != null)
    {
      localParcelable = paramBundle.getParcelable("android:support:fragments");
      localmnl = b;
      if (localbd == null) {
        break label80;
      }
    }
    label80:
    for (paramBundle = b;; paramBundle = null)
    {
      localmnl.a(localParcelable, paramBundle);
      b.i();
      return;
    }
  }
  
  public boolean onCreatePanelMenu(int paramInt, Menu paramMenu)
  {
    if (paramInt == 0)
    {
      boolean bool1 = super.onCreatePanelMenu(paramInt, paramMenu);
      boolean bool2 = b.a(paramMenu, getMenuInflater());
      if (Build.VERSION.SDK_INT >= 11) {
        return bool1 | bool2;
      }
      return true;
    }
    return super.onCreatePanelMenu(paramInt, paramMenu);
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    a(false);
    b.p();
    b.t();
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((Build.VERSION.SDK_INT < 5) && (paramInt == 4) && (paramKeyEvent.getRepeatCount() == 0))
    {
      onBackPressed();
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  public void onLowMemory()
  {
    super.onLowMemory();
    b.q();
  }
  
  public boolean onMenuItemSelected(int paramInt, MenuItem paramMenuItem)
  {
    if (super.onMenuItemSelected(paramInt, paramMenuItem)) {
      return true;
    }
    switch (paramInt)
    {
    default: 
      return false;
    case 0: 
      return b.a(paramMenuItem);
    }
    return b.b(paramMenuItem);
  }
  
  public void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    b.f();
  }
  
  public void onPanelClosed(int paramInt, Menu paramMenu)
  {
    switch (paramInt)
    {
    }
    for (;;)
    {
      super.onPanelClosed(paramInt, paramMenu);
      return;
      b.b(paramMenu);
    }
  }
  
  public void onPause()
  {
    super.onPause();
    d = false;
    if (a.hasMessages(2))
    {
      a.removeMessages(2);
      g_();
    }
    b.m();
  }
  
  public void onPostResume()
  {
    super.onPostResume();
    a.removeMessages(2);
    g_();
    b.r();
  }
  
  public boolean onPreparePanel(int paramInt, View paramView, Menu paramMenu)
  {
    if ((paramInt == 0) && (paramMenu != null))
    {
      if (h)
      {
        h = false;
        paramMenu.clear();
        onCreatePanelMenu(paramInt, paramMenu);
      }
      return a(paramView, paramMenu) | b.a(paramMenu);
    }
    return super.onPreparePanel(paramInt, paramView, paramMenu);
  }
  
  public void onRequestPermissionsResult(int paramInt, String[] paramArrayOfString, int[] paramArrayOfInt)
  {
    int j = paramInt >> 8 & 0xFF;
    int k;
    if (j != 0)
    {
      j -= 1;
      k = b.d();
      if ((k == 0) || (j < 0) || (j >= k)) {
        new StringBuilder("Activity result fragment index out of range: 0x").append(Integer.toHexString(paramInt));
      }
    }
    else
    {
      return;
    }
    av localav = (av)b.a(new ArrayList(k)).get(j);
    if (localav == null)
    {
      new StringBuilder("Activity result no fragment exists for index: 0x").append(Integer.toHexString(paramInt));
      return;
    }
    localav.onRequestPermissionsResult(paramInt & 0xFF, paramArrayOfString, paramArrayOfInt);
  }
  
  public void onResume()
  {
    super.onResume();
    a.sendEmptyMessage(2);
    d = true;
    b.r();
  }
  
  public final Object onRetainNonConfigurationInstance()
  {
    if (e) {
      a(true);
    }
    List localList = b.h();
    if localif = b.v();
    if ((localList == null) && (localif == null)) {
      return null;
    }
    bd localbd = new bd();
    a = null;
    b = localList;
    c = localif;
    return localbd;
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    Parcelable localParcelable = b.g();
    if (localParcelable != null) {
      paramBundle.putParcelable("android:support:fragments", localParcelable);
    }
  }
  
  public void onStart()
  {
    super.onStart();
    e = false;
    f = false;
    a.removeMessages(1);
    if (!c)
    {
      c = true;
      b.j();
    }
    b.f();
    b.r();
    b.s();
    b.k();
    b.u();
  }
  
  public void onStateNotSaved()
  {
    b.f();
  }
  
  public void onStop()
  {
    super.onStop();
    e = true;
    a.sendEmptyMessage(1);
    b.n();
  }
  
  public void startActivityForResult(Intent paramIntent, int paramInt)
  {
    if ((paramInt != -1) && ((0xFFFF0000 & paramInt) != 0)) {
      throw new IllegalArgumentException("Can only use lower 16 bits for requestCode");
    }
    super.startActivityForResult(paramIntent, paramInt);
  }
  
  public void y_()
  {
    if (Build.VERSION.SDK_INT >= 11)
    {
      invalidateOptionsMenu();
      return;
    }
    h = true;
  }
}

/* Location:
 * Qualified Name:     ba
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */