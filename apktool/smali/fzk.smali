.class final Lfzk;
.super Lfhx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfhx",
        "<",
        "Lfyx;",
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
    new-instance v0, Lfyx;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lfyx;-><init>(Landroid/content/Context;Landroid/os/Looper;Lfkq;Lfif;Lfih;)V

    .line 0
    return-object v0
.end method
