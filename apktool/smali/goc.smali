.class public final Lgoc;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lfis;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfis",
            "<",
            "Lgli;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lfis;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfis",
            "<",
            "Lgli;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgoc;->a:Lfis;

    return-void
.end method


# virtual methods
.method public a(ILfkg;)V
    .locals 3

    .prologue
    .line 1000
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lgot;->a(ILandroid/os/Bundle;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    iget-object v1, p0, Lgoc;->a:Lfis;

    new-instance v2, Lgou;

    invoke-direct {v2, v0, p2}, Lgou;-><init>(Lcom/google/android/gms/common/api/Status;Lfkg;)V

    invoke-interface {v1, v2}, Lfis;->a(Ljava/lang/Object;)V

    return-void
.end method
