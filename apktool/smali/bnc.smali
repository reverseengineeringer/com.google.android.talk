.class final Lbnc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lbng;


# direct methods
.method constructor <init>(Lbng;)V
    .locals 0

    .prologue
    .line 24431
    iput-object p1, p0, Lbnc;->a:Lbng;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 12455
    iget-object v0, p0, Lbnc;->a:Lbng;

    .line 13285
    invoke-virtual {v0}, Lbng;->M()V

    .line 12456
    return-void
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 11495
    iget-object v0, p0, Lbnc;->a:Lbng;

    new-instance v1, Lbok;

    invoke-direct {v1, p0, p1}, Lbok;-><init>(Lbnc;I)V

    .line 12285
    invoke-virtual {v0, v1}, Lbng;->a(Lbpf;)V

    .line 11524
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 6436
    iget-object v0, p0, Lbnc;->a:Lbng;

    .line 7285
    invoke-virtual {v0}, Lbng;->K()Z

    move-result v0

    .line 6436
    if-eqz v0, :cond_6

    .line 6437
    iget-object v3, p0, Lbnc;->a:Lbng;

    .line 8620
    iget-object v0, v3, Lbng;->i:Lbpq;

    invoke-interface {v0}, Lbpq;->a()Lbjb;

    move-result-object v4

    .line 8622
    invoke-virtual {v3}, Lbng;->K()Z

    move-result v5

    const-string v6, "variant null: %s. reachability null: %s."

    const/4 v0, 0x2

    new-array v7, v0, [Ljava/lang/Object;

    if-nez v4, :cond_0

    move v0, v1

    .line 8624
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v7, v2

    iget-object v0, v3, Lbng;->bu:Ldur;

    if-nez v0, :cond_1

    move v0, v1

    .line 8625
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v7, v1

    .line 9212
    if-nez v5, :cond_2

    .line 9213
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {v6, v7}, Laen;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, v2

    .line 8622
    goto :goto_0

    :cond_1
    move v0, v2

    .line 8624
    goto :goto_1

    .line 8626
    :cond_2
    iget-object v0, v3, Lbng;->bu:Ldur;

    iget-boolean v0, v0, Ldur;->a:Z

    if-nez v0, :cond_4

    .line 8627
    iget-object v0, v3, Lbng;->bu:Ldur;

    iget-object v1, v3, Lbng;->context:Lill;

    invoke-virtual {v0, v1, v2}, Ldur;->a(Landroid/content/Context;Z)V

    .line 8634
    :cond_3
    :goto_2
    return-void

    .line 8630
    :cond_4
    invoke-virtual {v3}, Lbng;->I()Z

    move-result v0

    if-nez v0, :cond_5

    .line 8631
    invoke-virtual {v3}, Lbng;->getActivity()Lba;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 8632
    iget-object v0, v3, Lbng;->context:Lill;

    sget v1, Lcom/google/android/apps/hangouts/hangout/StressMode;->jg:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 8637
    :cond_5
    const/4 v0, 0x0

    invoke-virtual {v3, v4, p1, v0}, Lbng;->a(Lbjb;Ljava/lang/String;Lbkq;)V

    goto :goto_2

    .line 6439
    :cond_6
    iget-object v0, p0, Lbnc;->a:Lbng;

    .line 9285
    iget-object v0, v0, Lbng;->aL:Ljava/util/List;

    .line 6439
    new-instance v1, Lboj;

    invoke-direct {v1, p0, p1}, Lboj;-><init>(Lbnc;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6447
    iget-object v0, p0, Lbnc;->a:Lbng;

    .line 10285
    invoke-virtual {v0}, Lbng;->L()V

    .line 6448
    iget-object v0, p0, Lbnc;->a:Lbng;

    .line 11285
    iget-object v0, v0, Lbng;->context:Lill;

    .line 6448
    sget v1, Lcom/google/android/apps/hangouts/hangout/StressMode;->jf:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 6449
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2
.end method

.method public b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 13460
    iget-object v0, p0, Lbnc;->a:Lbng;

    .line 14285
    invoke-virtual {v0}, Lbng;->I()Z

    move-result v0

    .line 13460
    if-nez v0, :cond_0

    .line 13464
    iget-object v0, p0, Lbnc;->a:Lbng;

    .line 15285
    iget-boolean v0, v0, Lbng;->bl:Z

    .line 13464
    if-eqz v0, :cond_2

    .line 13465
    iget-object v0, p0, Lbnc;->a:Lbng;

    .line 16285
    iget-object v0, v0, Lbng;->i:Lbpq;

    .line 13465
    invoke-interface {v0}, Lbpq;->a()Lbjb;

    move-result-object v0

    .line 13466
    iget-object v1, p0, Lbnc;->a:Lbng;

    .line 17285
    iget-object v1, v1, Lbng;->context:Lill;

    .line 13467
    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lbjb;->g:Z

    if-eqz v0, :cond_1

    .line 13469
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->sl:I

    .line 13466
    :goto_0
    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 13472
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 13479
    :cond_0
    :goto_1
    iget-object v0, p0, Lbnc;->a:Lbng;

    .line 21285
    iget-object v0, v0, Lbng;->aO:Lbks;

    .line 13479
    invoke-interface {v0}, Lbks;->b()V

    .line 13480
    iget-object v0, p0, Lbnc;->a:Lbng;

    .line 22285
    invoke-virtual {v0, v2}, Lbng;->a(Z)V

    .line 13481
    return-void

    .line 13470
    :cond_1
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->sk:I

    goto :goto_0

    .line 13473
    :cond_2
    iget-object v0, p0, Lbnc;->a:Lbng;

    .line 18285
    iget-object v0, v0, Lbng;->bu:Ldur;

    .line 13473
    if-eqz v0, :cond_0

    iget-object v0, p0, Lbnc;->a:Lbng;

    .line 19285
    iget-object v0, v0, Lbng;->bu:Ldur;

    .line 13473
    iget-boolean v0, v0, Ldur;->a:Z

    if-nez v0, :cond_0

    .line 13474
    iget-object v0, p0, Lbnc;->a:Lbng;

    .line 20285
    iget-object v0, v0, Lbng;->bu:Ldur;

    .line 13474
    iget-object v1, p0, Lbnc;->a:Lbng;

    invoke-virtual {v1}, Lbng;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ldur;->a(Landroid/content/Context;Z)V

    goto :goto_1
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 22487
    iget-object v0, p0, Lbnc;->a:Lbng;

    .line 23285
    iget-object v0, v0, Lbng;->bm:Lbzy;

    .line 22487
    if-eqz v0, :cond_0

    .line 22488
    iget-object v0, p0, Lbnc;->a:Lbng;

    .line 24285
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lbng;->a(Z)V

    .line 22490
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
