.class final Lbnk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbra;


# instance fields
.field final synthetic a:Lbng;


# direct methods
.method constructor <init>(Lbng;)V
    .locals 0

    .prologue
    .line 1924
    iput-object p1, p0, Lbnk;->a:Lbng;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1927
    iget-object v4, p0, Lbnk;->a:Lbng;

    .line 3734
    iget-object v0, v4, Lbng;->be:Lbqy;

    invoke-virtual {v4}, Lbng;->getChildFragmentManager()Lbg;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbqy;->a(Lbg;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3745
    sget-object v0, Lbng;->b:Lezv;

    const-string v1, "sendMessageUiLatency"

    invoke-virtual {v0, v1}, Lezv;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 3746
    iget-object v0, v4, Lbng;->aN:Lbmx;

    invoke-virtual {v0}, Lbmx;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v4, Lbng;->i:Lbpq;

    invoke-interface {v0}, Lbpq;->h()Lksf;

    move-result-object v0

    invoke-virtual {v0}, Lksf;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 3747
    iget-object v0, v4, Lbng;->at:Lbfd;

    const/16 v1, 0x914

    invoke-static {v0, v1}, Laal;->a(Lbfd;I)V

    .line 3752
    :cond_0
    iget-object v0, v4, Lbng;->aN:Lbmx;

    invoke-virtual {v0}, Lbmx;->k()V

    .line 3759
    iget-object v0, v4, Lbng;->i:Lbpq;

    invoke-interface {v0}, Lbpq;->h()Lksf;

    move-result-object v5

    .line 3760
    iget-object v0, v4, Lbng;->i:Lbpq;

    invoke-interface {v0}, Lbpq;->a()Lbjb;

    move-result-object v0

    if-eqz v0, :cond_6

    move v1, v2

    .line 3761
    :goto_0
    invoke-virtual {v5}, Lksf;->a()Lkyp;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbkq;

    .line 3762
    if-nez v1, :cond_2

    iget-object v0, v0, Lbkq;->a:Ljava/lang/String;

    invoke-static {v0}, Laen;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3764
    :cond_2
    new-instance v0, Lbrl;

    iget-object v1, v4, Lbng;->context:Lill;

    invoke-direct {v0, v1, v5, v4}, Lbrl;-><init>(Landroid/content/Context;Ljava/util/List;Lbrp;)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lbrl;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 3769
    :goto_1
    if-nez v2, :cond_3

    .line 3770
    invoke-virtual {v4, v5}, Lbng;->b(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3777
    :cond_3
    invoke-virtual {v4}, Lbng;->ak()V

    .line 3781
    :cond_4
    iget-object v0, v4, Lbng;->i:Lbpq;

    invoke-interface {v0}, Lbpq;->i()V

    .line 1928
    :cond_5
    return-void

    :cond_6
    move v1, v3

    .line 3760
    goto :goto_0

    :cond_7
    move v2, v1

    goto :goto_1
.end method
