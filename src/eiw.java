final class eiw
  implements Runnable
{
  eiw(eit parameit, ejc paramejc, byte[] paramArrayOfByte) {}
  
  public void run()
  {
    label152:
    for (;;)
    {
      try
      {
        eit.b.b("decodeMedia");
        Object localObject2;
        if (eit.a)
        {
          localObject2 = c;
          str1 = String.valueOf(a.toString());
          if (str1.length() != 0)
          {
            str1 = "decodingBytes start ".concat(str1);
            ((eit)localObject2).e(str1);
          }
        }
        else
        {
          localObject2 = a.a(b);
          if (eit.a)
          {
            eit localeit = c;
            str1 = String.valueOf(a.toString());
            if (str1.length() == 0) {
              break label152;
            }
            str1 = "decodingBytes finish ".concat(str1);
            localeit.e(str1);
          }
          if (localObject2 != null) {
            c.a(a, (ejb)localObject2);
          }
          return;
        }
        String str1 = new String("decodingBytes start ");
        continue;
        String str2 = new String("decodingBytes finish ");
      }
      finally
      {
        eit.b.c("decodeMedia");
      }
    }
  }
}

/* Location:
 * Qualified Name:     eiw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */