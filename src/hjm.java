import android.view.OrientationEventListener;

final class hjm
  extends OrientationEventListener
{
  public hjm(hjk paramhjk)
  {
    super(k, 3);
  }
  
  public void onOrientationChanged(int paramInt)
  {
    if (paramInt == -1) {
      return;
    }
    for (;;)
    {
      int i;
      synchronized (a.s)
      {
        if (a.z)
        {
          i = a.n();
          if (i != a.y)
          {
            a.y = i;
            a.l();
          }
          return;
        }
      }
      int j = a.y;
      if ((paramInt >= 338) || (paramInt <= 22))
      {
        i = 0;
      }
      else if ((paramInt >= 68) && (paramInt <= 112))
      {
        i = 270;
      }
      else if ((paramInt >= 158) && (paramInt <= 202))
      {
        i = 180;
      }
      else
      {
        i = j;
        if (paramInt >= 248)
        {
          i = j;
          if (paramInt <= 292) {
            i = 90;
          }
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     hjm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */