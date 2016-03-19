.class public final Lbrw;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Z

.field final synthetic b:Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;

.field private final c:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 347
    iput-object p1, p0, Lbrw;->b:Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;

    .line 348
    invoke-direct {p0, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 349
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lbrw;->c:Landroid/view/LayoutInflater;

    .line 350
    return-void
.end method

.method private static a(I)I
    .locals 1

    .prologue
    .line 353
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 354
    sget v0, Lcom/google/android/apps/hangouts/R$drawable;->bp:I

    .line 356
    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/google/android/apps/hangouts/R$drawable;->bo:I

    goto :goto_0
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 400
    invoke-virtual {p0, p1}, Lbrw;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 401
    const/4 v1, 0x0

    .line 402
    instance-of v2, v0, Lbjb;

    if-eqz v2, :cond_b

    .line 403
    iget-object v1, p0, Lbrw;->c:Landroid/view/LayoutInflater;

    sget v2, Laal;->fe:I

    invoke-virtual {v1, v2, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 404
    check-cast v0, Lbjb;

    .line 405
    iget v5, v0, Lbjb;->b:I

    .line 407
    sget v1, Laen;->dn:I

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 408
    sget v2, Laen;->gl:I

    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 409
    sget v3, Laen;->gC:I

    invoke-virtual {v6, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 410
    sget v4, Laen;->gx:I

    invoke-virtual {v6, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 412
    invoke-static {v5}, Laal;->f(I)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 413
    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 414
    invoke-static {v5}, Lbrw;->a(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 415
    iget-object v1, p0, Lbrw;->b:Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;

    .line 8041
    iget-boolean v1, v1, Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;->d:Z

    .line 415
    if-eqz v1, :cond_3

    sget v1, Lcom/google/android/apps/hangouts/hangout/StressMode;->fX:I

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 416
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 417
    iget-object v1, v0, Lbjb;->c:Ljava/lang/String;

    invoke-static {v1}, Lezm;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 418
    iget-object v1, p0, Lbrw;->b:Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;

    invoke-virtual {v1}, Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Laal;->cS:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 420
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 421
    iget-object v1, v0, Lbjb;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lbrw;->a:Z

    if-eqz v1, :cond_8

    .line 422
    :cond_0
    iget-object v0, v0, Lbjb;->f:Ljava/lang/String;

    .line 423
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 427
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 428
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 429
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    iget-boolean v0, p0, Lbrw;->a:Z

    if-eqz v0, :cond_1

    .line 431
    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    :cond_1
    iget-boolean v0, p0, Lbrw;->a:Z

    if-eqz v0, :cond_2

    .line 435
    const-string v0, "("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lbrw;->b:Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;

    .line 9508
    invoke-static {v5}, Laal;->e(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 9509
    iget-boolean v0, v3, Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;->d:Z

    if-eqz v0, :cond_4

    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->sz:I

    .line 9518
    :goto_1
    invoke-virtual {v3}, Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 435
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, v6

    .line 468
    :goto_2
    if-nez v0, :cond_e

    .line 472
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lbrw;->c:Landroid/view/LayoutInflater;

    invoke-virtual {v1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 473
    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 502
    :goto_3
    return-object v0

    .line 415
    :cond_3
    sget v1, Lcom/google/android/apps/hangouts/hangout/StressMode;->jo:I

    goto/16 :goto_0

    .line 9509
    :cond_4
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->sA:I

    goto :goto_1

    .line 9511
    :cond_5
    iget v0, v3, Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;->a:I

    invoke-static {v0}, Ldvd;->e(I)Lbfd;

    move-result-object v0

    .line 9512
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lbfd;->R()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 9513
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->sB:I

    goto :goto_1

    .line 9515
    :cond_6
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->sy:I

    goto :goto_1

    .line 439
    :cond_7
    invoke-static {v5}, Laal;->g(I)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 442
    iget-object v5, p0, Lbrw;->b:Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;

    .line 10234
    iget-boolean v5, v5, Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;->c:Z

    if-eqz v5, :cond_9

    sget v5, Laal;->hf:I

    .line 10235
    :goto_4
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 443
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 444
    iget-object v1, v0, Lbjb;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 445
    iget-object v0, v0, Lbjb;->c:Ljava/lang/String;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 449
    :goto_5
    iget-object v0, p0, Lbrw;->b:Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/apps/hangouts/hangout/StressMode;->eF:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    move-object v0, v6

    .line 451
    goto :goto_2

    .line 10234
    :cond_9
    sget v5, Lcom/google/android/apps/hangouts/R$drawable;->bn:I

    goto :goto_4

    .line 447
    :cond_a
    iget-object v0, v0, Lbjb;->d:Ljava/lang/String;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 451
    :cond_b
    instance-of v2, v0, Lbrx;

    if-eqz v2, :cond_11

    .line 452
    check-cast v0, Lbrx;

    .line 453
    iget-object v1, p0, Lbrw;->c:Landroid/view/LayoutInflater;

    sget v2, Laal;->fh:I

    invoke-virtual {v1, v2, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 454
    sget v1, Laen;->gC:I

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 455
    sget v2, Laen;->dn:I

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 456
    invoke-virtual {v0}, Lbrx;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 457
    invoke-virtual {v0}, Lbrx;->b()I

    move-result v1

    .line 458
    if-nez v1, :cond_d

    .line 459
    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 464
    :goto_6
    instance-of v1, v0, Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_c

    .line 465
    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_c
    move-object v0, v3

    goto/16 :goto_2

    .line 461
    :cond_d
    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 462
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_6

    .line 475
    :cond_e
    if-nez p1, :cond_f

    .line 476
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lbrw;->b:Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;

    .line 477
    invoke-virtual {v2}, Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Laal;->eF:I

    .line 478
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 479
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 481
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lbrw;->b:Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;

    .line 482
    invoke-virtual {v2}, Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Laal;->eD:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 483
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    .line 480
    invoke-virtual {v0, v1, v2, v3, v8}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_3

    .line 485
    :cond_f
    invoke-virtual {p0}, Lbrw;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_10

    .line 486
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lbrw;->b:Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;

    .line 487
    invoke-virtual {v2}, Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Laal;->eF:I

    .line 488
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 489
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 491
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 493
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    iget-object v3, p0, Lbrw;->b:Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;

    .line 494
    invoke-virtual {v3}, Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Laal;->eD:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 490
    invoke-virtual {v0, v1, v8, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_3

    .line 496
    :cond_10
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lbrw;->b:Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;

    .line 497
    invoke-virtual {v2}, Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Laal;->eE:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 498
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 499
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-virtual {v0, v1, v8, v2, v8}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_3

    :cond_11
    move-object v0, v1

    goto/16 :goto_2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v3, 0x0

    .line 362
    invoke-virtual {p0, p1}, Lbrw;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 363
    const/4 v1, 0x0

    .line 364
    instance-of v2, v0, Lbjb;

    if-eqz v2, :cond_7

    .line 365
    check-cast v0, Lbjb;

    move-object v2, v0

    .line 368
    :goto_0
    iget-object v0, p0, Lbrw;->b:Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;

    .line 1041
    iget-object v0, v0, Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;->e:Landroid/view/View;

    .line 368
    if-nez v0, :cond_0

    .line 369
    iget-object v0, p0, Lbrw;->b:Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;

    iget-object v1, p0, Lbrw;->c:Landroid/view/LayoutInflater;

    sget v4, Laal;->gP:I

    invoke-virtual {v1, v4, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 2041
    iput-object v1, v0, Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;->e:Landroid/view/View;

    .line 372
    :cond_0
    iget-object v0, p0, Lbrw;->b:Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;

    .line 3041
    iget-object v0, v0, Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;->e:Landroid/view/View;

    .line 372
    sget v1, Laen;->gW:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 373
    iget-object v1, p0, Lbrw;->b:Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;

    .line 4041
    iget-object v1, v1, Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;->e:Landroid/view/View;

    .line 373
    sget v4, Laen;->gl:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 375
    if-eqz v2, :cond_1

    .line 376
    iget v2, v2, Lbjb;->b:I

    .line 378
    :goto_1
    if-nez v2, :cond_2

    .line 380
    sget v2, Lcom/google/android/apps/hangouts/R$drawable;->bn:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 381
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 395
    :goto_2
    iget-object v0, p0, Lbrw;->b:Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;

    .line 7041
    iget-object v0, v0, Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;->e:Landroid/view/View;

    .line 395
    return-object v0

    :cond_1
    move v2, v3

    .line 376
    goto :goto_1

    .line 382
    :cond_2
    invoke-static {v2}, Laal;->f(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 383
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 384
    invoke-static {v2}, Lbrw;->a(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 385
    iget-object v0, p0, Lbrw;->b:Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;

    .line 5041
    iget-boolean v0, v0, Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;->d:Z

    .line 385
    if-eqz v0, :cond_3

    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->fX:I

    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 386
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 385
    :cond_3
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->jo:I

    goto :goto_3

    .line 387
    :cond_4
    invoke-static {v2}, Laal;->g(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 388
    iget-object v2, p0, Lbrw;->b:Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;

    .line 6234
    iget-boolean v2, v2, Lcom/google/android/apps/hangouts/conversation/v2/TransportSpinner;->c:Z

    if-eqz v2, :cond_5

    sget v2, Laal;->hf:I

    .line 6235
    :goto_4
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 389
    const-string v0, ""

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 390
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 6234
    :cond_5
    sget v2, Lcom/google/android/apps/hangouts/R$drawable;->bn:I

    goto :goto_4

    .line 392
    :cond_6
    const-string v0, "Babel"

    const-string v1, "Unexpected variant"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_7
    move-object v2, v1

    goto/16 :goto_0
.end method
