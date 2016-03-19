import android.content.Intent;

final class bst
  implements hsb
{
  bst(bsr parambsr) {}
  
  public void onActivityResult(int paramInt, Intent paramIntent)
  {
    if ((paramInt == -1) && (paramIntent != null))
    {
      ((bjc)a.binder.a(bjc.class)).a(new bsu(this, paramIntent));
      return;
    }
    paramIntent = a;
    ((bvc)binder.a(bvc.class)).a(2325);
    Intent localIntent = bqt.a(((bmw)binder.a(bmw.class)).f());
    localIntent.putExtra("android.intent.extra.LOCAL_ONLY", true);
    a.a(aal.jS, localIntent);
  }
}

/* Location:
 * Qualified Name:     bst
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */