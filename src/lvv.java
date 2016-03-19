import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map.Entry;
import java.util.Set;

public final class lvv<FieldDescriptorType extends lvx<FieldDescriptorType>>
{
  private static final lvv d = new lvv((byte)0);
  private final lwv<FieldDescriptorType, Object> a;
  private boolean b;
  private boolean c = false;
  
  lvv()
  {
    a = lwv.a(16);
  }
  
  private lvv(byte paramByte)
  {
    a = lwv.a(0);
    a();
  }
  
  private static int a(lxo paramlxo, int paramInt, Object paramObject)
  {
    int i = lvq.m(paramInt);
    paramInt = i;
    if (paramlxo == lxo.j)
    {
      lwg.a();
      paramInt = i << 1;
    }
    return paramInt + b(paramlxo, paramObject);
  }
  
  static int a(lxo paramlxo, boolean paramBoolean)
  {
    if (paramBoolean) {
      return 2;
    }
    return paramlxo.b();
  }
  
  private static Object a(Object paramObject)
  {
    if ((paramObject instanceof lws)) {
      localObject = ((lws)paramObject).b();
    }
    do
    {
      return localObject;
      localObject = paramObject;
    } while (!(paramObject instanceof byte[]));
    paramObject = (byte[])paramObject;
    Object localObject = new byte[paramObject.length];
    System.arraycopy(paramObject, 0, localObject, 0, paramObject.length);
    return localObject;
  }
  
  public static Object a(lvp paramlvp, lxo paramlxo)
  {
    lxu locallxu = lxu.a;
    switch (lxn.a[paramlxo.ordinal()])
    {
    default: 
      throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
    case 1: 
      return Double.valueOf(paramlvp.b());
    case 2: 
      return Float.valueOf(paramlvp.c());
    case 3: 
      return Long.valueOf(paramlvp.e());
    case 4: 
      return Long.valueOf(paramlvp.d());
    case 5: 
      return Integer.valueOf(paramlvp.f());
    case 6: 
      return Long.valueOf(paramlvp.g());
    case 7: 
      return Integer.valueOf(paramlvp.h());
    case 8: 
      return Boolean.valueOf(paramlvp.i());
    case 9: 
      return paramlvp.l();
    case 10: 
      return Integer.valueOf(paramlvp.m());
    case 11: 
      return Integer.valueOf(paramlvp.o());
    case 12: 
      return Long.valueOf(paramlvp.p());
    case 13: 
      return Integer.valueOf(paramlvp.q());
    case 14: 
      return Long.valueOf(paramlvp.r());
    case 15: 
      return locallxu.a(paramlvp);
    case 16: 
      throw new IllegalArgumentException("readPrimitiveField() cannot handle nested groups.");
    case 17: 
      throw new IllegalArgumentException("readPrimitiveField() cannot handle embedded messages.");
    }
    throw new IllegalArgumentException("readPrimitiveField() cannot handle enums.");
  }
  
  private static void a(lvq paramlvq, lxo paramlxo, int paramInt, Object paramObject)
  {
    if (paramlxo == lxo.j)
    {
      lwg.a();
      paramlvq.e(paramInt, (lwp)paramObject);
      return;
    }
    paramlvq.a(paramInt, a(paramlxo, false));
    a(paramlvq, paramlxo, paramObject);
  }
  
  private static void a(lvq paramlvq, lxo paramlxo, Object paramObject)
  {
    switch (lvw.b[paramlxo.ordinal()])
    {
    default: 
      return;
    case 1: 
      paramlvq.a(((Double)paramObject).doubleValue());
      return;
    case 2: 
      paramlvq.a(((Float)paramObject).floatValue());
      return;
    case 3: 
      paramlvq.a(((Long)paramObject).longValue());
      return;
    case 4: 
      paramlvq.b(((Long)paramObject).longValue());
      return;
    case 5: 
      paramlvq.b(((Integer)paramObject).intValue());
      return;
    case 6: 
      paramlvq.d(((Long)paramObject).longValue());
      return;
    case 7: 
      paramlvq.e(((Integer)paramObject).intValue());
      return;
    case 8: 
      paramlvq.a(((Boolean)paramObject).booleanValue());
      return;
    case 9: 
      paramlvq.c((lwp)paramObject);
      return;
    case 10: 
      paramlvq.a((lwp)paramObject);
      return;
    case 11: 
      if ((paramObject instanceof lvk))
      {
        paramlvq.a((lvk)paramObject);
        return;
      }
      paramlvq.a((String)paramObject);
      return;
    case 12: 
      if ((paramObject instanceof lvk))
      {
        paramlvq.a((lvk)paramObject);
        return;
      }
      paramlvq.b((byte[])paramObject);
      return;
    case 13: 
      paramlvq.c(((Integer)paramObject).intValue());
      return;
    case 14: 
      paramlvq.f(((Integer)paramObject).intValue());
      return;
    case 15: 
      paramlvq.e(((Long)paramObject).longValue());
      return;
    case 16: 
      paramlvq.d(((Integer)paramObject).intValue());
      return;
    case 17: 
      paramlvq.c(((Long)paramObject).longValue());
      return;
    }
    if ((paramObject instanceof lwh))
    {
      paramlvq.g(((lwh)paramObject).a());
      return;
    }
    paramlvq.g(((Integer)paramObject).intValue());
  }
  
  public static void a(lvx<?> paramlvx, Object paramObject, lvq paramlvq)
  {
    lxo locallxo = paramlvx.b();
    int i = paramlvx.a();
    if (paramlvx.d())
    {
      paramObject = (List)paramObject;
      if (paramlvx.e())
      {
        paramlvq.a(i, 2);
        i = 0;
        paramlvx = ((List)paramObject).iterator();
        while (paramlvx.hasNext()) {
          i += b(locallxo, paramlvx.next());
        }
        paramlvq.r(i);
        paramlvx = ((List)paramObject).iterator();
        while (paramlvx.hasNext()) {
          a(paramlvq, locallxo, paramlvx.next());
        }
      }
      paramlvx = ((List)paramObject).iterator();
      while (paramlvx.hasNext()) {
        a(paramlvq, locallxo, i, paramlvx.next());
      }
    }
    if ((paramObject instanceof lwl))
    {
      a(paramlvq, locallxo, i, ((lwl)paramObject).a());
      return;
    }
    a(paramlvq, locallxo, i, paramObject);
  }
  
  private static void a(lxo paramlxo, Object paramObject)
  {
    boolean bool = false;
    if (paramObject == null) {
      throw new NullPointerException();
    }
    switch (lvw.a[paramlxo.a().ordinal()])
    {
    }
    while (!bool)
    {
      throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
      bool = paramObject instanceof Integer;
      continue;
      bool = paramObject instanceof Long;
      continue;
      bool = paramObject instanceof Float;
      continue;
      bool = paramObject instanceof Double;
      continue;
      bool = paramObject instanceof Boolean;
      continue;
      bool = paramObject instanceof String;
      continue;
      if (((paramObject instanceof lvk)) || ((paramObject instanceof byte[])))
      {
        bool = true;
        continue;
        if (((paramObject instanceof Integer)) || ((paramObject instanceof lwh)))
        {
          bool = true;
          continue;
          if (((paramObject instanceof lwp)) || ((paramObject instanceof lwl))) {
            bool = true;
          }
        }
      }
    }
  }
  
  private static boolean a(Map.Entry<FieldDescriptorType, Object> paramEntry)
  {
    lvx locallvx = (lvx)paramEntry.getKey();
    if (locallvx.c() == lxt.i)
    {
      if (locallvx.d())
      {
        paramEntry = ((List)paramEntry.getValue()).iterator();
        do
        {
          if (!paramEntry.hasNext()) {
            break;
          }
        } while (((lwp)paramEntry.next()).f());
        return false;
      }
      paramEntry = paramEntry.getValue();
      if ((paramEntry instanceof lwp))
      {
        if (!((lwp)paramEntry).f()) {
          return false;
        }
      }
      else
      {
        if ((paramEntry instanceof lwl)) {
          return true;
        }
        throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
      }
    }
    return true;
  }
  
  private static int b(lxo paramlxo, Object paramObject)
  {
    switch (lvw.b[paramlxo.ordinal()])
    {
    default: 
      throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
    case 1: 
      ((Double)paramObject).doubleValue();
      return lvq.f();
    case 2: 
      ((Float)paramObject).floatValue();
      return lvq.e();
    case 3: 
      return lvq.f(((Long)paramObject).longValue());
    case 4: 
      return lvq.g(((Long)paramObject).longValue());
    case 5: 
      return lvq.n(((Integer)paramObject).intValue());
    case 6: 
      ((Long)paramObject).longValue();
      return lvq.c();
    case 7: 
      ((Integer)paramObject).intValue();
      return lvq.a();
    case 8: 
      ((Boolean)paramObject).booleanValue();
      return lvq.g();
    case 9: 
      return lvq.d((lwp)paramObject);
    case 12: 
      if ((paramObject instanceof lvk)) {
        return lvq.b((lvk)paramObject);
      }
      return lvq.c((byte[])paramObject);
    case 11: 
      if ((paramObject instanceof lvk)) {
        return lvq.b((lvk)paramObject);
      }
      return lvq.b((String)paramObject);
    case 13: 
      return lvq.o(((Integer)paramObject).intValue());
    case 14: 
      ((Integer)paramObject).intValue();
      return lvq.b();
    case 15: 
      ((Long)paramObject).longValue();
      return lvq.d();
    case 16: 
      return lvq.p(((Integer)paramObject).intValue());
    case 17: 
      return lvq.h(((Long)paramObject).longValue());
    case 10: 
      if ((paramObject instanceof lwl)) {
        return lvq.a((lwl)paramObject);
      }
      return lvq.b((lwp)paramObject);
    }
    if ((paramObject instanceof lwh)) {
      return lvq.q(((lwh)paramObject).a());
    }
    return lvq.q(((Integer)paramObject).intValue());
  }
  
  private void b(Map.Entry<FieldDescriptorType, Object> paramEntry)
  {
    lvx locallvx = (lvx)paramEntry.getKey();
    Object localObject1 = paramEntry.getValue();
    paramEntry = (Map.Entry<FieldDescriptorType, Object>)localObject1;
    if ((localObject1 instanceof lwl)) {
      paramEntry = ((lwl)localObject1).a();
    }
    if (locallvx.d())
    {
      Object localObject2 = a(locallvx);
      localObject1 = localObject2;
      if (localObject2 == null) {
        localObject1 = new ArrayList();
      }
      paramEntry = ((List)paramEntry).iterator();
      while (paramEntry.hasNext())
      {
        localObject2 = paramEntry.next();
        ((List)localObject1).add(a(localObject2));
      }
      a.a(locallvx, localObject1);
      return;
    }
    if (locallvx.c() == lxt.i)
    {
      localObject1 = a(locallvx);
      if (localObject1 == null)
      {
        a.a(locallvx, a(paramEntry));
        return;
      }
      if ((localObject1 instanceof lws)) {
        throw new UnsupportedOperationException();
      }
      localObject1 = ((lwp)localObject1).h();
      paramEntry = (lwp)paramEntry;
      paramEntry = ((lwa)localObject1).a((lvy)paramEntry).i();
      a.a(locallvx, paramEntry);
      return;
    }
    a.a(locallvx, a(paramEntry));
  }
  
  private static int c(Map.Entry<FieldDescriptorType, Object> paramEntry)
  {
    int i = 0;
    Object localObject1 = (lvx)paramEntry.getKey();
    Object localObject2 = paramEntry.getValue();
    int j;
    if ((((lvx)localObject1).c() == lxt.i) && (!((lvx)localObject1).d()) && (!((lvx)localObject1).e()))
    {
      if ((localObject2 instanceof lwl))
      {
        j = lvq.a(((lvx)paramEntry.getKey()).a(), (lwl)localObject2);
        return j;
      }
      return lvq.d(((lvx)paramEntry.getKey()).a(), (lwp)localObject2);
    }
    paramEntry = ((lvx)localObject1).b();
    int k = ((lvx)localObject1).a();
    if (((lvx)localObject1).d())
    {
      if (((lvx)localObject1).e())
      {
        localObject1 = ((List)localObject2).iterator();
        i = 0;
        while (((Iterator)localObject1).hasNext()) {
          i += b(paramEntry, ((Iterator)localObject1).next());
        }
        return lvq.m(k) + i + lvq.s(i);
      }
      localObject1 = ((List)localObject2).iterator();
      for (;;)
      {
        j = i;
        if (!((Iterator)localObject1).hasNext()) {
          break;
        }
        i += a(paramEntry, k, ((Iterator)localObject1).next());
      }
    }
    return a(paramEntry, k, localObject2);
  }
  
