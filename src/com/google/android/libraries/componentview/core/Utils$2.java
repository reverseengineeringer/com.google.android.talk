package com.google.android.libraries.componentview.core;

import com.google.android.libraries.componentview.api.external.Readyable.ReadyInfo;
import lbb;
import lbl;

final class Utils$2
  implements Runnable
{
  public void run()
  {
    try
    {
      a.b(b.get());
      return;
    }
    catch (Exception localException)
    {
      a.b(new Readyable.ReadyInfo());
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.componentview.core.Utils.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */