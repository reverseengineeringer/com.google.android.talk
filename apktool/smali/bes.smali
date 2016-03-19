.class public final Lbes;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field private static b:Lber;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lbcr;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbes;->a:Ljava/lang/String;

    .line 10
    return-void
.end method

.method public static a(Lilh;)V
    .locals 5

    .prologue
    .line 16
    sget-object v0, Lbes;->b:Lber;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Lber;

    invoke-direct {v0}, Lber;-><init>()V

    sput-object v0, Lbes;->b:Lber;

    .line 19
    :cond_0
    const-class v0, Lbcr;

    .line 1015
    const/4 v1, 0x1

    new-array v1, v1, [Lbcr;

    const/4 v2, 0x0

    new-instance v3, Lbcr;

    const-class v4, Lbfb;

    invoke-direct {v3, v4}, Lbcr;-><init>(Ljava/lang/Class;)V

    aput-object v3, v1, v2

    .line 19
    invoke-virtual {p0, v0, v1}, Lilh;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lilh;

    .line 21
    return-void
.end method
