import android.os.Build.VERSION;
import android.os.Debug;
import android.os.Debug.MemoryInfo;
import android.os.Process;

final class hmc
  implements Runnable
{
  hmc(hmb paramhmb, int paramInt, String paramString) {}
  
  public void run()
  {
    int i = Integer.valueOf(a).intValue();
    aal.x();
    mic localmic = new mic();
    a = new mib();
    Object localObject1 = a;
    Object localObject2 = new Debug.MemoryInfo();
    Debug.getMemoryInfo((Debug.MemoryInfo)localObject2);
    mhr localmhr = new mhr();
    a = Integer.valueOf(dalvikPss);
    b = Integer.valueOf(nativePss);
    c = Integer.valueOf(otherPss);
    d = Integer.valueOf(dalvikPrivateDirty);
    e = Integer.valueOf(nativePrivateDirty);
    f = Integer.valueOf(otherPrivateDirty);
    if (Build.VERSION.SDK_INT >= 19)
    {
      g = Integer.valueOf(((Debug.MemoryInfo)localObject2).getTotalPrivateClean());
      i = Integer.valueOf(((Debug.MemoryInfo)localObject2).getTotalSwappablePss());
    }
    h = Integer.valueOf(((Debug.MemoryInfo)localObject2).getTotalSharedDirty());
    a = localmhr;
    b = new mih();
    localObject1 = b;
    localObject2 = new mhs();
    a = Long.valueOf(Process.getElapsedCpuTime());
    b = Boolean.valueOf(hnf.a());
    c = Integer.valueOf(Thread.activeCount());
    a = ((mhs)localObject2);
    c = i;
    c.a.a(b, localmic);
  }
}

/* Location:
 * Qualified Name:     hmc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */