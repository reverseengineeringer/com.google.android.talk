import android.content.Context;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.text.TextUtils;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

final class ffo
  extends fbg
{
  ffv n;
  private String p;
  private Uri q;
  private ffm r;
  private long s;
  
  public ffo(ffl paramffl, Context paramContext, String paramString, Uri paramUri, grp paramgrp, long paramLong, ffm paramffm)
  {
    super(paramContext);
    r = paramffm;
    n = new ffv(paramgrp);
    p = paramString;
    q = paramUri;
    n.a(paramString);
    s = paramLong;
  }
  
  public void a(int paramInt) {}
  
  public void a(int paramInt1, int paramInt2, int paramInt3) {}
  
  public void a(Cursor paramCursor, int paramInt, Map<String, String> paramMap)
  {
    boolean bool2 = true;
    bfd localbfd = dvd.e(paramInt);
    a(paramCursor, dvd.e(paramInt), false, p);
    paramMap = o.a(paramInt, p, 0, paramMap);
    n.a(paramMap);
    n.e(paramCursor.getString(41));
    int i = t();
    boolean bool1;
    label118:
    label172:
    ArrayList localArrayList;
    Iterator localIterator;
    Map<String, String> localMap;
    if (s() == 2)
    {
      bool1 = true;
      n.b(i);
      paramMap = n;
      if (!aal.f(t())) {
        break label285;
      }
      if ((!bool1) || (!enn.c())) {
        break label277;
      }
      i = fft.c;
      paramMap.a(i);
      n.a(u());
      n.a(r());
      n.b(bool1);
      paramMap = n;
      if (paramCursor.getInt(40) == 1) {
        break label293;
      }
      paramMap.c(bool2);
      paramCursor = p;
      paramCursor = new bfz(o.a, paramInt).H(paramCursor);
      localArrayList = new ArrayList();
      if (bool1) {
        break label419;
      }
      localIterator = paramCursor.iterator();
      localMap = null;
      paramCursor = null;
    }
    for (;;)
    {
      if (!localIterator.hasNext()) {
        break label305;
      }
      paramMap = (cyx)localIterator.next();
      if (localbfd.b().a(b))
      {
        paramCursor = paramMap;
        continue;
        bool1 = false;
        break;
        label277:
        i = fft.b;
        break label118;
        label285:
        i = fft.a;
        break label118;
        label293:
        bool2 = false;
        break label172;
      }
      localMap = paramMap;
    }
    label305:
    if (localMap != null) {
      if ((paramCursor != null) && (!TextUtils.isEmpty(f)) && (!f.equals(f)))
      {
        paramMap = f;
        paramCursor = paramMap;
        if (localbfd.j())
        {
          paramCursor = paramMap;
          if (!y) {
            localArrayList.add(paramMap);
          }
        }
      }
    }
    for (paramCursor = paramMap;; paramCursor = null)
    {
      paramMap = paramCursor;
      if (TextUtils.isEmpty(paramCursor)) {
        paramMap = n.a();
      }
      n.d(paramMap);
      label419:
      do
      {
        n.b(localArrayList);
        return;
        paramMap = e;
        break;
      } while (!localbfd.j());
      paramMap = paramCursor.iterator();
      label434:
      label512:
      label518:
      for (;;)
      {
        if (paramMap.hasNext())
        {
          paramCursor = (cyx)paramMap.next();
          if ((y) || (!localbfd.j()) || (localbfd.b().a(b))) {
            continue;
          }
          if (f == null) {
            break label512;
          }
        }
        for (paramCursor = f;; paramCursor = e)
        {
          if (TextUtils.isEmpty(paramCursor)) {
            break label518;
          }
          localArrayList.add(paramCursor);
          break label434;
          break;
        }
      }
    }
  }
  
  public void a(Bitmap paramBitmap) {}
  
  public void a(CharSequence paramCharSequence)
  {
    if (paramCharSequence != null) {
      n.c(paramCharSequence.toString());
    }
  }
  
  public void a(boolean paramBoolean) {}
  
  public void a(boolean paramBoolean1, Bitmap paramBitmap, boolean paramBoolean2, Object paramObject)
  {
    if ((paramObject != null) && (paramObject.equals(p)) && (!paramBoolean2)) {
      r.a(q, paramBitmap);
    }
  }
  
  public CharSequence b()
  {
    return null;
  }
  
  public void b(int paramInt) {}
  
  public void b(Drawable paramDrawable) {}
  
  public void b(CharSequence paramCharSequence) {}
  
  public void b(String paramString)
  {
    if ((paramString != null) && (paramString.length() > 1))
    {
      paramString = paramString.substring(1);
      n.b(paramString);
    }
  }
  
  public void c() {}
  
  public void c(int paramInt) {}
  
  public void c(Drawable paramDrawable) {}
  
  public void c(CharSequence paramCharSequence) {}
  
  public CharSequence d()
  {
    return null;
  }
  
  public void d(int paramInt) {}
  
  public void d(CharSequence paramCharSequence) {}
  
  public TextView e()
  {
    return null;
  }
  
  public void e(int paramInt) {}
  
  public int f()
  {
    return 0;
  }
  
  public void f(int paramInt) {}
  
  public CharSequence g()
  {
    return null;
  }
  
  public void g(int paramInt) {}
  
  public CharSequence h()
  {
    return null;
  }
  
  public void h(int paramInt) {}
  
  public int i()
  {
    return 0;
  }
  
  public void i(int paramInt) {}
  
  public int j()
  {
    return 0;
  }
  
  public void j(int paramInt) {}
  
  public int k()
  {
    return 0;
  }
  
  public void k(int paramInt) {}
  
  protected void l() {}
  
  public void l(int paramInt) {}
  
  public boolean m()
  {
    return false;
  }
  
  public boolean n()
  {
    return u() > s;
  }
}

/* Location:
 * Qualified Name:     ffo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */