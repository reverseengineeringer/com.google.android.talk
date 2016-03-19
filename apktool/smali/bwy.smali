.class public final Lbwy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbwp;


# static fields
.field static final a:I

.field static final b:I

.field static final c:I

.field static final d:I

.field static final e:I


# instance fields
.field volatile A:Z

.field private final B:Lbxh;

.field private C:I

.field private D:Landroid/widget/LinearLayout;

.field private E:Landroid/widget/Space;

.field private F:F

.field private G:Landroid/view/Menu;

.field private H:Landroid/view/SubMenu;

.field private I:I

.field private J:Lbwq;

.field private K:Lhpu;

.field private final L:Lawo;

.field private final M:Leot;

.field private N:I

.field private O:I

.field f:Landroid/content/Context;

.field g:Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;

.field h:Landroid/view/View;

.field i:Landroid/widget/FrameLayout;

.field j:I

.field k:I

.field l:Landroid/app/Dialog;

.field m:Lcom/google/android/apps/hangouts/floatingactionbutton/impl/QuickButtonContainer;

.field n:Lbwo;

.field o:Lczm;

.field p:Lczp;

.field q:Lczn;

.field r:Lczo;

.field s:La;

.field t:Landroid/view/MenuItem;

.field u:Landroid/view/MenuItem;

.field v:Landroid/view/MenuItem;

.field w:Landroid/view/MenuItem;

.field x:Landroid/view/MenuItem;

.field y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View$OnClickListener;",
            ">;"
        }
    .end annotation
.end field

.field z:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    sget v0, Laen;->hU:I

    sput v0, Lbwy;->a:I

    .line 80
    sget v0, Laen;->hV:I

    sput v0, Lbwy;->b:I

    .line 81
    sget v0, Laen;->hY:I

    sput v0, Lbwy;->c:I

    .line 82
    sget v0, Laen;->hW:I

    sput v0, Lbwy;->d:I

    .line 83
    sget v0, Laen;->hX:I

    sput v0, Lbwy;->e:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Lbxh;

    .line 1817
    invoke-direct {v0, p0}, Lbxh;-><init>(Lbwy;)V

    .line 88
    iput-object v0, p0, Lbwy;->B:Lbxh;

    .line 121
    iput v1, p0, Lbwy;->I:I

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbwy;->y:Ljava/util/List;

    .line 134
    iput v1, p0, Lbwy;->O:I

    .line 135
    iput-boolean v1, p0, Lbwy;->A:Z

    .line 138
    iput-object p1, p0, Lbwy;->f:Landroid/content/Context;

    .line 139
    const-class v0, Lhpu;

    invoke-static {p1, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpu;

    iput-object v0, p0, Lbwy;->K:Lhpu;

    .line 140
    iget-object v0, p0, Lbwy;->K:Lhpu;

    new-instance v1, Lbxg;

    .line 1841
    invoke-direct {v1, p0}, Lbxg;-><init>(Lbwy;)V

    .line 140
    invoke-interface {v0, v1}, Lhpu;->a(Lhpw;)Lhpu;

    .line 141
    const-class v0, Lawo;

    invoke-static {p1, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lawo;

    iput-object v0, p0, Lbwy;->L:Lawo;

    .line 142
    const-class v0, Leot;

    invoke-static {p1, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leot;

    iput-object v0, p0, Lbwy;->M:Leot;

    .line 143
    return-void
.end method

.method private a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/LayoutInflater;",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List",
            "<",
            "Lbwo;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 435
    iget-object v0, p0, Lbwy;->m:Lcom/google/android/apps/hangouts/floatingactionbutton/impl/QuickButtonContainer;

    sget v1, Laal;->lu:I

    invoke-virtual {v0, v1}, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/QuickButtonContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lbwy;->D:Landroid/widget/LinearLayout;

    .line 437
    iput v2, p0, Lbwy;->O:I

    .line 438
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbwo;

    .line 439
    if-eqz v0, :cond_3

    .line 442
    if-nez v1, :cond_2

    .line 443
    sget v1, Laal;->ls:I

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 444
    iput-object v0, p0, Lbwy;->n:Lbwo;

    .line 445
    const/4 v1, 0x1

    .line 447
    new-instance v5, Lbxb;

    invoke-direct {v5, p0}, Lbxb;-><init>(Lbwy;)V

    invoke-static {v4, v0, v5}, Lbwy;->a(Landroid/view/View;Lbwo;Landroid/view/View$OnClickListener;)V

    move v0, v1

    .line 479
    :goto_1
    iget v1, p0, Lbwy;->O:I

    iget v4, p0, Lbwy;->N:I

    if-ne v1, v4, :cond_4

    .line 483
    :cond_0
    iget-object v0, p0, Lbwy;->n:Lbwo;

    if-nez v0, :cond_1

    .line 486
    iget-object v0, p0, Lbwy;->K:Lhpu;

    invoke-interface {v0}, Lhpu;->a()I

    move-result v0

    .line 487
    const-string v1, "Babel_FAB"

    const-string v3, "primaryAction == null; account_id: "

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 491
    invoke-virtual {p0}, Lbwy;->l()Lbfd;

    move-result-object v4

    invoke-virtual {v4}, Lbfd;->g()I

    move-result v4

    iget-object v5, p0, Lbwy;->M:Leot;

    .line 493
    invoke-interface {v5, v0}, Leot;->a(I)Z

    move-result v5

    iget-object v6, p0, Lbwy;->L:Lawo;

    .line 495
    invoke-interface {v6, v0}, Lawo;->d(I)Z

    move-result v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x2e

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " carrier_sms_only: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " sms: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    .line 487
    invoke-static {v1, v0, v2}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 497
    :cond_1
    const-string v0, "Primary action must be set at this point"

    iget-object v1, p0, Lbwy;->n:Lbwo;

    invoke-static {v0, v1}, Lhbs;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    return-void

    .line 466
    :cond_2
    sget v4, Laen;->ib:I

    iget-object v5, p0, Lbwy;->m:Lcom/google/android/apps/hangouts/floatingactionbutton/impl/QuickButtonContainer;

    invoke-virtual {p1, v4, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 468
    iget-object v5, p0, Lbwy;->D:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 469
    iget v5, p0, Lbwy;->O:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lbwy;->O:I

    .line 471
    new-instance v5, Lbxd;

    invoke-direct {v5, p0, v0}, Lbxd;-><init>(Lbwy;Lbwo;)V

    invoke-static {v4, v0, v5}, Lbwy;->a(Landroid/view/View;Lbwo;Landroid/view/View$OnClickListener;)V

    :cond_3
    move v0, v1

    goto/16 :goto_1

    :cond_4
    move v1, v0

    goto/16 :goto_0
.end method

.method private static a(Landroid/view/View;Lbwo;Landroid/view/View$OnClickListener;)V
    .locals 3

    .prologue
    .line 502
    sget v0, Laal;->lv:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 503
    invoke-interface {p1}, Lbwo;->z()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 504
    sget v1, Laal;->lt:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 505
    if-eqz v1, :cond_0

    .line 506
    invoke-interface {p1}, Lbwo;->A()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 508
    :cond_0
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 509
    invoke-virtual {p0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 510
    return-void
.end method

.method static b(I)I
    .locals 2

    .prologue
    .line 321
    sget v0, Lbwy;->a:I

    if-eq p0, v0, :cond_0

    sget v0, Lbwy;->b:I

    if-eq p0, v0, :cond_0

    sget v0, Lbwy;->c:I

    if-ne p0, v0, :cond_1

    .line 324
    :cond_0
    sget v0, Laal;->lC:I

    .line 332
    :goto_0
    return v0

    .line 325
    :cond_1
    sget v0, Lbwy;->d:I

    if-ne p0, v0, :cond_2

    .line 326
    sget v0, Laal;->lB:I

    goto :goto_0

    .line 327
    :cond_2
    sget v0, Lbwy;->e:I

    if-ne p0, v0, :cond_3

    .line 328
    sget v0, Laal;->lD:I

    goto :goto_0

    .line 331
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x3d

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Content description is not ready for drawable ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhbs;->a(Ljava/lang/String;)V

    .line 332
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static j()Z
    .locals 2

    .prologue
    .line 704
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 408
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbwy;->b(Z)V

    .line 409
    iget-object v0, p0, Lbwy;->i:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lbwy;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 411
    iput-object v2, p0, Lbwy;->i:Landroid/widget/FrameLayout;

    .line 413
    :cond_0
    iget-object v0, p0, Lbwy;->m:Lcom/google/android/apps/hangouts/floatingactionbutton/impl/QuickButtonContainer;

    if-eqz v0, :cond_1

    .line 414
    iget-object v0, p0, Lbwy;->m:Lcom/google/android/apps/hangouts/floatingactionbutton/impl/QuickButtonContainer;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/QuickButtonContainer;->removeAllViews()V

    .line 415
    iput-object v2, p0, Lbwy;->m:Lcom/google/android/apps/hangouts/floatingactionbutton/impl/QuickButtonContainer;

    .line 417
    :cond_1
    iput-object v2, p0, Lbwy;->l:Landroid/app/Dialog;

    .line 418
    iput-object v2, p0, Lbwy;->g:Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;

    .line 419
    iput-object v2, p0, Lbwy;->E:Landroid/widget/Space;

    .line 420
    iget-object v0, p0, Lbwy;->H:Landroid/view/SubMenu;

    if-eqz v0, :cond_2

    .line 421
    iget-object v0, p0, Lbwy;->H:Landroid/view/SubMenu;

    invoke-interface {v0}, Landroid/view/SubMenu;->clear()V

    .line 422
    iget-object v0, p0, Lbwy;->G:Landroid/view/Menu;

    iget-object v1, p0, Lbwy;->H:Landroid/view/SubMenu;

    invoke-interface {v1}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/Menu;->removeItem(I)V

    .line 424
    :cond_2
    iput-object v2, p0, Lbwy;->G:Landroid/view/Menu;

    .line 425
    iput-object v2, p0, Lbwy;->H:Landroid/view/SubMenu;

    .line 426
    iput-object v2, p0, Lbwy;->t:Landroid/view/MenuItem;

    .line 427
    iput-object v2, p0, Lbwy;->u:Landroid/view/MenuItem;

    .line 428
    iput-object v2, p0, Lbwy;->v:Landroid/view/MenuItem;

    .line 429
    iput-object v2, p0, Lbwy;->w:Landroid/view/MenuItem;

    .line 430
    return-void
.end method

.method a(F)V
    .locals 2

    .prologue
    .line 584
    iget-object v0, p0, Lbwy;->g:Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    neg-float v1, p1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 585
    return-void
.end method

.method public a(FZ)V
    .locals 4

    .prologue
    const/high16 v1, -0x40800000    # -1.0f

    .line 337
    iput p1, p0, Lbwy;->F:F

    .line 339
    iget-object v0, p0, Lbwy;->i:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 340
    if-eqz p2, :cond_2

    .line 341
    iget-object v0, p0, Lbwy;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 347
    :cond_0
    :goto_0
    iget-object v0, p0, Lbwy;->E:Landroid/widget/Space;

    if-eqz v0, :cond_1

    .line 348
    if-eqz p2, :cond_3

    iget-object v0, p0, Lbwy;->l:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 349
    iget-object v0, p0, Lbwy;->E:Landroid/widget/Space;

    new-instance v1, Lbxi;

    iget-object v2, p0, Lbwy;->E:Landroid/widget/Space;

    float-to-int v3, p1

    invoke-direct {v1, v2, v3}, Lbxi;-><init>(Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Landroid/widget/Space;->startAnimation(Landroid/view/animation/Animation;)V

    .line 357
    :cond_1
    :goto_1
    return-void

    .line 343
    :cond_2
    iget-object v0, p0, Lbwy;->i:Landroid/widget/FrameLayout;

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setY(F)V

    goto :goto_0

    .line 352
    :cond_3
    iget-object v0, p0, Lbwy;->E:Landroid/widget/Space;

    invoke-virtual {v0}, Landroid/widget/Space;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 353
    float-to-int v1, p1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 354
    iget-object v1, p0, Lbwy;->E:Landroid/widget/Space;

    invoke-virtual {v1, v0}, Landroid/widget/Space;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method public a(I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 598
    iput p1, p0, Lbwy;->I:I

    .line 599
    iget-object v0, p0, Lbwy;->g:Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;

    if-nez v0, :cond_0

    .line 623
    :goto_0
    return-void

    .line 603
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_2

    .line 604
    if-ne p1, v2, :cond_1

    iget v0, p0, Lbwy;->k:I

    int-to-float v0, v0

    :goto_1
    invoke-virtual {p0, v0}, Lbwy;->b(F)V

    .line 608
    :goto_2
    if-ne p1, v2, :cond_4

    .line 609
    iget-object v0, p0, Lbwy;->h:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 610
    invoke-virtual {p0}, Lbwy;->i()I

    move-result v0

    .line 611
    iget-object v1, p0, Lbwy;->g:Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;

    .line 612
    invoke-static {v0}, Lbwy;->b(I)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;->a(II)V

    goto :goto_0

    .line 604
    :cond_1
    iget v0, p0, Lbwy;->j:I

    int-to-float v0, v0

    goto :goto_1

    .line 606
    :cond_2
    if-ne p1, v2, :cond_3

    iget v0, p0, Lbwy;->k:I

    int-to-float v0, v0

    :goto_3
    invoke-virtual {p0, v0}, Lbwy;->a(F)V

    goto :goto_2

    :cond_3
    iget v0, p0, Lbwy;->j:I

    int-to-float v0, v0

    goto :goto_3

    .line 616
    :cond_4
    iget-object v0, p0, Lbwy;->f:Landroid/content/Context;

    invoke-static {v0}, Lezc;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 617
    iget-object v0, p0, Lbwy;->h:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 619
    :cond_5
    iget-object v0, p0, Lbwy;->g:Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;

    sget v1, Lbwy;->a:I

    sget v2, Lbwy;->a:I

    .line 620
    invoke-static {v2}, Lbwy;->b(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;->a(II)V

    goto :goto_0
.end method

.method a(II)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 789
    iget-object v0, p0, Lbwy;->i:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 790
    iget-object v0, p0, Lbwy;->f:Landroid/content/Context;

    .line 792
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Laal;->lw:I

    .line 793
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 794
    iget-object v1, p0, Lbwy;->i:Landroid/widget/FrameLayout;

    .line 796
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-array v2, v6, [Landroid/animation/PropertyValuesHolder;

    const-string v3, "alpha"

    const/4 v4, 0x2

    new-array v4, v4, [I

    aput p1, v4, v5

    aput p2, v4, v6

    .line 797
    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    aput-object v3, v2, v5

    .line 795
    invoke-static {v1, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 798
    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 799
    new-instance v0, Lnu;

    invoke-direct {v0}, Lnu;-><init>()V

    invoke-virtual {v1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 800
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 802
    :cond_0
    return-void
.end method

.method public a(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 641
    iget-object v0, p0, Lbwy;->y:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 642
    return-void
.end method

.method public a(Lba;Landroid/view/ViewGroup;Landroid/view/Menu;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 174
    iget-object v0, p0, Lbwy;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 175
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 176
    iget-object v1, p0, Lbwy;->f:Landroid/content/Context;

    invoke-static {v1}, Lexa;->a(Landroid/content/Context;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 178
    iget-object v1, p0, Lbwy;->f:Landroid/content/Context;

    .line 179
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Laal;->ll:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 180
    iget-object v2, p0, Lbwy;->f:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Laal;->ll:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 181
    iget-object v3, p0, Lbwy;->f:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Laal;->ln:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 182
    iget-object v4, p0, Lbwy;->f:Landroid/content/Context;

    .line 183
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Laal;->lo:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 185
    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    sub-int/2addr v0, v4

    .line 187
    add-int v1, v3, v4

    div-int/2addr v0, v1

    iput v0, p0, Lbwy;->N:I

    .line 191
    invoke-virtual {p0}, Lbwy;->l()Lbfd;

    move-result-object v0

    if-nez v0, :cond_1

    .line 192
    const-string v0, "Babel_FAB"

    const-string v1, "Not decorating since account is not yet available"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    iget-object v0, p0, Lbwy;->M:Leot;

    iget-object v1, p0, Lbwy;->K:Lhpu;

    invoke-interface {v1}, Lhpu;->a()I

    move-result v1

    invoke-interface {v0, v1}, Leot;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lbwy;->L:Lawo;

    iget-object v1, p0, Lbwy;->K:Lhpu;

    .line 196
    invoke-interface {v1}, Lhpu;->a()I

    move-result v1

    invoke-interface {v0, v1}, Lawo;->d(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 197
    const-string v0, "Babel_FAB"

    const-string v1, "Not decorating since account is carrier sms on account but hangouts is not the sms app"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 2252
    :cond_2
    sget v0, Laen;->cj:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lbwy;->i:Landroid/widget/FrameLayout;

    .line 2254
    invoke-virtual {p1}, Lba;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 2255
    sget v0, Laen;->ia:I

    iget-object v2, p0, Lbwy;->i:Landroid/widget/FrameLayout;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 2360
    new-instance v0, Landroid/app/Dialog;

    iget-object v2, p0, Lbwy;->f:Landroid/content/Context;

    const v3, 0x1030009

    invoke-direct {v0, v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lbwy;->l:Landroid/app/Dialog;

    .line 2361
    iget-object v0, p0, Lbwy;->l:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 2362
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2364
    iget-object v0, p0, Lbwy;->l:Landroid/app/Dialog;

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 2365
    iget-object v0, p0, Lbwy;->l:Landroid/app/Dialog;

    new-instance v3, Lbwz;

    invoke-direct {v3, p0}, Lbwz;-><init>(Lbwy;)V

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 2380
    sget v0, Laen;->ic:I

    const/4 v3, 0x0

    .line 2381
    invoke-virtual {v1, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/QuickButtonContainer;

    iput-object v0, p0, Lbwy;->m:Lcom/google/android/apps/hangouts/floatingactionbutton/impl/QuickButtonContainer;

    .line 2382
    iget-object v0, p0, Lbwy;->m:Lcom/google/android/apps/hangouts/floatingactionbutton/impl/QuickButtonContainer;

    new-instance v3, Lbxa;

    invoke-direct {v3, p0}, Lbxa;-><init>(Lbwy;)V

    invoke-virtual {v0, v3}, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/QuickButtonContainer;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2391
    iget-object v0, p0, Lbwy;->m:Lcom/google/android/apps/hangouts/floatingactionbutton/impl/QuickButtonContainer;

    invoke-virtual {v2, v0}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 2392
    iget-object v0, p0, Lbwy;->m:Lcom/google/android/apps/hangouts/floatingactionbutton/impl/QuickButtonContainer;

    sget v2, Laal;->lp:I

    .line 2393
    invoke-virtual {v0, v2}, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/QuickButtonContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Space;

    iput-object v0, p0, Lbwy;->E:Landroid/widget/Space;

    .line 2396
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2397
    invoke-virtual {p0}, Lbwy;->h()V

    .line 2398
    iget-object v2, p0, Lbwy;->o:Lczm;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2399
    iget-object v2, p0, Lbwy;->q:Lczn;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2400
    iget-object v2, p0, Lbwy;->r:Lczo;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2401
    iget-object v2, p0, Lbwy;->p:Lczp;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2402
    iget-object v2, p0, Lbwy;->s:La;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2403
    iget-object v2, p0, Lbwy;->m:Lcom/google/android/apps/hangouts/floatingactionbutton/impl/QuickButtonContainer;

    invoke-direct {p0, v1, v2, v0}, Lbwy;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Ljava/util/List;)V

    .line 2259
    iget-object v0, p0, Lbwy;->i:Landroid/widget/FrameLayout;

    sget v1, Laal;->lr:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbwy;->h:Landroid/view/View;

    .line 2261
    iget-object v0, p0, Lbwy;->h:Landroid/view/View;

    sget v1, Laal;->lq:I

    .line 2262
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;

    iput-object v0, p0, Lbwy;->g:Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;

    .line 2264
    iget-object v0, p0, Lbwy;->g:Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;

    new-instance v1, Lbww;

    invoke-direct {v1, p0}, Lbww;-><init>(Lbwy;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;->a(Lbww;)V

    .line 2308
    iget-object v0, p0, Lbwy;->g:Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Laal;->ll:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lbwy;->C:I

    .line 2311
    iput v6, p0, Lbwy;->j:I

    .line 2626
    iget-object v0, p0, Lbwy;->g:Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    .line 2627
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 2628
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 2629
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 2630
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 2631
    iget v0, v1, Landroid/graphics/Point;->x:I

    .line 2633
    iget-object v1, p0, Lbwy;->g:Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;

    invoke-virtual {v1}, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Laal;->lk:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 2636
    iget v2, p0, Lbwy;->C:I

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lbwy;->k:I

    .line 2313
    iget v0, p0, Lbwy;->F:F

    invoke-virtual {p0, v0, v6}, Lbwy;->a(FZ)V

    .line 2315
    iget-object v0, p0, Lbwy;->g:Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;

    iget-object v1, p0, Lbwy;->m:Lcom/google/android/apps/hangouts/floatingactionbutton/impl/QuickButtonContainer;

    .line 2316
    invoke-virtual {v1}, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/QuickButtonContainer;->a()Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v1

    .line 2315
    invoke-virtual {v0, v1}, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;->a(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2317
    iget-object v0, p0, Lbwy;->g:Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;

    iget-object v1, p0, Lbwy;->m:Lcom/google/android/apps/hangouts/floatingactionbutton/impl/QuickButtonContainer;

    invoke-virtual {v1}, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/QuickButtonContainer;->b()Landroid/animation/Animator$AnimatorListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;->a(Landroid/animation/Animator$AnimatorListener;)V

    .line 204
    if-eqz p3, :cond_0

    .line 3211
    iget-object v0, p0, Lbwy;->f:Landroid/content/Context;

    invoke-static {v0}, Lezc;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3215
    iput-object p3, p0, Lbwy;->G:Landroid/view/Menu;

    .line 3217
    iget-object v0, p0, Lbwy;->G:Landroid/view/Menu;

    sget v1, Laen;->fy:I

    sget v2, Laal;->lC:I

    invoke-interface {v0, v6, v1, v6, v2}, Landroid/view/Menu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v0

    iput-object v0, p0, Lbwy;->H:Landroid/view/SubMenu;

    .line 3220
    iget-object v0, p0, Lbwy;->H:Landroid/view/SubMenu;

    sget v1, Lcom/google/android/apps/hangouts/R$drawable;->bB:I

    invoke-interface {v0, v1}, Landroid/view/SubMenu;->setIcon(I)Landroid/view/SubMenu;

    .line 3221
    iget-object v0, p0, Lbwy;->H:Landroid/view/SubMenu;

    invoke-interface {v0}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v0

    .line 4034
    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljr;->a(Landroid/view/MenuItem;I)V

    .line 3223
    invoke-virtual {p0}, Lbwy;->h()V

    .line 3225
    iget-object v0, p0, Lbwy;->o:Lczm;

    if-eqz v0, :cond_3

    .line 3226
    iget-object v0, p0, Lbwy;->H:Landroid/view/SubMenu;

    iget-object v1, p0, Lbwy;->o:Lczm;

    invoke-interface {v1}, Lczm;->z()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/SubMenu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lbwy;->t:Landroid/view/MenuItem;

    .line 3227
    iget-object v0, p0, Lbwy;->t:Landroid/view/MenuItem;

    iget-object v1, p0, Lbwy;->B:Lbxh;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 3230
    :cond_3
    iget-object v0, p0, Lbwy;->p:Lczp;

    if-eqz v0, :cond_4

    .line 3231
    iget-object v0, p0, Lbwy;->H:Landroid/view/SubMenu;

    iget-object v1, p0, Lbwy;->p:Lczp;

    invoke-interface {v1}, Lczp;->z()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/SubMenu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lbwy;->v:Landroid/view/MenuItem;

    .line 3232
    iget-object v0, p0, Lbwy;->v:Landroid/view/MenuItem;

    iget-object v1, p0, Lbwy;->B:Lbxh;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 3235
    :cond_4
    iget-object v0, p0, Lbwy;->q:Lczn;

    if-eqz v0, :cond_5

    .line 3236
    iget-object v0, p0, Lbwy;->H:Landroid/view/SubMenu;

    iget-object v1, p0, Lbwy;->q:Lczn;

    invoke-interface {v1}, Lczn;->z()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/SubMenu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lbwy;->u:Landroid/view/MenuItem;

    .line 3237
    iget-object v0, p0, Lbwy;->u:Landroid/view/MenuItem;

    iget-object v1, p0, Lbwy;->B:Lbxh;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 3240
    :cond_5
    iget-object v0, p0, Lbwy;->r:Lczo;

    if-eqz v0, :cond_6

    .line 3241
    iget-object v0, p0, Lbwy;->H:Landroid/view/SubMenu;

    iget-object v1, p0, Lbwy;->r:Lczo;

    invoke-interface {v1}, Lczo;->z()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/SubMenu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lbwy;->w:Landroid/view/MenuItem;

    .line 3242
    iget-object v0, p0, Lbwy;->w:Landroid/view/MenuItem;

    iget-object v1, p0, Lbwy;->B:Lbxh;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 3245
    :cond_6
    iget-object v0, p0, Lbwy;->s:La;

    if-eqz v0, :cond_0

    .line 3246
    iget-object v0, p0, Lbwy;->H:Landroid/view/SubMenu;

    iget-object v1, p0, Lbwy;->s:La;

    invoke-interface {v1}, La;->z()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/SubMenu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lbwy;->x:Landroid/view/MenuItem;

    .line 3247
    iget-object v0, p0, Lbwy;->x:Landroid/view/MenuItem;

    iget-object v1, p0, Lbwy;->B:Lbxh;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_0
.end method

.method public a(Lbwq;)V
    .locals 0

    .prologue
    .line 657
    iput-object p1, p0, Lbwy;->J:Lbwq;

    .line 658
    return-void
.end method

.method a(Lbws;)V
    .locals 8

    .prologue
    .line 757
    iget-object v0, p0, Lbwy;->D:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 760
    iget v1, p0, Lbwy;->O:I

    .line 761
    iget-object v0, p0, Lbwy;->f:Landroid/content/Context;

    .line 763
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Laal;->lz:I

    .line 764
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 766
    const/4 v0, 0x0

    move v2, v0

    move v3, v1

    :goto_0
    iget v0, p0, Lbwy;->O:I

    if-ge v2, v0, :cond_1

    .line 767
    iget-object v0, p0, Lbwy;->D:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 768
    sget v0, Laal;->lv:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 769
    sget v5, Laal;->lt:I

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 771
    mul-int v5, v3, v4

    int-to-long v6, v5

    .line 772
    iget-object v5, p0, Lbwy;->f:Landroid/content/Context;

    invoke-interface {p1, v5, v6, v7}, Lbws;->a(Landroid/content/Context;J)Landroid/view/animation/Animation;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 773
    if-eqz v1, :cond_0

    .line 774
    iget-object v0, p0, Lbwy;->f:Landroid/content/Context;

    invoke-interface {p1, v0, v6, v7}, Lbws;->a(Landroid/content/Context;J)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 766
    :cond_0
    add-int/lit8 v0, v2, 0x1

    add-int/lit8 v1, v3, -0x1

    move v2, v0

    move v3, v1

    goto :goto_0

    .line 779
    :cond_1
    iget-object v0, p0, Lbwy;->D:Landroid/widget/LinearLayout;

    sget v1, Laal;->ls:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 780
    sget v1, Laal;->lv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 781
    iget-object v1, p0, Lbwy;->f:Landroid/content/Context;

    const-wide/16 v2, 0x0

    invoke-interface {p1, v1, v2, v3}, Lbws;->a(Landroid/content/Context;J)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 783
    :cond_2
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 808
    iget-object v0, p0, Lbwy;->i:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 809
    iget-object v1, p0, Lbwy;->i:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 811
    :cond_0
    return-void

    .line 809
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public b()Llt;
    .locals 1

    .prologue
    .line 526
    new-instance v0, Lbxe;

    invoke-direct {v0, p0}, Lbxe;-><init>(Lbwy;)V

    return-object v0
.end method

.method b(F)V
    .locals 2

    .prologue
    .line 589
    invoke-static {}, Lezc;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 590
    iget-object v0, p0, Lbwy;->g:Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 594
    :goto_0
    return-void

    .line 592
    :cond_0
    iget-object v0, p0, Lbwy;->g:Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    neg-float v1, p1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    goto :goto_0
.end method

.method public b(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 647
    iget-object v0, p0, Lbwy;->y:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 648
    return-void
.end method

.method b(Z)V
    .locals 4

    .prologue
    .line 718
    iget-object v0, p0, Lbwy;->g:Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;

    if-eqz v0, :cond_0

    .line 719
    iget-object v0, p0, Lbwy;->g:Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;

    sget v1, Lbwy;->a:I

    sget v2, Lbwy;->a:I

    invoke-static {v2}, Lbwy;->b(I)I

    move-result v2

    sget v3, Lbwx;->b:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;->a(III)Landroid/animation/Animator;

    .line 723
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {}, Lbwy;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 725
    new-instance v0, Lbxp;

    invoke-direct {v0}, Lbxp;-><init>()V

    invoke-virtual {p0, v0}, Lbwy;->a(Lbws;)V

    .line 728
    const/16 v0, 0xff

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lbwy;->a(II)V

    .line 731
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 732
    const/4 v1, 0x1

    iput-boolean v1, p0, Lbwy;->A:Z

    .line 733
    new-instance v1, Lbxf;

    invoke-direct {v1, p0}, Lbxf;-><init>(Lbwy;)V

    iget-object v2, p0, Lbwy;->f:Landroid/content/Context;

    .line 741
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Laal;->lA:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    .line 733
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 745
    :goto_0
    return-void

    .line 743
    :cond_1
    invoke-virtual {p0}, Lbwy;->k()V

    goto :goto_0
.end method

.method public c()V
    .locals 4

    .prologue
    .line 662
    iget v0, p0, Lbwy;->I:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 663
    iget-object v0, p0, Lbwy;->g:Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;

    sget v1, Lbwy;->e:I

    sget v2, Lbwy;->e:I

    invoke-static {v2}, Lbwy;->b(I)I

    move-result v2

    sget v3, Lbwx;->a:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;->a(III)Landroid/animation/Animator;

    .line 666
    :cond_0
    return-void
.end method

.method public c(Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 652
    iput-object p1, p0, Lbwy;->z:Landroid/view/View$OnClickListener;

    .line 653
    return-void
.end method

.method public d()V
    .locals 3

    .prologue
    .line 670
    iget v0, p0, Lbwy;->I:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 671
    iget-object v0, p0, Lbwy;->g:Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;

    sget v1, Lbwy;->e:I

    sget v2, Lbwy;->e:I

    .line 672
    invoke-static {v2}, Lbwy;->b(I)I

    move-result v2

    .line 671
    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;->a(II)V

    .line 674
    :cond_0
    return-void
.end method

.method public e()V
    .locals 4

    .prologue
    .line 678
    iget v0, p0, Lbwy;->I:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 679
    iget-object v0, p0, Lbwy;->g:Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;

    sget v1, Lbwy;->d:I

    sget v2, Lbwy;->d:I

    .line 680
    invoke-static {v2}, Lbwy;->b(I)I

    move-result v2

    sget v3, Lbwx;->b:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;->a(III)Landroid/animation/Animator;

    .line 683
    :cond_0
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 687
    iget-object v0, p0, Lbwy;->g:Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;->callOnClick()Z

    .line 688
    return-void
.end method

.method public g()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 692
    iget-object v1, p0, Lbwy;->m:Lcom/google/android/apps/hangouts/floatingactionbutton/impl/QuickButtonContainer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbwy;->l:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbwy;->l:Landroid/app/Dialog;

    .line 694
    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 695
    invoke-virtual {p0, v0}, Lbwy;->b(Z)V

    .line 696
    const/4 v0, 0x1

    .line 698
    :cond_0
    return v0
.end method

.method h()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 146
    iget-object v0, p0, Lbwy;->M:Leot;

    iget-object v1, p0, Lbwy;->K:Lhpu;

    invoke-interface {v1}, Lhpu;->a()I

    move-result v1

    invoke-interface {v0, v1}, Leot;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    iput-object v2, p0, Lbwy;->o:Lczm;

    .line 148
    iput-object v2, p0, Lbwy;->p:Lczp;

    .line 149
    iput-object v2, p0, Lbwy;->q:Lczn;

    .line 150
    iput-object v2, p0, Lbwy;->s:La;

    .line 165
    :cond_0
    :goto_0
    iget-object v0, p0, Lbwy;->L:Lawo;

    iget-object v1, p0, Lbwy;->K:Lhpu;

    invoke-interface {v1}, Lhpu;->a()I

    move-result v1

    invoke-interface {v0, v1}, Lawo;->d(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 166
    iget-object v0, p0, Lbwy;->f:Landroid/content/Context;

    const-class v1, Lczo;

    invoke-static {v0, v1}, Lilh;->b(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lczo;

    iput-object v0, p0, Lbwy;->r:Lczo;

    .line 170
    :goto_1
    return-void

    .line 152
    :cond_1
    iget-object v0, p0, Lbwy;->f:Landroid/content/Context;

    const-class v1, Lczm;

    invoke-static {v0, v1}, Lilh;->b(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lczm;

    iput-object v0, p0, Lbwy;->o:Lczm;

    .line 153
    iget-object v0, p0, Lbwy;->f:Landroid/content/Context;

    const-class v1, Lczp;

    invoke-static {v0, v1}, Lilh;->b(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lczp;

    iput-object v0, p0, Lbwy;->p:Lczp;

    .line 154
    invoke-virtual {p0}, Lbwy;->l()Lbfd;

    move-result-object v0

    sget-object v1, Lbhh;->g:Lbhh;

    invoke-static {v0, v1}, Laal;->a(Lbfd;Lbhh;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 155
    iget-object v0, p0, Lbwy;->f:Landroid/content/Context;

    const-class v1, Lczn;

    invoke-static {v0, v1}, Lilh;->b(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lczn;

    iput-object v0, p0, Lbwy;->q:Lczn;

    .line 159
    :goto_2
    iget-object v0, p0, Lbwy;->f:Landroid/content/Context;

    const-class v1, Layy;

    invoke-static {v0, v1}, Lilh;->b(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Layy;

    .line 160
    if-eqz v0, :cond_0

    .line 161
    iget-object v1, p0, Lbwy;->K:Lhpu;

    invoke-interface {v1}, Lhpu;->a()I

    invoke-interface {v0}, Layy;->b()La;

    move-result-object v0

    iput-object v0, p0, Lbwy;->s:La;

    goto :goto_0

    .line 157
    :cond_2
    iput-object v2, p0, Lbwy;->q:Lczn;

    goto :goto_2

    .line 168
    :cond_3
    iput-object v2, p0, Lbwy;->r:Lczo;

    goto :goto_1
.end method

.method public i()I
    .locals 2

    .prologue
    .line 517
    iget-object v0, p0, Lbwy;->J:Lbwq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbwy;->J:Lbwq;

    .line 518
    invoke-interface {v0}, Lbwq;->a()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 519
    sget v0, Lbwy;->e:I

    .line 521
    :goto_0
    return v0

    :cond_0
    sget v0, Lbwy;->d:I

    goto :goto_0
.end method

.method k()V
    .locals 2

    .prologue
    .line 748
    iget-object v0, p0, Lbwy;->l:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbwy;->l:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 749
    iget-object v0, p0, Lbwy;->l:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 751
    :cond_0
    iget-object v0, p0, Lbwy;->i:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 752
    iget-object v0, p0, Lbwy;->i:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 754
    :cond_1
    return-void
.end method

.method l()Lbfd;
    .locals 1

    .prologue
    .line 814
    iget-object v0, p0, Lbwy;->K:Lhpu;

    invoke-interface {v0}, Lhpu;->a()I

    move-result v0

    invoke-static {v0}, Ldvd;->e(I)Lbfd;

    move-result-object v0

    return-object v0
.end method
