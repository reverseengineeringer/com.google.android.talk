.class public final Ldip;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field private static d:Ldin;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldip;->a:Ljava/lang/String;

    .line 14
    const-class v0, Ligo;

    .line 15
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldip;->b:Ljava/lang/String;

    .line 16
    const-class v0, Lhtf;

    .line 17
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldip;->c:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public static a(Landroid/content/Context;Lilh;)V
    .locals 4

    .prologue
    .line 22
    sget-object v0, Ldip;->d:Ldin;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Ldin;

    invoke-direct {v0}, Ldin;-><init>()V

    sput-object v0, Ldip;->d:Ldin;

    .line 25
    :cond_0
    const-class v0, Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 1046
    const/4 v1, 0x5

    new-array v1, v1, [Landroid/app/Application$ActivityLifecycleCallbacks;

    const/4 v2, 0x0

    new-instance v3, Ldux;

    invoke-direct {v3, p0}, Ldux;-><init>(Landroid/content/Context;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 2025
    sget-object v3, Leci;->a:Leci;

    if-nez v3, :cond_1

    .line 2026
    new-instance v3, Leci;

    invoke-direct {v3}, Leci;-><init>()V

    sput-object v3, Leci;->a:Leci;

    .line 2028
    :cond_1
    sget-object v3, Leci;->a:Leci;

    .line 1048
    aput-object v3, v1, v2

    const/4 v2, 0x2

    .line 3028
    sget-object v3, Ldys;->a:Ldys;

    if-nez v3, :cond_2

    .line 3029
    new-instance v3, Ldys;

    invoke-direct {v3}, Ldys;-><init>()V

    sput-object v3, Ldys;->a:Ldys;

    .line 3031
    :cond_2
    sget-object v3, Ldys;->a:Ldys;

    .line 1049
    aput-object v3, v1, v2

    const/4 v2, 0x3

    .line 4028
    sget-object v3, Ldvs;->a:Ldvs;

    if-nez v3, :cond_3

    .line 4029
    new-instance v3, Ldvs;

    invoke-direct {v3, p0}, Ldvs;-><init>(Landroid/content/Context;)V

    sput-object v3, Ldvs;->a:Ldvs;

    .line 4031
    :cond_3
    sget-object v3, Ldvs;->a:Ldvs;

    .line 1050
    aput-object v3, v1, v2

    const/4 v2, 0x4

    new-instance v3, Lehs;

    invoke-direct {v3, p0}, Lehs;-><init>(Landroid/content/Context;)V

    aput-object v3, v1, v2

    .line 25
    invoke-virtual {p1, v0, v1}, Lilh;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lilh;

    .line 27
    return-void
.end method

.method public static a(Lilh;)V
    .locals 2

    .prologue
    .line 30
    sget-object v0, Ldip;->d:Ldin;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Ldin;

    invoke-direct {v0}, Ldin;-><init>()V

    sput-object v0, Ldip;->d:Ldin;

    .line 33
    :cond_0
    const-class v0, Ligo;

    .line 5027
    new-instance v1, Ldlr;

    invoke-direct {v1}, Ldlr;-><init>()V

    .line 33
    invoke-virtual {p0, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 35
    return-void
.end method

.method public static b(Lilh;)V
    .locals 2

    .prologue
    .line 38
    sget-object v0, Ldip;->d:Ldin;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Ldin;

    invoke-direct {v0}, Ldin;-><init>()V

    sput-object v0, Ldip;->d:Ldin;

    .line 41
    :cond_0
    const-class v0, Lhtf;

    sget-object v1, Ldip;->d:Ldin;

    .line 42
    invoke-virtual {v1}, Ldin;->a()Lhtf;

    move-result-object v1

    .line 41
    invoke-virtual {p0, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 43
    return-void
.end method
