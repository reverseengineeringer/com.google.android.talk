.class public Laee;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:La;

.field public static final b:Ljava/util/regex/Pattern;

.field private static c:Ljava/lang/String;

.field private static d:Landroid/telephony/TelephonyManager;

.field private static final e:[C

.field private static f:Ljava/util/HashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 34
    const/16 v0, 0xb

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Laee;->e:[C

    .line 38
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Laee;->e:[C

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Laee;->f:Ljava/util/HashSet;

    .line 41
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Laee;->e:[C

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 42
    sget-object v1, Laee;->f:Ljava/util/HashSet;

    sget-object v2, Laee;->e:[C

    aget-char v2, v2, v0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 41
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 166
    :cond_0
    const-string v0, "\\s*(\"[^\"]*\"|[^<>\"]+)\\s*<([^<>]+)>\\s*"

    .line 167
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Laee;->b:Ljava/util/regex/Pattern;

    .line 166
    return-void

    .line 34
    :array_0
    .array-data 2
        0x2ds
        0x2es
        0x2cs
        0x28s
        0x29s
        0x20s
        0x2fs
        0x5cs
        0x2as
        0x23s
        0x2bs
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Laee;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 63
    invoke-static {p0}, Laee;->b(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Laee;->c:Ljava/lang/String;

    .line 65
    :cond_0
    sget-object v0, Laee;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 170
    sget-object v0, Laee;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 172
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 175
    :cond_0
    return-object p0
.end method

.method private static b(Landroid/content/Context;)Landroid/telephony/TelephonyManager;
    .locals 2

    .prologue
    .line 52
    const-class v1, Laee;

    monitor-enter v1

    .line 53
    :try_start_0
    sget-object v0, Laee;->d:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 54
    const-string v0, "phone"

    .line 55
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sput-object v0, Laee;->d:Landroid/telephony/TelephonyManager;

    .line 57
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    sget-object v0, Laee;->d:Landroid/telephony/TelephonyManager;

    return-object v0

    .line 57
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 185
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    const/4 v0, 0x0

    .line 191
    :goto_0
    return v0

    .line 189
    :cond_0
    invoke-static {p0}, Laee;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 190
    sget-object v1, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 191
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    goto :goto_0
.end method
