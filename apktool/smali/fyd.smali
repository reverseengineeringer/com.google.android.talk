.class final Lfyd;
.super Lfhx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfhx",
        "<",
        "Lgcm;",
        "Lfhz;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lfhx;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Landroid/content/Context;Landroid/os/Looper;Lfkq;Ljava/lang/Object;Lfif;Lfih;)Lfia;
    .locals 6

    .prologue
    .line 1000
    new-instance v0, Lgcm;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move-object v4, p6

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lgcm;-><init>(Landroid/content/Context;Landroid/os/Looper;Lfif;Lfih;Lfkq;)V

    .line 0
    return-object v0
.end method
