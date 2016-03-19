.class final Lboj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lbnc;


# direct methods
.method constructor <init>(Lbnc;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 5440
    iput-object p1, p0, Lboj;->b:Lbnc;

    iput-object p2, p0, Lboj;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5443
    iget-object v0, p0, Lboj;->b:Lbnc;

    iget-object v3, v0, Lbnc;->a:Lbng;

    iget-object v4, p0, Lboj;->a:Ljava/lang/String;

    .line 6620
    iget-object v0, v3, Lbng;->i:Lbpq;

    invoke-interface {v0}, Lbpq;->a()Lbjb;

    move-result-object v5

    .line 6622
    invoke-virtual {v3}, Lbng;->K()Z

    move-result v6

    const-string v7, "variant null: %s. reachability null: %s."

    const/4 v0, 0x2

    new-array v8, v0, [Ljava/lang/Object;

    if-nez v5, :cond_0

    move v0, v1

    .line 6624
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v8, v2

    iget-object v0, v3, Lbng;->bu:Ldur;

    if-nez v0, :cond_1

    move v0, v1

    .line 6625
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v8, v1

    .line 7212
    if-nez v6, :cond_2

    .line 7213
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {v7, v8}, Laen;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, v2

    .line 6622
    goto :goto_0

    :cond_1
    move v0, v2

    .line 6624
    goto :goto_1

    .line 6626
    :cond_2
    iget-object v0, v3, Lbng;->bu:Ldur;

    iget-boolean v0, v0, Ldur;->a:Z

    if-nez v0, :cond_4

    .line 6627
    iget-object v0, v3, Lbng;->bu:Ldur;

    iget-object v1, v3, Lbng;->context:Lill;

    invoke-virtual {v0, v1, v2}, Ldur;->a(Landroid/content/Context;Z)V

    .line 6634
    :cond_3
    :goto_2
    return-void

    .line 6630
    :cond_4
    invoke-virtual {v3}, Lbng;->I()Z

    move-result v0

    if-nez v0, :cond_5

    .line 6631
    invoke-virtual {v3}, Lbng;->getActivity()Lba;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 6632
    iget-object v0, v3, Lbng;->context:Lill;

    sget v1, Lcom/google/android/apps/hangouts/hangout/StressMode;->jg:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 6637
    :cond_5
    const/4 v0, 0x0

    invoke-virtual {v3, v5, v4, v0}, Lbng;->a(Lbjb;Ljava/lang/String;Lbkq;)V

    goto :goto_2
.end method
