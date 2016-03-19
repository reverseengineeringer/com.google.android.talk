.class public final Layb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;

.field public static final e:Ljava/lang/String;

.field public static final f:Ljava/lang/String;

.field public static final g:Ljava/lang/String;

.field private static h:Laya;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 15
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Layb;->a:Ljava/lang/String;

    .line 16
    const-class v0, Laxx;

    .line 17
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Layb;->b:Ljava/lang/String;

    .line 18
    const-class v0, Layc;

    .line 19
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Layb;->c:Ljava/lang/String;

    .line 20
    const-class v0, Laxy;

    .line 21
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Layb;->d:Ljava/lang/String;

    .line 22
    const-class v0, Laxw;

    .line 23
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Layb;->e:Ljava/lang/String;

    .line 24
    const-class v0, Layd;

    .line 25
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Layb;->f:Ljava/lang/String;

    .line 26
    const-class v0, Laxz;

    .line 27
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Layb;->g:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public static a(Landroid/content/Context;Lilh;)V
    .locals 4

    .prologue
    .line 32
    sget-object v0, Layb;->h:Laya;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Laya;

    invoke-direct {v0}, Laya;-><init>()V

    sput-object v0, Layb;->h:Laya;

    .line 35
    :cond_0
    const-class v1, Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 1031
    const/4 v0, 0x1

    new-array v2, v0, [Landroid/app/Application$ActivityLifecycleCallbacks;

    const/4 v3, 0x0

    const-class v0, Layc;

    .line 1032
    invoke-static {p0, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application$ActivityLifecycleCallbacks;

    aput-object v0, v2, v3

    .line 35
    invoke-virtual {p1, v1, v2}, Lilh;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lilh;

    .line 37
    return-void
.end method

.method public static a(Lilh;)V
    .locals 2

    .prologue
    .line 48
    sget-object v0, Layb;->h:Laya;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Laya;

    invoke-direct {v0}, Laya;-><init>()V

    sput-object v0, Layb;->h:Laya;

    .line 51
    :cond_0
    const-class v0, Layc;

    .line 2021
    new-instance v1, Layc;

    invoke-direct {v1}, Layc;-><init>()V

    .line 51
    invoke-virtual {p0, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 53
    return-void
.end method

.method public static b(Landroid/content/Context;Lilh;)V
    .locals 2

    .prologue
    .line 40
    sget-object v0, Layb;->h:Laya;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Laya;

    invoke-direct {v0}, Laya;-><init>()V

    sput-object v0, Layb;->h:Laya;

    .line 43
    :cond_0
    const-class v1, Laxx;

    .line 1043
    const-class v0, Layd;

    invoke-static {p0, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxx;

    .line 43
    invoke-virtual {p1, v1, v0}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 45
    return-void
.end method

.method public static b(Lilh;)V
    .locals 2

    .prologue
    .line 72
    sget-object v0, Layb;->h:Laya;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Laya;

    invoke-direct {v0}, Laya;-><init>()V

    sput-object v0, Layb;->h:Laya;

    .line 75
    :cond_0
    const-class v0, Layd;

    .line 3038
    new-instance v1, Layd;

    invoke-direct {v1}, Layd;-><init>()V

    .line 75
    invoke-virtual {p0, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 77
    return-void
.end method

.method public static c(Landroid/content/Context;Lilh;)V
    .locals 3

    .prologue
    .line 56
    sget-object v0, Layb;->h:Laya;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Laya;

    invoke-direct {v0}, Laya;-><init>()V

    sput-object v0, Layb;->h:Laya;

    .line 59
    :cond_0
    const-class v1, Laxy;

    .line 2048
    new-instance v2, Layf;

    const-class v0, Layd;

    .line 2049
    invoke-static {p0, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Layd;

    invoke-direct {v2, v0}, Layf;-><init>(Layd;)V

    .line 59
    invoke-virtual {p1, v1, v2}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 61
    return-void
.end method

.method public static d(Landroid/content/Context;Lilh;)V
    .locals 2

    .prologue
    .line 64
    sget-object v0, Layb;->h:Laya;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Laya;

    invoke-direct {v0}, Laya;-><init>()V

    sput-object v0, Layb;->h:Laya;

    .line 67
    :cond_0
    const-class v1, Laxw;

    .line 3026
    const-class v0, Layc;

    invoke-static {p0, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxw;

    .line 67
    invoke-virtual {p1, v1, v0}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 69
    return-void
.end method

.method public static e(Landroid/content/Context;Lilh;)V
    .locals 2

    .prologue
    .line 80
    sget-object v0, Layb;->h:Laya;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Laya;

    invoke-direct {v0}, Laya;-><init>()V

    sput-object v0, Layb;->h:Laya;

    .line 83
    :cond_0
    const-class v0, Laxz;

    .line 3054
    new-instance v1, Layg;

    invoke-direct {v1, p0}, Layg;-><init>(Landroid/content/Context;)V

    .line 83
    invoke-virtual {p1, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 85
    return-void
.end method
