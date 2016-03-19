import android.content.Context;
import android.os.SystemClock;
import android.util.SparseArray;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;

public class hby
  extends hbx
{
  private final int[] a;
  private final SparseArray<Long> b;
  private final SparseArray<haz> c;
  private boolean d;
  private final haw e;
  
  public hby(Context paramContext, int[] paramArrayOfInt)
  {
    this(paramContext, paramArrayOfInt, hay.a);
  }
  
  private hby(Context paramContext, int[] paramArrayOfInt, SparseArray<haz> paramSparseArray)
  {
    a = paramArrayOfInt;
    c = paramSparseArray;
    b = new SparseArray();
    d = false;
    e = new hbz(this, paramContext);
  }
  
  private void a(int paramInt)
  {
    hax localhax = e.a(paramInt);
    if (localhax != null)
    {
      localhax.d();
      return;
    }
    hlk.a(5, "BabelMarkReporterDef", 70 + "No Clearcut logger available when trying to log impression " + paramInt);
  }
  
  public void a()
  {
    for (;;)
    {
      int i;
      try
      {
        klt localklt;
        Object localObject3;
        int j;
        Object localObject4;
        if (!d)
        {
          localklt = new klt();
          localObject2 = new HashSet();
          localObject3 = new ArrayList();
          i = 0;
          if (i < b.size())
          {
            j = b.keyAt(i);
            long l = ((Long)b.valueAt(i)).longValue();
            if (!((Set)localObject2).add(Integer.valueOf(j))) {
              break label440;
            }
            localObject4 = new klv();
            a = Integer.valueOf(j);
            b = Long.valueOf(l);
            ((ArrayList)localObject3).add(localObject4);
            break label440;
          }
          if (((ArrayList)localObject3).isEmpty())
          {
            bool = false;
            d = bool;
            if (!d) {
              continue;
            }
            a(2616);
          }
        }
        else
        {
          return;
        }
        b = ((klv[])((ArrayList)localObject3).toArray(new klv[((ArrayList)localObject3).size()]));
        Object localObject2 = new ArrayList();
        i = 0;
        if (i < c.size())
        {
          j = c.keyAt(i);
          int k = c.valueAt(i)).a;
          int m = c.valueAt(i)).b;
          localObject3 = (Long)b.get(k);
          localObject4 = (Long)b.get(m);
          if ((localObject3 == null) || (localObject4 == null)) {
            break label447;
          }
          klu localklu = new klu();
          d = Long.valueOf(((Long)localObject4).longValue() - ((Long)localObject3).longValue());
          a = Integer.valueOf(j);
          ((ArrayList)localObject2).add(localklu);
          localObject3 = d;
          break label447;
        }
        a = ((klu[])((ArrayList)localObject2).toArray(new klu[((ArrayList)localObject2).size()]));
        c = a;
        localObject2 = new kls();
        a = new kli();
        a(a);
        a.n = localklt;
        e.a((kls)localObject2);
        boolean bool = true;
        continue;
        a(2617);
        continue;
        i += 1;
      }
      finally {}
      label440:
      continue;
      label447:
      i += 1;
    }
  }
  
  public void a(int paramInt, long paramLong)
  {
    if (paramLong > 0L) {}
    for (;;)
    {
      try
      {
        if (b.get(paramInt) == null)
        {
          b.put(paramInt, Long.valueOf(paramLong));
          return;
        }
        hax localhax = e.a(2984);
        if (localhax != null)
        {
          localhax.b(paramInt).d();
          hlk.a("BabelMarkReporterDef", 40 + "Mark [" + paramInt + "] is set more than once", new IllegalStateException());
        }
        else
        {
          hlk.a(5, "BabelMarkReporterDef", 70 + "No Clearcut logger available when trying to log impression 2984");
        }
      }
      finally {}
    }
  }
  
  public void a(kli paramkli) {}
  
  public void a(int... paramVarArgs)
  {
    int i = 0;
    try
    {
      if (!d)
      {
        long l = SystemClock.elapsedRealtime();
        while (i <= 0)
        {
          a(paramVarArgs[0], l);
          i += 1;
        }
      }
      return;
    }
    finally {}
  }
}

/* Location:
 * Qualified Name:     hby
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */