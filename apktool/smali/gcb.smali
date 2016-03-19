.class final Lgcb;
.super Lgby;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgby",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lgby;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2000
    sget-object v0, Lgby;->a:La;

    .line 1000
    invoke-interface {v0}, La;->o()Ljava/lang/String;

    move-result-object v0

    .line 0
    return-object v0
.end method
