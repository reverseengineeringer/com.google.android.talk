import android.view.View;

final class aw
  extends be
{
  aw(av paramav) {}
  
  public View a(int paramInt)
  {
    if (a.S == null) {
      throw new IllegalStateException("Fragment does not have a view");
    }
    return a.S.findViewById(paramInt);
  }
  
  public boolean a()
  {
    return a.S != null;
  }
}

/* Location:
 * Qualified Name:     aw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */