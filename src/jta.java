import java.io.PrintStream;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

final class jta
  implements Runnable
{
  jta(jsz paramjsz, Set paramSet) {}
  
  public void run()
  {
    Map localMap;
    HashSet localHashSet;
    try
    {
      localMap = Thread.getAllStackTraces();
      localHashSet = new HashSet();
      Iterator localIterator = localMap.keySet().iterator();
      while (localIterator.hasNext())
      {
        localObject2 = (Thread)localIterator.next();
        if ((!a.contains(localObject2)) && (localObject2 != Thread.currentThread()) && (!jsz.a.matcher(((Thread)localObject2).getName()).matches()) && (!jsz.a((StackTraceElement[])localMap.get(localObject2)))) {
          localHashSet.add(localObject2);
        }
      }
      while (!jsz.a(localHashSet)) {}
    }
    catch (Throwable localThrowable)
    {
      localThrowable.printStackTrace();
      return;
    }
    Object localObject2 = localHashSet.iterator();
    if (((Iterator)localObject2).hasNext())
    {
      Thread localThread = (Thread)((Iterator)localObject2).next();
      Object localObject3 = System.out;
      Object localObject1 = String.valueOf(localThread.getName());
      if (((String)localObject1).length() != 0) {}
      for (localObject1 = "Thread is ".concat((String)localObject1);; localObject1 = new String("Thread is "))
      {
        ((PrintStream)localObject3).println((String)localObject1);
        localObject1 = System.out;
        localObject3 = String.valueOf(localThread.getState());
        ((PrintStream)localObject1).println(String.valueOf(localObject3).length() + 9 + "State is " + (String)localObject3);
        localObject1 = (StackTraceElement[])localMap.get(localThread);
        System.out.println(Arrays.toString((Object[])localObject1));
        break;
      }
    }
    aal.a(new jtb(this, localHashSet));
  }
}

/* Location:
 * Qualified Name:     jta
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */