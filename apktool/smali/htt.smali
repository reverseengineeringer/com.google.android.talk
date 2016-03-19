.class public final Lhtt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;

.field public static final e:Ljava/lang/String;

.field private static f:Lhts;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lilx;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lhtt;->a:Ljava/lang/String;

    .line 14
    const-class v0, Lhum;

    .line 15
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lhtt;->b:Ljava/lang/String;

    .line 16
    const-class v0, Lhtw;

    .line 17
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lhtt;->c:Ljava/lang/String;

    .line 18
    const-class v0, Limk;

    .line 19
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lhtt;->d:Ljava/lang/String;

    .line 20
    const-class v0, Lims;

    .line 21
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lhtt;->e:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public static a(Landroid/content/Context;Lilh;)V
    .locals 2

    .prologue
    .line 34
    sget-object v0, Lhtt;->f:Lhts;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lhts;

    invoke-direct {v0}, Lhts;-><init>()V

    sput-object v0, Lhtt;->f:Lhts;

    .line 37
    :cond_0
    const-class v0, Lhum;

    .line 2020
    new-instance v1, Lhum;

    invoke-direct {v1, p0}, Lhum;-><init>(Landroid/content/Context;)V

    .line 37
    invoke-virtual {p1, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 39
    return-void
.end method

.method public static a(Lilh;)V
    .locals 4

    .prologue
    .line 26
    sget-object v0, Lhtt;->f:Lhts;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lhts;

    invoke-direct {v0}, Lhts;-><init>()V

    sput-object v0, Lhtt;->f:Lhts;

    .line 29
    :cond_0
    const-class v0, Lilx;

    .line 1039
    const/4 v1, 0x1

    new-array v1, v1, [Lilx;

    const/4 v2, 0x0

    new-instance v3, Lhtz;

    invoke-direct {v3}, Lhtz;-><init>()V

    aput-object v3, v1, v2

    .line 29
    invoke-virtual {p0, v0, v1}, Lilh;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lilh;

    .line 31
    return-void
.end method

.method public static b(Landroid/content/Context;Lilh;)V
    .locals 2

    .prologue
    .line 42
    sget-object v0, Lhtt;->f:Lhts;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lhts;

    invoke-direct {v0}, Lhts;-><init>()V

    sput-object v0, Lhtt;->f:Lhts;

    .line 45
    :cond_0
    const-class v0, Lhtw;

    .line 2025
    new-instance v1, Lhug;

    invoke-direct {v1, p0}, Lhug;-><init>(Landroid/content/Context;)V

    .line 45
    invoke-virtual {p1, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 47
    return-void
.end method

.method public static b(Lilh;)V
    .locals 4

    .prologue
    .line 50
    sget-object v0, Lhtt;->f:Lhts;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lhts;

    invoke-direct {v0}, Lhts;-><init>()V

    sput-object v0, Lhtt;->f:Lhts;

    .line 53
    :cond_0
    const-class v0, Limk;

    .line 2046
    const/4 v1, 0x1

    new-array v1, v1, [Limk;

    const/4 v2, 0x0

    new-instance v3, Lhtz;

    invoke-direct {v3}, Lhtz;-><init>()V

    aput-object v3, v1, v2

    .line 53
    invoke-virtual {p0, v0, v1}, Lilh;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lilh;

    .line 55
    return-void
.end method

.method public static c(Landroid/content/Context;Lilh;)V
    .locals 2

    .prologue
    .line 58
    sget-object v0, Lhtt;->f:Lhts;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lhts;

    invoke-direct {v0}, Lhts;-><init>()V

    sput-object v0, Lhtt;->f:Lhts;

    .line 61
    :cond_0
    const-class v0, Lims;

    .line 3030
    sget-object v1, Lims;->a:Limw;

    .line 3033
    const/4 v1, 0x0

    new-array v1, v1, [Lims;

    .line 61
    invoke-virtual {p1, v0, v1}, Lilh;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lilh;

    .line 63
    return-void
.end method
