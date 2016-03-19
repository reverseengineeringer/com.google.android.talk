package com.google.android.apps.hangouts.content;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.UriMatcher;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.database.sqlite.SQLiteQueryBuilder;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import bfd;
import bgw;
import bgz;
import bha;
import bhp;
import bhq;
import bhr;
import bhw;
import czd;
import dvd;
import emc;
import eye;
import ezi;
import ezv;
import hbs;
import hq;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class EsProvider
  extends ContentProvider
{
  private static final Uri A;
  private static final Uri B;
  private static final UriMatcher C;
  private static final Map<String, String> D;
  private static final Map<String, String> E;
  private static final Map<String, String> F;
  private static final Map<String, String> G;
  private static final Pattern H;
  private static final StringBuilder I;
  public static final String a;
  public static final String b;
  static final String c;
  static final String d;
  public static final String e;
  public static final String f;
  public static final Uri g;
  public static final Uri h;
  public static final Uri i;
  public static final Uri j;
  public static final Uri k;
  public static final Uri l;
  public static final Uri m;
  public static final Uri n;
  public static final Uri o;
  public static final Uri p;
  public static final Uri q;
  public static final Uri r;
  public static final Uri s;
  public static final Uri t;
  private static final boolean u;
  private static final ezv v;
  private static final String w;
  private static final String x;
  private static final String y;
  private static final String z;
  
  static
  {
    Object localObject1 = ezi.d;
    u = false;
    v = ezv.a("EsProvider");
    try
    {
      Class.forName("com.google.android.apps.hangouts.defaultbuild.EsProvider");
      localObject1 = "com.google.android.apps.hangouts.content.EsProvider";
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      for (;;)
      {
        int i1;
        Object localObject2;
        String str2;
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
        String str50;
        String str51;
        String str52;
        String str53;
        String str54;
        String str55;
        String str56;
        String str57;
        String str58;
        String str59;
        String str60;
        String str61;
        String str62;
        String str63;
        String str64;
        String str65;
        String str66;
        String str67;
        String str68;
        String str69;
        String str70;
        String str71;
        String str72;
        String str73;
        String str74;
        String str75;
        String str76;
        String str77;
        String str78;
        String str79;
        String str80;
        String str81;
        String str82;
        String str83;
        String str84;
        String str85;
        String str86;
        String str87;
        String str88;
        String str89;
        String str90;
        String str91;
        String str92;
        String str93;
        String str94;
        String str95;
        String str96;
        String str97;
        String str98;
        String str99;
        String str100;
        String str101;
        String str102;
        String str103;
        String str104;
        String str105;
        String str106;
        String str107;
        String str108;
        String str109;
        String str110;
        String str111;
        String str112;
        String str113;
        String str114;
        String str115;
        String str116;
        String str117;
        String str118;
        String str119;
        String str120;
        String str121;
        String str122;
        String str123;
        String str124;
        String str125;
        String str126;
        String str127;
        String str128;
        String str129;
        String str130;
        String str131;
        String str132;
        String str133;
        String str134;
        String str135;
        String str136;
        String str137;
        String str138;
        String str139;
        String str140;
        String str141;
        String str142;
        String str143;
        String str144;
        String str145;
        String str146;
        String str147;
        String str148;
        String str149;
        String str150;
        String str151;
        String str152;
        String str153;
        String str154;
        String str155;
        String str156;
        String str157;
        String str158;
        String str159;
        String str160;
        String str161;
        String str162;
        String str163;
        String str164;
        String str165;
        String str166;
        String str167;
        String str168;
        String str169;
        String str170;
        String str171;
        String str172;
        String str173;
        String str174;
        String str175;
        String str176;
        String str177;
        String str178;
        String str179;
        String str180;
        String str181;
        String str182;
        String str183;
        String str184;
        String str185;
        String str186;
        String str187;
        String str188;
        String str189;
        String str190;
        String str191;
        String str192;
        String str193;
        String str194;
        String str195;
        String str196;
        String str197;
        String str198;
        String str199;
        String str200;
        String str201;
        String str202;
        String str203;
        String str204;
        String str205;
        String str206;
        String str207;
        String str208;
        String str209;
        String str210;
        String str211;
        String str212;
        String str213;
        String str214;
        String str215;
        String str216;
        String str217;
        String str218;
        String str219;
        String str220;
        String str221;
        String str222;
        String str223;
        String str224;
        String str225;
        String str226;
        String str227;
        String str228;
        String str229;
        String str230;
        String str231;
        String str232;
        String str233;
        String str234;
        String str235;
        String str236;
        String str237;
        String str238;
        String str239;
        String str240;
        String str241;
        String str242;
        String str243;
        String str244;
        String str245;
        String str246;
        String str247;
        String str248;
        String str249;
        String str250;
        String str251;
        String str252;
        String str253;
        String str254;
        String str255;
        String str256;
        String str257;
        String str258;
        String str259;
        String str260;
        String str261;
        String str262;
        String str263;
        String str264;
        String str265;
        String str266;
        String str267;
        String str1 = "com.google.android.apps.hangouts.content.EsProviderAltBuild";
        tmpTernaryOp = str266.append(0.0F).append(") , (SELECT (julianday('now') - 2440587.5) * 86400000000 AS CURRENT_TIMESTAMP) ");
        continue;
        str1 = new String(str1);
        tmpTernaryOp = str265.append(1L).append(".");
        continue;
        str1 = new String(str1);
        tmpTernaryOp = str264.append(0L).append("=");
        continue;
        str1 = new String(str1);
        tmpTernaryOp = str263.append(5).append(".");
        continue;
        str1 = new String(str1);
        tmpTernaryOp = str262.append(4).append(" ON (");
        continue;
        str1 = new String(str1);
        tmpTernaryOp = str261.append(3).append(" ");
        continue;
        str1 = new String(str1);
        tmpTernaryOp = str260.append(2).append(")  LEFT JOIN ");
        continue;
        str1 = new String(str1);
        tmpTernaryOp = str259.append(1).append(".");
        continue;
        str1 = new String(str1);
        tmpTernaryOp = str258.append(0).append("=");
        continue;
        str1 = new String(str1);
        tmpTernaryOp = str257.append(-1).append(".");
        continue;
        str1 = new String(str1);
        tmpTernaryOp = str256.append(null).append(" OR ");
        continue;
        str1 = new String(str1);
        tmpTernaryOp = (str265 + String.valueOf(1L).length()).append((String)localObject1).append((String)localObject2).append(str2).append(str3).append(", ").append(str4).append(".").append(str5).append(str6).append(str7).append(", ").append(str8).append(str9).append(str10).append(", ").append(str11).append(".").append(str12).append(str13).append(str14).append(", ").append(str15).append(".").append(str16).append(str17).append(str18).append(", ").append(str19).append(".").append(str20).append(str21).append(str22).append(", ").append(str23).append(str24).append(str25).append(", ").append(str26).append(".").append(str27).append(str28).append(str29).append(", ").append(str30).append(str31).append(str32).append(", ").append(str33).append(".").append(str34).append(str35).append(str36).append(", ").append(str37).append(".").append(str38).append(str39).append(str40).append(", ").append(str41).append(".").append(str42).append(str43).append(str44).append(", (select merge_key from ").append(str45).append(" where ").append(str46).append(".").append(str47).append("=").append(str48).append(".").append(str49).append(") ").append(str50).append(str51).append(", ").append(str52).append(str53).append(str54).append(", ").append(str55).append(str56).append(str57).append(", ").append(str58).append(str59).append(str60).append(", ").append(str61).append(str62).append(str63).append(", ").append(str64).append(str65).append(str66).append(", ").append(str67).append(str68).append(str69).append(", ").append(str70).append(str71).append(str72).append(", ").append(str73).append(str74).append(str75).append(", ").append(str76).append(str77).append(str78).append(", ").append(str79).append(str80).append(str81).append(", ").append(str82).append(str83).append(str84).append(", ").append(str85).append(str86).append(str87).append(", ").append(str88).append(str89).append(str90).append(", ").append(str91).append(str92).append(str93).append(", ").append(str94).append(str95).append(str96).append(", ").append(str97).append(str98).append(str99).append(", ").append(str100).append(".").append(str101).append(str102).append(str103).append(", ").append(str104).append(".").append(str105).append(str106).append(str107).append(", ").append(str108).append(".").append(str109).append(str110).append(str111).append(", ").append(str112).append(".").append(str113).append(str114).append(str115).append(", ").append(str116).append(".").append(str117).append(str118).append(str119).append(", ").append(str120).append(".").append(str121).append(str122).append(str123).append(", ").append(str124).append(".").append(str125).append(str126).append(str127).append(", ").append(str128).append(str129).append(str130).append(", ").append(str131).append(".").append(str132).append(str133).append(str134).append(", ").append(str135).append(".").append(str136).append(str137).append(str138).append(", ").append(str139).append(".").append(str140).append(str141).append(str142).append(", ").append(str143).append(".").append(str144).append(str145).append(str146).append(", ").append(str147).append(".").append(str148).append(str149).append(str150).append(", ").append(str151).append(".").append(str152).append(str153).append(str154).append(", ").append(str155).append(str156).append(str157).append(", ").append(str158).append(".").append(str159).append(str160).append(str161).append(", ").append(str162).append(".").append(str163).append(str164).append(str165).append(", ").append(str166).append(".").append(str167).append(str168).append(str169).append(", ").append(str170).append(".").append(str171).append(str172).append(str173).append(", ").append(str174).append(".").append(str175).append(str176).append(str177).append(", ").append(str178).append(".").append(str179).append(str180).append(str181).append(", ").append(str182).append(".").append(str183).append(str184).append(str185).append(", ").append(str186).append(".").append(str187).append(str188).append(str189).append(", ").append(str190).append(".").append(str191).append(str192).append(str193).append(", ").append(str194).append(".").append(str195).append(str196).append(str197).append(",").append(str198).append(".").append(str199).append(str200).append(str201).append(",(SELECT count() FROM messages WHERE messages.conversation_id=conversations.conversation_id AND (").append(str202).append(".").append(str203).append("=").append(i1).append(") ) ").append(str204).append(str205).append(", max(%s) ").append(str206).append(str207).append(",  %s ").append(str208).append(str209).append(", IFNULL(").append(str210).append(".").append(str211).append(", ").append(str212).append(".").append(str213).append(") ").append(str214).append(str215).append(", IFNULL(").append(str216).append(".").append(str217).append(", ").append(str218).append(".").append(str219).append(") ").append(str220).append(str221).append(", ").append(str222).append(".").append(str223).append(str224).append(str225).append(", ").append(str226).append(".").append(str227).append(str228).append(str229).append(", ").append(str230).append(str231).append(str232).append(", ").append(str233).append(str234).append(str235).append(", ").append(str236).append(str237).append(str238).append(", ").append(str239).append(str240).append(str241).append(", ").append(str242).append(str243).append(str244).append(", ").append(str245).append(str246).append(str247).append(",  %s AS ").append(str248).append(",  %s AS ").append(str249).append(",  %s AS ").append(str250).append(" FROM %s %s  LEFT JOIN ").append(str251).append(" ").append(str252).append(" ON (").append(str253).append(".").append(str254).append("=").append(str255).append(".");
        continue;
        str1 = new String(str1);
        str264 + String.valueOf(0L).length());
      }
    }
    a = (String)localObject1;
    w = String.valueOf(localObject1).length() + 11 + "content://" + (String)localObject1 + "/";
    localObject1 = String.valueOf("CREATE TABLE participants (_id INTEGER PRIMARY KEY, participant_type INT DEFAULT ");
    i1 = czd.b.ordinal();
    localObject2 = String.valueOf("gaia_id");
    str2 = String.valueOf("chat_id");
    str3 = String.valueOf("phone_id");
    str4 = String.valueOf("circle_id");
    str5 = String.valueOf("first_name");
    str6 = String.valueOf("full_name");
    str7 = String.valueOf("fallback_name");
    str8 = String.valueOf("profile_photo_url");
    str9 = String.valueOf("batch_gebi_tag");
    str10 = String.valueOf("blocked");
    str11 = String.valueOf("circle_id");
    str12 = String.valueOf("chat_id");
    str13 = String.valueOf("gaia_id");
    b = String.valueOf(localObject1).length() + 202 + String.valueOf(localObject2).length() + String.valueOf(str2).length() + String.valueOf(str3).length() + String.valueOf(str4).length() + String.valueOf(str5).length() + String.valueOf(str6).length() + String.valueOf(str7).length() + String.valueOf(str8).length() + String.valueOf(str9).length() + String.valueOf(str10).length() + String.valueOf(str11).length() + String.valueOf(str12).length() + String.valueOf(str13).length() + (String)localObject1 + i1 + ", " + (String)localObject2 + " TEXT, " + str2 + " TEXT, " + str3 + " TEXT, " + str4 + " TEXT, " + str5 + " TEXT, " + str6 + " TEXT, " + str7 + " TEXT, " + str8 + " TEXT, " + str9 + " STRING DEFAULT('-1'), " + str10 + " INT DEFAULT(0), UNIQUE (" + str11 + ") ON CONFLICT REPLACE, UNIQUE (" + str12 + ") ON CONFLICT REPLACE, UNIQUE (" + str13 + ") ON CONFLICT REPLACE);";
    localObject1 = String.valueOf("CREATE TABLE participants (_id INTEGER PRIMARY KEY, participant_type INT DEFAULT ");
    i1 = czd.b.ordinal();
    localObject2 = String.valueOf("gaia_id");
    str2 = String.valueOf("chat_id");
    str3 = String.valueOf("phone_id");
    str4 = String.valueOf("circle_id");
    str5 = String.valueOf("first_name");
    str6 = String.valueOf("full_name");
    str7 = String.valueOf("fallback_name");
    str8 = String.valueOf("profile_photo_url");
    str9 = String.valueOf("batch_gebi_tag");
    str10 = String.valueOf("blocked");
    str11 = String.valueOf("in_users_domain");
    str12 = String.valueOf("circle_id");
    str13 = String.valueOf("chat_id");
    str14 = String.valueOf("gaia_id");
    c = String.valueOf(localObject1).length() + 212 + String.valueOf(localObject2).length() + String.valueOf(str2).length() + String.valueOf(str3).length() + String.valueOf(str4).length() + String.valueOf(str5).length() + String.valueOf(str6).length() + String.valueOf(str7).length() + String.valueOf(str8).length() + String.valueOf(str9).length() + String.valueOf(str10).length() + String.valueOf(str11).length() + String.valueOf(str12).length() + String.valueOf(str13).length() + String.valueOf(str14).length() + (String)localObject1 + i1 + ", " + (String)localObject2 + " TEXT, " + str2 + " TEXT, " + str3 + " TEXT, " + str4 + " TEXT, " + str5 + " TEXT, " + str6 + " TEXT, " + str7 + " TEXT, " + str8 + " TEXT, " + str9 + " STRING DEFAULT('-1'), " + str10 + " INT DEFAULT(0), " + str11 + " BOOLEAN, UNIQUE (" + str12 + ") ON CONFLICT REPLACE, UNIQUE (" + str13 + ") ON CONFLICT REPLACE, UNIQUE (" + str14 + ") ON CONFLICT REPLACE);";
    localObject1 = String.valueOf(" SELECT conversations._id as _id, ");
    localObject2 = String.valueOf(b("conversations.conversation_id"));
    str2 = String.valueOf(" as ");
    str3 = String.valueOf("conversation_id");
    str4 = String.valueOf("conversations");
    str5 = String.valueOf("notification_level");
    str6 = String.valueOf(" as ");
    str7 = String.valueOf("notification_level");
    str8 = String.valueOf("latest_message_timestamp");
    str9 = String.valueOf(" as ");
    str10 = String.valueOf("latest_message_timestamp");
    str11 = String.valueOf("conversations");
    str12 = String.valueOf("latest_message_expiration_timestamp");
    str13 = String.valueOf(" as ");
    str14 = String.valueOf("latest_message_expiration_timestamp");
    str15 = String.valueOf("conversations");
    str16 = String.valueOf("metadata_present");
    str17 = String.valueOf(" as ");
    str18 = String.valueOf("metadata_present");
    str19 = String.valueOf("conversations");
    str20 = String.valueOf("name");
    str21 = String.valueOf(" as ");
    str22 = String.valueOf("name");
    str23 = String.valueOf(b(a("conversations.generated_name")));
    str24 = String.valueOf(" as ");
    str25 = String.valueOf("generated_name");
    str26 = String.valueOf("conversations");
    str27 = String.valueOf("conversation_type");
    str28 = String.valueOf(" as ");
    str29 = String.valueOf("conversation_type");
    str30 = String.valueOf(b("conversations.transport_type"));
    str31 = String.valueOf(" as ");
    str32 = String.valueOf("transport_type");
    str33 = String.valueOf("conversations");
    str34 = String.valueOf("default_transport_phone");
    str35 = String.valueOf(" as ");
    str36 = String.valueOf("default_transport_phone");
    str37 = String.valueOf("conversations");
    str38 = String.valueOf("sms_service_center");
    str39 = String.valueOf(" as ");
    str40 = String.valueOf("sms_service_center");
    str41 = String.valueOf("conversations");
    str42 = String.valueOf("sms_thread_id");
    str43 = String.valueOf(" as ");
    str44 = String.valueOf("sms_thread_id");
    str45 = String.valueOf("merge_keys");
    str46 = String.valueOf("merge_keys");
    str47 = String.valueOf("conversation_id");
    str48 = String.valueOf("conversations");
    str49 = String.valueOf("conversation_id");
    str50 = String.valueOf(" as ");
    str51 = String.valueOf("merge_key");
    str52 = String.valueOf(b("conversations.snippet_type", "7"));
    str53 = String.valueOf(" as ");
    str54 = String.valueOf("snippet_type");
    str55 = String.valueOf(d(a("conversations.snippet_text")));
    str56 = String.valueOf(" as ");
    str57 = String.valueOf("snippet_text");
    str58 = String.valueOf(d(a("conversations.snippet_voicemail_duration")));
    str59 = String.valueOf(" as ");
    str60 = String.valueOf("snippet_voicemail_duration");
    str61 = String.valueOf(d(a("conversations.snippet_image_url")));
    str62 = String.valueOf(" as ");
    str63 = String.valueOf("snippet_image_url");
    str64 = String.valueOf(d("conversations.snippet_author_gaia_id"));
    str65 = String.valueOf(" as ");
    str66 = String.valueOf("snippet_author_gaia_id");
    str67 = String.valueOf(d("conversations.snippet_author_chat_id"));
    str68 = String.valueOf(" as ");
    str69 = String.valueOf("snippet_author_chat_id");
    str70 = String.valueOf(d("conversations.snippet_status"));
    str71 = String.valueOf(" as ");
    str72 = String.valueOf("snippet_status");
    str73 = String.valueOf(d(a("IFNULL(author_alias.full_name, author_alias.fallback_name)")));
    str74 = String.valueOf(" as ");
    str75 = String.valueOf("latest_message_author_full_name");
    str76 = String.valueOf(d(a("IFNULL(IFNULL(author_alias.first_name, author_alias.full_name), author_alias.fallback_name)")));
    str77 = String.valueOf(" as ");
    str78 = String.valueOf("latest_message_author_first_name");
    str79 = String.valueOf(d(a("author_alias.profile_photo_url")));
    str80 = String.valueOf(" as ");
    str81 = String.valueOf("latest_message_author_profile_photo_url");
    str82 = String.valueOf(d("conversations.latest_message_timestamp"));
    str83 = String.valueOf(" as ");
    str84 = String.valueOf("snippet_selector");
    str85 = String.valueOf(d("conversations.snippet_participant_keys"));
    str86 = String.valueOf(" as ");
    str87 = String.valueOf("snippet_participant_keys");
    str88 = String.valueOf(d("conversations.snippet_sms_type"));
    str89 = String.valueOf(" as ");
    str90 = String.valueOf("snippet_sms_type");
    str91 = String.valueOf(d("conversations.latest_message_expiration_timestamp"));
    str92 = String.valueOf(" as ");
    str93 = String.valueOf("latest_message_expiration_timestamp");
    str94 = String.valueOf(d("conversations.previous_latest_timestamp"));
    str95 = String.valueOf(" as ");
    str96 = String.valueOf("previous_latest_timestamp");
    str97 = String.valueOf(d(a("conversations.snippet_new_conversation_name")));
    str98 = String.valueOf(" as ");
    str99 = String.valueOf("snippet_new_conversation_name");
    str100 = String.valueOf("conversations");
    str101 = String.valueOf("status");
    str102 = String.valueOf(" as ");
    str103 = String.valueOf("status");
    str104 = String.valueOf("conversations");
    str105 = String.valueOf("view");
    str106 = String.valueOf(" as ");
    str107 = String.valueOf("view");
    str108 = String.valueOf("conversations");
    str109 = String.valueOf("inviter_gaia_id");
    str110 = String.valueOf(" as ");
    str111 = String.valueOf("inviter_gaia_id");
    str112 = String.valueOf("conversations");
    str113 = String.valueOf("inviter_chat_id");
    str114 = String.valueOf(" as ");
    str115 = String.valueOf("inviter_chat_id");
    str116 = String.valueOf("conversations");
    str117 = String.valueOf("inviter_affinity");
    str118 = String.valueOf(" as ");
    str119 = String.valueOf("inviter_affinity");
    str120 = String.valueOf("conversations");
    str121 = String.valueOf("disposition");
    str122 = String.valueOf(" as ");
    str123 = String.valueOf("disposition");
    str124 = String.valueOf("conversations");
    str125 = String.valueOf("is_pending_leave");
    str126 = String.valueOf(" as ");
    str127 = String.valueOf("is_pending_leave");
    str128 = String.valueOf(b(a("conversations.packed_avatar_urls")));
    str129 = String.valueOf(" as ");
    str130 = String.valueOf("packed_avatar_urls");
    str131 = String.valueOf("conversations");
    str132 = String.valueOf("self_avatar_url");
    str133 = String.valueOf(" as ");
    str134 = String.valueOf("self_avatar_url");
    str135 = String.valueOf("conversations");
    str136 = String.valueOf("self_watermark");
    str137 = String.valueOf(" as ");
    str138 = String.valueOf("self_watermark");
    str139 = String.valueOf("conversations");
    str140 = String.valueOf("chat_watermark");
    str141 = String.valueOf(" as ");
    str142 = String.valueOf("chat_watermark");
    str143 = String.valueOf("conversations");
    str144 = String.valueOf("hangout_watermark");
    str145 = String.valueOf(" as ");
    str146 = String.valueOf("hangout_watermark");
    str147 = String.valueOf("conversations");
    str148 = String.valueOf("is_draft");
    str149 = String.valueOf(" as ");
    str150 = String.valueOf("is_draft");
    str151 = String.valueOf("conversations");
    str152 = String.valueOf("sequence_number");
    str153 = String.valueOf(" as ");
    str154 = String.valueOf("sequence_number");
    str155 = String.valueOf(e("conversations.call_media_type"));
    str156 = String.valueOf(" as ");
    str157 = String.valueOf("call_media_type");
    str158 = String.valueOf("conversations");
    str159 = String.valueOf("has_joined_hangout");
    str160 = String.valueOf(" as ");
    str161 = String.valueOf("has_joined_hangout");
    str162 = String.valueOf("conversations");
    str163 = String.valueOf("last_hangout_event_time");
    str164 = String.valueOf(" as ");
    str165 = String.valueOf("last_hangout_event_time");
    str166 = String.valueOf("conversations");
    str167 = String.valueOf("draft");
    str168 = String.valueOf(" as ");
    str169 = String.valueOf("draft");
    str170 = String.valueOf("conversations");
    str171 = String.valueOf("otr_status");
    str172 = String.valueOf(" as ");
    str173 = String.valueOf("otr_status");
    str174 = String.valueOf("conversations");
    str175 = String.valueOf("otr_toggle");
    str176 = String.valueOf(" as ");
    str177 = String.valueOf("otr_toggle");
    str178 = String.valueOf("conversations");
    str179 = String.valueOf("last_otr_modification_time");
    str180 = String.valueOf(" as ");
    str181 = String.valueOf("last_otr_modification_time");
    str182 = String.valueOf("conversations");
    str183 = String.valueOf("continuation_token");
    str184 = String.valueOf(" as ");
    str185 = String.valueOf("continuation_token");
    str186 = String.valueOf("conversations");
    str187 = String.valueOf("continuation_event_timestamp");
    str188 = String.valueOf(" as ");
    str189 = String.valueOf("continuation_event_timestamp");
    str190 = String.valueOf("conversations");
    str191 = String.valueOf("has_oldest_message");
    str192 = String.valueOf(" as ");
    str193 = String.valueOf("has_oldest_message");
    str194 = String.valueOf("conversations");
    str195 = String.valueOf("chat_ringtone_uri");
    str196 = String.valueOf(" as ");
    str197 = String.valueOf("chat_ringtone_uri");
    str198 = String.valueOf("conversations");
    str199 = String.valueOf("hangout_ringtone_uri");
    str200 = String.valueOf(" as ");
    str201 = String.valueOf("hangout_ringtone_uri");
    str202 = String.valueOf("messages");
    str203 = String.valueOf("status");
    i1 = emc.d.ordinal();
    str204 = String.valueOf(" as ");
    str205 = String.valueOf("failed_message_count");
    str206 = String.valueOf(" as ");
    str207 = String.valueOf("sort_timestamp");
    str208 = String.valueOf(" as ");
    str209 = String.valueOf("blocked");
    str210 = String.valueOf("inviter_alias");
    str211 = String.valueOf("full_name");
    str212 = String.valueOf("inviter_alias");
    str213 = String.valueOf("fallback_name");
    str214 = String.valueOf(" as ");
    str215 = String.valueOf("inviter_full_name");
    str216 = String.valueOf("inviter_alias");
    str217 = String.valueOf("first_name");
    str218 = String.valueOf("inviter_alias");
    str219 = String.valueOf("fallback_name");
    str220 = String.valueOf(" as ");
    str221 = String.valueOf("inviter_first_name");
    str222 = String.valueOf("inviter_alias");
    str223 = String.valueOf("profile_photo_url");
    str224 = String.valueOf(" as ");
    str225 = String.valueOf("inviter_profile_photo_url");
    str226 = String.valueOf("inviter_alias");
    str227 = String.valueOf("participant_type");
    str228 = String.valueOf(" as ");
    str229 = String.valueOf("inviter_type");
    str230 = String.valueOf(b("conversations.self_watermark < conversations.latest_message_timestamp"));
    str231 = String.valueOf(" as ");
    str232 = String.valueOf("has_unread");
    str233 = String.valueOf("(SELECT count(*)>0 FROM messages WHERE messages.conversation_id=conversations.conversation_id AND (messages.observed_status!=");
    str234 = String.valueOf("1");
    str233 = String.valueOf(b(String.valueOf(str233).length() + 4 + String.valueOf(str234).length() + str233 + str234 + ") ) "));
    str234 = String.valueOf(" as ");
    str235 = String.valueOf("has_unobserved");
    str236 = String.valueOf(d(a("IFNULL(inviter_alias.full_name, inviter_alias.fallback_name) ")));
    str237 = String.valueOf(" as ");
    str238 = String.valueOf("inviter_full_name");
    str239 = String.valueOf(d(a("IFNULL(inviter_alias.first_name, inviter_alias.fallback_name) ")));
    str240 = String.valueOf(" as ");
    str241 = String.valueOf("inviter_first_name");
    str242 = String.valueOf(d(a("inviter_alias.profile_photo_url")));
    str243 = String.valueOf(" as ");
    str244 = String.valueOf("inviter_profile_photo_url");
    str245 = String.valueOf(d(a("inviter_alias.participant_type")));
    str246 = String.valueOf(" as ");
    str247 = String.valueOf("inviter_type");
    str248 = String.valueOf("row_count");
    str249 = String.valueOf("inviter_aggregate");
    str250 = String.valueOf("invite_time_aggregate");
    str251 = String.valueOf("participants");
    str252 = String.valueOf("author_alias");
    str253 = String.valueOf("conversations");
    str254 = String.valueOf("snippet_author_chat_id");
    str255 = String.valueOf("author_alias");
    str256 = String.valueOf("chat_id");
    str257 = String.valueOf("conversations");
    str258 = String.valueOf("snippet_author_chat_id");
    str259 = String.valueOf("author_alias");
    str260 = String.valueOf("gaia_id");
    str261 = String.valueOf("participants");
    str262 = String.valueOf("inviter_alias");
    str263 = String.valueOf("conversations");
    str264 = String.valueOf("inviter_chat_id");
    str265 = String.valueOf("inviter_alias");
    str266 = String.valueOf("chat_id");
    str267 = String.valueOf("time_alias");
    (str266 + String.valueOf(0.0F).length()).<init>(str267 + String.valueOf(1.0F).length());
    x = 1.0F;
    y = String.format(Locale.US, "group_concat(IFNULL(%s, %s), %s)", new Object[] { "inviter_alias.full_name", "inviter_alias.fallback_name", "\"|\"" });
    z = String.format(Locale.US, "group_concat(%s, %s)", new Object[] { "conversations.sort_timestamp", "\"|\"" });
    localObject1 = String.valueOf("CREATE VIEW conversations_view AS ");
    localObject2 = Locale.US;
    str2 = x;
    str3 = String.valueOf("9223372036854775807");
    localObject2 = String.valueOf(String.format((Locale)localObject2, str2, new Object[] { String.valueOf(str3).length() + 2 + "\"" + str3 + "\"", "0", "sum(1)", y, z, "(select conversations.* from conversations order by sort_timestamp asc) as conversations ", "" }));
    str2 = String.valueOf("conversations");
    str3 = String.valueOf("status");
    str4 = String.valueOf("inviter_affinity");
    str5 = String.valueOf("conversations");
    str6 = String.valueOf("status");
    str7 = String.valueOf(String.format(Locale.US, x, new Object[] { "conversations.sort_timestamp", "CASE WHEN conversations.conversation_type == 1 AND blocked_alias.conversation_id ==conversations.conversation_id THEN 1 ELSE 0 END", "1", "\"\"", "\"\"", "conversations", " LEFT JOIN (SELECT DISTINCT conversation_participants.conversation_id AS conversation_id FROM conversation_participants LEFT JOIN participants ON (participants._id=participant_row_id) WHERE participants.blocked==1) AS blocked_alias ON conversations.conversation_id=blocked_alias.conversation_id" }));
    str8 = String.valueOf("conversations");
    str9 = String.valueOf("status");
    str10 = String.valueOf("merge_key");
    d = String.valueOf(localObject1).length() + 85 + String.valueOf(localObject2).length() + String.valueOf(str2).length() + String.valueOf(str3).length() + String.valueOf(str4).length() + String.valueOf(str5).length() + String.valueOf(str6).length() + String.valueOf(str7).length() + String.valueOf(str8).length() + String.valueOf(str9).length() + String.valueOf(str10).length() + (String)localObject1 + (String)localObject2 + " WHERE " + str2 + "." + str3 + "=1 AND " + str4 + "=1 GROUP BY " + str5 + "." + str6 + " UNION " + str7 + " WHERE " + str8 + "." + str9 + "=2 GROUP BY " + str10;
    localObject1 = String.valueOf("CREATE VIEW invites_view AS ");
    localObject2 = String.valueOf(String.format(Locale.US, x, new Object[] { "conversations.sort_timestamp", "0", "1", "\"\"", "\"\"", "conversations", "" }));
    str2 = String.valueOf("conversations");
    str3 = String.valueOf("status");
    str4 = String.valueOf("conversations");
    str5 = String.valueOf("view");
    str6 = String.valueOf("conversations");
    str7 = String.valueOf("conversation_id");
    e = String.valueOf(localObject1).length() + 49 + String.valueOf(localObject2).length() + String.valueOf(str2).length() + String.valueOf(str3).length() + String.valueOf(str4).length() + String.valueOf(str5).length() + String.valueOf(str6).length() + String.valueOf(str7).length() + (String)localObject1 + (String)localObject2 + " WHERE " + str2 + "." + str3 + "=1 AND " + str4 + "." + str5 + "=1 GROUP BY " + str6 + "." + str7;
    localObject1 = String.valueOf("CREATE TRIGGER CONVERSATION_MERGE_KEY_TRIGGER  AFTER INSERT ON conversations FOR EACH ROW  BEGIN  INSERT INTO merge_keys ( conversation_id, merge_key)  VALUES (NEW.conversation_id, \"");
    localObject2 = ef;
    str2 = String.valueOf("conversation_id");
    f = String.valueOf(localObject1).length() + 15 + String.valueOf(localObject2).length() + String.valueOf(str2).length() + (String)localObject1 + (String)localObject2 + "\"||NEW." + str2 + "); END; ";
    localObject1 = String.valueOf(w);
    localObject2 = String.valueOf("conversations");
    if (((String)localObject2).length() != 0)
    {
      localObject1 = ((String)localObject1).concat((String)localObject2);
      g = Uri.parse((String)localObject1);
      localObject1 = String.valueOf(w);
      localObject2 = String.valueOf("conversation");
      if (((String)localObject2).length() == 0) {
        break label9749;
      }
      localObject1 = ((String)localObject1).concat((String)localObject2);
      h = Uri.parse((String)localObject1);
      localObject1 = String.valueOf(w);
      localObject2 = String.valueOf("invites_view");
      if (((String)localObject2).length() == 0) {
        break label9761;
      }
      localObject1 = ((String)localObject1).concat((String)localObject2);
      i = Uri.parse((String)localObject1);
      localObject1 = String.valueOf(w);
      localObject2 = String.valueOf("suggested_contacts");
      if (((String)localObject2).length() == 0) {
        break label9773;
      }
      localObject1 = ((String)localObject1).concat((String)localObject2);
      j = Uri.parse((String)localObject1);
      localObject1 = String.valueOf(w);
      localObject2 = String.valueOf("message_notifications_view");
      if (((String)localObject2).length() == 0) {
        break label9785;
      }
      localObject1 = ((String)localObject1).concat((String)localObject2);
      k = Uri.parse((String)localObject1);
      localObject1 = String.valueOf(w);
      localObject2 = String.valueOf("blocked_people");
      if (((String)localObject2).length() == 0) {
        break label9797;
      }
      localObject1 = ((String)localObject1).concat((String)localObject2);
      l = Uri.parse((String)localObject1);
      localObject1 = String.valueOf(w);
      localObject2 = String.valueOf("dismissed_contacts");
      if (((String)localObject2).length() == 0) {
        break label9809;
      }
      localObject1 = ((String)localObject1).concat((String)localObject2);
      m = Uri.parse((String)localObject1);
      localObject1 = w;
      localObject2 = String.valueOf("event_suggestions");
      n = Uri.parse(String.valueOf(localObject1).length() + 13 + String.valueOf(localObject2).length() + (String)localObject1 + (String)localObject2 + "/conversation");
      localObject1 = String.valueOf(w);
      localObject2 = String.valueOf("recent_calls");
      if (((String)localObject2).length() == 0) {
        break label9821;
      }
      localObject1 = ((String)localObject1).concat((String)localObject2);
      o = Uri.parse((String)localObject1);
      localObject1 = w;
      localObject2 = String.valueOf("messages");
      p = Uri.parse(String.valueOf(localObject1).length() + 14 + String.valueOf(localObject2).length() + (String)localObject1 + (String)localObject2 + "/conversations");
      localObject1 = w;
      localObject2 = String.valueOf("conversation_images_view");
      A = Uri.parse(String.valueOf(localObject1).length() + 13 + String.valueOf(localObject2).length() + (String)localObject1 + (String)localObject2 + "/conversation");
      localObject1 = String.valueOf(w);
      localObject2 = String.valueOf("imagescratchspace");
      if (((String)localObject2).length() == 0) {
        break label9833;
      }
      localObject1 = ((String)localObject1).concat((String)localObject2);
      B = Uri.parse((String)localObject1);
      localObject1 = String.valueOf(w);
      localObject2 = String.valueOf("conversation_participants");
      if (((String)localObject2).length() == 0) {
        break label9845;
      }
      localObject1 = ((String)localObject1).concat((String)localObject2);
      q = Uri.parse((String)localObject1);
      localObject1 = String.valueOf(w);
      localObject2 = String.valueOf("sms_phone_numbers");
      if (((String)localObject2).length() == 0) {
        break label9857;
      }
      localObject1 = ((String)localObject1).concat((String)localObject2);
      r = Uri.parse((String)localObject1);
      localObject1 = String.valueOf(j);
      s = Uri.parse(String.valueOf(localObject1).length() + 6 + (String)localObject1 + "/query");
      localObject1 = String.valueOf(w);
      localObject2 = String.valueOf("presence");
      if (((String)localObject2).length() == 0) {
        break label9869;
      }
      localObject1 = ((String)localObject1).concat((String)localObject2);
      t = Uri.parse((String)localObject1);
      localObject1 = new UriMatcher(-1);
      C = (UriMatcher)localObject1;
      ((UriMatcher)localObject1).addURI(a, "conversations", 100);
      C.addURI(a, "conversation", 102);
      C.addURI(a, "invites_view", 101);
      C.addURI(a, "conversation_participants/conversation/*", 110);
      C.addURI(a, "sms_phone_numbers", 220);
      C.addURI(a, "blocked_people", 190);
      C.addURI(a, "dismissed_contacts", 230);
      C.addURI(a, "message_notifications_view", 160);
      C.addURI(a, "messages/conversation/*", 120);
      C.addURI(a, "messages/conversations/*", 121);
      C.addURI(a, "imagescratchspace/*", 140);
      C.addURI(a, "conversation_images_view/conversation/*", 130);
      C.addURI(a, "suggested_contacts", 180);
      C.addURI(a, "suggested_contacts/query/*", 181);
      C.addURI(a, "suggested_contacts/query", 181);
      C.addURI(a, "event_suggestions/conversation/*", 200);
      C.addURI(a, "recent_calls", 210);
      C.addURI(a, "presence", 240);
      localObject1 = new hq();
      D = (Map)localObject1;
      ((Map)localObject1).put("_id", "_id");
      D.put("gaia_id", "gaia_id");
      D.put("chat_id", "chat_id");
      D.put("name", "name");
      D.put("profile_photo_url", "profile_photo_url");
      localObject1 = new hq();
      E = (Map)localObject1;
      ((Map)localObject1).put("_id", "_id");
      E.put("gaia_id", "gaia_id");
      E.put("chat_id", "chat_id");
      E.put("name", "name");
      E.put("profile_photo_url", "profile_photo_url");
      localObject1 = new hq();
      F = (Map)localObject1;
      ((Map)localObject1).put("chat_id", "conversation_participants_view.chat_id");
      F.put("latest_message_timestamp", "conversations.latest_message_timestamp");
      localObject1 = new hq();
      G = (Map)localObject1;
      ((Map)localObject1).put("_id", "recent_calls._id");
      G.put("contact_id", "contact_id");
      G.put("phone_number", "phone_number");
      G.put("call_timestamp", "call_timestamp");
      G.put("call_type", "call_type");
      G.put("contact_type", "contact_type");
      G.put("call_rate", "call_rate");
      G.put("is_free_call", "is_free_call");
      H = Pattern.compile(".*\"(?!CONV:)(?!\\|).+\".*");
      I = new StringBuilder();
    }
  }
  
  public static int a(String paramString, int paramInt)
  {
    if (paramString == null) {}
    do
    {
      return 0;
      paramString = b(paramString, paramInt);
    } while (TextUtils.isEmpty(paramString));
    try
    {
      paramInt = Integer.parseInt(paramString);
      return paramInt;
    }
    catch (NumberFormatException paramString) {}
    return 0;
  }
  
  private static Uri.Builder a(Uri.Builder paramBuilder, int paramInt)
  {
    return paramBuilder.appendQueryParameter("account_id", Integer.toString(paramInt));
  }
  
  public static Uri a(int paramInt, long paramLong)
  {
    Uri.Builder localBuilder = B.buildUpon();
    localBuilder.appendPath(String.valueOf(paramLong));
    localBuilder.appendQueryParameter("account_id", Integer.toString(paramInt));
    return localBuilder.build();
  }
  
  public static Uri a(int paramInt, String paramString)
  {
    Uri.Builder localBuilder = n.buildUpon();
    localBuilder.appendPath(paramString);
    return a(localBuilder, paramInt).build();
  }
  
  public static Uri a(Uri paramUri, int paramInt)
  {
    return a(paramUri.buildUpon(), paramInt).build();
  }
  
  public static Uri a(bfd parambfd, int paramInt)
  {
    Uri.Builder localBuilder = o.buildUpon();
    localBuilder.appendQueryParameter("account_id", Integer.toString(parambfd.g()));
    if (paramInt > 0) {
      localBuilder.appendQueryParameter("limit", String.valueOf(paramInt));
    }
    return localBuilder.build();
  }
  
  public static Uri a(bfd parambfd, String paramString)
  {
    Uri.Builder localBuilder = p.buildUpon();
    localBuilder.appendPath(paramString);
    localBuilder.appendQueryParameter("account_id", Integer.toString(parambfd.g()));
    return localBuilder.build();
  }
  
  public static Uri a(bfd parambfd, ArrayList<String> paramArrayList)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    paramArrayList = paramArrayList.iterator();
    while (paramArrayList.hasNext())
    {
      String str = (String)paramArrayList.next();
      if (localStringBuilder.length() > 0) {
        localStringBuilder.append("+");
      }
      localStringBuilder.append(str);
    }
    return c(parambfd, localStringBuilder.toString());
  }
  
  public static String a(int paramInt)
  {
    String str = String.valueOf("continuation_end_timestamp");
    return String.valueOf(str).length() + 11 + str + paramInt;
  }
  
  private static String a(Context paramContext, String paramString)
  {
    paramContext = String.valueOf(paramContext.getCacheDir().getAbsolutePath());
    return String.valueOf(paramContext).length() + 18 + String.valueOf(paramString).length() + paramContext + "/scratch/" + paramString + ".temp.jpg";
  }
  
  public static String a(String paramString)
  {
    return String.valueOf(paramString).length() + 7 + "quote(" + paramString + ")";
  }
  
  public static String a(String paramString1, String paramString2)
  {
    return String.valueOf(paramString1).length() + 28 + String.valueOf(paramString2).length() + "('|' || " + paramString1 + " || '|') LIKE '%|" + paramString2 + "|%'";
  }
  
  public static void a(Context paramContext)
  {
    int[] arrayOfInt = dvd.f();
    int i2 = arrayOfInt.length;
    int i1 = 0;
    while (i1 < i2)
    {
      bgw.a(paramContext, arrayOfInt[i1]).b().a(Locale.getDefault());
      i1 += 1;
    }
  }
  
  private static void a(String paramString, bhr parambhr)
  {
    if (paramString == null) {
      return;
    }
    int i6;
    int i3;
    int i2;
    int i4;
    char c1;
    for (;;)
    {
      synchronized (I)
      {
        i6 = paramString.length();
        i3 = -1;
        i1 = 0;
        i2 = 1;
        if (i1 < i6)
        {
          i4 = i1 + 1;
          c1 = paramString.charAt(i1);
          if (i2 != 0)
          {
            i3 += 1;
            I.setLength(0);
            if (c1 == '\'') {
              break label373;
            }
            I.append(c1);
            if ((i4 < i6) && (paramString.charAt(i4) != '|'))
            {
              I.append(paramString.charAt(i4));
              i4 += 1;
              continue;
            }
            if (TextUtils.equals(I, "NULL")) {
              I.setLength(0);
            }
            parambhr.a(i3, I);
            if (i4 != i6)
            {
              i1 = i4 + 1;
              i2 = 1;
            }
          }
          else
          {
            if (c1 != '\'') {
              break;
            }
            if (i4 != i6) {
              break label200;
            }
            parambhr.a(i3, I);
          }
        }
        return;
      }
      label200:
      if (paramString.charAt(i4) == '\'')
      {
        I.append(c1);
        i1 = i4 + 1;
      }
      else
      {
        hbs.a(Character.valueOf(paramString.charAt(i4)), Character.valueOf('|'));
        parambhr.a(i3, I);
        i1 = i4 + 1;
        i2 = 1;
      }
    }
    I.append(c1);
    int i1 = i3;
    int i5 = i2;
    if (i4 == i6)
    {
      if (u) {
        ezi.a("Babel_db", String.valueOf(paramString).length() + 75 + "[EsProvider] splitQuotedString called with: " + paramString + ", which does not escape quotes.", new Object[0]);
      }
      parambhr.a(i3, I);
      i5 = i2;
    }
    for (i1 = i3;; i1 = i3)
    {
      i3 = i1;
      i2 = i5;
      i1 = i4;
      break;
      label373:
      i5 = 0;
    }
  }
  
  public static String[] a()
  {
    return new String[] { "CREATE TABLE conversations (_id INTEGER PRIMARY KEY, conversation_id TEXT, conversation_type INT, latest_message_timestamp INT DEFAULT(0), latest_message_expiration_timestamp INT, metadata_present INT,notification_level INT, name TEXT, generated_name TEXT, snippet_type INT, snippet_text TEXT, snippet_image_url TEXT, snippet_author_gaia_id TEXT, snippet_author_chat_id TEXT, snippet_message_row_id INT, snippet_selector INT, snippet_status INT, snippet_new_conversation_name TEXT, snippet_participant_keys TEXT, snippet_sms_type TEXT, previous_latest_timestamp INT, status INT, view INT, inviter_gaia_id TEXT, inviter_chat_id TEXT, inviter_affinity INT, is_pending_leave INT, account_id INT, is_otr INT, packed_avatar_urls TEXT, self_avatar_url TEXT, self_watermark INT DEFAULT(0), chat_watermark INT DEFAULT(0), hangout_watermark INT DEFAULT(0), is_draft INT, sequence_number INT, call_media_type INT DEFAULT(0), has_joined_hangout INT, has_chat_notifications DEFAULT(0),has_video_notifications DEFAULT(0),last_hangout_event_time INT, draft TEXT, otr_status INT, otr_toggle INT, last_otr_modification_time INT, continuation_token BLOB, continuation_event_timestamp INT, has_oldest_message INT DEFAULT(0), sort_timestamp INT, first_peak_scroll_time INT, first_peak_scroll_to_message_timestamp INT, second_peak_scroll_time INT, second_peak_scroll_to_message_timestamp INT, conversation_hash BLOB, disposition INT DEFAULT(0), has_persistent_events INT DEFAULT(-1), transport_type INT DEFAULT(1), default_transport_phone TEXT, sms_service_center TEXT, is_temporary INT DEFAULT (0), sms_thread_id INT DEFAULT (-1), chat_ringtone_uri TEXT, hangout_ringtone_uri TEXT, snippet_voicemail_duration INT DEFAULT (0), share_count INT DEFAULT (0), has_unobserved TEXT, last_share_timestamp INT DEFAULT (0), UNIQUE (conversation_id ));", "CREATE TABLE conversation_participants (_id INTEGER PRIMARY KEY, participant_row_id INT, participant_type INT, conversation_id TEXT, sequence INT, active INT, invitation_status INT DEFAULT(0), UNIQUE (conversation_id,participant_row_id) ON CONFLICT REPLACE, FOREIGN KEY (conversation_id) REFERENCES conversations(conversation_id) ON DELETE CASCADE ON UPDATE CASCADE, FOREIGN KEY (participant_row_id) REFERENCES participants(_id));", c, "CREATE TABLE presence (_id INTEGER PRIMARY KEY, gaia_id TEXT NOT NULL, reachable INT DEFAULT(0), reachable_time INT DEFAULT(0), available INT DEFAULT(0), available_time INT DEFAULT(0), status_message TEXT, status_message_time INT DEFAULT(0), call_type INT DEFAULT(0), call_type_time INT DEFAULT(0), device_status INT DEFAULT(0), device_status_time INT DEFAULT(0), last_seen INT DEFAULT(0), last_seen_time INT DEFAULT(0), location BLOB, location_time INT DEFAULT(0), UNIQUE (gaia_id) ON CONFLICT REPLACE);", "CREATE TABLE suggested_contacts (_id INTEGER PRIMARY KEY, gaia_id TEXT, chat_id TEXT, name TEXT, first_name TEXT, packed_circle_ids TEXT, profile_photo_url TEXT, sequence INT, suggestion_type INT);", "CREATE TABLE messages (_id INTEGER PRIMARY KEY, message_id TEXT, message_type INT, conversation_id TEXT, author_chat_id TEXT, author_gaia_id TEXT, text TEXT, timestamp INT, delete_after_read_timetamp INT, status INT, type INT, local_url TEXT, remote_url TEXT, attachment_content_type TEXT, width_pixels INT, height_pixels INT, stream_id TEXT, image_id TEXT, album_id TEXT, latitude DOUBLE, longitude DOUBLE, address ADDRESS, notification_level INT, expiration_timestamp INT, notified_for_failure INT DEFAULT(0), off_the_record INT DEFAULT(0), transport_type INT NOT NULL DEFAULT(1), transport_phone TEXT, external_ids TEXT, sms_timestamp_sent INT DEFAULT(0), sms_priority INT DEFAULT(0), sms_message_size INT DEFAULT(0), mms_subject TEXT, sms_raw_sender TEXT, sms_raw_recipients TEXT, persisted INT DEFAULT(1), sms_message_status INT DEFAULT(-1), sms_type INT DEFAULT(-1), stream_url TEXT, attachment_target_url TEXT, attachment_name TEXT, image_rotation INT DEFAULT (0), new_conversation_name TEXT, participant_keys TEXT, forwarded_mms_url TEXT, forwarded_mms_count INT DEFAULT(0), attachment_description TEXT, attachment_target_url_description TEXT, attachment_target_url_name TEXT, attachment_blob_data BLOB,attachment_uploading_progress INT DEFAULT(0), sending_error INT DEFAULT(0), stream_expiration INT, voicemail_length INT DEFAULT (0), call_media_type INT DEFAULT(0), last_seen_timestamp INT DEFAULT(0), observed_status INT DEFAULT(2), receive_type INT DEFAULT(0), init_timestamp INT DEFAULT(0), in_app_msg_latency INT DEFAULT(0), notified INT DEFAULT(0), FOREIGN KEY (conversation_id) REFERENCES conversations(conversation_id) ON DELETE CASCADE ON UPDATE CASCADE,UNIQUE (conversation_id,message_id) ON CONFLICT REPLACE);", "CREATE TABLE event_suggestions (_id INTEGER PRIMARY KEY, conversation_id TEXT, event_id TEXT, suggestion_id TEXT, timestamp INT, expiration_time_usec INT, type INT, gem_asset_url STRING, gem_horizontal_alignment INT, matched_message_substring TEXT, FOREIGN KEY (conversation_id) REFERENCES conversations(conversation_id) ON DELETE CASCADE ON UPDATE CASCADE, UNIQUE (conversation_id,suggestion_id) ON CONFLICT REPLACE);", "CREATE TABLE multipart_attachments (_id INTEGER PRIMARY KEY, message_id TEXT, conversation_id TEXT, url TEXT, content_type TEXT, width INT, height INT, FOREIGN KEY (message_id, conversation_id) REFERENCES messages(message_id, conversation_id) ON DELETE CASCADE ON UPDATE CASCADE);", "CREATE TABLE blocked_people (_id INTEGER PRIMARY KEY, gaia_id TEXT, chat_id TEXT, name TEXT, profile_photo_url TEXT, UNIQUE (chat_id) ON CONFLICT REPLACE, UNIQUE (gaia_id) ON CONFLICT REPLACE);", "CREATE TABLE dismissed_contacts (_id INTEGER PRIMARY KEY, gaia_id TEXT, chat_id TEXT, name TEXT, profile_photo_url TEXT, UNIQUE (chat_id) ON CONFLICT REPLACE, UNIQUE (gaia_id) ON CONFLICT REPLACE);", "CREATE TABLE search (search_key TEXT NOT NULL,continuation_token TEXT,PRIMARY KEY (search_key));", "CREATE TABLE mms_notification_inds (_id INTEGER PRIMARY KEY, content_location TEXT, transaction_id TEXT, from_address TEXT, message_size INT DEFAULT(0), expiry INT);", "CREATE TABLE merge_keys (_id INTEGER PRIMARY KEY, conversation_id TEXT, merge_key TEXT, UNIQUE (conversation_id) ON CONFLICT REPLACE, FOREIGN KEY (conversation_id) REFERENCES conversations(conversation_id) ON DELETE CASCADE ON UPDATE CASCADE  );", "CREATE TABLE recent_calls (_id INTEGER PRIMARY KEY, normalized_number TEXT NOT NULL, phone_number TEXT, contact_id TEXT, call_timestamp INT, call_type INT, contact_type INT, call_rate TEXT, is_free_call BOOLEAN);", "CREATE TABLE sticker_albums (album_id TEXT NOT NULL, title TEXT, cover_photo_id TEXT, last_used INT DEFAULT(0), PRIMARY KEY (album_id));", "CREATE TABLE sticker_photos (photo_id TEXT NOT NULL, album_id TEXT NOT NULL, url TEXT NOT NULL, file_name TEXT, last_used INT DEFAULT(0), PRIMARY KEY (photo_id), FOREIGN KEY (album_id) REFERENCES sticker_albums(album_id) ON DELETE CASCADE)" };
  }
  
  private static String[] a(SQLiteQueryBuilder paramSQLiteQueryBuilder, String[] paramArrayOfString, String paramString, List<String> paramList)
  {
    String[] arrayOfString;
    if (paramList.size() == 1)
    {
      paramSQLiteQueryBuilder.appendWhere(paramString);
      paramSQLiteQueryBuilder.appendWhere("=?");
      arrayOfString = a(paramArrayOfString, new String[] { (String)paramList.get(0) });
    }
    do
    {
      return arrayOfString;
      arrayOfString = paramArrayOfString;
    } while (paramList.isEmpty());
    paramSQLiteQueryBuilder.appendWhere(paramString);
    paramSQLiteQueryBuilder.appendWhere(" in (");
    paramString = paramList.iterator();
    while (paramString.hasNext())
    {
      paramArrayOfString = a(paramArrayOfString, new String[] { (String)paramString.next() });
      if (paramString.hasNext()) {
        paramSQLiteQueryBuilder.appendWhere("?,");
      } else {
        paramSQLiteQueryBuilder.appendWhere("?");
      }
    }
    paramSQLiteQueryBuilder.appendWhere(")");
    return paramArrayOfString;
  }
  
  private static String[] a(String[] paramArrayOfString1, String... paramVarArgs)
  {
    if (paramVarArgs.length == 0) {
      return paramArrayOfString1;
    }
    if (paramArrayOfString1 == null) {}
    for (int i1 = 0;; i1 = paramArrayOfString1.length)
    {
      int i2 = paramVarArgs.length;
      String[] arrayOfString = new String[i1 + i2];
      System.arraycopy(paramVarArgs, 0, arrayOfString, 0, i2);
      if (i1 > 0) {
        System.arraycopy(paramArrayOfString1, 0, arrayOfString, i2, i1);
      }
      return arrayOfString;
    }
  }
  
  public static Uri b(Uri paramUri, int paramInt)
  {
    return paramUri.buildUpon().appendQueryParameter("suggestion_type", Integer.toString(paramInt)).build();
  }
  
  public static Uri b(bfd parambfd, String paramString)
  {
    Uri.Builder localBuilder = A.buildUpon();
    localBuilder.appendPath(paramString);
    localBuilder.appendQueryParameter("account_id", Integer.toString(parambfd.g()));
    return localBuilder.build();
  }
  
  public static String b(Context paramContext)
  {
    return String.valueOf(paramContext.getFilesDir().getAbsolutePath()).concat("/sticker_cache/");
  }
  
  public static String b(String paramString)
  {
    return String.valueOf(paramString).length() + 20 + "group_concat(" + paramString + ", \"|\") ";
  }
  
  public static String b(String paramString, int paramInt)
  {
    if (TextUtils.isEmpty(paramString)) {
      return "";
    }
    if ((paramString.charAt(0) == '\'') || (paramString.startsWith("NULL"))) {
      return c(paramString, paramInt);
    }
    paramString = paramString.split("\\|");
    if (paramInt >= paramString.length) {
      return "";
    }
    return paramString[paramInt];
  }
  
  private static String b(String paramString1, String paramString2)
  {
    String str = String.valueOf("group_concat(CASE WHEN conversations.latest_message_expiration_timestamp < time_alias.current_timestamp THEN ");
    return String.valueOf(str).length() + 37 + String.valueOf(paramString2).length() + String.valueOf(paramString1).length() + String.valueOf(paramString2).length() + String.valueOf(paramString1).length() + str + paramString2 + " WHEN " + paramString1 + " IS NULL THEN " + paramString2 + " ELSE " + paramString1 + " END, \"|\") ";
  }
  
  public static String[] b()
  {
    return new String[] { "CREATE INDEX index_conversations_status ON conversations(status)", "CREATE INDEX index_merge_keys_merge_key_NEW ON merge_keys(merge_key)", "CREATE INDEX index_merge_keys_merge_conversation_id ON merge_keys(conversation_id); ", "CREATE INDEX index_conversation_participants_view_conversation_id ON conversation_participants(conversation_id)", "CREATE INDEX index_conversations_view ON conversations(view)", "CREATE INDEX index_conversations_sort_timestamp ON conversations(sort_timestamp)", "CREATE INDEX index_conversations_chat_notifications ON conversations(has_chat_notifications)", "CREATE INDEX index_conversations_video_notifications ON conversations(has_video_notifications)", "CREATE INDEX index_dismissed_contacts_gaia_id ON dismissed_contacts(gaia_id)", "CREATE INDEX index_participants_chat_id ON participants(chat_id)", "CREATE INDEX index_participants_blocked ON participants(blocked)", "CREATE INDEX index_messages_conversation_id_timestamp ON messages(conversation_id, timestamp)", "CREATE INDEX index_event_suggestions_conversation_id_expiration_time_timestamp  ON event_suggestions(conversation_id, expiration_time_usec, timestamp)", "CREATE INDEX index_multipart_attachments_conversation_id_message_id ON multipart_attachments(conversation_id, message_id)", "CREATE INDEX index_conversation_participants_sequence ON conversation_participants(sequence)", "CREATE INDEX index_recent_calls_sequence ON recent_calls(call_timestamp)" };
  }
  
  public static Uri c(bfd parambfd, String paramString)
  {
    Uri.Builder localBuilder = q.buildUpon();
    localBuilder.appendPath("conversation").appendPath(paramString);
    localBuilder.appendQueryParameter("account_id", Integer.toString(parambfd.g()));
    return localBuilder.build();
  }
  
  private ParcelFileDescriptor c(String paramString1, String paramString2)
  {
    String str = a(getContext(), paramString1);
    try
    {
      paramString1 = new File(str);
      File localFile = paramString1.getParentFile();
      if ((!localFile.exists()) && (!localFile.mkdirs()))
      {
        paramString1 = String.valueOf(localFile.getPath());
        ezi.e("Babel_db", String.valueOf(paramString1).length() + 47 + "[TempFileProvider] tempStoreFd: " + paramString1 + "does not exist!", new Object[0]);
        return null;
      }
      if (paramString2.equals("r")) {}
      for (int i1 = 268435456;; i1 = 1006632960)
      {
        paramString1 = ParcelFileDescriptor.open(paramString1, i1);
        return paramString1;
      }
      paramString1 = "getTempStoreFd: error creating pfd for ".concat(paramString1);
    }
    catch (Exception paramString2)
    {
      paramString1 = String.valueOf(str);
      if (paramString1.length() == 0) {}
    }
    for (;;)
    {
      ezi.d("Babel_db", paramString1, paramString2);
      paramString1 = null;
      break;
      paramString1 = new String("getTempStoreFd: error creating pfd for ");
    }
  }
  
  public static String c(Context paramContext)
  {
    paramContext = String.valueOf(b(paramContext));
    if (paramContext.length() != 0) {
      return "file://".concat(paramContext);
    }
    return new String("file://");
  }
  
  private static String c(String paramString, int paramInt)
  {
    bhq localbhq = new bhq(paramInt);
    a(paramString, localbhq);
    return a;
  }
  
  public static List<String> c(String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    if (!TextUtils.isEmpty(paramString))
    {
      if ((paramString.charAt(0) == '\'') || (paramString.startsWith("NULL"))) {
        a(paramString, new bhp(localArrayList));
      }
    }
    else {
      return localArrayList;
    }
    Collections.addAll(localArrayList, paramString.split("\\|"));
    return localArrayList;
  }
  
  public static String[] c()
  {
    return new String[] { "conversation_participants_view", "participants_view", "conversations_view", "invites_view", "messages_view", "message_notifications_view", "conversation_images_view" };
  }
  
  private static String d(String paramString)
  {
    return b(paramString, "\"\"");
  }
  
  public static String[] d()
  {
    return new String[] { "CREATE VIEW conversation_participants_view AS SELECT participants._id as _id, conversation_participants.conversation_id as conversation_id, conversation_participants.sequence as sequence, conversation_participants.active as active, conversation_participants.invitation_status as invitation_status, participants.circle_id as circle_id, participants.gaia_id as gaia_id, participants.chat_id as chat_id, participants.phone_id as phone_id, participants.fallback_name as fallback_name,  IFNULL(participants.full_name, participants.fallback_name)  as full_name,  IFNULL(IFNULL(participants.first_name, participants.full_name), participants.fallback_name)  as first_name, participants.profile_photo_url as profile_photo_url, participants.batch_gebi_tag as batch_gebi_tag, participants.participant_type as participant_type, participants.blocked as blocked, participants.in_users_domain as in_users_domain  FROM conversation_participants LEFT JOIN participants ON (conversation_participants.participant_row_id=participants._id)", "CREATE VIEW participants_view AS SELECT participants._id, participants.circle_id, participants.gaia_id, participants.chat_id, participants.phone_id,  IFNULL(participants.full_name, participants.fallback_name)  as full_name,  IFNULL(participants.first_name, participants.fallback_name)  as first_name, participants.fallback_name, participants.profile_photo_url, participants.batch_gebi_tag, participants.participant_type, participants.blocked  FROM participants", d, e, "CREATE VIEW messages_view AS SELECT messages._id as _id, messages.message_id as message_id, messages.conversation_id as conversation_id, messages.author_chat_id as author_chat_id, messages.author_gaia_id as author_gaia_id, messages.text as text, messages.timestamp as timestamp, messages.status as status, messages.type as type, messages.local_url as local_url, messages.remote_url as remote_url, messages.attachment_content_type as attachment_content_type, messages.width_pixels as width_pixels, messages.height_pixels as height_pixels, messages.stream_id as stream_id, messages.image_id as image_id, messages.album_id as album_id,messages.attachment_name as attachment_name, messages.attachment_description as attachment_description, messages.latitude as latitude, messages.longitude as longitude,messages.address as address,messages.attachment_target_url as attachment_target_url,messages.attachment_target_url_name as attachment_target_url_name,messages.attachment_target_url_description as attachment_target_url_description,messages.attachment_blob_data as attachment_blob_data,messages.expiration_timestamp as expiration_timestamp, messages.off_the_record as off_the_record, messages.external_ids as external_ids, messages.sms_message_size as sms_message_size, messages.sms_priority as sms_priority, messages.sms_timestamp_sent as sms_timestamp_sent, messages.mms_subject as mms_subject, messages.sms_raw_sender as sms_raw_sender, messages.sms_raw_recipients as sms_raw_recipients, messages.persisted as persisted, messages.transport_type as transport_type, messages.transport_phone as transport_phone, messages.sms_message_status as sms_message_status, messages.sms_type as sms_type, messages.stream_url as stream_url, messages.stream_expiration as stream_expiration, messages.voicemail_length as voicemail_length, messages.image_rotation as image_rotation, messages.new_conversation_name as new_conversation_name, messages.participant_keys as participant_keys, messages.forwarded_mms_url as forwarded_mms_url, messages.forwarded_mms_count as forwarded_mms_count, messages.sending_error as sending_error, messages.call_media_type as call_media_type, messages.last_seen_timestamp as last_seen_timestamp, messages.observed_status as observed_status, messages.receive_type as receive_type, messages.init_timestamp as init_timestamp, messages.in_app_msg_latency as in_app_msg_latency, messages.notified as notified, messages.observed_status as observed_status FROM messages WHERE expiration_timestamp IS NULL OR expiration_timestamp >= (julianday('now') - 2440587.5) * 86400000000", "CREATE VIEW message_notifications_view AS SELECT messages._id as _id, messages.message_id as message_id, messages.conversation_id as conversation_id, messages.author_chat_id as author_chat_id, messages.author_gaia_id as author_gaia_id, messages.text as text, messages.local_url as local_url, messages.remote_url as remote_url, messages.attachment_content_type as attachment_content_type, messages.width_pixels as width_pixels, messages.height_pixels as height_pixels, messages.stream_id as stream_id, messages.image_id as image_id, messages.album_id as album_id, messages.attachment_name as attachment_name, messages.latitude as latitude, messages.longitude as longitude,messages.address as address,messages.attachment_target_url as attachment_target_url,messages.timestamp as timestamp, messages.status as status, messages.type as type, messages.transport_type as transport_type, messages.transport_phone as transport_phone, messages.notification_level as notification_level, messages.notified_for_failure as notified_for_failure, messages.new_conversation_name as new_conversation_name, messages.participant_keys as participant_keys, messages.sms_type as sms_type, messages.last_seen_timestamp as last_seen_timestamp, messages.observed_status as observed_status, (select merge_key from merge_keys where merge_keys.conversation_id=messages.conversation_id)  as merge_key, author_alias.full_name as author_full_name, author_alias.first_name as author_first_name, author_alias.profile_photo_url as author_profile_photo_url, conversations.notification_level as conversation_notification_level, conversations.status as conversation_status, conversations.view as conversation_view, conversations.is_pending_leave as conversation_pending_leave, conversations.has_chat_notifications as conversation_has_chat_notifications, conversations.has_video_notifications as conversation_has_video_notifications, conversations.name as conversation_name, conversations.generated_name as generated_name, conversations.conversation_type as conversation_type, conversations.chat_watermark as chat_watermark, conversations.hangout_watermark as hangout_watermark, conversations.self_watermark as self_watermark ,conversations.chat_ringtone_uri as chat_ringtone_uri, conversations.hangout_ringtone_uri as hangout_ringtone_uri, conversations.otr_status as otr_status, conversations.call_media_type as call_media_type FROM messages LEFT JOIN conversation_participants_view author_alias ON ((messages.author_chat_id=author_alias.chat_id OR author_chat_id=author_alias.gaia_id) AND messages.conversation_id=author_alias.conversation_id) LEFT JOIN conversations ON messages.conversation_id=conversations.conversation_id", "CREATE VIEW conversation_images_view AS SELECT  CASE WHEN multipart_attachments.url NOT NULL THEN multipart_attachments.url WHEN messages.remote_url NOT NULL THEN messages.remote_url ELSE messages.local_url END  as uri, messages.text as _display_name,  CASE WHEN multipart_attachments.url NOT NULL THEN multipart_attachments.url WHEN messages.remote_url NOT NULL THEN messages.remote_url ELSE messages.local_url END  as contentUri,  CASE WHEN messages.remote_url NOT NULL THEN messages.remote_url ELSE messages.local_url END  as thumbnailUri, 'image/jpeg' as contentType, messages.attachment_content_type as realContentType, messages.conversation_id as conversation_id, messages.timestamp as date, conversation_participants_view.full_name as author, conversation_participants_view.profile_photo_url as iconUri, messages.attachment_target_url as sourceUrl, messages.attachment_target_url_name as sourceName, messages.attachment_target_url_description as sourceDescription, messages.attachment_description as hashtag  FROM messages LEFT JOIN conversation_participants_view ON ((messages.author_chat_id=conversation_participants_view.chat_id OR messages.author_gaia_id=conversation_participants_view.gaia_id) AND messages.conversation_id=conversation_participants_view.conversation_id) LEFT OUTER JOIN multipart_attachments USING (conversation_id, message_id)  WHERE (expiration_timestamp IS NULL OR expiration_timestamp >= (julianday('now') - 2440587.5) * 86400000000) AND (remote_url NOT NULL OR local_url NOT NULL OR multipart_attachments.url NOT NULL) AND (attachment_content_type LIKE 'image/%' OR attachment_content_type='multipart/mixed') AND (local_url IS NULL OR (local_url NOT LIKE '%/sticker_cache/%' AND local_url NOT LIKE 'sticker://%'))" };
  }
  
  private static String e(String paramString)
  {
    return String.format(Locale.US, "max(%s)", new Object[] { paramString });
  }
  
  public static String[] e()
  {
    return new String[] { f };
  }
  
  public int delete(Uri paramUri, String paramString, String[] paramArrayOfString)
  {
    if (u)
    {
      paramString = String.valueOf(paramUri);
      new StringBuilder(String.valueOf(paramString).length() + 7).append("delete ").append(paramString);
    }
    switch (C.match(paramUri))
    {
    default: 
      throw new IllegalArgumentException();
    }
    paramString = (String)paramUri.getPathSegments().get(1);
    paramUri = a(getContext(), paramString);
    try
    {
      if (!new File(paramUri).delete())
      {
        paramUri = String.valueOf(paramString);
        if (paramUri.length() != 0) {}
        for (paramUri = "delete: error deleting ".concat(paramUri);; paramUri = new String("delete: error deleting "))
        {
          ezi.d("Babel_db", paramUri, new Object[0]);
          return 0;
        }
        paramUri = "delete: error deleting ".concat(paramUri);
      }
    }
    catch (Exception paramArrayOfString)
    {
      paramUri = String.valueOf(paramString);
      if (paramUri.length() == 0) {}
    }
    for (;;)
    {
      ezi.d("Babel_db", paramUri, paramArrayOfString);
      return 0;
      return 1;
      paramUri = new String("delete: error deleting ");
    }
  }
  
  public String getType(Uri paramUri)
  {
    switch (C.match(paramUri))
    {
    default: 
      paramUri = String.valueOf(paramUri);
      throw new IllegalArgumentException(String.valueOf(paramUri).length() + 13 + "Unknown URI: " + paramUri);
    case 100: 
      return "vnd.android.cursor.dir/vnd.google.android.apps.hangouts.conversations";
    case 110: 
      return "vnd.android.cursor.dir/vnd.google.android.apps.hangouts.participants";
    case 190: 
      return "vnd.android.cursor.dir/vnd.google.android.apps.hangouts.blocked_people";
    case 230: 
      return "vnd.android.cursor.dir/vnd.google.android.apps.hangouts.dismissed_contacts";
    case 120: 
      return "vnd.android.cursor.dir/vnd.google.android.apps.hangouts.messages";
    }
    return "vnd.android.cursor.dir/vnd.google.android.apps.hangouts.message_notifications";
  }
  
  public Uri insert(Uri paramUri, ContentValues paramContentValues)
  {
    paramUri = String.valueOf(paramUri);
    throw new IllegalStateException(String.valueOf(paramUri).length() + 21 + "Insert not supported " + paramUri);
  }
  
  public boolean onCreate()
  {
    return true;
  }
  
  public ParcelFileDescriptor openFile(Uri paramUri, String paramString)
  {
    if (ezi.a("Babel_db", 3))
    {
      String str = String.valueOf(paramUri);
      ezi.a("Babel_db", String.valueOf(str).length() + 9 + "openFile " + str, new Object[0]);
    }
    switch (C.match(paramUri))
    {
    default: 
      return null;
    }
    return c((String)paramUri.getPathSegments().get(1), paramString);
  }
  
  public Cursor query(Uri paramUri, String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String paramString2)
  {
    String str1 = paramUri.getQueryParameter("account_id");
    if (str1 == null)
    {
      paramArrayOfString1 = String.valueOf("Every URI must have the 'account_id' parameter specified.\nURI: ");
      paramUri = String.valueOf(paramUri);
      ezi.e("Babel_db", String.valueOf(paramArrayOfString1).length() + 0 + String.valueOf(paramUri).length() + paramArrayOfString1 + paramUri, new Object[0]);
      throw new IllegalArgumentException("Missing 'account_id' parameter");
    }
    if ((paramString1 != null) && (H.matcher(paramString1).matches()))
    {
      paramUri = String.valueOf(paramUri);
      ezi.e("Babel_db", String.valueOf(paramString1).length() + 75 + String.valueOf(paramUri).length() + "Queries must use parameter bindings, illegal selection detected: " + paramString1 + " for URI: " + paramUri, new Object[0]);
      throw new IllegalArgumentException("Queries must use parameter bindings");
    }
    String str2 = paramUri.getQueryParameter("limit");
    Object localObject2 = paramUri.getQueryParameters("suggestion_type");
    SQLiteQueryBuilder localSQLiteQueryBuilder = new SQLiteQueryBuilder();
    Object localObject1;
    switch (C.match(paramUri))
    {
    default: 
      paramUri = String.valueOf(paramUri);
      throw new IllegalArgumentException(String.valueOf(paramUri).length() + 12 + "Unknown URI " + paramUri);
    case 181: 
      localObject1 = paramUri.getPathSegments();
      if (((List)localObject1).size() <= 2)
      {
        localObject1 = "";
        if (!TextUtils.isEmpty((CharSequence)localObject1)) {
          break label733;
        }
        ezi.d("Babel_db", "prepareSuggestedPeopleSearchQuery: query is empty", new Object[0]);
        label438:
        localObject1 = paramArrayOfString2;
        if (!((List)localObject2).isEmpty())
        {
          localSQLiteQueryBuilder.appendWhere(" AND ");
          localObject1 = a(localSQLiteQueryBuilder, paramArrayOfString2, "suggestion_type", (List)localObject2);
        }
        paramArrayOfString2 = "UPPER(name)";
        label479:
        if (TextUtils.isEmpty(paramString2)) {
          break label1857;
        }
        paramArrayOfString2 = paramString2;
      }
      break;
    }
    label733:
    label1857:
    for (;;)
    {
      try
      {
        v.b("query");
        if (u)
        {
          localObject2 = String.valueOf(paramUri);
          i1 = C.match(paramUri);
          paramString2 = String.valueOf(localSQLiteQueryBuilder.buildQuery(paramArrayOfString1, paramString1, null, null, paramString2, str2));
          ezi.a("Babel_db", String.valueOf(localObject2).length() + 46 + String.valueOf(paramString2).length() + "[EsProvider] URI:" + (String)localObject2 + ", match: " + i1 + ", QUERY: " + paramString2, new Object[0]);
        }
        try
        {
          paramArrayOfString1 = bgw.a(getContext(), Integer.parseInt(str1)).a().a(localSQLiteQueryBuilder, paramArrayOfString1, paramString1, (String[])localObject1, paramArrayOfString2, str2);
          if (u)
          {
            i1 = paramArrayOfString1.getCount();
            ezi.a("Babel_db", 39 + "[EsProvider] QUERY results: " + i1, new Object[0]);
          }
          paramArrayOfString1.setNotificationUri(getContext().getContentResolver(), paramUri);
          return paramArrayOfString1;
        }
        catch (bgz paramUri)
        {
          String str4;
          String str3;
          int i3;
          int i2;
          return null;
        }
        localObject1 = ((String)((List)localObject1).get(2)).trim();
        break;
      }
      finally
      {
        int i1;
        v.c("query");
      }
      localSQLiteQueryBuilder.setTables("suggested_contacts");
      localSQLiteQueryBuilder.appendWhere("(");
      str4 = DatabaseUtils.sqlEscapeString(String.valueOf(localObject1).concat("%"));
      str3 = DatabaseUtils.sqlEscapeString(String.valueOf(localObject1).length() + 3 + "% " + (String)localObject1 + "%");
      localObject1 = String.valueOf("name LIKE ");
      str4 = String.valueOf(str4);
      if (str4.length() != 0)
      {
        localObject1 = ((String)localObject1).concat(str4);
        localSQLiteQueryBuilder.appendWhere((CharSequence)localObject1);
        localSQLiteQueryBuilder.appendWhere(" OR ");
        localObject1 = String.valueOf("name LIKE ");
        str3 = String.valueOf(str3);
        if (str3.length() == 0) {
          continue;
        }
        localObject1 = ((String)localObject1).concat(str3);
        localSQLiteQueryBuilder.appendWhere((CharSequence)localObject1);
        localSQLiteQueryBuilder.appendWhere(")");
        break label438;
      }
      localObject1 = new String((String)localObject1);
      continue;
      localObject1 = new String((String)localObject1);
      continue;
      localSQLiteQueryBuilder.setTables("suggested_contacts");
      localObject1 = paramArrayOfString2;
      if (!((List)localObject2).isEmpty()) {
        localObject1 = a(localSQLiteQueryBuilder, paramArrayOfString2, "suggestion_type", (List)localObject2);
      }
      paramArrayOfString2 = paramString2;
      break label479;
      localSQLiteQueryBuilder.setTables("conversations_view");
      localObject1 = paramArrayOfString2;
      paramArrayOfString2 = paramString2;
      break label479;
      localSQLiteQueryBuilder.setTables("conversations");
      localObject1 = paramArrayOfString2;
      paramArrayOfString2 = paramString2;
      break label479;
      localSQLiteQueryBuilder.setTables("invites_view");
      localObject1 = paramArrayOfString2;
      paramArrayOfString2 = paramString2;
      break label479;
      localSQLiteQueryBuilder.setTables("conversation_participants_view JOIN conversations ON (conversation_participants_view.conversation_id=conversations.conversation_id)");
      localSQLiteQueryBuilder.appendWhere("conversation_type");
      localSQLiteQueryBuilder.appendWhere("=1");
      localSQLiteQueryBuilder.appendWhere(" AND ");
      localSQLiteQueryBuilder.appendWhere("participant_type");
      i1 = czd.d.ordinal();
      localSQLiteQueryBuilder.appendWhere(12 + "=" + i1);
      localSQLiteQueryBuilder.appendWhere(" AND ");
      localSQLiteQueryBuilder.appendWhere("latest_message_timestamp");
      localSQLiteQueryBuilder.appendWhere("!= 0");
      localSQLiteQueryBuilder.setProjectionMap(F);
      localObject1 = paramArrayOfString2;
      paramArrayOfString2 = paramString2;
      break label479;
      localSQLiteQueryBuilder.setTables("conversation_participants_view");
      localSQLiteQueryBuilder.appendWhere("conversation_id");
      localSQLiteQueryBuilder.appendWhere(" in (");
      localObject1 = TextUtils.split((String)paramUri.getPathSegments().get(2), "\\+");
      i3 = localObject1.length;
      i2 = 1;
      i1 = 0;
      if (i1 < i3)
      {
        localObject2 = localObject1[i1];
        if (i2 != 0)
        {
          i2 = 0;
          localSQLiteQueryBuilder.appendWhere("'");
          localSQLiteQueryBuilder.appendWhere((CharSequence)localObject2);
          localSQLiteQueryBuilder.appendWhere("'");
          i1 += 1;
        }
        else
        {
          localSQLiteQueryBuilder.appendWhere(",");
        }
      }
      else
      {
        localSQLiteQueryBuilder.appendWhere(")");
        localObject1 = paramArrayOfString2;
        paramArrayOfString2 = paramString2;
        break label479;
        localSQLiteQueryBuilder.setTables("blocked_people");
        localSQLiteQueryBuilder.setProjectionMap(D);
        localObject1 = paramArrayOfString2;
        paramArrayOfString2 = paramString2;
        break label479;
        localSQLiteQueryBuilder.setTables("dismissed_contacts");
        localSQLiteQueryBuilder.setProjectionMap(E);
        localObject1 = paramArrayOfString2;
        paramArrayOfString2 = paramString2;
        break label479;
        localSQLiteQueryBuilder.setTables("message_notifications_view");
        localObject1 = paramArrayOfString2;
        paramArrayOfString2 = paramString2;
        break label479;
        localSQLiteQueryBuilder.setTables("messages_view");
        localSQLiteQueryBuilder.appendWhere("status");
        i1 = emc.f.ordinal();
        localSQLiteQueryBuilder.appendWhere(20 + " != " + i1 + " AND ");
        localSQLiteQueryBuilder.appendWhere("conversation_id");
        localSQLiteQueryBuilder.appendWhere("=?");
        localObject1 = a(paramArrayOfString2, new String[] { (String)paramUri.getPathSegments().get(2) });
        paramArrayOfString2 = paramString2;
        break label479;
        localSQLiteQueryBuilder.setTables("event_suggestions");
        localSQLiteQueryBuilder.appendWhere("conversation_id");
        localSQLiteQueryBuilder.appendWhere("=? AND (");
        localSQLiteQueryBuilder.appendWhere("expiration_time_usec");
        localSQLiteQueryBuilder.appendWhere("<= 0 OR ");
        localSQLiteQueryBuilder.appendWhere("expiration_time_usec");
        localSQLiteQueryBuilder.appendWhere("> (julianday('now') - 2440587.5) * 86400000000)");
        localObject1 = a(paramArrayOfString2, new String[] { (String)paramUri.getPathSegments().get(2) });
        paramArrayOfString2 = "";
        break label479;
        localSQLiteQueryBuilder.setTables("messages_view");
        localObject1 = String.valueOf("status != ");
        i1 = emc.f.ordinal();
        localObject2 = String.valueOf("conversation_id");
        localSQLiteQueryBuilder.appendWhere(String.valueOf(localObject1).length() + 228 + String.valueOf(localObject2).length() + (String)localObject1 + i1 + " AND " + (String)localObject2 + " IN (SELECT conversation_id FROM conversations WHERE conversation_id=? OR conversation_id IN" + " (SELECT conversation_id FROM merge_keys WHERE merge_key IN (SELECT merge_key FROM merge_keys WHERE conversation_id=?)))");
        localObject1 = (String)paramUri.getPathSegments().get(2);
        localObject1 = a(paramArrayOfString2, new String[] { localObject1, localObject1 });
        paramArrayOfString2 = paramString2;
        break label479;
        localSQLiteQueryBuilder.setTables("conversation_images_view");
        localSQLiteQueryBuilder.appendWhere("conversation_id IN (SELECT conversation_id FROM merge_keys WHERE merge_key=(SELECT merge_key FROM merge_keys WHERE conversation_id=?))");
        if (!eye.a(getContext()))
        {
          localSQLiteQueryBuilder.appendWhere(" AND ");
          localSQLiteQueryBuilder.appendWhere("realContentType");
          localSQLiteQueryBuilder.appendWhere(" != 'image/gif'");
        }
        localObject1 = a(paramArrayOfString2, new String[] { (String)paramUri.getPathSegments().get(2) });
        paramArrayOfString2 = "date ASC";
        break label479;
        localSQLiteQueryBuilder.setTables("recent_calls");
        localSQLiteQueryBuilder.setProjectionMap(G);
        localObject1 = paramArrayOfString2;
        paramArrayOfString2 = paramString2;
        break label479;
        localSQLiteQueryBuilder.setTables("presence");
        localObject1 = paramArrayOfString2;
        paramArrayOfString2 = paramString2;
        break label479;
        return null;
      }
    }
  }
  
  public int update(Uri paramUri, ContentValues paramContentValues, String paramString, String[] paramArrayOfString)
  {
    paramUri = String.valueOf(paramUri);
    throw new IllegalArgumentException(String.valueOf(paramUri).length() + 22 + "Update not supported: " + paramUri);
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.content.EsProvider
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */