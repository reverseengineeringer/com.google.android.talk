import android.content.ContentProvider;
import android.net.Uri;

public abstract class ctr
  extends ContentProvider
{
  public static final String a;
  public static final String b;
  public static final Uri c;
  public static final Uri d;
  public static final Uri e;
  public static final String[] f;
  public static final String[] g;
  public static final String[] h;
  private static final String i;
  
  static
  {
    try
    {
      Class.forName("com.google.android.apps.hangouts.defaultbuild.EsProvider");
      str1 = "com.google.android.apps.hangouts.mergedcontacts.MergedContactProvider";
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      for (;;)
      {
        String str1;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        String str8;
        String str9;
        String str10;
        String str11;
        String str12;
        String str13;
        String str14;
        String str15;
        String str16;
        String str17;
        String str18;
        String str19;
        String str20;
        String str21;
        String str22;
        String str23;
        String str24;
        String str25;
        String str26;
        String str27;
        String str28;
        String str29;
        String str30;
        String str31;
        String str32;
        String str33;
        String str34;
        String str35;
        String str36;
        String str37;
        String str38;
        String str39;
        String str40;
        String str41;
        String str42;
        String str43;
        String str44;
        String str45;
        String str46;
        String str47;
        String str48;
        String str49;
        String str2 = "com.google.android.apps.hangouts.mergedcontacts.MergedContactProviderAltBuild";
        continue;
        str2 = new String(str2);
        continue;
        label1540:
        str2 = new String(str2);
        continue;
        label1552:
        str2 = new String(str2);
      }
    }
    a = str1;
    i = String.valueOf(str1).length() + 11 + "content://" + str1 + "/";
    str1 = String.valueOf("CREATE VIEW merged_contacts_with_details AS SELECT merged_contacts._id as _id, merged_contacts.contact_lookup_key as contact_lookup_key, merged_contacts.contact_id as contact_id, merged_contacts.raw_contact_id as raw_contact_id, merged_contacts.display_name as display_name, merged_contacts.avatar_url as avatar_url, merged_contacts.is_frequent as is_frequent, merged_contacts.is_favorite as is_favorite, max(merged_contact_details.needs_gaia_ids_resolved) as needs_gaia_ids_resolved, max(merged_contact_details.is_hangouts_user) as is_hangouts_user, max(case when merged_contact_details.lookup_data_type = 0 then 1 else 0 END ) as has_phone_number, group_concat(merged_contact_details.lookup_data_type || \"#DELIM2#\" || ");
    str3 = String.valueOf(a("lookup_data"));
    str4 = String.valueOf(" || \"#DELIM2#\" || ");
    str5 = String.valueOf(a("lookup_data_standardized"));
    str6 = String.valueOf(" || \"#DELIM2#\" || ");
    str7 = String.valueOf(a("lookup_data_label"));
    str8 = String.valueOf(" || \"#DELIM2#\" || ");
    str9 = String.valueOf("merged_contact_details");
    str10 = String.valueOf("needs_gaia_ids_resolved");
    str11 = String.valueOf(" || \"#DELIM2#\" || ");
    str12 = String.valueOf("merged_contact_details");
    str13 = String.valueOf("is_hangouts_user");
    str14 = String.valueOf(" || \"#DELIM2#\" || ");
    str15 = String.valueOf(a("gaia_id"));
    str16 = String.valueOf(" || \"#DELIM2#\" || ");
    str17 = String.valueOf(a("avatar_url"));
    str18 = String.valueOf(" || \"#DELIM2#\" || ");
    str19 = String.valueOf(a("display_name"));
    str20 = String.valueOf(" || \"#DELIM2#\" || ");
    str21 = String.valueOf("merged_contact_details");
    str22 = String.valueOf("last_checked_ts");
    str23 = String.valueOf(" || \"#DELIM2#\" || ");
    str24 = String.valueOf(a("lookup_data_display"));
    str25 = String.valueOf("#DELIM1#");
    str26 = String.valueOf(" as ");
    str27 = String.valueOf("details");
    str28 = String.valueOf("merged_contacts");
    str29 = String.valueOf("merged_contact_details");
    str30 = String.valueOf("merged_contact_details");
    str31 = String.valueOf("merged_contact_id");
    str32 = String.valueOf("merged_contacts");
    str33 = String.valueOf("_id");
    str34 = String.valueOf("merged_contacts");
    str35 = String.valueOf("_id");
    str36 = String.valueOf("merged_contacts");
    str37 = String.valueOf("contact_lookup_key");
    str38 = String.valueOf("merged_contacts");
    str39 = String.valueOf("contact_id");
    str40 = String.valueOf("merged_contacts");
    str41 = String.valueOf("raw_contact_id");
    str42 = String.valueOf("merged_contacts");
    str43 = String.valueOf("display_name");
    str44 = String.valueOf("merged_contacts");
    str45 = String.valueOf("avatar_url");
    str46 = String.valueOf("merged_contacts");
    str47 = String.valueOf("is_frequent");
    str48 = String.valueOf("merged_contacts");
    str49 = String.valueOf("is_favorite");
    b = String.valueOf(str1).length() + 67 + String.valueOf(str3).length() + String.valueOf(str4).length() + String.valueOf(str5).length() + String.valueOf(str6).length() + String.valueOf(str7).length() + String.valueOf(str8).length() + String.valueOf(str9).length() + String.valueOf(str10).length() + String.valueOf(str11).length() + String.valueOf(str12).length() + String.valueOf(str13).length() + String.valueOf(str14).length() + String.valueOf(str15).length() + String.valueOf(str16).length() + String.valueOf(str17).length() + String.valueOf(str18).length() + String.valueOf(str19).length() + String.valueOf(str20).length() + String.valueOf(str21).length() + String.valueOf(str22).length() + String.valueOf(str23).length() + String.valueOf(str24).length() + String.valueOf(str25).length() + String.valueOf(str26).length() + String.valueOf(str27).length() + String.valueOf(str28).length() + String.valueOf(str29).length() + String.valueOf(str30).length() + String.valueOf(str31).length() + String.valueOf(str32).length() + String.valueOf(str33).length() + String.valueOf(str34).length() + String.valueOf(str35).length() + String.valueOf(str36).length() + String.valueOf(str37).length() + String.valueOf(str38).length() + String.valueOf(str39).length() + String.valueOf(str40).length() + String.valueOf(str41).length() + String.valueOf(str42).length() + String.valueOf(str43).length() + String.valueOf(str44).length() + String.valueOf(str45).length() + String.valueOf(str46).length() + String.valueOf(str47).length() + String.valueOf(str48).length() + String.valueOf(str49).length() + str1 + str3 + str4 + str5 + str6 + str7 + str8 + str9 + "." + str10 + str11 + str12 + "." + str13 + str14 + str15 + str16 + str17 + str18 + str19 + str20 + str21 + "." + str22 + str23 + str24 + ", \"" + str25 + "\") " + str26 + str27 + " FROM " + str28 + " LEFT JOIN " + str29 + " ON (" + str30 + "." + str31 + "=" + str32 + "." + str33 + ") GROUP BY " + str34 + "." + str35 + ", " + str36 + "." + str37 + ", " + str38 + "." + str39 + ", " + str40 + "." + str41 + ", " + str42 + "." + str43 + ", " + str44 + "." + str45 + ", " + str46 + "." + str47 + ", " + str48 + "." + str49;
    str1 = String.valueOf(i);
    str3 = String.valueOf("merged_contacts");
    if (str3.length() != 0)
    {
      str1 = str1.concat(str3);
      c = Uri.parse(str1);
      str1 = String.valueOf(i);
      str3 = String.valueOf("merged_contacts_with_details");
      if (str3.length() == 0) {
        break label1540;
      }
      str1 = str1.concat(str3);
      d = Uri.parse(str1);
      str1 = String.valueOf(i);
      str3 = String.valueOf("merged_contact_details");
      if (str3.length() == 0) {
        break label1552;
      }
      str1 = str1.concat(str3);
      e = Uri.parse(str1);
      f = new String[] { "_id", "contact_lookup_key", "contact_id", "raw_contact_id", "display_name", "avatar_url", "is_frequent" };
      g = new String[] { "_id", "contact_lookup_key", "contact_id", "raw_contact_id", "display_name", "avatar_url", "is_frequent", "is_favorite", "needs_gaia_ids_resolved", "is_hangouts_user", "has_phone_number", "details" };
      h = new String[] { "_id", "merged_contact_id", "lookup_data_type", "lookup_data", "lookup_data_standardized", "lookup_data_search", "lookup_data_label", "is_hangouts_user", "needs_gaia_ids_resolved", "gaia_id", "avatar_url", "display_name", "last_checked_ts", "lookup_data_display" };
    }
  }
  
  private static String a(String paramString)
  {
    String str = String.valueOf("IFNULL(merged_contact_details.");
    return String.valueOf(str).length() + 5 + String.valueOf(paramString).length() + str + paramString + ", '')";
  }
  
  public static String[] a()
  {
    return new String[] { "CREATE TABLE merged_contacts (_id INTEGER PRIMARY KEY, contact_lookup_key TEXT, contact_id INT, raw_contact_id INT, display_name TEXT, avatar_url TEXT);", "CREATE TABLE merged_contact_details (_id INTEGER PRIMARY KEY, merged_contact_id INT, lookup_data_type INT, lookup_data TEXT, lookup_data_standardized TEXT, lookup_data_search TEXT, lookup_data_label TEXT, needs_gaia_ids_resolved INT DEFAULT (1), is_hangouts_user INT DEFAULT (0), gaia_id TEXT, avatar_url TEXT, display_name TEXT, last_checked_ts INT DEFAULT (0), FOREIGN KEY (merged_contact_id) REFERENCES merged_contacts(_id) ON DELETE CASCADE ON UPDATE CASCADE);" };
  }
  
  public static String[] b()
  {
    return new String[] { "CREATE TABLE merged_contacts (_id INTEGER PRIMARY KEY, contact_lookup_key TEXT, contact_id INT, raw_contact_id INT, display_name TEXT, avatar_url TEXT, is_frequent INT DEFAULT (0),is_favorite INT DEFAULT (0));", "CREATE TABLE merged_contact_details (_id INTEGER PRIMARY KEY, merged_contact_id INT, lookup_data_type INT, lookup_data TEXT, lookup_data_display TEXT, lookup_data_standardized TEXT, lookup_data_search TEXT, lookup_data_label TEXT, needs_gaia_ids_resolved INT DEFAULT (1), is_hangouts_user INT DEFAULT (0), gaia_id TEXT, avatar_url TEXT, display_name TEXT, last_checked_ts INT DEFAULT (0), FOREIGN KEY (merged_contact_id) REFERENCES merged_contacts(_id) ON DELETE CASCADE ON UPDATE CASCADE);" };
  }
  
  public static String[] c()
  {
    return new String[] { b };
  }
  
  public static String[] d()
  {
    return new String[] { "merged_contacts_with_details" };
  }
}

/* Location:
 * Qualified Name:     ctr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */