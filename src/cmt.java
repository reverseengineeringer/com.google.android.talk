import android.content.res.ColorStateList;
import android.view.View.OnClickListener;

public final class cmt
{
  private int a = 2;
  private boolean b = true;
  private String c = null;
  private String d = null;
  private ColorStateList e = null;
  private ColorStateList f = null;
  private View.OnClickListener g = null;
  private int h = -1;
  
  public cmt a()
  {
    b = false;
    return this;
  }
  
  public cmt a(int paramInt)
  {
    a = paramInt;
    return this;
  }
  
  public cmt a(View.OnClickListener paramOnClickListener)
  {
    g = paramOnClickListener;
    return this;
  }
  
  public cmt a(String paramString)
  {
    c = paramString;
    return this;
  }
  
  public cms b()
  {
    return new cms(a, b, c, d, e, f, g, h);
  }
  
  public cmt b(int paramInt)
  {
    f = ColorStateList.valueOf(paramInt);
    return this;
  }
  
  public cmt b(String paramString)
  {
    d = paramString;
    return this;
  }
  
  public cmt c(int paramInt)
  {
    h = paramInt;
    return this;
  }
}

/* Location:
 * Qualified Name:     cmt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */