import com.google.android.libraries.hangouts.video.internal.MediaSources;
import com.google.android.libraries.hangouts.video.internal.Stats;

public abstract interface hei
{
  public abstract void a(int paramInt1, int paramInt2, byte[] paramArrayOfByte);
  
  public abstract void a(int paramInt, String paramString);
  
  public abstract void a(long paramLong, int paramInt1, int paramInt2);
  
  public abstract void a(long paramLong, String paramString, byte[] paramArrayOfByte, int paramInt);
  
  public abstract void a(Stats paramStats);
  
  public abstract void a(String paramString, int paramInt);
  
  public abstract void a(String paramString1, int paramInt1, int paramInt2, String paramString2, String paramString3, String paramString4, byte[] paramArrayOfByte);
  
  public abstract void a(String paramString, MediaSources paramMediaSources);
  
  public abstract void b(int paramInt);
  
  public abstract void b(int paramInt, String paramString);
  
  public abstract void b(Stats paramStats);
  
  public abstract void b(String paramString, int paramInt);
  
  public abstract void b(byte[] paramArrayOfByte);
  
  public abstract void c(int paramInt);
  
  public abstract void c(boolean paramBoolean);
  
  public abstract void c(byte[] paramArrayOfByte);
  
  public abstract void d(int paramInt);
  
  public abstract void d(byte[] paramArrayOfByte);
  
  public abstract void e(String paramString);
  
  public abstract void e(byte[] paramArrayOfByte);
}

/* Location:
 * Qualified Name:     hei
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */