import android.content.Context;
import android.widget.ArrayAdapter;

final class rc
  extends ArrayAdapter<CharSequence>
{
  public rc(Context paramContext, int paramInt, CharSequence[] paramArrayOfCharSequence)
  {
    super(paramContext, paramInt, 16908308, paramArrayOfCharSequence);
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public boolean hasStableIds()
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     rc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */