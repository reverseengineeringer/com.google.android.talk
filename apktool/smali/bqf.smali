.class public final Lbqf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lbng;


# direct methods
.method constructor <init>(Lbng;)V
    .locals 0

    .prologue
    .line 8609
    iput-object p1, p0, Lbqf;->a:Lbng;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 7614
    iget-object v0, p0, Lbqf;->a:Lbng;

    invoke-virtual {v0}, Lbng;->getActivity()Lba;

    move-result-object v0

    if-nez v0, :cond_0

    .line 7626
    :goto_0
    return-void

    .line 7617
    :cond_0
    iget-object v0, p0, Lbqf;->a:Lbng;

    invoke-virtual {v0}, Lbng;->getActivity()Lba;

    move-result-object v0

    new-instance v1, Lbos;

    invoke-direct {v1, p0}, Lbos;-><init>(Lbqf;)V

    .line 7618
    invoke-virtual {v0, v1}, Lba;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
