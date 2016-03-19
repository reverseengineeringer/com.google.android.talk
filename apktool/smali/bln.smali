.class public final Lbln;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field private static c:Lblm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lilx;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbln;->a:Ljava/lang/String;

    .line 12
    const-class v0, Limk;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbln;->b:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public static a(Lilh;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 18
    sget-object v0, Lbln;->c:Lblm;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lblm;

    invoke-direct {v0}, Lblm;-><init>()V

    sput-object v0, Lbln;->c:Lblm;

    .line 21
    :cond_0
    const-class v0, Lilx;

    .line 1017
    const/4 v1, 0x1

    new-array v1, v1, [Lilx;

    new-instance v2, Lble;

    invoke-direct {v2, v3}, Lble;-><init>(B)V

    aput-object v2, v1, v3

    .line 21
    invoke-virtual {p0, v0, v1}, Lilh;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lilh;

    .line 23
    return-void
.end method

.method public static b(Lilh;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 26
    sget-object v0, Lbln;->c:Lblm;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lblm;

    invoke-direct {v0}, Lblm;-><init>()V

    sput-object v0, Lbln;->c:Lblm;

    .line 29
    :cond_0
    const-class v0, Limk;

    .line 1022
    const/4 v1, 0x1

    new-array v1, v1, [Limk;

    new-instance v2, Lble;

    invoke-direct {v2, v3}, Lble;-><init>(B)V

    aput-object v2, v1, v3

    .line 29
    invoke-virtual {p0, v0, v1}, Lilh;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lilh;

    .line 31
    return-void
.end method
