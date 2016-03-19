public final class hav
{
  private int a;
  private int b;
  private boolean c;
  private int d = -1;
  
  public hav() {}
  
  public hav(hav paramhav)
  {
    a = a;
    b = b;
    c = c;
  }
  
  private void a(int paramInt)
  {
    a |= paramInt;
    b |= paramInt;
  }
  
  public hav a()
  {
    if ((a & 0x80) != 0) {
      throw new IllegalStateException("Cannot set both app and sync domains");
    }
    a |= 0x2000;
    return this;
  }
  
  public String a(String paramString, int paramInt1, int paramInt2)
  {
    return idd.a(paramString, a, paramInt1, paramInt2, d);
  }
  
  public hav b()
  {
    a(16);
    return this;
  }
  
  public hav c()
  {
    a(4);
    return this;
  }
  
  public hav d()
  {
    c = true;
    return this;
  }
  
  public boolean e()
  {
    return c;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if ((paramObject instanceof hav))
    {
      paramObject = (hav)paramObject;
      bool1 = bool2;
      if (b == b)
      {
        bool1 = bool2;
        if (c == c) {
          bool1 = true;
        }
      }
    }
    return bool1;
  }
  
  public int hashCode()
  {
    if (c) {}
    for (int i = 17;; i = 31) {
      return i * 31 + b;
    }
  }
  
  public String toString()
  {
    String str1;
    String str2;
    label25:
    String str3;
    label39:
    String str4;
    label52:
    String str5;
    label67:
    String str6;
    label82:
    String str7;
    label97:
    String str8;
    label111:
    String str9;
    label126:
    String str10;
    label140:
    String str11;
    label154:
    String str12;
    if ((a & 0x10) != 0)
    {
      str1 = "kill_animation ";
      if ((a & 0x4) == 0) {
        break label384;
      }
      str2 = "no_overlay ";
      if ((a & 0x2000) == 0) {
        break label390;
      }
      str3 = "app_domain ";
      if ((a & 0x1) == 0) {
        break label396;
      }
      str4 = "crop ";
      if ((a & 0x1000) == 0) {
        break label403;
      }
      str5 = "loose_face_crop ";
      if ((a & 0x200) == 0) {
        break label410;
      }
      str6 = "exif ";
      if ((a & 0x800) == 0) {
        break label417;
      }
      str7 = "jpeg ";
      if ((a & 0x20) == 0) {
        break label424;
      }
      str8 = "webp ";
      if ((a & 0x4000) == 0) {
        break label431;
      }
      str9 = "webp_animation ";
      if ((a & 0x8000) == 0) {
        break label438;
      }
      str10 = "blur ";
      if ((a & 0x20000) == 0) {
        break label445;
      }
      str11 = "mp4 ";
      if ((a & 0x10000) == 0) {
        break label452;
      }
      str12 = "loop ";
      label168:
      if (!c) {
        break label459;
      }
    }
    label384:
    label390:
    label396:
    label403:
    label410:
    label417:
    label424:
    label431:
    label438:
    label445:
    label452:
    label459:
    for (String str13 = "custom_size";; str13 = "")
    {
      return String.valueOf(str1).length() + 18 + String.valueOf(str2).length() + String.valueOf(str3).length() + String.valueOf(str4).length() + String.valueOf(str5).length() + String.valueOf(str6).length() + String.valueOf(str7).length() + String.valueOf(str8).length() + String.valueOf(str9).length() + String.valueOf(str10).length() + String.valueOf(str11).length() + String.valueOf(str12).length() + String.valueOf(str13).length() + "FifeUrlOptions{ " + str1 + str2 + str3 + str4 + str5 + str6 + str7 + str8 + str9 + str10 + str11 + str12 + str13 + " }";
      str1 = "";
      break;
      str2 = "";
      break label25;
      str3 = "";
      break label39;
      str4 = "";
      break label52;
      str5 = "";
      break label67;
      str6 = "";
      break label82;
      str7 = "";
      break label97;
      str8 = "";
      break label111;
      str9 = "";
      break label126;
      str10 = "";
      break label140;
      str11 = "";
      break label154;
      str12 = "";
      break label168;
    }
  }
}

/* Location:
 * Qualified Name:     hav
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */