.class public final Lhnh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field private static c:Lhng;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lhmn;

    .line 12
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lhnh;->a:Ljava/lang/String;

    .line 13
    const-class v0, Lhnj;

    .line 14
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lhnh;->b:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public static a(Landroid/content/Context;Lilh;)V
    .locals 7

    .prologue
    .line 19
    sget-object v0, Lhnh;->c:Lhng;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lhng;

    invoke-direct {v0}, Lhng;-><init>()V

    sput-object v0, Lhnh;->c:Lhng;

    .line 22
    :cond_0
    const-class v5, Lhmn;

    .line 1046
    const-class v0, Lhmt;

    .line 1047
    invoke-static {p0, v0}, Lilh;->b(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhmt;

    .line 1048
    const-class v1, Lhmy;

    .line 1049
    invoke-static {p0, v1}, Lilh;->b(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhmy;

    .line 1050
    const-class v2, Lhmq;

    .line 1051
    invoke-static {p0, v2}, Lilh;->b(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhmq;

    .line 1052
    const-class v3, Lhmv;

    .line 1053
    invoke-static {p0, v3}, Lilh;->b(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhmv;

    .line 1054
    const-class v4, Lhmx;

    .line 1055
    invoke-static {p0, v4}, Lilh;->b(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lhmx;

    .line 1057
    invoke-static {}, Lhmo;->newBuilder()Lhmp;

    move-result-object v6

    .line 1058
    if-eqz v0, :cond_1

    .line 1059
    invoke-virtual {v6, v0}, Lhmp;->a(Lhmt;)Lhmp;

    .line 1061
    :cond_1
    if-eqz v1, :cond_2

    .line 1062
    invoke-virtual {v6, v1}, Lhmp;->a(Lhmy;)Lhmp;

    .line 1064
    :cond_2
    if-eqz v2, :cond_3

    .line 1065
    invoke-virtual {v6, v2}, Lhmp;->a(Lhmq;)Lhmp;

    .line 1067
    :cond_3
    if-eqz v3, :cond_4

    .line 1068
    invoke-virtual {v6, v3}, Lhmp;->a(Lhmv;)Lhmp;

    .line 1070
    :cond_4
    if-eqz v4, :cond_5

    .line 1071
    invoke-virtual {v6, v4}, Lhmp;->a(Lhmx;)Lhmp;

    .line 1075
    :cond_5
    invoke-static {}, Lhnq;->newBuilder()Lhnr;

    move-result-object v0

    const-class v1, Lhnn;

    .line 1076
    invoke-static {p0, v1}, Lilh;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhnr;->b(Ljava/lang/Iterable;)Lhnr;

    move-result-object v0

    const-class v1, Lhnj;

    .line 1077
    invoke-static {p0, v1}, Lilh;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhnr;->a(Ljava/lang/Iterable;)Lhnr;

    move-result-object v0

    .line 1078
    invoke-virtual {v0}, Lhnr;->a()Lhnq;

    move-result-object v1

    .line 1080
    sget-boolean v0, Lhng;->a:Z

    if-eqz v0, :cond_6

    .line 1082
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-virtual {v6}, Lhmp;->a()Lhmo;

    move-result-object v2

    .line 1081
    invoke-static {v1, v0, v2}, Lhmn;->a(Lhnn;Landroid/app/Application;Lhmo;)Lhmn;

    move-result-object v0

    .line 22
    :goto_0
    invoke-virtual {p1, v5, v0}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 24
    return-void

    .line 1084
    :cond_6
    invoke-virtual {v1}, Lhnq;->a()Lhnj;

    move-result-object v1

    .line 1085
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-virtual {v6}, Lhmp;->a()Lhmo;

    move-result-object v2

    .line 1084
    invoke-static {v1, v0, v2}, Lhmn;->a(Lhnj;Landroid/app/Application;Lhmo;)Lhmn;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Lilh;)V
    .locals 6

    .prologue
    .line 27
    sget-object v0, Lhnh;->c:Lhng;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lhng;

    invoke-direct {v0}, Lhng;-><init>()V

    sput-object v0, Lhnh;->c:Lhng;

    .line 30
    :cond_0
    const-class v1, Lhnj;

    .line 2038
    const-string v0, "com.google.android.libraries.performance.primes.modules.clearcutlogsource"

    invoke-static {p0, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2039
    invoke-static {v2}, Laen;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2040
    const/4 v0, 0x1

    new-array v3, v0, [Lhnj;

    const/4 v4, 0x0

    new-instance v5, Lhnt;

    const-class v0, Lgyi;

    .line 2041
    invoke-static {p0, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgyi;

    invoke-direct {v5, v0, v2}, Lhnt;-><init>(Lgyi;Ljava/lang/String;)V

    aput-object v5, v3, v4

    .line 30
    invoke-virtual {p1, v1, v3}, Lilh;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lilh;

    .line 32
    return-void
.end method
