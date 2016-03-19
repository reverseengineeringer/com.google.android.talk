.class public final Lbjj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field private static b:Lbji;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-class v0, Lbjf;

    .line 9
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbjj;->a:Ljava/lang/String;

    .line 8
    return-void
.end method

.method public static a(Lilh;)V
    .locals 2

    .prologue
    .line 14
    sget-object v0, Lbjj;->b:Lbji;

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Lbji;

    invoke-direct {v0}, Lbji;-><init>()V

    sput-object v0, Lbjj;->b:Lbji;

    .line 17
    :cond_0
    const-class v0, Lbjf;

    .line 1014
    new-instance v1, Lbjf;

    invoke-direct {v1}, Lbjf;-><init>()V

    .line 17
    invoke-virtual {p0, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 19
    return-void
.end method
