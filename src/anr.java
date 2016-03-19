import android.util.Log;

 enum anr
{
  anr() {}
  
  protected void a(Throwable paramThrowable)
  {
    if ((paramThrowable != null) && (Log.isLoggable("GlideExecutor", 6))) {
      Log.e("GlideExecutor", "Request threw uncaught throwable", paramThrowable);
    }
  }
}

/* Location:
 * Qualified Name:     anr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */