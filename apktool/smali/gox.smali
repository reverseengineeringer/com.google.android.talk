.class final Lgox;
.super Lgoh;


# instance fields
.field private final a:Lfis;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfis",
            "<",
            "Lglm;",
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
            "Lglm;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lgoh;-><init>()V

    iput-object p1, p0, Lgox;->a:Lfis;

    return-void
.end method


# virtual methods
.method public a(ILandroid/os/Bundle;Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 4

    .prologue
    const/4 v2, 0x3

    .line 1000
    invoke-static {v2}, Laal;->q(I)Z

    move-result v0

    .line 0
    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "People callback: status="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nresolution="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nholder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2000
    invoke-static {v2}, Laal;->q(I)Z

    .line 0
    :cond_0
    invoke-static {p1, p2}, Lgot;->a(ILandroid/os/Bundle;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-static {p3}, Lgot;->a(Lcom/google/android/gms/common/data/DataHolder;)Lgpx;

    move-result-object v1

    iget-object v2, p0, Lgox;->a:Lfis;

    new-instance v3, Lgpa;

    invoke-direct {v3, v0, v1}, Lgpa;-><init>(Lcom/google/android/gms/common/api/Status;Lgpx;)V

    invoke-interface {v2, v3}, Lfis;->a(Ljava/lang/Object;)V

    return-void
.end method
