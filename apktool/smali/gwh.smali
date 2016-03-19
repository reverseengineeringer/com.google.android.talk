.class public final Lgwh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field private static b:Lgwg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lgwc;

    .line 10
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgwh;->a:Ljava/lang/String;

    .line 9
    return-void
.end method

.method public static a(Lilh;)V
    .locals 2

    .prologue
    .line 15
    sget-object v0, Lgwh;->b:Lgwg;

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Lgwg;

    invoke-direct {v0}, Lgwg;-><init>()V

    sput-object v0, Lgwh;->b:Lgwg;

    .line 18
    :cond_0
    const-class v0, Lgwc;

    .line 1015
    new-instance v1, Lgwf;

    invoke-direct {v1}, Lgwf;-><init>()V

    .line 18
    invoke-virtual {p0, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 20
    return-void
.end method
