package com.google.android.libraries.componentview.core;

import com.google.android.libraries.componentview.api.external.Readyable.ReadyInfo;
import java.util.List;
import lbb;
import lbl;

final class Utils$1
  implements Runnable
{
  public void run()
  {
    long l1 = 0L;
    int i = 0;
    for (;;)
    {
      if (i >= a.size()) {
        break label77;
      }
      try
      {
        long l2 = Math.max(l1, a.get(i)).get()).a);
        l1 = l2;
      }
      catch (Exception localException)
      {
        for (;;)
        {
          b.b(new Readyable.ReadyInfo());
        }
      }
      i += 1;
    }
    label77:
    b.b(new Readyable.ReadyInfo(l1));
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.componentview.core.Utils.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */