.class public final Ldcb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;

.field public static final e:Ljava/lang/String;

.field public static final f:Ljava/lang/String;

.field private static g:Ldbv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lccu;

    .line 15
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldcb;->a:Ljava/lang/String;

    .line 16
    const-class v0, Lczm;

    .line 17
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldcb;->b:Ljava/lang/String;

    .line 18
    const-class v0, Lczn;

    .line 19
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldcb;->c:Ljava/lang/String;

    .line 20
    const-class v0, Lcve;

    .line 21
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldcb;->d:Ljava/lang/String;

    .line 22
    const-class v0, Lczp;

    .line 23
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldcb;->e:Ljava/lang/String;

    .line 24
    const-class v0, Lczo;

    .line 25
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldcb;->f:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public static a(Lilh;)V
    .locals 2

    .prologue
    .line 30
    sget-object v0, Ldcb;->g:Ldbv;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Ldbv;

    invoke-direct {v0}, Ldbv;-><init>()V

    sput-object v0, Ldcb;->g:Ldbv;

    .line 33
    :cond_0
    const-class v0, Lccu;

    sget-object v1, Ldcb;->g:Ldbv;

    .line 34
    invoke-virtual {v1}, Ldbv;->e()Lccu;

    move-result-object v1

    .line 33
    invoke-virtual {p0, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 35
    return-void
.end method

.method public static b(Lilh;)V
    .locals 2

    .prologue
    .line 38
    sget-object v0, Ldcb;->g:Ldbv;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Ldbv;

    invoke-direct {v0}, Ldbv;-><init>()V

    sput-object v0, Ldcb;->g:Ldbv;

    .line 41
    :cond_0
    const-class v0, Lczm;

    sget-object v1, Ldcb;->g:Ldbv;

    .line 42
    invoke-virtual {v1}, Ldbv;->c()Lczm;

    move-result-object v1

    .line 41
    invoke-virtual {p0, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 43
    return-void
.end method

.method public static c(Lilh;)V
    .locals 2

    .prologue
    .line 46
    sget-object v0, Ldcb;->g:Ldbv;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Ldbv;

    invoke-direct {v0}, Ldbv;-><init>()V

    sput-object v0, Ldcb;->g:Ldbv;

    .line 49
    :cond_0
    const-class v0, Lczn;

    sget-object v1, Ldcb;->g:Ldbv;

    .line 50
    invoke-virtual {v1}, Ldbv;->d()Lczn;

    move-result-object v1

    .line 49
    invoke-virtual {p0, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 51
    return-void
.end method

.method public static d(Lilh;)V
    .locals 4

    .prologue
    .line 54
    sget-object v0, Ldcb;->g:Ldbv;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Ldbv;

    invoke-direct {v0}, Ldbv;-><init>()V

    sput-object v0, Ldcb;->g:Ldbv;

    .line 57
    :cond_0
    const-class v0, Lcve;

    .line 1053
    const/4 v1, 0x1

    new-array v1, v1, [Ldaa;

    const/4 v2, 0x0

    new-instance v3, Ldaa;

    invoke-direct {v3}, Ldaa;-><init>()V

    aput-object v3, v1, v2

    .line 57
    invoke-virtual {p0, v0, v1}, Lilh;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lilh;

    .line 59
    return-void
.end method

.method public static e(Lilh;)V
    .locals 2

    .prologue
    .line 62
    sget-object v0, Ldcb;->g:Ldbv;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Ldbv;

    invoke-direct {v0}, Ldbv;-><init>()V

    sput-object v0, Ldcb;->g:Ldbv;

    .line 65
    :cond_0
    const-class v0, Lczp;

    sget-object v1, Ldcb;->g:Ldbv;

    .line 66
    invoke-virtual {v1}, Ldbv;->a()Lczp;

    move-result-object v1

    .line 65
    invoke-virtual {p0, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 67
    return-void
.end method

.method public static f(Lilh;)V
    .locals 2

    .prologue
    .line 70
    sget-object v0, Ldcb;->g:Ldbv;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Ldbv;

    invoke-direct {v0}, Ldbv;-><init>()V

    sput-object v0, Ldcb;->g:Ldbv;

    .line 73
    :cond_0
    const-class v0, Lczo;

    sget-object v1, Ldcb;->g:Ldbv;

    .line 74
    invoke-virtual {v1}, Ldbv;->b()Lczo;

    move-result-object v1

    .line 73
    invoke-virtual {p0, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 75
    return-void
.end method
