.class public final Lgcv;
.super Lfir;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfir;"
    }
.end annotation


# instance fields
.field final synthetic a:Lglj;

.field final synthetic b:Lglg;


# direct methods
.method public constructor <init>(Lglg;Lfic;Lglj;)V
    .locals 1

    iput-object p1, p0, Lgcv;->b:Lglg;

    iput-object p3, p0, Lgcv;->a:Lglj;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lfir;-><init>(Lfic;C)V

    return-void
.end method


# virtual methods
.method protected synthetic a(Lcom/google/android/gms/common/api/Status;)Lfim;
    .locals 1

    .prologue
    .line 2000
    new-instance v0, Lgcw;

    invoke-direct {v0, p0, p1}, Lgcw;-><init>(Lgcv;Lcom/google/android/gms/common/api/Status;)V

    .line 0
    return-object v0
.end method

.method protected synthetic a(Lfia;)V
    .locals 2

    .prologue
    .line 0
    check-cast p1, Lgot;

    .line 1000
    iget-object v0, p0, Lgcv;->a:Lglj;

    invoke-virtual {v0}, Lglj;->a()Z

    move-result v0

    iget-object v1, p0, Lgcv;->a:Lglj;

    invoke-virtual {v1}, Lglj;->c()I

    move-result v1

    invoke-virtual {p1, p0, v0, v1}, Lgot;->a(Lfis;ZI)V

    .line 0
    return-void
.end method
