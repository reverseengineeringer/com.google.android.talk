.class public final Lbbp;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;

.field public static final e:Ljava/lang/String;

.field private static f:Lbbo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lbbu;

    .line 14
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbbp;->a:Ljava/lang/String;

    .line 15
    const-class v0, Liaw;

    .line 16
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbbp;->b:Ljava/lang/String;

    .line 17
    const-class v0, Ldxj;

    .line 18
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbbp;->c:Ljava/lang/String;

    .line 19
    const-class v0, Lbbq;

    .line 20
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbbp;->d:Ljava/lang/String;

    .line 21
    const-class v0, Lhqf;

    .line 22
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbbp;->e:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public static a(Landroid/content/Context;Lilh;)V
    .locals 2

    .prologue
    .line 27
    sget-object v0, Lbbp;->f:Lbbo;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lbbo;

    invoke-direct {v0}, Lbbo;-><init>()V

    sput-object v0, Lbbp;->f:Lbbo;

    .line 30
    :cond_0
    const-class v0, Lbbu;

    .line 1024
    new-instance v1, Lbbu;

    invoke-direct {v1, p0, p1}, Lbbu;-><init>(Landroid/content/Context;Lilh;)V

    .line 30
    invoke-virtual {p1, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 32
    return-void
.end method

.method public static a(Lilh;)V
    .locals 4

    .prologue
    .line 35
    sget-object v0, Lbbp;->f:Lbbo;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lbbo;

    invoke-direct {v0}, Lbbo;-><init>()V

    sput-object v0, Lbbp;->f:Lbbo;

    .line 38
    :cond_0
    const-class v1, Liaw;

    .line 1029
    const/4 v0, 0x1

    new-array v2, v0, [Liaw;

    const/4 v3, 0x0

    const-class v0, Lbbu;

    invoke-virtual {p0, v0}, Lilh;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liaw;

    aput-object v0, v2, v3

    .line 38
    invoke-virtual {p0, v1, v2}, Lilh;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lilh;

    .line 40
    return-void
.end method

.method public static b(Landroid/content/Context;Lilh;)V
    .locals 4

    .prologue
    .line 43
    sget-object v0, Lbbp;->f:Lbbo;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lbbo;

    invoke-direct {v0}, Lbbo;-><init>()V

    sput-object v0, Lbbp;->f:Lbbo;

    .line 46
    :cond_0
    const-class v1, Ldxj;

    .line 1039
    const/4 v0, 0x1

    new-array v2, v0, [Ldxj;

    const/4 v3, 0x0

    const-class v0, Lbbq;

    .line 1040
    invoke-static {p0, v0}, Lilh;->b(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldxj;

    aput-object v0, v2, v3

    .line 46
    invoke-virtual {p1, v1, v2}, Lilh;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lilh;

    .line 48
    return-void
.end method

.method public static c(Landroid/content/Context;Lilh;)V
    .locals 2

    .prologue
    .line 51
    sget-object v0, Lbbp;->f:Lbbo;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lbbo;

    invoke-direct {v0}, Lbbo;-><init>()V

    sput-object v0, Lbbp;->f:Lbbo;

    .line 54
    :cond_0
    const-class v0, Lbbq;

    .line 2019
    new-instance v1, Lbbq;

    invoke-direct {v1, p0}, Lbbq;-><init>(Landroid/content/Context;)V

    .line 54
    invoke-virtual {p1, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 56
    return-void
.end method

.method public static d(Landroid/content/Context;Lilh;)V
    .locals 4

    .prologue
    .line 59
    sget-object v0, Lbbp;->f:Lbbo;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lbbo;

    invoke-direct {v0}, Lbbo;-><init>()V

    sput-object v0, Lbbp;->f:Lbbo;

    .line 62
    :cond_0
    const-class v1, Lhqf;

    .line 2034
    const/4 v0, 0x1

    new-array v2, v0, [Lhqf;

    const/4 v3, 0x0

    const-class v0, Lbbq;

    invoke-static {p0, v0}, Lilh;->b(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhqf;

    aput-object v0, v2, v3

    .line 62
    invoke-virtual {p1, v1, v2}, Lilh;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lilh;

    .line 64
    return-void
.end method
