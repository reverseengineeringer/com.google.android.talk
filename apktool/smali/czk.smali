.class public final Lczk;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;

.field public static final e:Ljava/lang/String;

.field private static f:Lczj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lczi;

    .line 14
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lczk;->a:Ljava/lang/String;

    .line 15
    const-class v0, Lcjq;

    .line 16
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lczk;->b:Ljava/lang/String;

    .line 17
    const-class v0, Lcze;

    .line 18
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lczk;->c:Ljava/lang/String;

    .line 19
    const-class v0, Ldxj;

    .line 20
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lczk;->d:Ljava/lang/String;

    .line 21
    const-class v0, Lbwl;

    .line 22
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lczk;->e:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public static a(Landroid/content/Context;Lilh;)V
    .locals 2

    .prologue
    .line 27
    sget-object v0, Lczk;->f:Lczj;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lczj;

    invoke-direct {v0}, Lczj;-><init>()V

    sput-object v0, Lczk;->f:Lczj;

    .line 30
    :cond_0
    const-class v0, Lczi;

    .line 1035
    new-instance v1, Lczi;

    invoke-direct {v1, p0}, Lczi;-><init>(Landroid/content/Context;)V

    .line 30
    invoke-virtual {p1, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 32
    return-void
.end method

.method public static a(Lilh;)V
    .locals 2

    .prologue
    .line 59
    sget-object v0, Lczk;->f:Lczj;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lczj;

    invoke-direct {v0}, Lczj;-><init>()V

    sput-object v0, Lczk;->f:Lczj;

    .line 62
    :cond_0
    const-class v0, Lbwl;

    sget-object v1, Lczk;->f:Lczj;

    .line 63
    invoke-virtual {v1}, Lczj;->a()[Lbwl;

    move-result-object v1

    .line 62
    invoke-virtual {p0, v0, v1}, Lilh;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lilh;

    .line 64
    return-void
.end method

.method public static b(Landroid/content/Context;Lilh;)V
    .locals 4

    .prologue
    .line 35
    sget-object v0, Lczk;->f:Lczj;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lczj;

    invoke-direct {v0}, Lczj;-><init>()V

    sput-object v0, Lczk;->f:Lczj;

    .line 38
    :cond_0
    const-class v0, Lcjq;

    .line 1051
    const/4 v1, 0x1

    new-array v1, v1, [Lcjq;

    const/4 v2, 0x0

    new-instance v3, Lczl;

    invoke-direct {v3, p0}, Lczl;-><init>(Landroid/content/Context;)V

    aput-object v3, v1, v2

    .line 38
    invoke-virtual {p1, v0, v1}, Lilh;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lilh;

    .line 40
    return-void
.end method

.method public static c(Landroid/content/Context;Lilh;)V
    .locals 2

    .prologue
    .line 43
    sget-object v0, Lczk;->f:Lczj;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lczj;

    invoke-direct {v0}, Lczj;-><init>()V

    sput-object v0, Lczk;->f:Lczj;

    .line 46
    :cond_0
    const-class v1, Lcze;

    .line 2040
    const-class v0, Lczi;

    invoke-static {p0, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcze;

    .line 46
    invoke-virtual {p1, v1, v0}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 48
    return-void
.end method

.method public static d(Landroid/content/Context;Lilh;)V
    .locals 2

    .prologue
    .line 51
    sget-object v0, Lczk;->f:Lczj;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lczj;

    invoke-direct {v0}, Lczj;-><init>()V

    sput-object v0, Lczk;->f:Lczj;

    .line 54
    :cond_0
    const-class v0, Ldxj;

    sget-object v1, Lczk;->f:Lczj;

    .line 55
    invoke-virtual {v1, p0}, Lczj;->a(Landroid/content/Context;)[Ldxj;

    move-result-object v1

    .line 54
    invoke-virtual {p1, v0, v1}, Lilh;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lilh;

    .line 56
    return-void
.end method
