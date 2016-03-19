import android.view.KeyEvent;

final class je
  extends jd
{
  public int a(int paramInt)
  {
    return KeyEvent.normalizeMetaState(paramInt);
  }
  
  public boolean a(int paramInt1, int paramInt2)
  {
    return KeyEvent.metaStateHasModifiers(paramInt1, 1);
  }
  
  public boolean b(int paramInt)
  {
    return KeyEvent.metaStateHasNoModifiers(paramInt);
  }
}

/* Location:
 * Qualified Name:     je
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */