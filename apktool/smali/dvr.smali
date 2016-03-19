.class public final Ldvr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;

.field private static e:Ldvq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lbeh;

    .line 12
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldvr;->a:Ljava/lang/String;

    .line 13
    const-class v0, Lcnz;

    .line 14
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldvr;->b:Ljava/lang/String;

    .line 15
    const-class v0, Ldxj;

    .line 16
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldvr;->c:Ljava/lang/String;

    .line 17
    const-class v0, Ldvp;

    .line 18
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldvr;->d:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public static a(Landroid/content/Context;Lilh;)V
    .locals 4

    .prologue
    .line 23
    sget-object v0, Ldvr;->e:Ldvq;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Ldvq;

    invoke-direct {v0}, Ldvq;-><init>()V

    sput-object v0, Ldvr;->e:Ldvq;

    .line 26
    :cond_0
    const-class v1, Lbeh;

    .line 1028
    const/4 v0, 0x1

    new-array v2, v0, [Lbeh;

    const/4 v3, 0x0

    const-class v0, Ldvp;

    invoke-static {p0, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbeh;

    aput-object v0, v2, v3

    .line 26
    invoke-virtual {p1, v1, v2}, Lilh;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lilh;

    .line 28
    return-void
.end method

.method public static b(Landroid/content/Context;Lilh;)V
    .locals 4

    .prologue
    .line 31
    sget-object v0, Ldvr;->e:Ldvq;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Ldvq;

    invoke-direct {v0}, Ldvq;-><init>()V

    sput-object v0, Ldvr;->e:Ldvq;

    .line 34
    :cond_0
    const-class v1, Lcnz;

    .line 2023
    const/4 v0, 0x1

    new-array v2, v0, [Lcnz;

    const/4 v3, 0x0

    const-class v0, Ldvp;

    invoke-static {p0, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcnz;

    aput-object v0, v2, v3

    .line 34
    invoke-virtual {p1, v1, v2}, Lilh;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lilh;

    .line 36
    return-void
.end method

.method public static c(Landroid/content/Context;Lilh;)V
    .locals 4

    .prologue
    .line 39
    sget-object v0, Ldvr;->e:Ldvq;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Ldvq;

    invoke-direct {v0}, Ldvq;-><init>()V

    sput-object v0, Ldvr;->e:Ldvq;

    .line 42
    :cond_0
    const-class v1, Ldxj;

    .line 2033
    const/4 v0, 0x1

    new-array v2, v0, [Ldxj;

    const/4 v3, 0x0

    const-class v0, Ldvp;

    invoke-static {p0, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldxj;

    aput-object v0, v2, v3

    .line 42
    invoke-virtual {p1, v1, v2}, Lilh;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lilh;

    .line 44
    return-void
.end method

.method public static d(Landroid/content/Context;Lilh;)V
    .locals 2

    .prologue
    .line 47
    sget-object v0, Ldvr;->e:Ldvq;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Ldvq;

    invoke-direct {v0}, Ldvq;-><init>()V

    sput-object v0, Ldvr;->e:Ldvq;

    .line 50
    :cond_0
    const-class v0, Ldvp;

    .line 3018
    new-instance v1, Ldvp;

    invoke-direct {v1, p0}, Ldvp;-><init>(Landroid/content/Context;)V

    .line 50
    invoke-virtual {p1, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 52
    return-void
.end method
