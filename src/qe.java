import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.view.KeyEvent;
import android.view.View;

public abstract class qe
{
  public wb a(wc paramwc)
  {
    return null;
  }
  
  public abstract void a();
  
  public void a(float paramFloat)
  {
    if (paramFloat != 0.0F) {
      throw new UnsupportedOperationException("Setting a non-zero elevation is not supported in this action bar configuration.");
    }
  }
  
  public abstract void a(int paramInt);
  
  public void a(Configuration paramConfiguration) {}
  
  public void a(Drawable paramDrawable) {}
  
  public abstract void a(View paramView);
  
  public abstract void a(CharSequence paramCharSequence);
  
  public abstract void a(qg paramqg);
  
  public abstract void a(boolean paramBoolean);
  
  public boolean a(int paramInt, KeyEvent paramKeyEvent)
  {
    return false;
  }
  
  public abstract void b();
  
  public void b(int paramInt) {}
  
  public abstract void b(CharSequence paramCharSequence);
  
  public void b(boolean paramBoolean) {}
  
  public abstract View c();
  
  public void c(int paramInt) {}
  
  public void c(CharSequence paramCharSequence) {}
  
  public void c(boolean paramBoolean) {}
  
  public abstract int d();
  
  public void d(boolean paramBoolean) {}
  
  public abstract void e();
  
  public abstract void f();
  
  public Context g()
  {
    return null;
  }
  
  public void h()
  {
    throw new UnsupportedOperationException("Hide on content scroll is not supported in this action bar configuration.");
  }
  
  public boolean i()
  {
    return false;
  }
  
  public boolean j()
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     qe
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */