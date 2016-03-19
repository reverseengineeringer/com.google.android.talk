.class public final Lepp;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field private static c:Lepo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lepk;

    .line 12
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lepp;->a:Ljava/lang/String;

    .line 13
    const-class v0, Lcve;

    .line 14
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lepp;->b:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public static a(Landroid/content/Context;Lilh;)V
    .locals 4

    .prologue
    .line 27
    sget-object v0, Lepp;->c:Lepo;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lepo;

    invoke-direct {v0}, Lepo;-><init>()V

    sput-object v0, Lepp;->c:Lepo;

    .line 30
    :cond_0
    const-class v0, Lcve;

    .line 2027
    const/4 v1, 0x1

    new-array v1, v1, [Leqd;

    const/4 v2, 0x0

    new-instance v3, Leqd;

    invoke-direct {v3, p0}, Leqd;-><init>(Landroid/content/Context;)V

    aput-object v3, v1, v2

    .line 30
    invoke-virtual {p1, v0, v1}, Lilh;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lilh;

    .line 32
    return-void
.end method

.method public static a(Lilh;)V
    .locals 2

    .prologue
    .line 19
    sget-object v0, Lepp;->c:Lepo;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lepo;

    invoke-direct {v0}, Lepo;-><init>()V

    sput-object v0, Lepp;->c:Lepo;

    .line 22
    :cond_0
    const-class v0, Lepk;

    .line 1022
    new-instance v1, Lepq;

    .line 1030
    invoke-direct {v1}, Lepq;-><init>()V

    .line 22
    invoke-virtual {p0, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 24
    return-void
.end method
