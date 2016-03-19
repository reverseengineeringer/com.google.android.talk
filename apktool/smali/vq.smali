.class final Lvq;
.super Lys;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:Lvn;

.field private final b:[I

.field private c:Lqh;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/view/View;


# direct methods
.method public constructor <init>(Lvn;Landroid/content/Context;Lqh;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 389
    iput-object p1, p0, Lvq;->a:Lvn;

    .line 390
    sget v0, Laen;->w:I

    invoke-direct {p0, p2, v3, v0}, Lys;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 380
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x10100d4

    aput v1, v0, v2

    iput-object v0, p0, Lvq;->b:[I

    .line 391
    iput-object p3, p0, Lvq;->c:Lqh;

    .line 393
    iget-object v0, p0, Lvq;->b:[I

    sget v1, Laen;->w:I

    invoke-static {p2, v3, v0, v1}, Lvw;->a(Landroid/content/Context;Landroid/util/AttributeSet;[II)Lvw;

    move-result-object v0

    .line 395
    invoke-virtual {v0, v2}, Lvw;->g(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 396
    invoke-virtual {v0, v2}, Lvw;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lvq;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 398
    :cond_0
    invoke-virtual {v0}, Lvw;->a()V

    .line 401
    const v0, 0x800013

    invoke-virtual {p0, v0}, Lvq;->f(I)V

    .line 404
    invoke-direct {p0}, Lvq;->b()V

    .line 405
    return-void
.end method

.method private b()V
    .locals 10

    .prologue
    const/16 v9, 0x10

    const/16 v6, 0x8

    const/4 v8, -0x2

    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 450
    iget-object v2, p0, Lvq;->c:Lqh;

    .line 451
    invoke-virtual {v2}, Lqh;->c()Landroid/view/View;

    move-result-object v3

    .line 452
    if-eqz v3, :cond_4

    .line 453
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 454
    if-eq v0, p0, :cond_1

    .line 455
    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 456
    :cond_0
    invoke-virtual {p0, v3}, Lvq;->addView(Landroid/view/View;)V

    .line 458
    :cond_1
    iput-object v3, p0, Lvq;->f:Landroid/view/View;

    .line 459
    iget-object v0, p0, Lvq;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lvq;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 460
    :cond_2
    iget-object v0, p0, Lvq;->e:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 461
    iget-object v0, p0, Lvq;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 462
    iget-object v0, p0, Lvq;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 521
    :cond_3
    :goto_0
    return-void

    .line 465
    :cond_4
    iget-object v0, p0, Lvq;->f:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 466
    iget-object v0, p0, Lvq;->f:Landroid/view/View;

    invoke-virtual {p0, v0}, Lvq;->removeView(Landroid/view/View;)V

    .line 467
    iput-object v7, p0, Lvq;->f:Landroid/view/View;

    .line 470
    :cond_5
    invoke-virtual {v2}, Lqh;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 471
    invoke-virtual {v2}, Lqh;->b()Ljava/lang/CharSequence;

    move-result-object v3

    .line 473
    if-eqz v0, :cond_b

    .line 474
    iget-object v4, p0, Lvq;->e:Landroid/widget/ImageView;

    if-nez v4, :cond_6

    .line 475
    new-instance v4, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lvq;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 476
    new-instance v5, Lyt;

    invoke-direct {v5, v8, v8}, Lyt;-><init>(II)V

    .line 478
    iput v9, v5, Lyt;->h:I

    .line 479
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 480
    invoke-virtual {p0, v4, v1}, Lvq;->addView(Landroid/view/View;I)V

    .line 481
    iput-object v4, p0, Lvq;->e:Landroid/widget/ImageView;

    .line 483
    :cond_6
    iget-object v4, p0, Lvq;->e:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 484
    iget-object v0, p0, Lvq;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 490
    :cond_7
    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    .line 491
    :goto_2
    if-eqz v0, :cond_d

    .line 492
    iget-object v4, p0, Lvq;->d:Landroid/widget/TextView;

    if-nez v4, :cond_8

    .line 493
    new-instance v4, Lxr;

    invoke-virtual {p0}, Lvq;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Laen;->x:I

    invoke-direct {v4, v5, v7, v6}, Lxr;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 495
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 496
    new-instance v5, Lyt;

    invoke-direct {v5, v8, v8}, Lyt;-><init>(II)V

    .line 498
    iput v9, v5, Lyt;->h:I

    .line 499
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 500
    invoke-virtual {p0, v4}, Lvq;->addView(Landroid/view/View;)V

    .line 501
    iput-object v4, p0, Lvq;->d:Landroid/widget/TextView;

    .line 503
    :cond_8
    iget-object v4, p0, Lvq;->d:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 504
    iget-object v3, p0, Lvq;->d:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 510
    :cond_9
    :goto_3
    iget-object v3, p0, Lvq;->e:Landroid/widget/ImageView;

    if-eqz v3, :cond_a

    .line 511
    iget-object v3, p0, Lvq;->e:Landroid/widget/ImageView;

    invoke-virtual {v2}, Lqh;->d()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 514
    :cond_a
    if-nez v0, :cond_e

    invoke-virtual {v2}, Lqh;->d()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 515
    invoke-virtual {p0, p0}, Lvq;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto/16 :goto_0

    .line 485
    :cond_b
    iget-object v0, p0, Lvq;->e:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    .line 486
    iget-object v0, p0, Lvq;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 487
    iget-object v0, p0, Lvq;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_c
    move v0, v1

    .line 490
    goto :goto_2

    .line 505
    :cond_d
    iget-object v3, p0, Lvq;->d:Landroid/widget/TextView;

    if-eqz v3, :cond_9

    .line 506
    iget-object v3, p0, Lvq;->d:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 507
    iget-object v3, p0, Lvq;->d:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 517
    :cond_e
    invoke-virtual {p0, v7}, Lvq;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 518
    invoke-virtual {p0, v1}, Lvq;->setLongClickable(Z)V

    goto/16 :goto_0
.end method


# virtual methods
.method public a()Lqh;
    .locals 1

    .prologue
    .line 543
    iget-object v0, p0, Lvq;->c:Lqh;

    return-object v0
.end method

.method public a(Lqh;)V
    .locals 0

    .prologue
    .line 408
    iput-object p1, p0, Lvq;->c:Lqh;

    .line 409
    invoke-direct {p0}, Lvq;->b()V

    .line 410
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 423
    invoke-super {p0, p1}, Lys;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 425
    const-class v0, Lqh;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 426
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    .prologue
    .line 430
    invoke-super {p0, p1}, Lys;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 432
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 434
    const-class v0, Lqh;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 436
    :cond_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 524
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 525
    invoke-virtual {p0, v0}, Lvq;->getLocationOnScreen([I)V

    .line 527
    invoke-virtual {p0}, Lvq;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 528
    invoke-virtual {p0}, Lvq;->getWidth()I

    move-result v2

    .line 529
    invoke-virtual {p0}, Lvq;->getHeight()I

    move-result v3

    .line 530
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 532
    iget-object v5, p0, Lvq;->c:Lqh;

    invoke-virtual {v5}, Lqh;->d()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v1, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 535
    const/16 v5, 0x31

    aget v0, v0, v6

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    div-int/lit8 v2, v4, 0x2

    sub-int/2addr v0, v2

    invoke-virtual {v1, v5, v0, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 538
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 539
    const/4 v0, 0x1

    return v0
.end method

.method public onMeasure(II)V
    .locals 2

    .prologue
    .line 440
    invoke-super {p0, p1, p2}, Lys;->onMeasure(II)V

    .line 443
    iget-object v0, p0, Lvq;->a:Lvn;

    iget v0, v0, Lvn;->c:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lvq;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lvq;->a:Lvn;

    iget v1, v1, Lvn;->c:I

    if-le v0, v1, :cond_0

    .line 444
    iget-object v0, p0, Lvq;->a:Lvn;

    iget v0, v0, Lvn;->c:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v0, p2}, Lys;->onMeasure(II)V

    .line 447
    :cond_0
    return-void
.end method

.method public setSelected(Z)V
    .locals 1

    .prologue
    .line 414
    invoke-virtual {p0}, Lvq;->isSelected()Z

    move-result v0

    if-eq v0, p1, :cond_1

    const/4 v0, 0x1

    .line 415
    :goto_0
    invoke-super {p0, p1}, Lys;->setSelected(Z)V

    .line 416
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 417
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lvq;->sendAccessibilityEvent(I)V

    .line 419
    :cond_0
    return-void

    .line 414
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
