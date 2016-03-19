.class final Lboq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbjd;


# instance fields
.field final synthetic a:Lbng;


# direct methods
.method constructor <init>(Lbng;)V
    .locals 0

    .prologue
    .line 6252
    iput-object p1, p0, Lboq;->a:Lbng;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 6255
    iget-object v0, p0, Lboq;->a:Lbng;

    invoke-virtual {v0}, Lbng;->ap()V

    .line 6256
    return-void
.end method

.method public a(Lbjb;)V
    .locals 6

    .prologue
    .line 6377
    iget-object v0, p0, Lboq;->a:Lbng;

    .line 31285
    iget-object v0, v0, Lbng;->i:Lbpq;

    .line 6377
    invoke-interface {v0, p1}, Lbpq;->a(Lbjb;)V

    .line 6379
    iget-object v0, p0, Lboq;->a:Lbng;

    .line 32285
    iget-object v0, v0, Lbng;->bv:Lbrh;

    .line 6379
    invoke-virtual {v0, p1}, Lbrh;->a(Lbjb;)V

    .line 6381
    iget-object v0, p0, Lboq;->a:Lbng;

    invoke-virtual {v0}, Lbng;->ap()V

    .line 6383
    iget-object v0, p1, Lbjb;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 6384
    iget-object v0, p0, Lboq;->a:Lbng;

    .line 33481
    iget-object v1, p1, Lbjb;->a:Ljava/lang/String;

    .line 34188
    const-string v2, "Expected null"

    invoke-static {v2, v1}, Lhbs;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 33487
    iget-object v1, v0, Lbng;->i:Lbpq;

    invoke-interface {v1}, Lbpq;->a()Lbjb;

    move-result-object v1

    .line 33488
    iget-object v2, v1, Lbjb;->e:Ljava/lang/String;

    invoke-static {v2}, Ldtw;->a(Ljava/lang/String;)Ldtw;

    move-result-object v2

    .line 33489
    iget-object v3, v1, Lbjb;->e:Ljava/lang/String;

    invoke-static {v3}, Ldtt;->b(Ljava/lang/String;)Ldtt;

    move-result-object v3

    invoke-virtual {v2, v3}, Ldtw;->a(Ldtt;)V

    .line 33490
    invoke-static {}, Laxt;->newBuilder()Laxu;

    move-result-object v3

    invoke-virtual {v3, v2}, Laxu;->a(Ldtw;)Laxu;

    move-result-object v2

    .line 33491
    invoke-static {}, Lihb;->newBuilder()Laxm;

    move-result-object v3

    invoke-virtual {v2}, Laxu;->a()Laxt;

    move-result-object v2

    invoke-virtual {v3, v2}, Laxm;->a(Laxt;)Laxm;

    move-result-object v2

    invoke-virtual {v2}, Laxm;->a()Lihb;

    move-result-object v2

    .line 33493
    invoke-static {}, Lebi;->b()Lebi;

    move-result-object v3

    .line 33494
    invoke-virtual {v3}, Lebi;->a()I

    move-result v4

    iput v4, v0, Lbng;->e:I

    .line 33495
    new-instance v4, Ldwb;

    iget-object v5, v0, Lbng;->context:Lill;

    invoke-direct {v4, v5}, Ldwb;-><init>(Landroid/content/Context;)V

    iget-object v0, v0, Lbng;->at:Lbfd;

    .line 33498
    invoke-virtual {v0}, Lbfd;->g()I

    move-result v0

    invoke-virtual {v4, v0}, Ldwb;->a(I)Ldwb;

    move-result-object v0

    .line 33499
    invoke-virtual {v0, v2}, Ldwb;->a(Lihb;)Ldwb;

    move-result-object v0

    sget-object v2, Lbfw;->c:Lbfw;

    .line 33500
    invoke-virtual {v0, v2}, Ldwb;->a(Lbfw;)Ldwb;

    move-result-object v0

    iget v1, v1, Lbjb;->b:I

    .line 33501
    invoke-virtual {v0, v1}, Ldwb;->b(I)Ldwb;

    move-result-object v0

    .line 33502
    invoke-virtual {v0}, Ldwb;->a()Landroid/content/Intent;

    move-result-object v0

    .line 33495
    invoke-static {v3, v0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Lebi;Landroid/content/Intent;)V

    .line 6388
    :cond_0
    iget-object v0, p0, Lboq;->a:Lbng;

    .line 34285
    invoke-virtual {v0}, Lbng;->w()V

    .line 6390
    iget-object v0, p0, Lboq;->a:Lbng;

    invoke-virtual {v0}, Lbng;->getActivity()Lba;

    move-result-object v0

    invoke-virtual {v0}, Lba;->invalidateOptionsMenu()V

    .line 6392
    iget-object v0, p0, Lboq;->a:Lbng;

    .line 35285
    iget-object v0, v0, Lbng;->at:Lbfd;

    .line 6393
    const/16 v1, 0x8d6

    .line 6392
    invoke-static {v0, v1}, Laal;->a(Lbfd;I)V

    .line 6394
    return-void
.end method

.method public a(Ljava/util/List;Lbjb;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbjb;",
            ">;",
            "Lbjb;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 6260
    const-string v0, "Babel"

    iget-object v1, p0, Lboq;->a:Lbng;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lboq;->a:Lbng;

    .line 6265
    invoke-virtual {v4}, Lbng;->getLoaderManager()Lcj;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x25

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Finished variant engine for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " loader: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v4, v2, [Ljava/lang/Object;

    .line 6260
    invoke-static {v0, v1, v4}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6270
    iget-object v0, p0, Lboq;->a:Lbng;

    .line 7285
    iget-object v0, v0, Lbng;->i:Lbpq;

    .line 6270
    invoke-interface {v0, p2}, Lbpq;->a(Lbjb;)V

    .line 6271
    iget-object v0, p0, Lboq;->a:Lbng;

    .line 8285
    invoke-virtual {v0}, Lbng;->J()V

    .line 6272
    iget-object v0, p0, Lboq;->a:Lbng;

    .line 9285
    invoke-virtual {v0}, Lbng;->L()V

    .line 6274
    iget-object v0, p0, Lboq;->a:Lbng;

    .line 10285
    invoke-virtual {v0}, Lbng;->ah()V

    .line 6275
    iget-object v0, p0, Lboq;->a:Lbng;

    .line 11285
    invoke-virtual {v0}, Lbng;->aq()V

    .line 6277
    iget-object v0, p0, Lboq;->a:Lbng;

    .line 12285
    iget-object v0, v0, Lbng;->bA:Ldhp;

    .line 6277
    check-cast v0, Lbhx;

    iget-object v1, p0, Lboq;->a:Lbng;

    invoke-virtual {v1}, Lbng;->ao()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lboq;->a:Lbng;

    .line 14186
    invoke-virtual {v1}, Lbng;->d()I

    move-result v1

    invoke-static {v1}, Laal;->f(I)Z

    move-result v1

    .line 6277
    if-eqz v1, :cond_8

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Lbhx;->a(Z)V

    .line 6281
    iget-object v0, p0, Lboq;->a:Lbng;

    .line 14285
    iget-object v0, v0, Lbng;->aP:Landroid/view/View;

    .line 6281
    if-nez v0, :cond_4

    .line 6282
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_4

    sget-object v0, Ldjd;->a:Ldjd;

    .line 6283
    invoke-static {v0}, Laal;->a(Ldjd;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 6287
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbjb;

    .line 6288
    iget-object v4, v0, Lbjb;->h:Lcyx;

    if-eqz v4, :cond_1

    iget-object v0, v0, Lbjb;->h:Lcyx;

    .line 6289
    invoke-virtual {v0}, Lcyx;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move v2, v3

    .line 6294
    :cond_2
    if-eqz v2, :cond_4

    .line 6295
    iget-object v0, p0, Lboq;->a:Lbng;

    invoke-virtual {v0}, Lbng;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Laen;->dT:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 6296
    iget-object v1, p0, Lboq;->a:Lbng;

    iget-object v2, p0, Lboq;->a:Lbng;

    .line 6297
    invoke-virtual {v2}, Lbng;->getActivity()Lba;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v4, Laal;->gO:I

    .line 6298
    invoke-virtual {v2, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sget v2, Laen;->gX:I

    .line 6299
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 15285
    iput-object v0, v1, Lbng;->aP:Landroid/view/View;

    .line 6301
    iget-object v0, p0, Lboq;->a:Lbng;

    .line 16285
    iget-object v0, v0, Lbng;->aP:Landroid/view/View;

    .line 6303
    sget v1, Laen;->gY:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 6304
    if-eqz v0, :cond_3

    .line 6305
    iget-object v1, p0, Lboq;->a:Lbng;

    sget v2, Lcom/google/android/apps/hangouts/hangout/StressMode;->rN:I

    .line 6306
    invoke-virtual {v1, v2}, Lbng;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    .line 6305
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6308
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 6310
    :cond_3
    iget-object v0, p0, Lboq;->a:Lbng;

    .line 17285
    iget-object v0, v0, Lbng;->aP:Landroid/view/View;

    .line 6310
    new-instance v1, Lbor;

    invoke-direct {v1, p0}, Lbor;-><init>(Lboq;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 6323
    :cond_4
    iget-object v0, p0, Lboq;->a:Lbng;

    invoke-virtual {v0}, Lbng;->getActivity()Lba;

    move-result-object v1

    .line 6324
    if-eqz v1, :cond_5

    .line 6325
    invoke-virtual {v1}, Lba;->y_()V

    .line 6332
    :cond_5
    iget-object v0, p0, Lboq;->a:Lbng;

    .line 18285
    iget-object v0, v0, Lbng;->i:Lbpq;

    .line 6332
    invoke-interface {v0}, Lbpq;->a()Lbjb;

    move-result-object v0

    .line 6333
    iget-object v2, v0, Lbjb;->a:Ljava/lang/String;

    if-nez v2, :cond_6

    .line 6334
    iget-object v2, p0, Lboq;->a:Lbng;

    .line 19481
    iget-object v4, v0, Lbjb;->a:Ljava/lang/String;

    .line 20188
    const-string v5, "Expected null"

    invoke-static {v5, v4}, Lhbs;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 19487
    iget-object v4, v2, Lbng;->i:Lbpq;

    invoke-interface {v4}, Lbpq;->a()Lbjb;

    move-result-object v4

    .line 19488
    iget-object v5, v4, Lbjb;->e:Ljava/lang/String;

    invoke-static {v5}, Ldtw;->a(Ljava/lang/String;)Ldtw;

    move-result-object v5

    .line 19489
    iget-object v6, v4, Lbjb;->e:Ljava/lang/String;

    invoke-static {v6}, Ldtt;->b(Ljava/lang/String;)Ldtt;

    move-result-object v6

    invoke-virtual {v5, v6}, Ldtw;->a(Ldtt;)V

    .line 19490
    invoke-static {}, Laxt;->newBuilder()Laxu;

    move-result-object v6

    invoke-virtual {v6, v5}, Laxu;->a(Ldtw;)Laxu;

    move-result-object v5

    .line 19491
    invoke-static {}, Lihb;->newBuilder()Laxm;

    move-result-object v6

    invoke-virtual {v5}, Laxu;->a()Laxt;

    move-result-object v5

    invoke-virtual {v6, v5}, Laxm;->a(Laxt;)Laxm;

    move-result-object v5

    invoke-virtual {v5}, Laxm;->a()Lihb;

    move-result-object v5

    .line 19493
    invoke-static {}, Lebi;->b()Lebi;

    move-result-object v6

    .line 19494
    invoke-virtual {v6}, Lebi;->a()I

    move-result v7

    iput v7, v2, Lbng;->e:I

    .line 19495
    new-instance v7, Ldwb;

    iget-object v8, v2, Lbng;->context:Lill;

    invoke-direct {v7, v8}, Ldwb;-><init>(Landroid/content/Context;)V

    iget-object v2, v2, Lbng;->at:Lbfd;

    .line 19498
    invoke-virtual {v2}, Lbfd;->g()I

    move-result v2

    invoke-virtual {v7, v2}, Ldwb;->a(I)Ldwb;

    move-result-object v2

    .line 19499
    invoke-virtual {v2, v5}, Ldwb;->a(Lihb;)Ldwb;

    move-result-object v2

    sget-object v5, Lbfw;->c:Lbfw;

    .line 19500
    invoke-virtual {v2, v5}, Ldwb;->a(Lbfw;)Ldwb;

    move-result-object v2

    iget v4, v4, Lbjb;->b:I

    .line 19501
    invoke-virtual {v2, v4}, Ldwb;->b(I)Ldwb;

    move-result-object v2

    .line 19502
    invoke-virtual {v2}, Ldwb;->a()Landroid/content/Intent;

    move-result-object v2

    .line 19495
    invoke-static {v6, v2}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Lebi;Landroid/content/Intent;)V

    .line 6337
    :cond_6
    iget-object v2, p0, Lboq;->a:Lbng;

    .line 20285
    iget-object v2, v2, Lbng;->bv:Lbrh;

    .line 6337
    invoke-virtual {v2, v0}, Lbrh;->a(Lbjb;)V

    .line 6342
    iget-object v0, p0, Lboq;->a:Lbng;

    .line 21285
    iget-boolean v0, v0, Lbng;->aG:Z

    .line 6342
    if-nez v0, :cond_7

    .line 6343
    iget-object v0, p0, Lboq;->a:Lbng;

    .line 22285
    iput-boolean v3, v0, Lbng;->aG:Z

    .line 6344
    iget-object v0, p0, Lboq;->a:Lbng;

    .line 23285
    iget-object v0, v0, Lbng;->lifecycle:Linz;

    .line 6344
    new-instance v2, Lbpc;

    iget-object v4, p0, Lboq;->a:Lbng;

    .line 23401
    invoke-direct {v2, v4}, Lbpc;-><init>(Lbng;)V

    .line 6344
    invoke-virtual {v0, v2}, Linz;->a(Lioz;)Lioz;

    .line 6348
    iget-object v0, p0, Lboq;->a:Lbng;

    .line 24285
    iget-object v0, v0, Lbng;->lifecycle:Linz;

    .line 6348
    iget-object v2, p0, Lboq;->a:Lbng;

    iget-object v2, v2, Lbng;->aB:Lbqj;

    invoke-virtual {v0, v2}, Linz;->a(Lioz;)Lioz;

    .line 6352
    iget-object v0, p0, Lboq;->a:Lbng;

    .line 25285
    iget-object v0, v0, Lbng;->lifecycle:Linz;

    .line 6352
    iget-object v2, p0, Lboq;->a:Lbng;

    .line 26285
    iget-object v2, v2, Lbng;->bs:Lbpg;

    .line 6352
    invoke-virtual {v0, v2}, Linz;->a(Lioz;)Lioz;

    .line 6356
    iget-object v0, p0, Lboq;->a:Lbng;

    .line 27285
    iget-object v0, v0, Lbng;->binder:Lilh;

    .line 6357
    const-class v2, Lbjf;

    invoke-virtual {v0, v2}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbjf;

    .line 6358
    iget-object v2, p0, Lboq;->a:Lbng;

    .line 28285
    iget-object v2, v2, Lbng;->lifecycle:Linz;

    .line 6358
    new-instance v4, Lbjh;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, p0, Lboq;->a:Lbng;

    .line 29285
    iget-object v5, v5, Lbng;->at:Lbfd;

    .line 6360
    invoke-virtual {v5}, Lbfd;->g()I

    move-result v5

    iget-object v6, p0, Lboq;->a:Lbng;

    invoke-virtual {v6}, Lbng;->an()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v0, v1, v5, v6}, Lbjh;-><init>(Lbjf;Landroid/app/Activity;ILjava/lang/String;)V

    .line 6358
    invoke-virtual {v2, v4}, Linz;->a(Lioz;)Lioz;

    .line 6367
    :cond_7
    iget-object v0, p0, Lboq;->a:Lbng;

    .line 30285
    iget-object v1, v0, Lbng;->at:Lbfd;

    .line 6369
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_9

    .line 6370
    const/16 v0, 0x8d4

    .line 6367
    :goto_1
    invoke-static {v1, v0}, Laal;->a(Lbfd;I)V

    .line 6372
    return-void

    :cond_8
    move v1, v2

    .line 6277
    goto/16 :goto_0

    .line 6371
    :cond_9
    const/16 v0, 0x8d5

    goto :goto_1
.end method
