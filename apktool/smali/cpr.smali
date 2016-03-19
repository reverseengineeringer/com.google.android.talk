.class public final Lcpr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;

.field private static e:Lcpq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Ldxj;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcpr;->a:Ljava/lang/String;

    .line 14
    const-class v0, Lbwl;

    .line 15
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcpr;->b:Ljava/lang/String;

    .line 16
    const-class v0, Lcpl;

    .line 17
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcpr;->c:Ljava/lang/String;

    .line 18
    const-class v0, Lcps;

    .line 19
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcpr;->d:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public static a(Landroid/content/Context;Lilh;)V
    .locals 2

    .prologue
    .line 24
    sget-object v0, Lcpr;->e:Lcpq;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcpq;

    invoke-direct {v0}, Lcpq;-><init>()V

    sput-object v0, Lcpr;->e:Lcpq;

    .line 27
    :cond_0
    const-class v0, Ldxj;

    sget-object v1, Lcpr;->e:Lcpq;

    .line 28
    invoke-virtual {v1, p0}, Lcpq;->a(Landroid/content/Context;)[Ldxj;

    move-result-object v1

    .line 27
    invoke-virtual {p1, v0, v1}, Lilh;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lilh;

    .line 29
    return-void
.end method

.method public static a(Lilh;)V
    .locals 2

    .prologue
    .line 32
    sget-object v0, Lcpr;->e:Lcpq;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcpq;

    invoke-direct {v0}, Lcpq;-><init>()V

    sput-object v0, Lcpr;->e:Lcpq;

    .line 35
    :cond_0
    const-class v0, Lbwl;

    sget-object v1, Lcpr;->e:Lcpq;

    .line 36
    invoke-virtual {v1}, Lcpq;->a()[Lbwl;

    move-result-object v1

    .line 35
    invoke-virtual {p0, v0, v1}, Lilh;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lilh;

    .line 37
    return-void
.end method

.method public static b(Landroid/content/Context;Lilh;)V
    .locals 2

    .prologue
    .line 40
    sget-object v0, Lcpr;->e:Lcpq;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcpq;

    invoke-direct {v0}, Lcpq;-><init>()V

    sput-object v0, Lcpr;->e:Lcpq;

    .line 43
    :cond_0
    const-class v1, Lcpl;

    .line 1035
    const-class v0, Lcps;

    invoke-static {p0, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcpl;

    .line 43
    invoke-virtual {p1, v1, v0}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 45
    return-void
.end method

.method public static c(Landroid/content/Context;Lilh;)V
    .locals 2

    .prologue
    .line 48
    sget-object v0, Lcpr;->e:Lcpq;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcpq;

    invoke-direct {v0}, Lcpq;-><init>()V

    sput-object v0, Lcpr;->e:Lcpq;

    .line 51
    :cond_0
    const-class v0, Lcps;

    .line 1040
    new-instance v1, Lcps;

    invoke-direct {v1, p0}, Lcps;-><init>(Landroid/content/Context;)V

    .line 51
    invoke-virtual {p1, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 53
    return-void
.end method