  public Object a(FieldDescriptorType paramFieldDescriptorType)
  {
    Object localObject = a.get(paramFieldDescriptorType);
    paramFieldDescriptorType = (FieldDescriptorType)localObject;
    if ((localObject instanceof lwl)) {
      paramFieldDescriptorType = ((lwl)localObject).a();
    }
    return paramFieldDescriptorType;
  }
  
  public void a()
  {
    if (b) {
      return;
    }
    a.a();
    b = true;
  }
  
  public void a(lvv<FieldDescriptorType> paramlvv)
  {
    int i = 0;
    while (i < a.c())
    {
      b(a.b(i));
      i += 1;
    }
    paramlvv = a.d().iterator();
    while (paramlvv.hasNext()) {
      b((Map.Entry)paramlvv.next());
    }
  }
  
  public void a(FieldDescriptorType paramFieldDescriptorType, Object paramObject)
  {
    if (paramFieldDescriptorType.d())
    {
      if (!(paramObject instanceof List)) {
        throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
      }
      ArrayList localArrayList = new ArrayList();
      localArrayList.addAll((List)paramObject);
      paramObject = localArrayList.iterator();
      while (((Iterator)paramObject).hasNext())
      {
        Object localObject = ((Iterator)paramObject).next();
        a(paramFieldDescriptorType.b(), localObject);
      }
      paramObject = localArrayList;
    }
    for (;;)
    {
      if ((paramObject instanceof lwl)) {
        c = true;
      }
      a.a(paramFieldDescriptorType, paramObject);
      return;
      a(paramFieldDescriptorType.b(), paramObject);
    }
  }
  
  public void b(FieldDescriptorType paramFieldDescriptorType, Object paramObject)
  {
    if (!paramFieldDescriptorType.d()) {
      throw new IllegalArgumentException("addRepeatedField() can only be called on repeated fields.");
    }
    a(paramFieldDescriptorType.b(), paramObject);
    Object localObject = a(paramFieldDescriptorType);
    if (localObject == null)
    {
      localObject = new ArrayList();
      a.a(paramFieldDescriptorType, localObject);
    }
    for (paramFieldDescriptorType = (FieldDescriptorType)localObject;; paramFieldDescriptorType = (List)localObject)
    {
      paramFieldDescriptorType.add(paramObject);
      return;
    }
  }
  
  public boolean b()
  {
    return b;
  }
  
  public lvv<FieldDescriptorType> c()
  {
    lvv locallvv = new lvv();
    int i = 0;
    while (i < a.c())
    {
      localObject = a.b(i);
      locallvv.a((lvx)((Map.Entry)localObject).getKey(), ((Map.Entry)localObject).getValue());
      i += 1;
    }
    Object localObject = a.d().iterator();
    while (((Iterator)localObject).hasNext())
    {
      Map.Entry localEntry = (Map.Entry)((Iterator)localObject).next();
      locallvv.a((lvx)localEntry.getKey(), localEntry.getValue());
    }
    c = c;
    return locallvv;
  }
  
  public Iterator<Map.Entry<FieldDescriptorType, Object>> d()
  {
    if (c) {
      return new lwn(a.entrySet().iterator());
    }
    return a.entrySet().iterator();
  }
  
  public boolean e()
  {
    int i = 0;
    while (i < a.c())
    {
      if (!a(a.b(i))) {
        return false;
      }
      i += 1;
    }
    Iterator localIterator = a.d().iterator();
    while (localIterator.hasNext()) {
      if (!a((Map.Entry)localIterator.next())) {
        return false;
      }
    }
    return true;
  }
  
  public int f()
  {
    int j = 0;
    int i = 0;
    while (j < a.c())
    {
      i += c(a.b(j));
      j += 1;
    }
    Iterator localIterator = a.d().iterator();
    while (localIterator.hasNext()) {
      i += c((Map.Entry)localIterator.next());
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     lvv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */