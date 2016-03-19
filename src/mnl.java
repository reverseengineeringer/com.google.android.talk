import android.content.Context;
import android.content.res.Configuration;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

public final class mnl
{
  public final bf<?> a;
  private int b;
  private mnp<Object> c;
  
  private mnl()
  {
    b = 6;
    c = new mnp();
  }
  
  public mnl(bf<?> parambf)
  {
    a = parambf;
  }
  
  public int a()
  {
    return b;
  }
  
  public View a(View paramView, String paramString, Context paramContext, AttributeSet paramAttributeSet)
  {
    return a.d.a(paramView, paramString, paramContext, paramAttributeSet);
  }
  
  public List<av> a(List<av> paramList)
  {
    if (a.d.f == null) {
      return null;
    }
    paramList.addAll(a.d.f);
    return paramList;
  }
  
  public void a(Configuration paramConfiguration)
  {
    a.d.a(paramConfiguration);
  }
  
  public void a(Parcelable paramParcelable, List<av> paramList)
  {
    a.d.a(paramParcelable, paramList);
  }
  
  public void a(if<String, cj> paramif)
  {
    a.a(paramif);
  }
  
  public void a(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    a.a(paramString, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
  }
  
  public void a(boolean paramBoolean)
  {
    a.a(paramBoolean);
  }
  
  public boolean a(Menu paramMenu)
  {
    return a.d.a(paramMenu);
  }
  
  public boolean a(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    return a.d.a(paramMenu, paramMenuInflater);
  }
  
  public boolean a(MenuItem paramMenuItem)
  {
    return a.d.a(paramMenuItem);
  }
  
  public bg b()
  {
    return a.k();
  }
  
  public void b(Menu paramMenu)
  {
    a.d.b(paramMenu);
  }
  
  public boolean b(MenuItem paramMenuItem)
  {
    return a.d.b(paramMenuItem);
  }
  
  public cj c()
  {
    return a.l();
  }
  
  public int d()
  {
    ArrayList localArrayList = a.d.f;
    if (localArrayList == null) {
      return 0;
    }
    return localArrayList.size();
  }
  
  public void e()
  {
    a.d.a(a, a, null);
  }
  
  public void f()
  {
    a.d.noteStateNotSaved();
  }
  
  public Parcelable g()
  {
    return a.d.i();
  }
  
  public List<av> h()
  {
    return a.d.h();
  }
  
  public void i()
  {
    a.d.j();
  }
  
  public void j()
  {
    a.d.k();
  }
  
  public void k()
  {
    a.d.l();
  }
  
  public void l()
  {
    a.d.m();
  }
  
  public void m()
  {
    a.d.n();
  }
  
  public void n()
  {
    a.d.o();
  }
  
  public void o()
  {
    a.d.p();
  }
  
  public void p()
  {
    a.d.r();
  }
  
  public void q()
  {
    a.d.s();
  }
  
  public boolean r()
  {
    return a.d.g();
  }
  
  public void s()
  {
    a.n();
  }
  
  public void t()
  {
    a.o();
  }
  
  public void u()
  {
    a.p();
  }
  
  public if<String, cj> v()
  {
    return a.q();
  }
}

/* Location:
 * Qualified Name:     mnl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */