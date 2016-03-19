.class public final Lqr;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private A:Z

.field private B:Ljava/lang/CharSequence;

.field private C:Ljava/lang/CharSequence;

.field private D:Ljava/lang/CharSequence;

.field private E:I

.field private F:Landroid/graphics/drawable/Drawable;

.field private G:Landroid/widget/ImageView;

.field private H:Landroid/widget/TextView;

.field private I:Landroid/widget/TextView;

.field private J:Landroid/view/View;

.field private K:I

.field private L:I

.field private M:I

.field private final N:Landroid/view/View$OnClickListener;

.field final a:Lsa;

.field b:Landroid/widget/ListView;

.field c:Landroid/widget/Button;

.field d:Landroid/os/Message;

.field e:Landroid/widget/Button;

.field f:Landroid/os/Message;

.field g:Landroid/widget/Button;

.field h:Landroid/os/Message;

.field i:Landroid/support/v4/widget/NestedScrollView;

.field j:Landroid/widget/ListAdapter;

.field k:I

.field l:I

.field m:I

.field n:I

.field o:I

.field p:Landroid/os/Handler;

.field private final q:Landroid/content/Context;

.field private final r:Landroid/view/Window;

.field private s:Ljava/lang/CharSequence;

.field private t:Ljava/lang/CharSequence;

.field private u:Landroid/view/View;

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lsa;Landroid/view/Window;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-boolean v3, p0, Lqr;->A:Z

    .line 93
    iput v3, p0, Lqr;->E:I

    .line 103
    const/4 v0, -0x1

    iput v0, p0, Lqr;->k:I

    .line 112
    iput v3, p0, Lqr;->M:I

    .line 116
    new-instance v0, Lqs;

    invoke-direct {v0, p0}, Lqs;-><init>(Lqr;)V

    iput-object v0, p0, Lqr;->N:Landroid/view/View$OnClickListener;

    .line 167
    iput-object p1, p0, Lqr;->q:Landroid/content/Context;

    .line 168
    iput-object p2, p0, Lqr;->a:Lsa;

    .line 169
    iput-object p3, p0, Lqr;->r:Landroid/view/Window;

    .line 170
    new-instance v0, Lrb;

    invoke-direct {v0, p2}, Lrb;-><init>(Landroid/content/DialogInterface;)V

    iput-object v0, p0, Lqr;->p:Landroid/os/Handler;

    .line 172
    const/4 v0, 0x0

    sget-object v1, Lsb;->H:[I

    sget v2, Laen;->G:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 175
    sget v1, Lsb;->I:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lqr;->K:I

    .line 176
    sget v1, Lsb;->J:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lqr;->L:I

    .line 178
    sget v1, Lsb;->L:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lqr;->l:I

    .line 179
    sget v1, Lsb;->M:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lqr;->m:I

    .line 180
    sget v1, Lsb;->N:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lqr;->n:I

    .line 182
    sget v1, Lsb;->K:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lqr;->o:I

    .line 184
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 185
    return-void
.end method

.method private static a(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 2

    .prologue
    .line 415
    if-nez p0, :cond_0

    .line 417
    instance-of v0, p1, Landroid/view/ViewStub;

    if-eqz v0, :cond_3

    .line 418
    check-cast p1, Landroid/view/ViewStub;

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 421
    :goto_0
    check-cast v0, Landroid/view/ViewGroup;

    .line 437
    :goto_1
    return-object v0

    .line 425
    :cond_0
    if-eqz p1, :cond_1

    .line 426
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 427
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 428
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 433
    :cond_1
    instance-of v0, p0, Landroid/view/ViewStub;

    if-eqz v0, :cond_2

    .line 434
    check-cast p0, Landroid/view/ViewStub;

    invoke-virtual {p0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 437
    :goto_2
    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_1

    :cond_2
    move-object v0, p0

    goto :goto_2

    :cond_3
    move-object v0, p1

    goto :goto_0
.end method

.method private static c(Landroid/view/View;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 188
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 206
    :goto_0
    return v0

    .line 192
    :cond_0
    instance-of v2, p0, Landroid/view/ViewGroup;

    if-nez v2, :cond_1

    move v0, v1

    .line 193
    goto :goto_0

    .line 196
    :cond_1
    check-cast p0, Landroid/view/ViewGroup;

    .line 197
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 198
    :cond_2
    if-lez v2, :cond_3

    .line 199
    add-int/lit8 v2, v2, -0x1

    .line 200
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 201
    invoke-static {v3}, Lqr;->c(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_3
    move v0, v1

    .line 206
    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 14

    .prologue
    const/4 v5, 0x0

    const/4 v13, -0x1

    const/4 v4, 0x1

    const/16 v12, 0x8

    const/4 v3, 0x0

    .line 211
    iget-object v0, p0, Lqr;->a:Lsa;

    invoke-virtual {v0}, Lsa;->a()Z

    .line 4218
    iget v0, p0, Lqr;->L:I

    if-eqz v0, :cond_c

    .line 4221
    iget v0, p0, Lqr;->M:I

    if-ne v0, v4, :cond_c

    .line 4222
    iget v0, p0, Lqr;->L:I

    .line 213
    :goto_0
    iget-object v1, p0, Lqr;->a:Lsa;

    invoke-virtual {v1, v0}, Lsa;->setContentView(I)V

    .line 4441
    iget-object v0, p0, Lqr;->r:Landroid/view/Window;

    sget v1, Laal;->aO:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 4442
    sget v1, Laal;->aY:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 4443
    sget v1, Laal;->aF:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 4444
    sget v1, Laal;->aE:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 4448
    sget v1, Laal;->aH:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 4593
    iget-object v1, p0, Lqr;->u:Landroid/view/View;

    if-eqz v1, :cond_d

    .line 4594
    iget-object v1, p0, Lqr;->u:Landroid/view/View;

    move-object v2, v1

    .line 4602
    :goto_1
    if-eqz v2, :cond_f

    move v1, v4

    .line 4603
    :goto_2
    if-eqz v1, :cond_0

    invoke-static {v2}, Lqr;->c(Landroid/view/View;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 4604
    :cond_0
    iget-object v9, p0, Lqr;->r:Landroid/view/Window;

    const/high16 v10, 0x20000

    const/high16 v11, 0x20000

    invoke-virtual {v9, v10, v11}, Landroid/view/Window;->setFlags(II)V

    .line 4608
    :cond_1
    if-eqz v1, :cond_10

    .line 4609
    iget-object v1, p0, Lqr;->r:Landroid/view/Window;

    sget v9, Laal;->aG:I

    invoke-virtual {v1, v9}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 4610
    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v9, v13, v13}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4612
    iget-boolean v2, p0, Lqr;->A:Z

    if-eqz v2, :cond_2

    .line 4613
    iget v2, p0, Lqr;->w:I

    iget v9, p0, Lqr;->x:I

    iget v10, p0, Lqr;->y:I

    iget v11, p0, Lqr;->z:I

    invoke-virtual {v1, v2, v9, v10, v11}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 4617
    :cond_2
    iget-object v1, p0, Lqr;->b:Landroid/widget/ListView;

    if-eqz v1, :cond_3

    .line 4618
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 4451
    :cond_3
    :goto_3
    sget v1, Laal;->aY:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 4452
    sget v2, Laal;->aF:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 4453
    sget v9, Laal;->aE:I

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 4456
    invoke-static {v1, v6}, Lqr;->a(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v6

    .line 4457
    invoke-static {v2, v7}, Lqr;->a(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v7

    .line 4458
    invoke-static {v9, v8}, Lqr;->a(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v8

    .line 4672
    iget-object v1, p0, Lqr;->r:Landroid/view/Window;

    sget v2, Laal;->aR:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/widget/NestedScrollView;

    iput-object v1, p0, Lqr;->i:Landroid/support/v4/widget/NestedScrollView;

    .line 4673
    iget-object v1, p0, Lqr;->i:Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {v1, v3}, Landroid/support/v4/widget/NestedScrollView;->setFocusable(Z)V

    .line 4674
    iget-object v1, p0, Lqr;->i:Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {v1, v3}, Landroid/support/v4/widget/NestedScrollView;->setNestedScrollingEnabled(Z)V

    .line 4677
    const v1, 0x102000b

    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lqr;->I:Landroid/widget/TextView;

    .line 4678
    iget-object v1, p0, Lqr;->I:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    .line 4682
    iget-object v1, p0, Lqr;->t:Ljava/lang/CharSequence;

    if-eqz v1, :cond_11

    .line 4683
    iget-object v1, p0, Lqr;->I:Landroid/widget/TextView;

    iget-object v2, p0, Lqr;->t:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4716
    :cond_4
    :goto_4
    const v1, 0x1020019

    invoke-virtual {v8, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lqr;->c:Landroid/widget/Button;

    .line 4717
    iget-object v1, p0, Lqr;->c:Landroid/widget/Button;

    iget-object v2, p0, Lqr;->N:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4719
    iget-object v1, p0, Lqr;->B:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 4720
    iget-object v1, p0, Lqr;->c:Landroid/widget/Button;

    invoke-virtual {v1, v12}, Landroid/widget/Button;->setVisibility(I)V

    move v2, v3

    .line 4727
    :goto_5
    const v1, 0x102001a

    invoke-virtual {v8, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lqr;->e:Landroid/widget/Button;

    .line 4728
    iget-object v1, p0, Lqr;->e:Landroid/widget/Button;

    iget-object v9, p0, Lqr;->N:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4730
    iget-object v1, p0, Lqr;->C:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 4731
    iget-object v1, p0, Lqr;->e:Landroid/widget/Button;

    invoke-virtual {v1, v12}, Landroid/widget/Button;->setVisibility(I)V

    .line 4739
    :goto_6
    const v1, 0x102001b

    invoke-virtual {v8, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lqr;->g:Landroid/widget/Button;

    .line 4740
    iget-object v1, p0, Lqr;->g:Landroid/widget/Button;

    iget-object v9, p0, Lqr;->N:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4742
    iget-object v1, p0, Lqr;->D:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 4743
    iget-object v1, p0, Lqr;->g:Landroid/widget/Button;

    invoke-virtual {v1, v12}, Landroid/widget/Button;->setVisibility(I)V

    .line 4751
    :goto_7
    if-eqz v2, :cond_16

    move v1, v4

    .line 4752
    :goto_8
    if-nez v1, :cond_5

    .line 4753
    invoke-virtual {v8, v12}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5626
    :cond_5
    iget-object v1, p0, Lqr;->J:Landroid/view/View;

    if-eqz v1, :cond_17

    .line 5628
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v13, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 5631
    iget-object v2, p0, Lqr;->J:Landroid/view/View;

    invoke-virtual {v6, v2, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 5634
    iget-object v1, p0, Lqr;->r:Landroid/view/Window;

    sget v2, Laal;->aX:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 5635
    invoke-virtual {v1, v12}, Landroid/view/View;->setVisibility(I)V

    .line 4464
    :goto_9
    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eq v0, v12, :cond_1c

    move v0, v4

    .line 4466
    :goto_a
    if-eqz v6, :cond_1d

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-eq v1, v12, :cond_1d

    move v6, v4

    .line 4468
    :goto_b
    if-eqz v8, :cond_1e

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-eq v1, v12, :cond_1e

    move v1, v4

    .line 4472
    :goto_c
    if-nez v1, :cond_6

    .line 4473
    if-eqz v7, :cond_6

    .line 4474
    sget v2, Laal;->aV:I

    invoke-virtual {v7, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 4475
    if-eqz v2, :cond_6

    .line 4476
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 4481
    :cond_6
    if-eqz v6, :cond_7

    .line 4483
    iget-object v2, p0, Lqr;->i:Landroid/support/v4/widget/NestedScrollView;

    if-eqz v2, :cond_7

    .line 4484
    iget-object v2, p0, Lqr;->i:Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {v2, v4}, Landroid/support/v4/widget/NestedScrollView;->setClipToPadding(Z)V

    .line 4489
    :cond_7
    if-nez v0, :cond_a

    .line 4490
    iget-object v0, p0, Lqr;->b:Landroid/widget/ListView;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lqr;->b:Landroid/widget/ListView;

    move-object v2, v0

    .line 4491
    :goto_d
    if-eqz v2, :cond_a

    .line 4492
    if-eqz v6, :cond_20

    move v0, v4

    :goto_e
    if-eqz v1, :cond_8

    const/4 v3, 0x2

    :cond_8
    or-int/2addr v3, v0

    .line 6513
    iget-object v0, p0, Lqr;->r:Landroid/view/Window;

    sget v1, Laal;->aQ:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 6514
    iget-object v0, p0, Lqr;->r:Landroid/view/Window;

    sget v6, Laal;->aP:I

    invoke-virtual {v0, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 6516
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x17

    if-lt v6, v8, :cond_21

    .line 7262
    sget-object v5, Lks;->a:Llc;

    const/4 v6, 0x3

    invoke-virtual {v5, v2, v3, v6}, Llc;->a(Landroid/view/View;II)V

    .line 6520
    if-eqz v1, :cond_9

    .line 6521
    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 6523
    :cond_9
    if-eqz v0, :cond_a

    .line 6524
    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 4499
    :cond_a
    :goto_f
    iget-object v0, p0, Lqr;->b:Landroid/widget/ListView;

    .line 4500
    if-eqz v0, :cond_b

    iget-object v1, p0, Lqr;->j:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_b

    .line 4501
    iget-object v1, p0, Lqr;->j:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 4502
    iget v1, p0, Lqr;->k:I

    .line 4503
    if-ltz v1, :cond_b

    .line 4504
    invoke-virtual {v0, v1, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 4505
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 215
    :cond_b
    return-void

    .line 4224
    :cond_c
    iget v0, p0, Lqr;->K:I

    goto/16 :goto_0

    .line 4595
    :cond_d
    iget v1, p0, Lqr;->v:I

    if-eqz v1, :cond_e

    .line 4596
    iget-object v1, p0, Lqr;->q:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 4597
    iget v2, p0, Lqr;->v:I

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    .line 4598
    goto/16 :goto_1

    :cond_e
    move-object v2, v5

    .line 4599
    goto/16 :goto_1

    :cond_f
    move v1, v3

    .line 4602
    goto/16 :goto_2

    .line 4621
    :cond_10
    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_3

    .line 4685
    :cond_11
    iget-object v1, p0, Lqr;->I:Landroid/widget/TextView;

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4686
    iget-object v1, p0, Lqr;->i:Landroid/support/v4/widget/NestedScrollView;

    iget-object v2, p0, Lqr;->I:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/NestedScrollView;->removeView(Landroid/view/View;)V

    .line 4688
    iget-object v1, p0, Lqr;->b:Landroid/widget/ListView;

    if-eqz v1, :cond_12

    .line 4689
    iget-object v1, p0, Lqr;->i:Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {v1}, Landroid/support/v4/widget/NestedScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 4690
    iget-object v2, p0, Lqr;->i:Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 4691
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 4692
    iget-object v9, p0, Lqr;->b:Landroid/widget/ListView;

    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v10, v13, v13}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v9, v2, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_4

    .line 4695
    :cond_12
    invoke-virtual {v7, v12}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_4

    .line 4722
    :cond_13
    iget-object v1, p0, Lqr;->c:Landroid/widget/Button;

    iget-object v2, p0, Lqr;->B:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 4723
    iget-object v1, p0, Lqr;->c:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    move v2, v4

    .line 4724
    goto/16 :goto_5

    .line 4733
    :cond_14
    iget-object v1, p0, Lqr;->e:Landroid/widget/Button;

    iget-object v9, p0, Lqr;->C:Ljava/lang/CharSequence;

    invoke-virtual {v1, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 4734
    iget-object v1, p0, Lqr;->e:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 4736
    or-int/lit8 v2, v2, 0x2

    goto/16 :goto_6

    .line 4745
    :cond_15
    iget-object v1, p0, Lqr;->g:Landroid/widget/Button;

    iget-object v9, p0, Lqr;->D:Ljava/lang/CharSequence;

    invoke-virtual {v1, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 4746
    iget-object v1, p0, Lqr;->g:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 4748
    or-int/lit8 v2, v2, 0x4

    goto/16 :goto_7

    :cond_16
    move v1, v3

    .line 4751
    goto/16 :goto_8

    .line 5637
    :cond_17
    iget-object v1, p0, Lqr;->r:Landroid/view/Window;

    const v2, 0x1020006

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lqr;->G:Landroid/widget/ImageView;

    .line 5639
    iget-object v1, p0, Lqr;->s:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_18

    move v1, v4

    .line 5640
    :goto_10
    if-eqz v1, :cond_1b

    .line 5642
    iget-object v1, p0, Lqr;->r:Landroid/view/Window;

    sget v2, Laal;->aD:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lqr;->H:Landroid/widget/TextView;

    .line 5643
    iget-object v1, p0, Lqr;->H:Landroid/widget/TextView;

    iget-object v2, p0, Lqr;->s:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5648
    iget v1, p0, Lqr;->E:I

    if-eqz v1, :cond_19

    .line 5649
    iget-object v1, p0, Lqr;->G:Landroid/widget/ImageView;

    iget v2, p0, Lqr;->E:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_9

    :cond_18
    move v1, v3

    .line 5639
    goto :goto_10

    .line 5650
    :cond_19
    iget-object v1, p0, Lqr;->F:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1a

    .line 5651
    iget-object v1, p0, Lqr;->G:Landroid/widget/ImageView;

    iget-object v2, p0, Lqr;->F:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_9

    .line 5655
    :cond_1a
    iget-object v1, p0, Lqr;->H:Landroid/widget/TextView;

    iget-object v2, p0, Lqr;->G:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v2

    iget-object v9, p0, Lqr;->G:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v9

    iget-object v10, p0, Lqr;->G:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v10

    iget-object v11, p0, Lqr;->G:Landroid/widget/ImageView;

    invoke-virtual {v11}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v11

    invoke-virtual {v1, v2, v9, v10, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 5659
    iget-object v1, p0, Lqr;->G:Landroid/widget/ImageView;

    invoke-virtual {v1, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_9

    .line 5663
    :cond_1b
    iget-object v1, p0, Lqr;->r:Landroid/view/Window;

    sget v2, Laal;->aX:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 5664
    invoke-virtual {v1, v12}, Landroid/view/View;->setVisibility(I)V

    .line 5665
    iget-object v1, p0, Lqr;->G:Landroid/widget/ImageView;

    invoke-virtual {v1, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5666
    invoke-virtual {v6, v12}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_9

    :cond_1c
    move v0, v3

    .line 4464
    goto/16 :goto_a

    :cond_1d
    move v6, v3

    .line 4466
    goto/16 :goto_b

    :cond_1e
    move v1, v3

    .line 4468
    goto/16 :goto_c

    .line 4490
    :cond_1f
    iget-object v0, p0, Lqr;->i:Landroid/support/v4/widget/NestedScrollView;

    move-object v2, v0

    goto/16 :goto_d

    :cond_20
    move v0, v3

    .line 4492
    goto/16 :goto_e

    .line 6528
    :cond_21
    if-eqz v1, :cond_22

    and-int/lit8 v2, v3, 0x1

    if-nez v2, :cond_22

    .line 6529
    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    move-object v1, v5

    .line 6532
    :cond_22
    if-eqz v0, :cond_23

    and-int/lit8 v2, v3, 0x2

    if-nez v2, :cond_23

    .line 6533
    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    move-object v0, v5

    .line 6537
    :cond_23
    if-nez v1, :cond_24

    if-eqz v0, :cond_a

    .line 6541
    :cond_24
    iget-object v2, p0, Lqr;->t:Ljava/lang/CharSequence;

    if-eqz v2, :cond_25

    .line 6543
    iget-object v2, p0, Lqr;->i:Landroid/support/v4/widget/NestedScrollView;

    new-instance v3, Lpg;

    invoke-direct {v3, p0, v1, v0}, Lpg;-><init>(Lqr;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/NestedScrollView;->a(Lpg;)V

    .line 6553
    iget-object v2, p0, Lqr;->i:Landroid/support/v4/widget/NestedScrollView;

    new-instance v3, Lqt;

    invoke-direct {v3, p0, v1, v0}, Lqt;-><init>(Lqr;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/NestedScrollView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_f

    .line 6559
    :cond_25
    iget-object v2, p0, Lqr;->b:Landroid/widget/ListView;

    if-eqz v2, :cond_26

    .line 6561
    iget-object v2, p0, Lqr;->b:Landroid/widget/ListView;

    new-instance v3, Lqu;

    invoke-direct {v3, p0, v1, v0}, Lqu;-><init>(Lqr;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 6572
    iget-object v2, p0, Lqr;->b:Landroid/widget/ListView;

    new-instance v3, Lqv;

    invoke-direct {v3, p0, v1, v0}, Lqv;-><init>(Lqr;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_f

    .line 6580
    :cond_26
    if-eqz v1, :cond_27

    .line 6581
    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 6583
    :cond_27
    if-eqz v0, :cond_a

    .line 6584
    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto/16 :goto_f
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 252
    const/4 v0, 0x0

    iput-object v0, p0, Lqr;->u:Landroid/view/View;

    .line 253
    iput p1, p0, Lqr;->v:I

    .line 254
    const/4 v0, 0x0

    iput-boolean v0, p0, Lqr;->A:Z

    .line 255
    return-void
.end method

.method public a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 302
    if-eqz p3, :cond_0

    .line 303
    iget-object v0, p0, Lqr;->p:Landroid/os/Handler;

    invoke-virtual {v0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    .line 306
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 324
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 309
    :pswitch_0
    iput-object p2, p0, Lqr;->B:Ljava/lang/CharSequence;

    .line 310
    iput-object p4, p0, Lqr;->d:Landroid/os/Message;

    .line 321
    :goto_0
    return-void

    .line 314
    :pswitch_1
    iput-object p2, p0, Lqr;->C:Ljava/lang/CharSequence;

    .line 315
    iput-object p4, p0, Lqr;->f:Landroid/os/Message;

    goto :goto_0

    .line 319
    :pswitch_2
    iput-object p2, p0, Lqr;->D:Ljava/lang/CharSequence;

    .line 320
    iput-object p4, p0, Lqr;->h:Landroid/os/Message;

    goto :goto_0

    .line 306
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 353
    iput-object p1, p0, Lqr;->F:Landroid/graphics/drawable/Drawable;

    .line 354
    const/4 v0, 0x0

    iput v0, p0, Lqr;->E:I

    .line 356
    iget-object v0, p0, Lqr;->G:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 357
    if-eqz p1, :cond_1

    .line 358
    iget-object v0, p0, Lqr;->G:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 363
    :cond_0
    :goto_0
    return-void

    .line 360
    :cond_1
    iget-object v0, p0, Lqr;->G:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public a(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lqr;->J:Landroid/view/View;

    .line 239
    return-void
.end method

.method public a(Landroid/view/View;IIII)V
    .locals 1

    .prologue
    .line 271
    iput-object p1, p0, Lqr;->u:Landroid/view/View;

    .line 272
    const/4 v0, 0x0

    iput v0, p0, Lqr;->v:I

    .line 273
    const/4 v0, 0x1

    iput-boolean v0, p0, Lqr;->A:Z

    .line 274
    iput p2, p0, Lqr;->w:I

    .line 275
    iput p3, p0, Lqr;->x:I

    .line 276
    iput p4, p0, Lqr;->y:I

    .line 277
    iput p5, p0, Lqr;->z:I

    .line 278
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 228
    iput-object p1, p0, Lqr;->s:Ljava/lang/CharSequence;

    .line 229
    iget-object v0, p0, Lqr;->H:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lqr;->H:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    :cond_0
    return-void
.end method

.method public a(Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lqr;->i:Landroid/support/v4/widget/NestedScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lqr;->i:Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/NestedScrollView;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(I)V
    .locals 2

    .prologue
    .line 335
    const/4 v0, 0x0

    iput-object v0, p0, Lqr;->F:Landroid/graphics/drawable/Drawable;

    .line 336
    iput p1, p0, Lqr;->E:I

    .line 338
    iget-object v0, p0, Lqr;->G:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 339
    if-eqz p1, :cond_1

    .line 340
    iget-object v0, p0, Lqr;->G:Landroid/widget/ImageView;

    iget v1, p0, Lqr;->E:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 342
    :cond_1
    iget-object v0, p0, Lqr;->G:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public b(Landroid/view/View;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 261
    iput-object p1, p0, Lqr;->u:Landroid/view/View;

    .line 262
    iput v0, p0, Lqr;->v:I

    .line 263
    iput-boolean v0, p0, Lqr;->A:Z

    .line 264
    return-void
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 242
    iput-object p1, p0, Lqr;->t:Ljava/lang/CharSequence;

    .line 243
    iget-object v0, p0, Lqr;->I:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lqr;->I:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    :cond_0
    return-void
.end method

.method public b(Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lqr;->i:Landroid/support/v4/widget/NestedScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lqr;->i:Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/NestedScrollView;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(I)I
    .locals 3

    .prologue
    .line 372
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 373
    iget-object v1, p0, Lqr;->q:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 374
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    return v0
.end method
