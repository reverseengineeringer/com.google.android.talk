import android.text.TextUtils;

public final class bij
{
  private final bfd a;
  private final hq<String, bik> b = new hq();
  private final eyp<String> c = new eyp();
  
  bij(bfd parambfd)
  {
    a = parambfd;
  }
  
  public cyx a(czb paramczb, boolean paramBoolean)
  {
    for (;;)
    {
      synchronized (b)
      {
        localObject = (String)c.get(paramczb);
        if (localObject == null) {
          break label99;
        }
        localObject = (bik)b.get(localObject);
        if (localObject != null) {
          break label94;
        }
        if (paramBoolean)
        {
          hbs.b();
          paramczb = aal.a(paramczb);
          return new bfz(aal.oJ, a.g()).a(paramczb);
        }
      }
      ehd.a(paramczb, a);
      return null;
      label94:
      return a;
      label99:
      Object localObject = null;
    }
  }
  
  public cyx a(String paramString, boolean paramBoolean)
  {
    bik localbik;
    synchronized (b)
    {
      localbik = (bik)b.get(paramString);
      if (localbik != null) {
        break label71;
      }
      if (paramBoolean)
      {
        hbs.b();
        return new bfz(aal.oJ, a.g()).F(paramString);
      }
    }
    ehd.a(paramString, a);
    return null;
    label71:
    return a;
  }
  
  public void a(cyx paramcyx, String paramString)
  {
    if (paramString != null) {
      if (paramcyx.j() != null) {
        break label22;
      }
    }
    label22:
    for (boolean bool = true;; bool = false)
    {
      a(paramString, paramcyx, bool);
      return;
    }
  }
  
  public boolean a(String paramString, cyx paramcyx, boolean paramBoolean)
  {
    if ((paramcyx != null) && (paramString != null)) {
      for (;;)
      {
        synchronized (b)
        {
          localObject1 = (bik)b.get(paramString);
          if (localObject1 == null) {
            break label534;
          }
          if (a.b != null)
          {
            if (!a.b.a(b)) {
              break label534;
            }
            localObject1 = a;
            if (localObject1 != null) {
              break label525;
            }
            if (b == null)
            {
              localObject1 = null;
              if (b != null) {
                continue;
              }
              localObject2 = null;
              localObject1 = aal.a((String)localObject1, (String)localObject2, d, c, e, f, g, h, r, i);
              ((cyx)localObject1).b(paramcyx.j());
              localObject2 = new bik((cyx)localObject1);
              b.put(paramString, localObject2);
              c.put(b, paramString);
              bool1 = true;
              paramString = (String)localObject1;
              if ((paramBoolean) && (paramString.j() != null)) {
                paramString.b(null);
              }
              boolean bool2 = bool1;
              if (!bool1)
              {
                paramBoolean = bool1;
                if (!TextUtils.isEmpty(f))
                {
                  paramBoolean = bool1;
                  if (!TextUtils.equals(f, f))
                  {
                    paramBoolean = true;
                    f = f;
                  }
                }
                bool1 = paramBoolean;
                if (!TextUtils.isEmpty(e))
                {
                  bool1 = paramBoolean;
                  if (!TextUtils.equals(e, e))
                  {
                    bool1 = true;
                    e = e;
                  }
                }
                paramBoolean = bool1;
                if (!TextUtils.isEmpty(g))
                {
                  paramBoolean = bool1;
                  if (!TextUtils.equals(g, g))
                  {
                    paramBoolean = true;
                    paramString.c(g);
                  }
                }
                bool1 = paramBoolean;
                if (!TextUtils.isEmpty(r))
                {
                  bool1 = paramBoolean;
                  if (!TextUtils.equals(r, r))
                  {
                    bool1 = true;
                    r = r;
                  }
                }
                paramBoolean = bool1;
                if (!TextUtils.isEmpty(h))
                {
                  paramBoolean = bool1;
                  if (!TextUtils.equals(h, h))
                  {
                    paramBoolean = true;
                    h = h;
                  }
                }
                bool2 = paramBoolean;
                if (i != null)
                {
                  bool2 = paramBoolean;
                  if (i != i)
                  {
                    bool2 = true;
                    i = i;
                  }
                }
              }
              return bool2;
            }
          }
          else
          {
            if ((a.d == null) || (!a.d.equals(d))) {
              break label534;
            }
            localObject1 = a;
            continue;
          }
          localObject1 = b.a;
          continue;
          Object localObject2 = b.b;
        }
        label525:
        boolean bool1 = false;
        paramString = (String)localObject1;
        continue;
        label534:
        Object localObject1 = null;
      }
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     bij
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */