.class public final Lhsr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field private static b:Lhso;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Limk;

    .line 10
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lhsr;->a:Ljava/lang/String;

    .line 9
    return-void
.end method

.method public static a(Lilh;)V
    .locals 4

    .prologue
    .line 15
    sget-object v0, Lhsr;->b:Lhso;

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Lhso;

    invoke-direct {v0}, Lhso;-><init>()V

    sput-object v0, Lhsr;->b:Lhso;

    .line 18
    :cond_0
    const-class v0, Limk;

    .line 1026
    const/4 v1, 0x2

    new-array v1, v1, [Limk;

    const/4 v2, 0x0

    new-instance v3, Lhss;

    invoke-direct {v3}, Lhss;-><init>()V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lhsq;

    invoke-direct {v3}, Lhsq;-><init>()V

    aput-object v3, v1, v2

    .line 18
    invoke-virtual {p0, v0, v1}, Lilh;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lilh;

    .line 20
    return-void
.end method
