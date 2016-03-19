import android.os.Bundle;

public final class acd
  implements ck<aco>
{
  acd(abn paramabn) {}
  
  public fe<aco> onCreateLoader(int paramInt, Bundle paramBundle)
  {
    paramBundle = paramBundle.getString("image_uri");
    switch (paramInt)
    {
    default: 
      return null;
    case 2: 
      return a.a(2, paramBundle);
    }
    return a.a(1, paramBundle);
  }
  
  public void onLoaderReset(fe<aco> paramfe) {}
}

/* Location:
 * Qualified Name:     acd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */