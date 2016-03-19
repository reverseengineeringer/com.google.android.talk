.class public Lcav;
.super Limg;
.source "SourceFile"

# interfaces
.implements Llt;


# static fields
.field private static final a:Lksm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lksm",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private aj:Landroid/widget/TabHost;

.field private ak:Landroid/view/View;

.field private al:Landroid/widget/LinearLayout;

.field private am:Landroid/widget/TextView;

.field private an:Landroid/widget/TextView;

.field private ao:Landroid/view/View;

.field private ap:Lcom/google/android/apps/hangouts/views/EmojiCategoryPageIndicatorView;

.field private final aq:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private final ar:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field c:Lcbd;

.field d:Landroid/support/v4/view/ViewPager;

.field e:Lcbg;

.field f:I

.field public final g:Landroid/view/View$OnClickListener;

.field final h:Ljava/lang/Runnable;

.field final i:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 55
    new-instance v0, Lkso;

    invoke-direct {v0}, Lkso;-><init>()V

    const/4 v1, 0x0

    .line 57
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/google/android/apps/hangouts/R$drawable;->aV:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lkso;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkso;

    move-result-object v0

    const/4 v1, 0x1

    .line 58
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/google/android/apps/hangouts/R$drawable;->aR:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lkso;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkso;

    move-result-object v0

    const/4 v1, 0x2

    .line 59
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/google/android/apps/hangouts/R$drawable;->aP:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lkso;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkso;

    move-result-object v0

    const/4 v1, 0x3

    .line 60
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/google/android/apps/hangouts/R$drawable;->aN:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lkso;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkso;

    move-result-object v0

    const/4 v1, 0x4

    .line 61
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/google/android/apps/hangouts/R$drawable;->aT:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lkso;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkso;

    move-result-object v0

    const/4 v1, 0x5

    .line 62
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/google/android/apps/hangouts/R$drawable;->aX:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lkso;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkso;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lkso;->a()Lksm;

    move-result-object v0

    sput-object v0, Lcav;->a:Lksm;

    .line 55
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Limg;-><init>()V

    .line 65
    new-instance v0, Lhq;

    invoke-direct {v0}, Lhq;-><init>()V

    iput-object v0, p0, Lcav;->b:Ljava/util/Map;

    .line 81
    const/4 v0, -0x1

    iput v0, p0, Lcav;->f:I

    .line 89
    new-instance v0, Lcaw;

    invoke-direct {v0, p0}, Lcaw;-><init>(Lcav;)V

    iput-object v0, p0, Lcav;->g:Landroid/view/View$OnClickListener;

    .line 100
    new-instance v0, Lcax;

    invoke-direct {v0, p0}, Lcax;-><init>(Lcav;)V

    iput-object v0, p0, Lcav;->aq:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 116
    new-instance v0, Lcay;

    invoke-direct {v0, p0}, Lcay;-><init>(Lcav;)V

    iput-object v0, p0, Lcav;->ar:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 128
    new-instance v0, Lcaz;

    invoke-direct {v0, p0}, Lcaz;-><init>(Lcav;)V

    iput-object v0, p0, Lcav;->h:Ljava/lang/Runnable;

    .line 140
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcav;->i:Landroid/os/Handler;

    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 320
    iget-object v0, p0, Lcav;->al:Landroid/widget/LinearLayout;

    .line 321
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 322
    invoke-virtual {p0}, Lcav;->getActivity()Lba;

    move-result-object v1

    invoke-virtual {v1}, Lba;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Laal;->dT:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 324
    int-to-float v1, v1

    const v2, 0x3e19999a    # 0.15f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 325
    iget-object v1, p0, Lcav;->al:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 326
    return-void
.end method

.method private a(Landroid/widget/TabHost;Ljava/lang/String;III)V
    .locals 2

    .prologue
    .line 308
    invoke-virtual {p1}, Landroid/widget/TabHost;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p5}, Lcav;->a(Landroid/content/Context;I)Landroid/widget/ImageView;

    move-result-object v0

    .line 309
    invoke-virtual {p0, p4}, Lcav;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 311
    invoke-virtual {p1, p2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    .line 312
    invoke-virtual {v1, p3}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    .line 313
    invoke-virtual {v1, v0}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    .line 314
    invoke-virtual {p1, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 316
    iget-object v0, p0, Lcav;->b:Ljava/util/Map;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 243
    invoke-virtual {p0}, Lcav;->d()I

    move-result v0

    invoke-virtual {p1, v0, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 245
    sget v0, Laen;->bS:I

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    iput-object v0, p0, Lcav;->aj:Landroid/widget/TabHost;

    .line 246
    iget-object v0, p0, Lcav;->aj:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->setup()V

    .line 248
    iget-object v1, p0, Lcav;->aj:Landroid/widget/TabHost;

    const-string v2, "Recent"

    sget v3, Laen;->fB:I

    sget v4, Laal;->ce:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcav;->a(Landroid/widget/TabHost;Ljava/lang/String;III)V

    .line 250
    iget-object v1, p0, Lcav;->aj:Landroid/widget/TabHost;

    const-string v2, "People"

    sget v3, Laen;->cc:I

    sget v4, Laal;->cc:I

    move-object v0, p0

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcav;->a(Landroid/widget/TabHost;Ljava/lang/String;III)V

    .line 252
    iget-object v1, p0, Lcav;->aj:Landroid/widget/TabHost;

    const-string v2, "Objects"

    sget v3, Laen;->ew:I

    sget v4, Laal;->cb:I

    const/4 v5, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcav;->a(Landroid/widget/TabHost;Ljava/lang/String;III)V

    .line 254
    iget-object v1, p0, Lcav;->aj:Landroid/widget/TabHost;

    const-string v2, "Nature"

    sget v3, Laen;->er:I

    sget v4, Laal;->ca:I

    const/4 v5, 0x3

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcav;->a(Landroid/widget/TabHost;Ljava/lang/String;III)V

    .line 256
    iget-object v1, p0, Lcav;->aj:Landroid/widget/TabHost;

    const-string v2, "Places"

    sget v3, Laen;->eU:I

    sget v4, Laal;->cd:I

    const/4 v5, 0x4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcav;->a(Landroid/widget/TabHost;Ljava/lang/String;III)V

    .line 258
    iget-object v1, p0, Lcav;->aj:Landroid/widget/TabHost;

    const-string v2, "Symbols"

    sget v3, Laen;->gA:I

    sget v4, Laal;->cf:I

    const/4 v5, 0x5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcav;->a(Landroid/widget/TabHost;Ljava/lang/String;III)V

    .line 261
    iget-object v0, p0, Lcav;->aj:Landroid/widget/TabHost;

    new-instance v1, Lcbb;

    invoke-direct {v1, p0}, Lcbb;-><init>(Lcav;)V

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 269
    iget-object v0, p0, Lcav;->aj:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/TabWidget;->setStripEnabled(Z)V

    .line 271
    sget v0, Laen;->bY:I

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcav;->d:Landroid/support/v4/view/ViewPager;

    .line 272
    iget-object v0, p0, Lcav;->d:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcav;->ar:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 274
    sget v0, Laen;->bR:I

    .line 275
    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/hangouts/views/EmojiCategoryPageIndicatorView;

    iput-object v0, p0, Lcav;->ap:Lcom/google/android/apps/hangouts/views/EmojiCategoryPageIndicatorView;

    .line 276
    invoke-virtual {p0}, Lcav;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 277
    iget-object v0, p0, Lcav;->ap:Lcom/google/android/apps/hangouts/views/EmojiCategoryPageIndicatorView;

    .line 278
    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/views/EmojiCategoryPageIndicatorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 279
    sget v2, Laal;->dW:I

    .line 280
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 281
    iget-object v1, p0, Lcav;->ap:Lcom/google/android/apps/hangouts/views/EmojiCategoryPageIndicatorView;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/hangouts/views/EmojiCategoryPageIndicatorView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 283
    sget v0, Laen;->bW:I

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcav;->ak:Landroid/view/View;

    .line 284
    iget-object v0, p0, Lcav;->ak:Landroid/view/View;

    new-instance v1, Lcbc;

    invoke-direct {v1, p0}, Lcbc;-><init>(Lcav;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 303
    return-object v6
.end method

.method public a(Landroid/content/Context;I)Landroid/widget/ImageView;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 195
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 197
    sget-object v0, Lcav;->a:Lksm;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lksm;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1043
    invoke-static {v0, v4}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 198
    invoke-virtual {p0}, Lcav;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 199
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v4, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 200
    invoke-virtual {p0}, Lcav;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Laal;->dY:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 202
    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 203
    return-object v1
.end method

.method public a(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 469
    iget-object v0, p0, Lcav;->e:Lcbg;

    .line 470
    invoke-virtual {v0, p1}, Lcbg;->b(I)Landroid/util/Pair;

    move-result-object v0

    .line 471
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 10043
    invoke-static {v0, v1}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 471
    invoke-virtual {p0, v0, v1}, Lcav;->a(IZ)V

    .line 473
    invoke-virtual {p0}, Lcav;->s()V

    .line 474
    return-void
.end method

.method public a(IFI)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 442
    iget-object v0, p0, Lcav;->e:Lcbg;

    .line 443
    invoke-virtual {v0, p1}, Lcbg;->b(I)Landroid/util/Pair;

    move-result-object v1

    .line 444
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 5043
    invoke-static {v0, v7}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v2

    .line 445
    iget-object v0, p0, Lcav;->e:Lcbg;

    .line 446
    invoke-virtual {v0, v2}, Lcbg;->a(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 6043
    invoke-static {v0, v7}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v3

    .line 448
    iget-object v0, p0, Lcav;->d:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->c()I

    move-result v0

    .line 449
    iget-object v4, p0, Lcav;->e:Lcbg;

    .line 450
    invoke-virtual {v4, v0}, Lcbg;->b(I)Landroid/util/Pair;

    move-result-object v4

    .line 451
    iget-object v0, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 7043
    invoke-static {v0, v7}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v5

    .line 452
    iget-object v6, p0, Lcav;->e:Lcbg;

    iget-object v0, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 8043
    invoke-static {v0, v7}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 453
    invoke-virtual {v6, v0}, Lcbg;->a(I)I

    move-result v0

    .line 455
    iget v4, p0, Lcav;->f:I

    if-ne v2, v4, :cond_1

    .line 456
    iget-object v2, p0, Lcav;->ap:Lcom/google/android/apps/hangouts/views/EmojiCategoryPageIndicatorView;

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 9043
    invoke-static {v0, v7}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 456
    invoke-virtual {v2, v3, v0, p2}, Lcom/google/android/apps/hangouts/views/EmojiCategoryPageIndicatorView;->a(IIF)V

    .line 465
    :cond_0
    :goto_0
    return-void

    .line 458
    :cond_1
    iget v1, p0, Lcav;->f:I

    if-le v2, v1, :cond_2

    .line 459
    iget-object v1, p0, Lcav;->ap:Lcom/google/android/apps/hangouts/views/EmojiCategoryPageIndicatorView;

    invoke-virtual {v1, v0, v5, p2}, Lcom/google/android/apps/hangouts/views/EmojiCategoryPageIndicatorView;->a(IIF)V

    goto :goto_0

    .line 461
    :cond_2
    iget v1, p0, Lcav;->f:I

    if-ge v2, v1, :cond_0

    .line 462
    iget-object v1, p0, Lcav;->ap:Lcom/google/android/apps/hangouts/views/EmojiCategoryPageIndicatorView;

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v2, p2, v2

    invoke-virtual {v1, v0, v5, v2}, Lcom/google/android/apps/hangouts/views/EmojiCategoryPageIndicatorView;->a(IIF)V

    goto :goto_0
.end method

.method a(IZ)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 375
    iget v0, p0, Lcav;->f:I

    if-ne v0, p1, :cond_0

    if-nez p2, :cond_0

    .line 402
    :goto_0
    return-void

    .line 379
    :cond_0
    iput p1, p0, Lcav;->f:I

    .line 381
    iget-object v0, p0, Lcav;->e:Lcbg;

    invoke-virtual {v0, p1}, Lcbg;->d(I)I

    move-result v1

    .line 382
    iget-object v0, p0, Lcav;->d:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->c()I

    move-result v0

    .line 383
    iget-object v2, p0, Lcav;->e:Lcbg;

    .line 384
    invoke-virtual {v2, v0}, Lcbg;->b(I)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 2043
    invoke-static {v0, v8}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 385
    if-nez p2, :cond_1

    if-eq v0, p1, :cond_2

    .line 386
    :cond_1
    iget-object v0, p0, Lcav;->d:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1, v8}, Landroid/support/v4/view/ViewPager;->a(IZ)V

    .line 391
    :cond_2
    iget-object v0, p0, Lcav;->d:Landroid/support/v4/view/ViewPager;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 392
    if-eqz v0, :cond_3

    .line 393
    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 396
    :cond_3
    if-nez p2, :cond_4

    iget-object v0, p0, Lcav;->aj:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    if-eq v0, p1, :cond_5

    .line 397
    :cond_4
    iget-object v0, p0, Lcav;->aj:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 399
    :cond_5
    iget v0, p0, Lcav;->f:I

    .line 2410
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 2411
    invoke-virtual {p0}, Lcav;->getActivity()Lba;

    move-result-object v1

    const-string v4, "recentEmoji"

    invoke-virtual {v1, v4, v8}, Lba;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2414
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2415
    const-string v4, "lastCategoryKey"

    invoke-interface {v1, v4, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2416
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2418
    const-string v1, "Babel"

    const/4 v4, 0x3

    invoke-static {v1, v4}, Lezi;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2419
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 2420
    const-string v1, "Babel"

    sub-long v2, v4, v2

    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x5b

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Emoji: Fragment write category "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " @"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " took: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 401
    :cond_6
    iget v0, p0, Lcav;->f:I

    invoke-virtual {p0, v0}, Lcav;->c(I)V

    goto/16 :goto_0
.end method

.method public a(Lcbd;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcav;->c:Lcbd;

    .line 152
    return-void
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 479
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcav;->d:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getHeight()I

    move-result v0

    return v0
.end method

.method public c(I)V
    .locals 0

    .prologue
    .line 407
    return-void
.end method

.method public d()I
    .locals 1

    .prologue
    .line 339
    sget v0, Laal;->fE:I

    return v0
.end method

.method public e()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 351
    const/4 v0, 0x0

    return-object v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 485
    const/4 v0, -0x1

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .prologue
    .line 157
    invoke-virtual {p0}, Lcav;->getActivity()Lba;

    move-result-object v0

    invoke-virtual {v0}, Lba;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Laal;->dT:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 159
    invoke-virtual {p0}, Lcav;->getView()Landroid/view/View;

    move-result-object v1

    .line 160
    if-eqz v1, :cond_0

    .line 161
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    :cond_0
    iget-object v0, p0, Lcav;->d:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcav;->aq:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 164
    iget-object v0, p0, Lcav;->al:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 165
    invoke-direct {p0}, Lcav;->a()V

    .line 167
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 144
    invoke-super {p0, p1}, Limg;->onCreate(Landroid/os/Bundle;)V

    .line 145
    const-string v0, "Babel"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lezi;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    const-string v0, "Babel"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v4, 0x2e

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Emoji: Fragment onCreate @"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    .prologue
    .line 209
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 211
    invoke-virtual {p0, p1, p2}, Lcav;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 213
    sget v0, Laen;->bQ:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcav;->al:Landroid/widget/LinearLayout;

    .line 214
    invoke-direct {p0}, Lcav;->a()V

    .line 215
    sget v0, Laen;->bU:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcav;->am:Landroid/widget/TextView;

    .line 216
    iget-object v0, p0, Lcav;->am:Landroid/widget/TextView;

    iget-object v4, p0, Lcav;->g:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    sget v0, Laen;->bV:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcav;->an:Landroid/widget/TextView;

    .line 218
    iget-object v0, p0, Lcav;->an:Landroid/widget/TextView;

    iget-object v4, p0, Lcav;->g:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    sget v0, Laen;->bX:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcav;->ao:Landroid/view/View;

    .line 220
    iget-object v0, p0, Lcav;->ao:Landroid/view/View;

    new-instance v4, Lcba;

    invoke-direct {v4, p0}, Lcba;-><init>(Lcav;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    const-string v0, "Babel"

    const/4 v4, 0x3

    invoke-static {v0, v4}, Lezi;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 231
    const-string v0, "Babel"

    sub-long v2, v4, v2

    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x4d

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Emoji: Fragment onCreateView @"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " took: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 235
    :cond_0
    return-object v1
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 179
    invoke-super {p0}, Limg;->onDestroyView()V

    .line 180
    iget-object v0, p0, Lcav;->d:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcav;->aq:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-static {v0, v1}, Laen;->a(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 181
    iget-object v0, p0, Lcav;->d:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcav;->ar:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-static {v0, v1}, Laen;->a(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 182
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 171
    invoke-super {p0}, Limg;->onLowMemory()V

    .line 172
    iget-object v0, p0, Lcav;->e:Lcbg;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcav;->e:Lcbg;

    invoke-virtual {v0}, Lcbg;->e()V

    .line 175
    :cond_0
    return-void
.end method

.method public q()Z
    .locals 1

    .prologue
    .line 492
    const/4 v0, 0x1

    return v0
.end method

.method r()Landroid/graphics/Point;
    .locals 2

    .prologue
    .line 185
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 186
    invoke-virtual {p0}, Lcav;->getActivity()Lba;

    move-result-object v1

    invoke-virtual {v1}, Lba;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 187
    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 188
    return-object v0
.end method

.method s()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 426
    iget-object v0, p0, Lcav;->ap:Lcom/google/android/apps/hangouts/views/EmojiCategoryPageIndicatorView;

    if-nez v0, :cond_0

    .line 437
    :goto_0
    return-void

    .line 429
    :cond_0
    iget-object v0, p0, Lcav;->d:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->c()I

    move-result v0

    .line 430
    iget-object v1, p0, Lcav;->e:Lcbg;

    .line 431
    invoke-virtual {v1, v0}, Lcbg;->b(I)Landroid/util/Pair;

    move-result-object v1

    .line 432
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 3043
    invoke-static {v0, v4}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v2

    .line 433
    iget-object v3, p0, Lcav;->e:Lcbg;

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 4043
    invoke-static {v0, v4}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 434
    invoke-virtual {v3, v0}, Lcbg;->a(I)I

    move-result v0

    .line 435
    iget-object v1, p0, Lcav;->ap:Lcom/google/android/apps/hangouts/views/EmojiCategoryPageIndicatorView;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/apps/hangouts/views/EmojiCategoryPageIndicatorView;->a(IIF)V

    goto :goto_0
.end method

.method public t()Landroid/widget/TabWidget;
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lcav;->aj:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    return-object v0
.end method
