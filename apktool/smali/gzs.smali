.class public final Lgzs;
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

.field private static h:Lgzr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lgzd;

    .line 17
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgzs;->a:Ljava/lang/String;

    .line 18
    const-class v0, Lgzj;

    .line 19
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgzs;->b:Ljava/lang/String;

    .line 20
    const-class v0, Lgzf;

    .line 21
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgzs;->c:Ljava/lang/String;

    .line 22
    const-class v0, Lgzg;

    .line 23
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgzs;->d:Ljava/lang/String;

    .line 24
    const-class v0, Lgzi;

    .line 25
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgzs;->e:Ljava/lang/String;

    .line 26
    const-class v0, Lgze;

    .line 27
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgzs;->f:Ljava/lang/String;

    .line 28
    const-class v0, Lgzh;

    .line 29
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgzs;->g:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public static a(Landroid/content/Context;Lilh;)V
    .locals 3

    .prologue
    .line 34
    sget-object v0, Lgzs;->h:Lgzr;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lgzr;

    invoke-direct {v0}, Lgzr;-><init>()V

    sput-object v0, Lgzs;->h:Lgzr;

    .line 37
    :cond_0
    const-class v0, Lgzd;

    .line 1033
    new-instance v1, Lgzk;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lgzk;-><init>(B)V

    .line 37
    invoke-virtual {p1, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 39
    return-void
.end method

.method public static a(Lilh;)V
    .locals 3

    .prologue
    .line 42
    sget-object v0, Lgzs;->h:Lgzr;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lgzr;

    invoke-direct {v0}, Lgzr;-><init>()V

    sput-object v0, Lgzs;->h:Lgzr;

    .line 45
    :cond_0
    const-class v0, Lgzj;

    .line 1048
    new-instance v1, Lgzq;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lgzq;-><init>(B)V

    .line 45
    invoke-virtual {p0, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 47
    return-void
.end method

.method public static b(Landroid/content/Context;Lilh;)V
    .locals 3

    .prologue
    .line 58
    sget-object v0, Lgzs;->h:Lgzr;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lgzr;

    invoke-direct {v0}, Lgzr;-><init>()V

    sput-object v0, Lgzs;->h:Lgzr;

    .line 61
    :cond_0
    const-class v0, Lgzg;

    .line 3023
    new-instance v1, Lgzn;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lgzn;-><init>(Landroid/content/Context;B)V

    .line 61
    invoke-virtual {p1, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 63
    return-void
.end method

.method public static b(Lilh;)V
    .locals 3

    .prologue
    .line 50
    sget-object v0, Lgzs;->h:Lgzr;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lgzr;

    invoke-direct {v0}, Lgzr;-><init>()V

    sput-object v0, Lgzs;->h:Lgzr;

    .line 53
    :cond_0
    const-class v0, Lgzf;

    .line 2038
    new-instance v1, Lgzm;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lgzm;-><init>(B)V

    .line 53
    invoke-virtual {p0, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 55
    return-void
.end method

.method public static c(Landroid/content/Context;Lilh;)V
    .locals 2

    .prologue
    .line 74
    sget-object v0, Lgzs;->h:Lgzr;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lgzr;

    invoke-direct {v0}, Lgzr;-><init>()V

    sput-object v0, Lgzs;->h:Lgzr;

    .line 77
    :cond_0
    const-class v0, Lgze;

    .line 4028
    new-instance v1, Lgzl;

    invoke-direct {v1, p0}, Lgzl;-><init>(Landroid/content/Context;)V

    .line 77
    invoke-virtual {p1, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 79
    return-void
.end method

.method public static c(Lilh;)V
    .locals 3

    .prologue
    .line 66
    sget-object v0, Lgzs;->h:Lgzr;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lgzr;

    invoke-direct {v0}, Lgzr;-><init>()V

    sput-object v0, Lgzs;->h:Lgzr;

    .line 69
    :cond_0
    const-class v0, Lgzi;

    .line 3043
    new-instance v1, Lgzp;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lgzp;-><init>(B)V

    .line 69
    invoke-virtual {p0, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 71
    return-void
.end method

.method public static d(Landroid/content/Context;Lilh;)V
    .locals 2

    .prologue
    .line 82
    sget-object v0, Lgzs;->h:Lgzr;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Lgzr;

    invoke-direct {v0}, Lgzr;-><init>()V

    sput-object v0, Lgzs;->h:Lgzr;

    .line 85
    :cond_0
    const-class v0, Lgzh;

    .line 4053
    new-instance v1, Lgzo;

    invoke-direct {v1, p0}, Lgzo;-><init>(Landroid/content/Context;)V

    .line 85
    invoke-virtual {p1, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 87
    return-void
.end method
