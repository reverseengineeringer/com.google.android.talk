.class public final Lbag;
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

.field public static final h:Ljava/lang/String;

.field public static final i:Ljava/lang/String;

.field public static final j:Ljava/lang/String;

.field private static k:Lbaf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lazj;

    .line 20
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbag;->a:Ljava/lang/String;

    .line 21
    const-class v0, Lazl;

    .line 22
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbag;->b:Ljava/lang/String;

    .line 23
    const-class v0, Ldje;

    .line 24
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbag;->c:Ljava/lang/String;

    .line 25
    const-class v0, Lazn;

    .line 26
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbag;->d:Ljava/lang/String;

    .line 27
    const-class v0, Lazk;

    .line 28
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbag;->e:Ljava/lang/String;

    .line 29
    const-class v0, Ldxj;

    .line 30
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbag;->f:Ljava/lang/String;

    .line 31
    const-class v0, Lbwl;

    .line 32
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbag;->g:Ljava/lang/String;

    .line 33
    const-class v0, Ldwa;

    .line 34
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbag;->h:Ljava/lang/String;

    .line 35
    const-class v0, Lazm;

    .line 36
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbag;->i:Ljava/lang/String;

    .line 37
    const-class v0, Lhvv;

    .line 38
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbag;->j:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public static a(Landroid/content/Context;Lilh;)V
    .locals 2

    .prologue
    .line 43
    sget-object v0, Lbag;->k:Lbaf;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lbaf;

    invoke-direct {v0}, Lbaf;-><init>()V

    sput-object v0, Lbag;->k:Lbaf;

    .line 46
    :cond_0
    const-class v0, Lazj;

    sget-object v1, Lbag;->k:Lbaf;

    .line 47
    invoke-virtual {v1, p0}, Lbaf;->h(Landroid/content/Context;)Lazj;

    move-result-object v1

    .line 46
    invoke-virtual {p1, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 48
    return-void
.end method

.method public static a(Lilh;)V
    .locals 2

    .prologue
    .line 91
    sget-object v0, Lbag;->k:Lbaf;

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Lbaf;

    invoke-direct {v0}, Lbaf;-><init>()V

    sput-object v0, Lbag;->k:Lbaf;

    .line 94
    :cond_0
    const-class v0, Lbwl;

    sget-object v1, Lbag;->k:Lbaf;

    .line 95
    invoke-virtual {v1}, Lbaf;->a()[Lbwl;

    move-result-object v1

    .line 94
    invoke-virtual {p0, v0, v1}, Lilh;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lilh;

    .line 96
    return-void
.end method

.method public static b(Landroid/content/Context;Lilh;)V
    .locals 2

    .prologue
    .line 51
    sget-object v0, Lbag;->k:Lbaf;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lbaf;

    invoke-direct {v0}, Lbaf;-><init>()V

    sput-object v0, Lbag;->k:Lbaf;

    .line 54
    :cond_0
    const-class v0, Lazl;

    sget-object v1, Lbag;->k:Lbaf;

    .line 55
    invoke-virtual {v1, p0}, Lbaf;->g(Landroid/content/Context;)Lazl;

    move-result-object v1

    .line 54
    invoke-virtual {p1, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 56
    return-void
.end method

.method public static c(Landroid/content/Context;Lilh;)V
    .locals 2

    .prologue
    .line 59
    sget-object v0, Lbag;->k:Lbaf;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lbaf;

    invoke-direct {v0}, Lbaf;-><init>()V

    sput-object v0, Lbag;->k:Lbaf;

    .line 62
    :cond_0
    const-class v0, Ldje;

    sget-object v1, Lbag;->k:Lbaf;

    .line 63
    invoke-virtual {v1, p0}, Lbaf;->e(Landroid/content/Context;)Ldje;

    move-result-object v1

    .line 62
    invoke-virtual {p1, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 64
    return-void
.end method

.method public static d(Landroid/content/Context;Lilh;)V
    .locals 2

    .prologue
    .line 67
    sget-object v0, Lbag;->k:Lbaf;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lbaf;

    invoke-direct {v0}, Lbaf;-><init>()V

    sput-object v0, Lbag;->k:Lbaf;

    .line 70
    :cond_0
    const-class v0, Lazn;

    sget-object v1, Lbag;->k:Lbaf;

    .line 71
    invoke-virtual {v1, p0}, Lbaf;->d(Landroid/content/Context;)Lazn;

    move-result-object v1

    .line 70
    invoke-virtual {p1, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 72
    return-void
.end method

.method public static e(Landroid/content/Context;Lilh;)V
    .locals 2

    .prologue
    .line 75
    sget-object v0, Lbag;->k:Lbaf;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lbaf;

    invoke-direct {v0}, Lbaf;-><init>()V

    sput-object v0, Lbag;->k:Lbaf;

    .line 78
    :cond_0
    const-class v0, Lazk;

    sget-object v1, Lbag;->k:Lbaf;

    .line 79
    invoke-virtual {v1, p0}, Lbaf;->f(Landroid/content/Context;)Lazk;

    move-result-object v1

    .line 78
    invoke-virtual {p1, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 80
    return-void
.end method

.method public static f(Landroid/content/Context;Lilh;)V
    .locals 2

    .prologue
    .line 83
    sget-object v0, Lbag;->k:Lbaf;

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Lbaf;

    invoke-direct {v0}, Lbaf;-><init>()V

    sput-object v0, Lbag;->k:Lbaf;

    .line 86
    :cond_0
    const-class v0, Ldxj;

    sget-object v1, Lbag;->k:Lbaf;

    .line 87
    invoke-virtual {v1, p0}, Lbaf;->i(Landroid/content/Context;)[Ldxj;

    move-result-object v1

    .line 86
    invoke-virtual {p1, v0, v1}, Lilh;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lilh;

    .line 88
    return-void
.end method

.method public static g(Landroid/content/Context;Lilh;)V
    .locals 2

    .prologue
    .line 99
    sget-object v0, Lbag;->k:Lbaf;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Lbaf;

    invoke-direct {v0}, Lbaf;-><init>()V

    sput-object v0, Lbag;->k:Lbaf;

    .line 102
    :cond_0
    const-class v0, Ldwa;

    sget-object v1, Lbag;->k:Lbaf;

    .line 103
    invoke-virtual {v1, p0}, Lbaf;->c(Landroid/content/Context;)[Ldwa;

    move-result-object v1

    .line 102
    invoke-virtual {p1, v0, v1}, Lilh;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lilh;

    .line 104
    return-void
.end method

.method public static h(Landroid/content/Context;Lilh;)V
    .locals 2

    .prologue
    .line 107
    sget-object v0, Lbag;->k:Lbaf;

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Lbaf;

    invoke-direct {v0}, Lbaf;-><init>()V

    sput-object v0, Lbag;->k:Lbaf;

    .line 110
    :cond_0
    const-class v0, Lazm;

    sget-object v1, Lbag;->k:Lbaf;

    .line 111
    invoke-virtual {v1, p0}, Lbaf;->a(Landroid/content/Context;)Lazm;

    move-result-object v1

    .line 110
    invoke-virtual {p1, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 112
    return-void
.end method

.method public static i(Landroid/content/Context;Lilh;)V
    .locals 2

    .prologue
    .line 115
    sget-object v0, Lbag;->k:Lbaf;

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Lbaf;

    invoke-direct {v0}, Lbaf;-><init>()V

    sput-object v0, Lbag;->k:Lbaf;

    .line 118
    :cond_0
    const-class v0, Lhvv;

    sget-object v1, Lbag;->k:Lbaf;

    .line 119
    invoke-virtual {v1, p0}, Lbaf;->b(Landroid/content/Context;)[Lhvv;

    move-result-object v1

    .line 118
    invoke-virtual {p1, v0, v1}, Lilh;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lilh;

    .line 120
    return-void
.end method
