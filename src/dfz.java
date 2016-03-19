import android.widget.Toast;

final class dfz
  extends dgz
{
  dfz(dfq paramdfq, String paramString)
  {
    super(paramString);
  }
  
  public void a()
  {
    dfq localdfq = a;
    dcj localdcj = (dcj)ilh.a(a, dcj.class);
    if ((localdcj.a("android.permission.WRITE_EXTERNAL_STORAGE")) && (localdcj.a("android.permission.READ_EXTERNAL_STORAGE"))) {}
    for (int i = 1;; i = 0)
    {
      if (i != 0) {
        new dhb(a, "load").execute(new Void[0]);
      }
      return;
      Toast.makeText(a, "You don't have storage permission, please enable it in settings and try again.", 0).show();
    }
  }
}

/* Location:
 * Qualified Name:     dfz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */