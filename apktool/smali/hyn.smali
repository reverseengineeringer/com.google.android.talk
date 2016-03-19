.class public final Lhyn;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;

.field private static e:Lhym;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lhye;

    .line 12
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lhyn;->a:Ljava/lang/String;

    .line 13
    const-class v0, Lhwh;

    .line 14
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lhyn;->b:Ljava/lang/String;

    .line 15
    const-class v0, Lhxy;

    .line 16
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lhyn;->c:Ljava/lang/String;

    .line 17
    const-class v0, Lims;

    .line 18
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lhyn;->d:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public static a(Landroid/content/Context;Lilh;)V
    .locals 3

    .prologue
    .line 23
    sget-object v0, Lhyn;->e:Lhym;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lhym;

    invoke-direct {v0}, Lhym;-><init>()V

    sput-object v0, Lhyn;->e:Lhym;

    .line 26
    :cond_0
    const-class v1, Lhye;

    .line 1021
    new-instance v2, Lhyg;

    const-class v0, Lhzh;

    invoke-static {p0, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhzh;

    invoke-direct {v2, p0, v0}, Lhyg;-><init>(Landroid/content/Context;Lhzh;)V

    .line 26
    invoke-virtual {p1, v1, v2}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 28
    return-void
.end method

.method public static a(Lilh;)V
    .locals 4

    .prologue
    .line 31
    sget-object v0, Lhyn;->e:Lhym;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lhym;

    invoke-direct {v0}, Lhym;-><init>()V

    sput-object v0, Lhyn;->e:Lhym;

    .line 34
    :cond_0
    const-class v0, Lhwh;

    .line 1031
    const/4 v1, 0x1

    new-array v1, v1, [Lhwh;

    const/4 v2, 0x0

    new-instance v3, Lhyd;

    invoke-direct {v3}, Lhyd;-><init>()V

    aput-object v3, v1, v2

    .line 34
    invoke-virtual {p0, v0, v1}, Lilh;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lilh;

    .line 36
    return-void
.end method

.method public static b(Lilh;)V
    .locals 4

    .prologue
    .line 39
    sget-object v0, Lhyn;->e:Lhym;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lhym;

    invoke-direct {v0}, Lhym;-><init>()V

    sput-object v0, Lhyn;->e:Lhym;

    .line 42
    :cond_0
    const-class v0, Lhxy;

    .line 2026
    const/4 v1, 0x1

    new-array v1, v1, [Lhxy;

    const/4 v2, 0x0

    new-instance v3, Lhxv;

    invoke-direct {v3}, Lhxv;-><init>()V

    aput-object v3, v1, v2

    .line 42
    invoke-virtual {p0, v0, v1}, Lilh;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lilh;

    .line 44
    return-void
.end method

.method public static c(Lilh;)V
    .locals 2

    .prologue
    .line 47
    sget-object v0, Lhyn;->e:Lhym;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lhym;

    invoke-direct {v0}, Lhym;-><init>()V

    sput-object v0, Lhyn;->e:Lhym;

    .line 50
    :cond_0
    const-class v0, Lims;

    .line 2036
    sget-object v1, Lims;->a:Limw;

    .line 2039
    const/4 v1, 0x0

    new-array v1, v1, [Lims;

    .line 50
    invoke-virtual {p0, v0, v1}, Lilh;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lilh;

    .line 52
    return-void
.end method
