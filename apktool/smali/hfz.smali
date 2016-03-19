.class final Lhfz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lhfu;


# direct methods
.method constructor <init>(Lhfu;)V
    .locals 0

    .prologue
    .line 386
    iput-object p1, p0, Lhfz;->a:Lhfu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 393
    iget-object v0, p0, Lhfz;->a:Lhfu;

    iget-object v0, v0, Lhfu;->m:Lhfn;

    invoke-virtual {v0}, Lhfn;->c()Lhil;

    move-result-object v0

    .line 394
    iget-object v1, p0, Lhfz;->a:Lhfu;

    .line 1023
    iget v1, v1, Lhfu;->f:I

    .line 394
    if-nez v1, :cond_0

    .line 395
    const-string v0, "vclib"

    const-string v1, "No ssrc for renderer; not sending ViewRequest"

    .line 1081
    invoke-static {v10, v0, v1}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 430
    :goto_0
    return-void

    .line 397
    :cond_0
    invoke-virtual {v0}, Lhil;->o()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lhfz;->a:Lhfu;

    iget-object v1, v1, Lhfu;->p:Lhla;

    if-nez v1, :cond_2

    .line 400
    :cond_1
    const-string v1, "vclib"

    iget-object v2, p0, Lhfz;->a:Lhfu;

    iget-object v2, v2, Lhfu;->m:Lhfn;

    invoke-virtual {v2}, Lhfn;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 401
    invoke-virtual {v0}, Lhil;->o()Z

    move-result v0

    iget-object v3, p0, Lhfz;->a:Lhfu;

    iget-object v3, v3, Lhfu;->p:Lhla;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x2e

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v5, v9

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "No view request for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " muted="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", surfaceInfo="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2081
    invoke-static {v10, v1, v0}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    move v5, v6

    move v4, v6

    move v3, v6

    .line 427
    :goto_1
    new-instance v0, Lcom/google/android/libraries/hangouts/video/internal/VideoViewRequest;

    iget-object v1, p0, Lhfz;->a:Lhfu;

    .line 6023
    iget v1, v1, Lhfu;->f:I

    .line 427
    iget-object v2, p0, Lhfz;->a:Lhfu;

    .line 7023
    iget-object v2, v2, Lhfu;->e:Lcom/google/android/libraries/hangouts/video/internal/Renderer;

    .line 427
    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/hangouts/video/internal/VideoViewRequest;-><init>(ILcom/google/android/libraries/hangouts/video/internal/Renderer;III)V

    .line 428
    const-string v1, "vclib"

    const-string v2, "Sending view request %s"

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v0, v3, v6

    .line 7077
    invoke-static {v7, v1, v2, v3}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 429
    iget-object v1, p0, Lhfz;->a:Lhfu;

    .line 8023
    iget-object v1, v1, Lhfu;->a:Lhci;

    .line 429
    new-array v2, v8, [Lcom/google/android/libraries/hangouts/video/internal/VideoViewRequest;

    aput-object v0, v2, v6

    invoke-virtual {v1, v2}, Lhci;->a([Lcom/google/android/libraries/hangouts/video/internal/VideoViewRequest;)V

    goto/16 :goto_0

    .line 406
    :cond_2
    iget-object v0, p0, Lhfz;->a:Lhfu;

    .line 3023
    iget v0, v0, Lhfu;->h:I

    .line 406
    if-nez v0, :cond_4

    .line 407
    iget-object v0, p0, Lhfz;->a:Lhfu;

    .line 4023
    iget-boolean v0, v0, Lhfu;->g:Z

    .line 407
    if-eqz v0, :cond_3

    move v0, v7

    .line 411
    :goto_2
    packed-switch v0, :pswitch_data_0

    .line 419
    iget-object v0, p0, Lhfz;->a:Lhfu;

    invoke-virtual {v0}, Lhfu;->h()I

    move-result v0

    .line 5067
    invoke-static {}, Lhgu;->a()V

    .line 5068
    sget-object v1, Lhgu;->e:Lhq;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lhq;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhgu;

    .line 423
    :goto_3
    invoke-virtual {v0}, Lhgu;->b()Lhlp;

    move-result-object v1

    iget v4, v1, Lhlp;->a:I

    .line 425
    invoke-virtual {v0}, Lhgu;->d()I

    move-result v5

    move v3, v4

    goto :goto_1

    :cond_3
    move v0, v8

    .line 407
    goto :goto_2

    .line 408
    :cond_4
    iget-object v0, p0, Lhfz;->a:Lhfu;

    .line 5023
    iget v0, v0, Lhfu;->h:I

    goto :goto_2

    .line 415
    :pswitch_0
    iget-object v0, p0, Lhfz;->a:Lhfu;

    invoke-virtual {v0}, Lhfu;->h()I

    move-result v0

    invoke-static {v0}, Lhgu;->a(I)Lhgu;

    move-result-object v0

    goto :goto_3

    .line 411
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
