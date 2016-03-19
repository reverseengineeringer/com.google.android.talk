.class public final Lezm;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lif;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lif",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Z

.field private static final c:Lezo;

.field private static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static e:I

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/Integer;

.field private static final i:Lgw;

.field private static final j:Lhox;

.field private static final k:Lhof;

.field private static final l:Ljava/util/regex/Pattern;

.field private static final m:Ljava/util/regex/Pattern;

.field private static final n:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 67
    sget-object v0, Lezi;->t:Limx;

    const/4 v0, 0x0

    sput-boolean v0, Lezm;->b:Z

    .line 69
    new-instance v0, Lezo;

    invoke-direct {v0}, Lezo;-><init>()V

    sput-object v0, Lezm;->c:Lezo;

    .line 81
    const/4 v0, -0x1

    sput v0, Lezm;->e:I

    .line 96
    invoke-static {}, Lgw;->a()Lgw;

    move-result-object v0

    sput-object v0, Lezm;->i:Lgw;

    .line 17069
    sget-object v0, Lhox;->a:Lhox;

    .line 97
    sput-object v0, Lezm;->j:Lhox;

    .line 98
    invoke-static {}, Lhof;->b()Lhof;

    move-result-object v0

    sput-object v0, Lezm;->k:Lhof;

    .line 99
    const-string v0, "^[\\p{L}\\p{M}].*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lezm;->l:Ljava/util/regex/Pattern;

    .line 102
    const-string v0, "^\\+?[0-9. ()-]{4,30}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lezm;->m:Ljava/util/regex/Pattern;

    .line 111
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lezm;->n:Ljava/util/Set;

    .line 121
    new-instance v0, Lif;

    invoke-direct {v0}, Lif;-><init>()V

    .line 122
    sput-object v0, Lezm;->a:Lif;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "*67"

    invoke-virtual {v0, v1, v2}, Lif;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lezm;->a:Lif;

    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "141"

    invoke-virtual {v0, v1, v2}, Lif;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lezm;->a:Lif;

    const-string v1, "HK"

    const-string v2, "133"

    invoke-virtual {v0, v1, v2}, Lif;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lezm;->a:Lif;

    const-string v1, "DK"

    const-string v2, "#31#"

    invoke-virtual {v0, v1, v2}, Lif;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lezm;->a:Lif;

    const-string v1, "IT"

    const-string v2, "#31#"

    invoke-virtual {v0, v1, v2}, Lif;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lezm;->a:Lif;

    const-string v1, "SE"

    const-string v2, "#31#"

    invoke-virtual {v0, v1, v2}, Lif;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 139
    const/16 v1, 0x34

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const/16 v1, 0x36

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "9"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lezm;->d:Ljava/util/Map;

    .line 142
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Z)Lezk;
    .locals 3

    .prologue
    .line 1019
    if-nez p0, :cond_0

    .line 1020
    new-instance v0, Lhnz;

    sget-object v1, Lhoa;->b:Lhoa;

    const-string v2, "Number may not be null"

    invoke-direct {v0, v1, v2}, Lhnz;-><init>(Lhoa;Ljava/lang/String;)V

    throw v0

    .line 1023
    :cond_0
    sget-object v0, Lezm;->c:Lezo;

    invoke-virtual {v0, p0}, Lezo;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lezk;

    .line 1024
    if-eqz v0, :cond_1

    .line 1025
    invoke-virtual {v0, p1}, Lezk;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1026
    invoke-virtual {v0}, Lezk;->a()Z

    move-result v1

    if-eq v1, p2, :cond_2

    .line 1027
    :cond_1
    new-instance v0, Lezk;

    invoke-direct {v0, p0, p1, p2}, Lezk;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1028
    sget-object v1, Lezm;->c:Lezo;

    invoke-virtual {v1, p0, v0}, Lezo;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1031
    :cond_2
    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 4012
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p0, v1, v2}, Lezm;->a(Ljava/lang/String;Ljava/lang/String;Z)Lezk;

    move-result-object v1

    .line 362
    invoke-virtual {v1}, Lezk;->f()Ljava/lang/String;
    :try_end_0
    .catch Lhnz; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 367
    :cond_0
    :goto_0
    return-object v0

    .line 364
    :catch_0
    move-exception v1

    sget-boolean v1, Lezm;->b:Z

    if-eqz v1, :cond_0

    .line 365
    const-string v1, "getCountry: Not able to parse e164 number "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 895
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 896
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Laal;->rX:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 899
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lezm;->i:Lgw;

    .line 900
    invoke-static {p0, p1}, Lezm;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lhh;->a:Lhg;

    .line 899
    invoke-virtual {v0, v1, v2}, Lgw;->a(Ljava/lang/String;Lhg;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 438
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 439
    sget-object v0, Lezm;->a:Lif;

    invoke-virtual {v0, p1}, Lif;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 440
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 441
    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 444
    :cond_0
    return-object p0
.end method

.method public static a()V
    .locals 3

    .prologue
    .line 2034
    :try_start_0
    sget-object v0, Lezl;->a:Lhof;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lhof;->a(Ljava/lang/String;Ljava/lang/String;)Lhos;
    :try_end_0
    .catch Lhnz; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :goto_0
    sget-object v0, Lhbu;->a:Lhbu;

    sget-object v1, Lezm;->c:Lezo;

    invoke-virtual {v0, v1}, Lhbu;->a(Lhbv;)V

    .line 147
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1

    .prologue
    .line 165
    sput-object p0, Lezm;->g:Ljava/lang/String;

    .line 166
    sput-object p1, Lezm;->h:Ljava/lang/Integer;

    .line 2172
    const/4 v0, 0x0

    sput-object v0, Lezm;->f:Ljava/lang/String;

    .line 2173
    const/4 v0, -0x1

    sput v0, Lezm;->e:I

    .line 168
    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1129
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1131
    if-eqz v0, :cond_6

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x12

    if-lt v1, v4, :cond_6

    .line 16137
    const-class v1, Ldcj;

    invoke-static {p0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldcj;

    .line 16138
    const-string v4, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {v1, v4}, Ldcj;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 16142
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v0

    .line 16143
    if-eqz v0, :cond_5

    .line 16144
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellInfo;

    .line 16145
    invoke-virtual {v0}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 16146
    const/4 v1, 0x0

    .line 16147
    instance-of v5, v0, Landroid/telephony/CellInfoLte;

    if-eqz v5, :cond_1

    .line 16148
    check-cast v0, Landroid/telephony/CellInfoLte;

    invoke-virtual {v0}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object v0

    .line 16156
    :goto_0
    if-eqz v0, :cond_0

    .line 16158
    invoke-virtual {v0}, Landroid/telephony/CellSignalStrength;->getLevel()I

    move-result v0

    if-lez v0, :cond_4

    move v0, v2

    .line 1132
    :goto_1
    if-eqz v0, :cond_6

    move v0, v2

    :goto_2
    return v0

    .line 16149
    :cond_1
    instance-of v5, v0, Landroid/telephony/CellInfoGsm;

    if-eqz v5, :cond_2

    .line 16150
    check-cast v0, Landroid/telephony/CellInfoGsm;

    invoke-virtual {v0}, Landroid/telephony/CellInfoGsm;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v0

    goto :goto_0

    .line 16151
    :cond_2
    instance-of v5, v0, Landroid/telephony/CellInfoCdma;

    if-eqz v5, :cond_3

    .line 16152
    check-cast v0, Landroid/telephony/CellInfoCdma;

    invoke-virtual {v0}, Landroid/telephony/CellInfoCdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthCdma;

    move-result-object v0

    goto :goto_0

    .line 16153
    :cond_3
    instance-of v5, v0, Landroid/telephony/CellInfoWcdma;

    if-eqz v5, :cond_7

    .line 16154
    check-cast v0, Landroid/telephony/CellInfoWcdma;

    invoke-virtual {v0}, Landroid/telephony/CellInfoWcdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object v0

    goto :goto_0

    :cond_4
    move v0, v3

    .line 16158
    goto :goto_1

    :cond_5
    move v0, v3

    .line 16163
    goto :goto_1

    :cond_6
    move v0, v3

    .line 1132
    goto :goto_2

    :cond_7
    move-object v0, v1

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5

    .prologue
    .line 905
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_1

    .line 937
    :cond_0
    :goto_0
    return-object p0

    .line 10504
    :cond_1
    invoke-static {}, Lezm;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lezm;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 910
    if-eqz v1, :cond_0

    .line 916
    :try_start_0
    invoke-static {}, Lezm;->i()Ljava/lang/String;

    move-result-object v0

    .line 11012
    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lezm;->a(Ljava/lang/String;Ljava/lang/String;Z)Lezk;

    move-result-object v2

    .line 918
    sget-object v0, Lezn;->a:[I

    add-int/lit8 v3, p1, -0x1

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 931
    sget v0, Lhop;->b:I

    .line 935
    :goto_1
    invoke-virtual {v2, v0}, Lezk;->a(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 921
    :pswitch_0
    invoke-virtual {v2}, Lezk;->c()Lhos;

    move-result-object v0

    invoke-virtual {v0}, Lhos;->a()I

    move-result v3

    .line 11266
    sget v0, Lezm;->e:I

    if-lez v0, :cond_2

    .line 11267
    sget v0, Lezm;->e:I

    .line 922
    :goto_2
    if-ne v3, v0, :cond_5

    .line 923
    sget v0, Lhop;->c:I

    goto :goto_1

    .line 11269
    :cond_2
    invoke-static {}, Lezm;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11270
    sget-object v0, Lezm;->k:Lhof;

    .line 11271
    invoke-static {}, Lezm;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lhof;->e(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 11272
    if-eqz v0, :cond_3

    .line 12043
    const/4 v4, 0x0

    invoke-static {v0, v4}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 11274
    sput v0, Lezm;->e:I

    goto :goto_2

    .line 937
    :catch_0
    move-exception v0

    move-object p0, v1

    goto :goto_0

    .line 11277
    :cond_3
    sget-object v0, Lezm;->h:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 11278
    sget-object v0, Lezm;->h:Ljava/lang/Integer;

    .line 13043
    const/4 v4, 0x0

    invoke-static {v0, v4}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v0

    goto :goto_2

    .line 11283
    :cond_4
    const/4 v0, 0x1

    goto :goto_2

    .line 923
    :cond_5
    sget v0, Lhop;->b:I

    goto :goto_1

    .line 927
    :pswitch_1
    sget v0, Lhop;->c:I
    :try_end_0
    .catch Lhnz; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 918
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 520
    :try_start_0
    invoke-static {p0, p1}, Lezm;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5012
    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lezm;->a(Ljava/lang/String;Ljava/lang/String;Z)Lezk;

    move-result-object v1

    .line 521
    invoke-virtual {v1}, Lezk;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 522
    sget v2, Lhop;->a:I

    invoke-virtual {v1, v2}, Lezk;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 538
    :cond_0
    :goto_0
    return-object v0

    .line 523
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 527
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lezm;->j:Lhox;

    .line 528
    invoke-virtual {v1}, Lezk;->c()Lhos;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lhox;->a(Lhos;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Lhop;->a:I

    .line 529
    invoke-virtual {v1, v2}, Lezk;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lezm;->r(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 530
    sget v2, Lhop;->a:I

    invoke-virtual {v1, v2}, Lezk;->a(I)Ljava/lang/String;
    :try_end_0
    .catch Lhnz; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 535
    :catch_0
    move-exception v1

    sget-boolean v1, Lezm;->b:Z

    if-eqz v1, :cond_0

    .line 536
    const-string v1, "toValidGvE164Number: Not able to parse phone number "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 181
    invoke-static {}, Lezm;->k()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1170
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1172
    if-eqz v0, :cond_1

    .line 1173
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1174
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1176
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 1174
    goto :goto_0

    :cond_1
    move v0, v1

    .line 1176
    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 379
    invoke-static {p0}, Lezm;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 382
    if-eqz v0, :cond_0

    const-string v1, "US"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 188
    invoke-static {}, Lezm;->k()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    .line 189
    sget-boolean v2, Lezm;->b:Z

    if-eqz v2, :cond_0

    .line 190
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x32

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "telephonyManager.getSimState() returns:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 192
    :cond_0
    if-eq v1, v0, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 424
    if-nez p0, :cond_0

    .line 425
    const/4 v0, 0x0

    .line 428
    :goto_0
    return v0

    .line 427
    :cond_0
    invoke-static {}, Lezm;->i()Ljava/lang/String;

    move-result-object v0

    .line 428
    invoke-static {p0, v0}, Lezm;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 605
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 641
    :goto_0
    return v0

    .line 612
    :cond_0
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    .line 618
    goto :goto_0

    .line 6012
    :cond_1
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, p1, v0}, Lezm;->a(Ljava/lang/String;Ljava/lang/String;Z)Lezk;

    move-result-object v0

    .line 631
    invoke-virtual {v0}, Lezk;->c()Lhos;

    move-result-object v3

    invoke-virtual {v3}, Lhos;->b()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    .line 632
    invoke-virtual {v0}, Lezk;->f()Ljava/lang/String;
    :try_end_0
    .catch Lhnz; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 639
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    move-object p1, v0

    .line 640
    :cond_2
    sget-object v0, Lezm;->j:Lhox;

    invoke-virtual {v0, v3, p1}, Lhox;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lezm;->j:Lhox;

    .line 641
    invoke-virtual {v0, v3, p1}, Lhox;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v2

    goto :goto_0

    .line 634
    :catch_0
    move-exception v0

    sget-boolean v0, Lezm;->b:Z

    if-eqz v0, :cond_3

    .line 635
    const-string v0, "isPotentialEmergencyNumber: Not able to parse phone number "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    :cond_3
    :goto_1
    move v0, v1

    .line 637
    goto :goto_0

    .line 635
    :cond_4
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move v0, v1

    .line 641
    goto :goto_0
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 452
    invoke-static {}, Lezm;->i()Ljava/lang/String;

    move-result-object v0

    .line 4460
    invoke-static {p0, v0}, Lezm;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4467
    :goto_0
    return-object p0

    .line 4464
    :cond_0
    if-eqz p0, :cond_2

    if-eqz v0, :cond_2

    .line 4465
    sget-object v1, Lezm;->a:Lif;

    invoke-virtual {v1, v0}, Lif;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4466
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 4467
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 4471
    :cond_2
    const/4 p0, 0x0

    .line 452
    goto :goto_0
.end method

.method public static d()Z
    .locals 2

    .prologue
    .line 202
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 203
    invoke-static {}, Lezm;->k()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v0

    .line 205
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lezm;->b()Z

    move-result v0

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 788
    invoke-static {}, Lezm;->i()Ljava/lang/String;

    move-result-object v2

    .line 8012
    const/4 v3, 0x0

    :try_start_0
    invoke-static {p0, v2, v3}, Lezm;->a(Ljava/lang/String;Ljava/lang/String;Z)Lezk;

    move-result-object v3

    .line 9012
    const/4 v4, 0x0

    invoke-static {p1, v2, v4}, Lezm;->a(Ljava/lang/String;Ljava/lang/String;Z)Lezk;

    move-result-object v4

    .line 792
    invoke-virtual {v3, v4}, Lezk;->a(Lezk;)Lhoo;

    move-result-object v4

    .line 798
    sget-object v5, Lezm;->j:Lhox;

    .line 799
    invoke-virtual {v3}, Lezk;->c()Lhos;

    move-result-object v3

    invoke-virtual {v5, v3, v2}, Lhox;->a(Lhos;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 9822
    const-string v3, "US"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 9825
    const-string v2, "+1"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 9827
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_2

    move v2, v1

    .line 800
    :goto_0
    if-eqz v2, :cond_5

    .line 801
    :cond_0
    sget-object v2, Lhoo;->e:Lhoo;

    if-ne v4, v2, :cond_1

    move v0, v1

    .line 806
    :cond_1
    :goto_1
    return v0

    :cond_2
    move v2, v0

    .line 9827
    goto :goto_0

    .line 9829
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    move v2, v1

    goto :goto_0

    :cond_4
    move v2, v0

    goto :goto_0

    .line 803
    :cond_5
    sget-object v2, Lhoo;->e:Lhoo;

    if-eq v4, v2, :cond_6

    sget-object v2, Lhoo;->d:Lhoo;

    if-eq v4, v2, :cond_6

    sget-object v2, Lhoo;->c:Lhoo;
    :try_end_0
    .catch Lhnz; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v4, v2, :cond_1

    :cond_6
    move v0, v1

    goto :goto_1

    .line 806
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public static e()Z
    .locals 1

    .prologue
    .line 223
    invoke-static {}, Lezm;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lezm;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 481
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    const/4 v0, 0x0

    .line 484
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lezm;->m:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    goto :goto_0
.end method

.method private static e(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 406
    if-nez p0, :cond_0

    move v0, v1

    .line 415
    :goto_0
    return v0

    .line 410
    :cond_0
    sget-object v0, Lezm;->a:Lif;

    invoke-virtual {v0, p1}, Lif;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 411
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 412
    goto :goto_0

    .line 415
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static f()Ljava/lang/String;
    .locals 2

    .prologue
    .line 230
    invoke-static {}, Lezm;->g()Ljava/lang/String;

    move-result-object v0

    .line 232
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 233
    const/4 v0, 0x0

    .line 237
    :goto_0
    return-object v0

    .line 236
    :cond_0
    invoke-static {}, Lezm;->j()Ljava/lang/String;

    move-result-object v1

    .line 237
    invoke-static {v0, v1}, Lezm;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 493
    if-nez p0, :cond_0

    .line 494
    const/4 v0, 0x0

    .line 496
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "+"

    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "[^0-9]"

    const-string v2, ""

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 712
    if-nez p0, :cond_1

    move-object v0, v1

    .line 744
    :cond_0
    :goto_0
    return-object v0

    .line 716
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 6753
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v5, :cond_3

    .line 6754
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x2a

    if-ne v0, v3, :cond_3

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    .line 6755
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6756
    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 718
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 724
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 725
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    :goto_2
    move-object v0, v1

    .line 744
    goto :goto_0

    .line 6760
    :cond_3
    const-string v0, ""

    goto :goto_1

    .line 7012
    :cond_4
    const/4 v4, 0x0

    :try_start_0
    invoke-static {v3, p1, v4}, Lezm;->a(Ljava/lang/String;Ljava/lang/String;Z)Lezk;

    move-result-object v3

    .line 731
    invoke-virtual {v3}, Lezk;->d()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 732
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget v0, Lhop;->a:I

    invoke-virtual {v3, v0}, Lezk;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lhnz; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 738
    :catch_0
    move-exception v0

    sget-boolean v0, Lezm;->b:Z

    if-eqz v0, :cond_2

    .line 739
    const-string v0, "Unable to parse phone number "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    .line 733
    :cond_6
    :try_start_1
    sget-object v4, Lezm;->j:Lhox;

    .line 734
    invoke-virtual {v3}, Lezk;->c()Lhos;

    move-result-object v5

    .line 733
    invoke-virtual {v4, v5, p1}, Lhox;->a(Lhos;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 735
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget v0, Lhop;->c:I

    invoke-virtual {v3, v0}, Lezk;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lhnz; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 739
    :cond_8
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    invoke-static {}, Lezm;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    invoke-static {}, Lezm;->k()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 244
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static g(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 504
    invoke-static {}, Lezm;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lezm;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x2

    .line 16012
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1, v1}, Lezm;->a(Ljava/lang/String;Ljava/lang/String;Z)Lezk;

    move-result-object v1

    .line 1061
    invoke-virtual {v1}, Lezk;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1062
    sget v2, Lhop;->a:I

    invoke-virtual {v1, v2}, Lezk;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 1081
    :cond_0
    :goto_0
    return-object v0

    .line 1067
    :cond_1
    invoke-virtual {v1}, Lezk;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 1070
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    .line 1071
    if-lt v3, v4, :cond_0

    const/16 v4, 0x12

    if-gt v3, v4, :cond_0

    .line 1075
    invoke-virtual {v1, p1}, Lezk;->b(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 1076
    const-string v3, "+%s%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v2, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Lhnz; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1078
    :catch_0
    move-exception v1

    sget-boolean v1, Lezm;->b:Z

    if-eqz v1, :cond_0

    .line 1079
    const-string v1, "Not able to parse phone number "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static h(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 546
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 547
    const-string v0, ""

    .line 559
    :goto_0
    return-object v0

    .line 550
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 551
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 552
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 554
    const/16 v3, 0xa

    invoke-static {v2, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    .line 555
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 556
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 551
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 559
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static h()Z
    .locals 2

    .prologue
    .line 3036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 249
    const-class v1, Ldcj;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldcj;

    .line 250
    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-interface {v0, v1}, Ldcj;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.permission.READ_SMS"

    .line 251
    invoke-interface {v0, v1}, Ldcj;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static i()Ljava/lang/String;
    .locals 2

    .prologue
    .line 307
    sget-object v0, Lezm;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 308
    sget-object v0, Lezm;->f:Ljava/lang/String;

    .line 330
    :goto_0
    return-object v0

    .line 311
    :cond_0
    invoke-static {}, Lezm;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 312
    invoke-static {}, Lezm;->j()Ljava/lang/String;

    move-result-object v0

    .line 313
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 315
    sput-object v0, Lezm;->f:Ljava/lang/String;

    goto :goto_0

    .line 319
    :cond_1
    sget-object v0, Lezm;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 320
    sget-object v0, Lezm;->g:Ljava/lang/String;

    goto :goto_0

    .line 323
    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 324
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 330
    :cond_3
    const-string v0, "US"

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 578
    sget-object v0, Lezm;->n:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 579
    return-void
.end method

.method public static j()Ljava/lang/String;
    .locals 2

    .prologue
    .line 341
    invoke-static {}, Lezm;->k()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 342
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 343
    const/4 v0, 0x0

    .line 346
    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static j(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 592
    invoke-static {}, Lezm;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lezm;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static k()Landroid/telephony/TelephonyManager;
    .locals 2

    .prologue
    .line 16036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 1087
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method public static k(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 653
    invoke-static {p0}, Lezm;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static l(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 665
    invoke-static {}, Lezm;->i()Ljava/lang/String;

    move-result-object v1

    .line 667
    invoke-static {p0, v1}, Lezm;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 668
    if-eqz v0, :cond_1

    move-object p0, v0

    .line 677
    :cond_0
    :goto_0
    return-object p0

    .line 672
    :cond_1
    invoke-static {p0, v1}, Lezm;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 673
    if-eqz v0, :cond_0

    move-object p0, v0

    .line 674
    goto :goto_0
.end method

.method public static m(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 685
    invoke-static {}, Lezm;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lezm;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static n(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 767
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 768
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    move v0, v1

    .line 769
    :goto_0
    if-ge v0, v3, :cond_1

    .line 770
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 771
    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 772
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 769
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 776
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x6

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static o(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 947
    invoke-static {p0}, Lezm;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\s"

    const-string v2, "\\\u00a0"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static p(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 963
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 964
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Laal;->rX:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 983
    :cond_0
    :goto_0
    return-object p0

    .line 967
    :cond_1
    if-eqz p0, :cond_2

    sget-object v0, Lezm;->l:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_0

    .line 14653
    :cond_2
    :try_start_0
    invoke-static {p0}, Lezm;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 14396
    const/4 v1, 0x0

    invoke-static {p0}, Lezm;->c(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lezm;->a(Ljava/lang/String;Ljava/lang/String;Z)Lezk;

    move-result-object v1

    .line 975
    invoke-static {p0}, Lezm;->r(Ljava/lang/String;)Z

    move-result v0

    .line 976
    invoke-virtual {v1}, Lezk;->d()Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz v0, :cond_0

    .line 15042
    :cond_3
    invoke-virtual {v1}, Lezk;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 15043
    sget v0, Lhop;->c:I

    .line 15042
    :goto_1
    invoke-virtual {v1, v0}, Lezk;->a(I)Ljava/lang/String;

    move-result-object v0

    sget v2, Lezp;->a:I

    .line 15041
    invoke-static {v0, v2}, Lezm;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 15046
    invoke-virtual {v1}, Lezk;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 15047
    const-string v1, " "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v0}, Lezm;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_4
    move-object p0, v0

    .line 977
    goto :goto_0

    .line 15044
    :cond_5
    sget v0, Lhop;->a:I

    goto :goto_1

    .line 15047
    :cond_6
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lhnz; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 982
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lhnz;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x23

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Failed to parse \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' into PhoneInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 983
    sget v0, Lezp;->a:I

    invoke-static {p0, v0}, Lezm;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0
.end method

.method public static q(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 992
    const/4 v0, 0x0

    .line 994
    if-eqz p0, :cond_0

    .line 995
    invoke-static {p0}, Lezm;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 996
    if-eqz v1, :cond_0

    .line 997
    new-instance v0, Ljava/util/Locale;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 998
    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v0

    .line 1001
    :cond_0
    return-object v0
.end method

.method private static r(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 569
    sget-object v0, Lezm;->n:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 570
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 571
    const/4 v0, 0x1

    .line 574
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
