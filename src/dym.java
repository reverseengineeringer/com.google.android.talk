import android.os.Parcel;

@Deprecated
public abstract class dym
  extends dyx
  implements bci
{
  private final long a;
  private final long e;
  private int f;
  
  public dym(Parcel paramParcel)
  {
    super(paramParcel);
    a = paramParcel.readLong();
    e = paramParcel.readLong();
  }
  
  public dym(bfd parambfd, long paramLong1, long paramLong2)
  {
    super(parambfd);
    a = paramLong1;
    e = paramLong2;
    f = 0;
  }
  
  protected int a(bcg parambcg)
  {
    a(2);
    return super.a(parambcg);
  }
  
  public long a()
  {
    return a;
  }
  
  @Deprecated
  public void a(int paramInt)
  {
    try
    {
      f = paramInt;
      if (paramInt == 3)
      {
        a(System.currentTimeMillis());
        f = 0;
      }
      return;
    }
    finally {}
  }
  
  @Deprecated
  protected abstract void a(long paramLong);
  
  protected void a(Parcel paramParcel, int paramInt)
  {
    super.a(paramParcel, paramInt);
    paramParcel.writeLong(a);
    paramParcel.writeLong(e);
  }
  
  public bcj b()
  {
    return bcj.c;
  }
  
  @Deprecated
  public int d()
  {
    return f;
  }
  
  @Deprecated
  public boolean e()
  {
    boolean bool = false;
    try
    {
      if (f > 0) {
        return false;
      }
      if (System.currentTimeMillis() - i() > a) {
        bool = true;
      }
      return bool;
    }
    finally {}
  }
  
  @Deprecated
  public boolean f()
  {
    boolean bool = false;
    for (;;)
    {
      try
      {
        if (f >= 2) {
          return false;
        }
        long l1 = System.currentTimeMillis();
        long l2 = i();
        if ((l1 - l2 <= e) && (l2 - l1 <= 86400000L)) {
          return bool;
        }
      }
      finally {}
      bool = true;
    }
  }
  
  @Deprecated
  public boolean g()
  {
    for (;;)
    {
      try
      {
        if (f == 2)
        {
          bool = true;
          return bool;
        }
      }
      finally {}
      boolean bool = false;
    }
  }
  
  @Deprecated
  public void h()
  {
    try
    {
      a(-1L);
      return;
    }
    finally {}
  }
  
  @Deprecated
  protected abstract long i();
}

/* Location:
 * Qualified Name:     dym
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */