.class public final Libf;
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

.field private static h:Libe;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Liap;

    .line 15
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Libf;->a:Ljava/lang/String;

    .line 16
    const-class v0, Libd;

    .line 17
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Libf;->b:Ljava/lang/String;

    .line 18
    const-class v0, Lhpx;

    .line 19
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Libf;->c:Ljava/lang/String;

    .line 20
    const-class v0, Libw;

    .line 21
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Libf;->d:Ljava/lang/String;

    .line 22
    const-class v0, Lhzv;

    .line 23
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Libf;->e:Ljava/lang/String;

    .line 24
    const-class v0, Liaf;

    .line 25
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Libf;->f:Ljava/lang/String;

    .line 26
    const-class v0, Liao;

    .line 27
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Libf;->g:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public static a(Landroid/content/Context;Lilh;)V
    .locals 2

    .prologue
    .line 32
    sget-object v0, Libf;->h:Libe;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Libe;

    invoke-direct {v0}, Libe;-><init>()V

    sput-object v0, Libf;->h:Libe;

    .line 35
    :cond_0
    const-class v0, Liap;

    .line 1054
    invoke-static {p0}, Libe;->a(Landroid/content/Context;)Libg;

    move-result-object v1

    invoke-interface {v1}, Libg;->g()Liap;

    move-result-object v1

    .line 35
    invoke-virtual {p1, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 37
    return-void
.end method

.method public static b(Landroid/content/Context;Lilh;)V
    .locals 2

    .prologue
    .line 40
    sget-object v0, Libf;->h:Libe;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Libe;

    invoke-direct {v0}, Libe;-><init>()V

    sput-object v0, Libf;->h:Libe;

    .line 43
    :cond_0
    const-class v0, Libd;

    .line 1064
    invoke-static {p0}, Libe;->a(Landroid/content/Context;)Libg;

    move-result-object v1

    invoke-interface {v1}, Libg;->i()Libd;

    move-result-object v1

    .line 43
    invoke-virtual {p1, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 45
    return-void
.end method

.method public static c(Landroid/content/Context;Lilh;)V
    .locals 2

    .prologue
    .line 48
    sget-object v0, Libf;->h:Libe;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Libe;

    invoke-direct {v0}, Libe;-><init>()V

    sput-object v0, Libf;->h:Libe;

    .line 51
    :cond_0
    const-class v0, Lhpx;

    .line 1069
    invoke-static {p0}, Libe;->a(Landroid/content/Context;)Libg;

    move-result-object v1

    invoke-interface {v1}, Libg;->j()[Lhpx;

    move-result-object v1

    .line 51
    invoke-virtual {p1, v0, v1}, Lilh;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lilh;

    .line 53
    return-void
.end method

.method public static d(Landroid/content/Context;Lilh;)V
    .locals 2

    .prologue
    .line 56
    sget-object v0, Libf;->h:Libe;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Libe;

    invoke-direct {v0}, Libe;-><init>()V

    sput-object v0, Libf;->h:Libe;

    .line 59
    :cond_0
    const-class v0, Libw;

    .line 2044
    invoke-static {p0}, Libe;->a(Landroid/content/Context;)Libg;

    move-result-object v1

    invoke-interface {v1}, Libg;->e()Libw;

    move-result-object v1

    .line 59
    invoke-virtual {p1, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 61
    return-void
.end method

.method public static e(Landroid/content/Context;Lilh;)V
    .locals 2

    .prologue
    .line 64
    sget-object v0, Libf;->h:Libe;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Libe;

    invoke-direct {v0}, Libe;-><init>()V

    sput-object v0, Libf;->h:Libe;

    .line 67
    :cond_0
    const-class v0, Lhzv;

    .line 2059
    invoke-static {p0}, Libe;->a(Landroid/content/Context;)Libg;

    move-result-object v1

    invoke-interface {v1}, Libg;->h()Lhzv;

    move-result-object v1

    .line 67
    invoke-virtual {p1, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 69
    return-void
.end method

.method public static f(Landroid/content/Context;Lilh;)V
    .locals 2

    .prologue
    .line 72
    sget-object v0, Libf;->h:Libe;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Libe;

    invoke-direct {v0}, Libe;-><init>()V

    sput-object v0, Libf;->h:Libe;

    .line 75
    :cond_0
    const-class v0, Liaf;

    .line 3049
    invoke-static {p0}, Libe;->a(Landroid/content/Context;)Libg;

    move-result-object v1

    invoke-interface {v1}, Libg;->f()Liaf;

    move-result-object v1

    .line 75
    invoke-virtual {p1, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 77
    return-void
.end method

.method public static g(Landroid/content/Context;Lilh;)V
    .locals 2

    .prologue
    .line 80
    sget-object v0, Libf;->h:Libe;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Libe;

    invoke-direct {v0}, Libe;-><init>()V

    sput-object v0, Libf;->h:Libe;

    .line 83
    :cond_0
    const-class v0, Liao;

    .line 3074
    invoke-static {p0}, Libe;->a(Landroid/content/Context;)Libg;

    move-result-object v1

    invoke-interface {v1}, Libg;->k()Liao;

    move-result-object v1

    .line 83
    invoke-virtual {p1, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 85
    return-void
.end method
