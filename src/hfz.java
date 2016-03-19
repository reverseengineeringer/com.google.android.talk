import com.google.android.libraries.hangouts.video.internal.VideoViewRequest;

final class hfz
  implements Runnable
{
  hfz(hfu paramhfu) {}
  
  public void run()
  {
    Object localObject2 = a.m.c();
    if (a.f == 0)
    {
      hlk.a(4, "vclib", "No ssrc for renderer; not sending ViewRequest");
      return;
    }
    int k;
    int j;
    int i;
    if ((((hil)localObject2).o()) || (a.p == null))
    {
      localObject1 = String.valueOf(a.m.a());
      boolean bool = ((hil)localObject2).o();
      localObject2 = String.valueOf(a.p);
      hlk.a(4, "vclib", String.valueOf(localObject1).length() + 46 + String.valueOf(localObject2).length() + "No view request for " + (String)localObject1 + " muted=" + bool + ", surfaceInfo=" + (String)localObject2);
      k = 0;
      j = 0;
      i = 0;
      localObject1 = new VideoViewRequest(a.f, a.e, i, j, k);
      hlk.a(3, "vclib", "Sending view request %s", new Object[] { localObject1 });
      a.a.a(new VideoViewRequest[] { localObject1 });
      return;
    }
    if (a.h == 0) {
      if (a.g)
      {
        i = 3;
        switch (i)
        {
        default: 
          label240:
          i = a.h();
          hgu.a();
        }
      }
    }
    for (Object localObject1 = (hgu)hgu.e.get(Integer.valueOf(i));; localObject1 = hgu.a(a.h()))
    {
      j = ba;
      k = ((hgu)localObject1).d();
      i = j;
      break;
      i = 1;
      break label240;
      i = a.h;
      break label240;
    }
  }
}

/* Location:
 * Qualified Name:     hfz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */