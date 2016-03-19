abstract interface bgt
{
  public static final String[] a = { "_id", "phone_id", "full_name", "profile_photo_url" };
  public static final String b;
  public static final String c;
  
  static
  {
    String str1 = String.valueOf("participant_type=");
    int i = czd.d.ordinal();
    str1 = String.valueOf(str1).length() + 11 + str1 + i;
    b = str1;
    String str2 = String.valueOf("conversation_id");
    c = String.valueOf(str1).length() + 7 + String.valueOf(str2).length() + str1 + " AND " + str2 + "=?";
  }
}

/* Location:
 * Qualified Name:     bgt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */