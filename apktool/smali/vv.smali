.class public final Lvv;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Z

.field private static final b:Landroid/graphics/PorterDuff$Mode;

.field private static final c:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/content/Context;",
            "Lvv;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Lhv;

.field private static final e:[I

.field private static final f:[I

.field private static final g:[I

.field private static final h:[I

.field private static final i:[I

.field private static final j:[I


# instance fields
.field private final k:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private l:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/res/ColorStateList;",
            ">;"
        }
    .end annotation
.end field

.field private m:Landroid/content/res/ColorStateList;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 51
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lvv;->a:Z

    .line 55
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Lvv;->b:Landroid/graphics/PorterDuff$Mode;

    .line 57
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lvv;->c:Ljava/util/WeakHashMap;

    .line 58
    new-instance v0, Lhv;

    invoke-direct {v0}, Lhv;-><init>()V

    sput-object v0, Lvv;->d:Lhv;

    .line 64
    new-array v0, v6, [I

    sget v3, Laal;->ar:I

    aput v3, v0, v2

    sget v3, Laal;->ap:I

    aput v3, v0, v1

    sget v3, Laal;->G:I

    aput v3, v0, v5

    sput-object v0, Lvv;->e:[I

    .line 74
    const/16 v0, 0xc

    new-array v0, v0, [I

    sget v3, Laal;->Q:I

    aput v3, v0, v2

    sget v3, Laal;->T:I

    aput v3, v0, v1

    sget v3, Laal;->aa:I

    aput v3, v0, v5

    sget v3, Laal;->S:I

    aput v3, v0, v6

    sget v3, Laal;->R:I

    aput v3, v0, v7

    const/4 v3, 0x5

    sget v4, Laal;->Z:I

    aput v4, v0, v3

    const/4 v3, 0x6

    sget v4, Laal;->U:I

    aput v4, v0, v3

    const/4 v3, 0x7

    sget v4, Laal;->V:I

    aput v4, v0, v3

    const/16 v3, 0x8

    sget v4, Laal;->Y:I

    aput v4, v0, v3

    const/16 v3, 0x9

    sget v4, Laal;->X:I

    aput v4, v0, v3

    const/16 v3, 0xa

    sget v4, Laal;->W:I

    aput v4, v0, v3

    const/16 v3, 0xb

    sget v4, Laal;->ab:I

    aput v4, v0, v3

    sput-object v0, Lvv;->f:[I

    .line 93
    new-array v0, v7, [I

    sget v3, Laal;->ao:I

    aput v3, v0, v2

    sget v3, Laal;->aq:I

    aput v3, v0, v1

    sget v3, Laal;->O:I

    aput v3, v0, v5

    sget v3, Laal;->an:I

    aput v3, v0, v6

    sput-object v0, Lvv;->g:[I

    .line 104
    new-array v0, v6, [I

    sget v3, Laal;->ae:I

    aput v3, v0, v2

    sget v3, Laal;->M:I

    aput v3, v0, v1

    sget v3, Laal;->ad:I

    aput v3, v0, v5

    sput-object v0, Lvv;->h:[I

    .line 114
    const/16 v0, 0xa

    new-array v0, v0, [I

    sget v3, Laal;->P:I

    aput v3, v0, v2

    sget v3, Laal;->am:I

    aput v3, v0, v1

    sget v3, Laal;->as:I

    aput v3, v0, v5

    sget v3, Laal;->ai:I

    aput v3, v0, v6

    sget v3, Laal;->aj:I

    aput v3, v0, v7

    const/4 v3, 0x5

    sget v4, Laal;->af:I

    aput v4, v0, v3

    const/4 v3, 0x6

    sget v4, Laal;->al:I

    aput v4, v0, v3

    const/4 v3, 0x7

    sget v4, Laal;->ak:I

    aput v4, v0, v3

    const/16 v3, 0x8

    sget v4, Laal;->K:I

    aput v4, v0, v3

    const/16 v3, 0x9

    sget v4, Laal;->H:I

    aput v4, v0, v3

    sput-object v0, Lvv;->i:[I

    .line 132
    new-array v0, v5, [I

    sget v3, Laal;->I:I

    aput v3, v0, v2

    sget v2, Laal;->L:I

    aput v2, v0, v1

    sput-object v0, Lvv;->j:[I

    return-void

    :cond_0
    move v0, v2

    .line 51
    goto/16 :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lvv;->k:Ljava/lang/ref/WeakReference;

    .line 167
    return-void
.end method

.method private static a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 2

    .prologue
    .line 655
    sget-object v0, Lvv;->d:Lhv;

    invoke-virtual {v0, p0, p1}, Lhv;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    .line 657
    if-nez v0, :cond_0

    .line 659
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v0, p0, p1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 660
    sget-object v1, Lvv;->d:Lhv;

    invoke-virtual {v1, p0, p1, v0}, Lhv;->a(ILandroid/graphics/PorterDuff$Mode;Landroid/graphics/PorterDuffColorFilter;)Landroid/graphics/PorterDuffColorFilter;

    .line 663
    :cond_0
    return-object v0
.end method

.method public static a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1273
    sget-object v0, Lvv;->f:[I

    invoke-static {v0, p1}, Lvv;->a([II)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lvv;->e:[I

    invoke-static {v0, p1}, Lvv;->a([II)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lvv;->g:[I

    invoke-static {v0, p1}, Lvv;->a([II)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lvv;->i:[I

    invoke-static {v0, p1}, Lvv;->a([II)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lvv;->h:[I

    invoke-static {v0, p1}, Lvv;->a([II)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lvv;->j:[I

    invoke-static {v0, p1}, Lvv;->a([II)Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Laal;->N:I

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 146
    :goto_0
    if-eqz v0, :cond_2

    .line 147
    invoke-static {p0}, Lvv;->a(Landroid/content/Context;)Lvv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lvv;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 149
    :goto_1
    return-object v0

    .line 1273
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 149
    :cond_2
    invoke-static {p0, p1}, Ley;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;)Lvv;
    .locals 2

    .prologue
    .line 157
    sget-object v0, Lvv;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvv;

    .line 158
    if-nez v0, :cond_0

    .line 159
    new-instance v0, Lvv;

    invoke-direct {v0, p0}, Lvv;-><init>(Landroid/content/Context;)V

    .line 160
    sget-object v1, Lvv;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    :cond_0
    return-object v0
.end method

.method private static a(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .prologue
    .line 667
    if-nez p2, :cond_0

    sget-object p2, Lvv;->b:Landroid/graphics/PorterDuff$Mode;

    :cond_0
    invoke-static {p1, p2}, Lvv;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 668
    return-void
.end method

.method public static a(Landroid/graphics/drawable/Drawable;Lvu;[I)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 597
    invoke-static {p0}, Lvv;->a(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq v0, p0, :cond_1

    .line 616
    :cond_0
    :goto_0
    return-void

    .line 602
    :cond_1
    iget-boolean v0, p1, Lvu;->d:Z

    if-nez v0, :cond_2

    iget-boolean v0, p1, Lvu;->c:Z

    if-eqz v0, :cond_7

    .line 603
    :cond_2
    iget-boolean v0, p1, Lvu;->d:Z

    if-eqz v0, :cond_4

    iget-object v0, p1, Lvu;->a:Landroid/content/res/ColorStateList;

    :goto_1
    iget-boolean v2, p1, Lvu;->c:Z

    if-eqz v2, :cond_5

    iget-object v2, p1, Lvu;->b:Landroid/graphics/PorterDuff$Mode;

    .line 4646
    :goto_2
    if-eqz v0, :cond_3

    if-nez v2, :cond_6

    .line 603
    :cond_3
    :goto_3
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 611
    :goto_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-gt v0, v1, :cond_0

    .line 614
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    goto :goto_0

    :cond_4
    move-object v0, v1

    .line 603
    goto :goto_1

    :cond_5
    sget-object v2, Lvv;->b:Landroid/graphics/PorterDuff$Mode;

    goto :goto_2

    .line 4649
    :cond_6
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 4650
    invoke-static {v0, v2}, Lvv;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    goto :goto_3

    .line 608
    :cond_7
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_4
.end method

.method private static a(Landroid/graphics/drawable/Drawable;)Z
    .locals 6

    .prologue
    const/16 v3, 0x10

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 619
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_0

    move v0, v1

    .line 641
    :goto_0
    return v0

    .line 624
    :cond_0
    instance-of v0, p0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_2

    .line 625
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0

    .line 626
    :cond_2
    instance-of v0, p0, Landroid/graphics/drawable/InsetDrawable;

    if-eqz v0, :cond_4

    .line 627
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v0, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0

    .line 628
    :cond_4
    instance-of v0, p0, Landroid/graphics/drawable/DrawableContainer;

    if-eqz v0, :cond_6

    .line 630
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    .line 631
    instance-of v3, v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    if-eqz v3, :cond_6

    .line 632
    check-cast v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    .line 634
    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getChildren()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    array-length v4, v3

    move v0, v2

    :goto_1
    if-ge v0, v4, :cond_6

    aget-object v5, v3, v0

    .line 635
    invoke-static {v5}, Lvv;->a(Landroid/graphics/drawable/Drawable;)Z

    move-result v5

    if-nez v5, :cond_5

    move v0, v2

    .line 636
    goto :goto_0

    .line 634
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    move v0, v1

    .line 641
    goto :goto_0
.end method

.method private static a([II)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 264
    array-length v2, p0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget v3, p0, v1

    .line 265
    if-ne v3, p1, :cond_1

    .line 266
    const/4 v0, 0x1

    .line 269
    :cond_0
    return v0

    .line 264
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 9

    .prologue
    const/4 v1, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 508
    new-array v0, v1, [[I

    .line 509
    new-array v1, v1, [I

    .line 512
    invoke-static {p0, p1}, Lvr;->a(Landroid/content/Context;I)I

    move-result v2

    .line 513
    sget v3, Laen;->O:I

    invoke-static {p0, v3}, Lvr;->a(Landroid/content/Context;I)I

    move-result v3

    .line 516
    sget-object v4, Lvr;->a:[I

    aput-object v4, v0, v5

    .line 517
    sget v4, Laen;->M:I

    invoke-static {p0, v4}, Lvr;->c(Landroid/content/Context;I)I

    move-result v4

    aput v4, v1, v5

    .line 520
    sget-object v4, Lvr;->d:[I

    aput-object v4, v0, v6

    .line 521
    invoke-static {v3, v2}, Laal;->a(II)I

    move-result v4

    aput v4, v1, v6

    .line 524
    sget-object v4, Lvr;->b:[I

    aput-object v4, v0, v7

    .line 525
    invoke-static {v3, v2}, Laal;->a(II)I

    move-result v3

    aput v3, v1, v7

    .line 529
    sget-object v3, Lvr;->h:[I

    aput-object v3, v0, v8

    .line 530
    aput v2, v1, v8

    .line 533
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2
.end method


# virtual methods
.method public a(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lvv;->a(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public a(IZ)Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 174
    iget-object v0, p0, Lvv;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 175
    if-nez v0, :cond_0

    .line 218
    :goto_0
    return-object v1

    .line 177
    :cond_0
    invoke-static {v0, p1}, Ley;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 179
    if-eqz v2, :cond_3

    .line 180
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x8

    if-lt v3, v4, :cond_1

    .line 182
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 185
    :cond_1
    invoke-virtual {p0, p1}, Lvv;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 186
    if-eqz v3, :cond_4

    .line 1344
    sget-object v0, Lfv;->a:Lfw;

    invoke-virtual {v0, v2}, Lfw;->c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 189
    invoke-static {v2, v3}, Lfv;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 2285
    sget v0, Laal;->ak:I

    if-ne p1, v0, :cond_2

    .line 2286
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    .line 193
    :cond_2
    if-eqz v1, :cond_3

    .line 194
    invoke-static {v2, v1}, Lfv;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_3
    :goto_1
    move-object v1, v2

    .line 218
    goto :goto_0

    .line 196
    :cond_4
    sget v3, Laal;->N:I

    if-ne p1, v3, :cond_5

    .line 197
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    sget v3, Laal;->M:I

    invoke-virtual {p0, v3}, Lvv;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x1

    sget v3, Laal;->O:I

    invoke-virtual {p0, v3}, Lvv;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-direct {v1, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 201
    :cond_5
    sget v3, Laal;->ah:I

    if-ne p1, v3, :cond_6

    move-object v1, v2

    .line 202
    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    .line 203
    const/high16 v3, 0x1020000

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    sget v4, Laen;->P:I

    invoke-static {v0, v4}, Lvr;->a(Landroid/content/Context;I)I

    move-result v4

    sget-object v5, Lvv;->b:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v3, v4, v5}, Lvv;->a(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 205
    const v3, 0x102000f

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    sget v4, Laen;->P:I

    invoke-static {v0, v4}, Lvr;->a(Landroid/content/Context;I)I

    move-result v4

    sget-object v5, Lvv;->b:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v3, v4, v5}, Lvv;->a(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 207
    const v3, 0x102000d

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget v3, Laen;->N:I

    invoke-static {v0, v3}, Lvr;->a(Landroid/content/Context;I)I

    move-result v0

    sget-object v3, Lvv;->b:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v1, v0, v3}, Lvv;->a(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    .line 210
    :cond_6
    invoke-virtual {p0, p1, v2}, Lvv;->a(ILandroid/graphics/drawable/Drawable;)Z

    move-result v0

    .line 211
    if-nez v0, :cond_3

    if-eqz p2, :cond_3

    move-object v2, v1

    .line 214
    goto :goto_1
.end method

.method public final a(ILandroid/graphics/drawable/Drawable;)Z
    .locals 8

    .prologue
    const/4 v4, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 222
    iget-object v0, p0, Lvv;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 223
    if-nez v0, :cond_0

    move v0, v1

    .line 260
    :goto_0
    return v0

    .line 225
    :cond_0
    sget-object v6, Lvv;->b:Landroid/graphics/PorterDuff$Mode;

    .line 230
    sget-object v3, Lvv;->e:[I

    invoke-static {v3, p1}, Lvv;->a([II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 231
    sget v3, Laen;->P:I

    move v5, v3

    move-object v7, v6

    move v6, v2

    move v3, v4

    .line 246
    :goto_1
    if-eqz v6, :cond_5

    .line 247
    invoke-static {v0, v5}, Lvr;->a(Landroid/content/Context;I)I

    move-result v0

    .line 248
    invoke-static {v0, v7}, Lvv;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 250
    if-eq v3, v4, :cond_1

    .line 251
    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_1
    move v0, v2

    .line 258
    goto :goto_0

    .line 233
    :cond_2
    sget-object v3, Lvv;->g:[I

    invoke-static {v3, p1}, Lvv;->a([II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 234
    sget v3, Laen;->N:I

    move v5, v3

    move-object v7, v6

    move v6, v2

    move v3, v4

    .line 235
    goto :goto_1

    .line 236
    :cond_3
    sget-object v3, Lvv;->h:[I

    invoke-static {v3, p1}, Lvv;->a([II)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 237
    const v3, 0x1010031

    .line 239
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    move v6, v2

    move-object v7, v5

    move v5, v3

    move v3, v4

    goto :goto_1

    .line 240
    :cond_4
    sget v3, Laal;->ac:I

    if-ne p1, v3, :cond_6

    .line 241
    const v5, 0x1010030

    .line 243
    const v3, 0x42233333    # 40.8f

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    move-object v7, v6

    move v6, v2

    goto :goto_1

    :cond_5
    move v0, v1

    .line 260
    goto :goto_0

    :cond_6
    move v3, v4

    move v5, v1

    move-object v7, v6

    move v6, v1

    goto :goto_1
.end method

.method public final b(I)Landroid/content/res/ColorStateList;
    .locals 10

    .prologue
    const v5, 0x3e99999a    # 0.3f

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 293
    iget-object v0, p0, Lvv;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 294
    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 334
    :cond_0
    :goto_0
    return-object v0

    .line 297
    :cond_1
    iget-object v1, p0, Lvv;->l:Landroid/util/SparseArray;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lvv;->l:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/ColorStateList;

    .line 299
    :goto_1
    if-nez v1, :cond_12

    .line 301
    sget v2, Laal;->P:I

    if-ne p1, v2, :cond_4

    .line 2478
    new-array v1, v9, [[I

    .line 2479
    new-array v2, v9, [I

    .line 2483
    sget-object v3, Lvr;->a:[I

    aput-object v3, v1, v6

    .line 2484
    sget v3, Laen;->P:I

    invoke-static {v0, v3}, Lvr;->c(Landroid/content/Context;I)I

    move-result v3

    aput v3, v2, v6

    .line 2487
    sget-object v3, Lvr;->g:[I

    aput-object v3, v1, v7

    .line 2488
    sget v3, Laen;->P:I

    invoke-static {v0, v3}, Lvr;->a(Landroid/content/Context;I)I

    move-result v3

    aput v3, v2, v7

    .line 2492
    sget-object v3, Lvr;->h:[I

    aput-object v3, v1, v8

    .line 2493
    sget v3, Laen;->N:I

    invoke-static {v0, v3}, Lvr;->a(Landroid/content/Context;I)I

    move-result v0

    aput v0, v2, v8

    .line 2496
    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-direct {v0, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 325
    :goto_2
    if-eqz v0, :cond_0

    .line 326
    iget-object v1, p0, Lvv;->l:Landroid/util/SparseArray;

    if-nez v1, :cond_2

    .line 328
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lvv;->l:Landroid/util/SparseArray;

    .line 331
    :cond_2
    iget-object v1, p0, Lvv;->l:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_0

    .line 297
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 303
    :cond_4
    sget v2, Laal;->al:I

    if-ne p1, v2, :cond_5

    .line 3410
    new-array v1, v9, [[I

    .line 3411
    new-array v2, v9, [I

    .line 3415
    sget-object v3, Lvr;->a:[I

    aput-object v3, v1, v6

    .line 3416
    const v3, 0x1010030

    const v4, 0x3dcccccd    # 0.1f

    invoke-static {v0, v3, v4}, Lvr;->a(Landroid/content/Context;IF)I

    move-result v3

    aput v3, v2, v6

    .line 3419
    sget-object v3, Lvr;->e:[I

    aput-object v3, v1, v7

    .line 3420
    sget v3, Laen;->N:I

    invoke-static {v0, v3, v5}, Lvr;->a(Landroid/content/Context;IF)I

    move-result v3

    aput v3, v2, v7

    .line 3424
    sget-object v3, Lvr;->h:[I

    aput-object v3, v1, v8

    .line 3425
    const v3, 0x1010030

    invoke-static {v0, v3, v5}, Lvr;->a(Landroid/content/Context;IF)I

    move-result v0

    aput v0, v2, v8

    .line 3428
    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-direct {v0, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    goto :goto_2

    .line 305
    :cond_5
    sget v2, Laal;->ak:I

    if-ne p1, v2, :cond_7

    .line 3432
    new-array v1, v9, [[I

    .line 3433
    new-array v2, v9, [I

    .line 3436
    sget v3, Laen;->Q:I

    invoke-static {v0, v3}, Lvr;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 3439
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3444
    sget-object v4, Lvr;->a:[I

    aput-object v4, v1, v6

    .line 3445
    aget-object v4, v1, v6

    invoke-virtual {v3, v4, v6}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    aput v4, v2, v6

    .line 3448
    sget-object v4, Lvr;->e:[I

    aput-object v4, v1, v7

    .line 3449
    sget v4, Laen;->N:I

    invoke-static {v0, v4}, Lvr;->a(Landroid/content/Context;I)I

    move-result v0

    aput v0, v2, v7

    .line 3453
    sget-object v0, Lvr;->h:[I

    aput-object v0, v1, v8

    .line 3454
    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    aput v0, v2, v8

    .line 3474
    :goto_3
    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-direct {v0, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    goto/16 :goto_2

    .line 3460
    :cond_6
    sget-object v3, Lvr;->a:[I

    aput-object v3, v1, v6

    .line 3461
    sget v3, Laen;->Q:I

    invoke-static {v0, v3}, Lvr;->c(Landroid/content/Context;I)I

    move-result v3

    aput v3, v2, v6

    .line 3464
    sget-object v3, Lvr;->e:[I

    aput-object v3, v1, v7

    .line 3465
    sget v3, Laen;->N:I

    invoke-static {v0, v3}, Lvr;->a(Landroid/content/Context;I)I

    move-result v3

    aput v3, v2, v7

    .line 3469
    sget-object v3, Lvr;->h:[I

    aput-object v3, v1, v8

    .line 3470
    sget v3, Laen;->Q:I

    invoke-static {v0, v3}, Lvr;->a(Landroid/content/Context;I)I

    move-result v0

    aput v0, v2, v8

    goto :goto_3

    .line 307
    :cond_7
    sget v2, Laal;->K:I

    if-eq p1, v2, :cond_8

    sget v2, Laal;->H:I

    if-ne p1, v2, :cond_9

    .line 3500
    :cond_8
    sget v1, Laen;->M:I

    invoke-static {v0, v1}, Lvv;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto/16 :goto_2

    .line 310
    :cond_9
    sget v2, Laal;->J:I

    if-ne p1, v2, :cond_a

    .line 3504
    sget v1, Laen;->L:I

    invoke-static {v0, v1}, Lvv;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto/16 :goto_2

    .line 312
    :cond_a
    sget v2, Laal;->ai:I

    if-eq p1, v2, :cond_b

    sget v2, Laal;->aj:I

    if-ne p1, v2, :cond_c

    .line 3537
    :cond_b
    new-array v1, v9, [[I

    .line 3538
    new-array v2, v9, [I

    .line 3542
    sget-object v3, Lvr;->a:[I

    aput-object v3, v1, v6

    .line 3543
    sget v3, Laen;->P:I

    invoke-static {v0, v3}, Lvr;->c(Landroid/content/Context;I)I

    move-result v3

    aput v3, v2, v6

    .line 3546
    sget-object v3, Lvr;->g:[I

    aput-object v3, v1, v7

    .line 3547
    sget v3, Laen;->P:I

    invoke-static {v0, v3}, Lvr;->a(Landroid/content/Context;I)I

    move-result v3

    aput v3, v2, v7

    .line 3550
    sget-object v3, Lvr;->h:[I

    aput-object v3, v1, v8

    .line 3551
    sget v3, Laen;->N:I

    invoke-static {v0, v3}, Lvr;->a(Landroid/content/Context;I)I

    move-result v0

    aput v0, v2, v8

    .line 3554
    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-direct {v0, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    goto/16 :goto_2

    .line 315
    :cond_c
    sget-object v2, Lvv;->f:[I

    invoke-static {v2, p1}, Lvv;->a([II)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 316
    sget v1, Laen;->P:I

    invoke-static {v0, v1}, Lvr;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto/16 :goto_2

    .line 317
    :cond_d
    sget-object v2, Lvv;->i:[I

    invoke-static {v2, p1}, Lvv;->a([II)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 4338
    iget-object v1, p0, Lvv;->m:Landroid/content/res/ColorStateList;

    if-nez v1, :cond_e

    .line 4344
    sget v1, Laen;->P:I

    invoke-static {v0, v1}, Lvr;->a(Landroid/content/Context;I)I

    move-result v1

    .line 4345
    sget v2, Laen;->N:I

    invoke-static {v0, v2}, Lvr;->a(Landroid/content/Context;I)I

    move-result v2

    .line 4348
    const/4 v3, 0x7

    new-array v3, v3, [[I

    .line 4349
    const/4 v4, 0x7

    new-array v4, v4, [I

    .line 4353
    sget-object v5, Lvr;->a:[I

    aput-object v5, v3, v6

    .line 4354
    sget v5, Laen;->P:I

    invoke-static {v0, v5}, Lvr;->c(Landroid/content/Context;I)I

    move-result v0

    aput v0, v4, v6

    .line 4357
    sget-object v0, Lvr;->b:[I

    aput-object v0, v3, v7

    .line 4358
    aput v2, v4, v7

    .line 4361
    sget-object v0, Lvr;->c:[I

    aput-object v0, v3, v8

    .line 4362
    aput v2, v4, v8

    .line 4365
    sget-object v0, Lvr;->d:[I

    aput-object v0, v3, v9

    .line 4366
    aput v2, v4, v9

    .line 4369
    const/4 v0, 0x4

    sget-object v5, Lvr;->e:[I

    aput-object v5, v3, v0

    .line 4370
    const/4 v0, 0x4

    aput v2, v4, v0

    .line 4373
    const/4 v0, 0x5

    sget-object v5, Lvr;->f:[I

    aput-object v5, v3, v0

    .line 4374
    const/4 v0, 0x5

    aput v2, v4, v0

    .line 4378
    const/4 v0, 0x6

    sget-object v2, Lvr;->h:[I

    aput-object v2, v3, v0

    .line 4379
    const/4 v0, 0x6

    aput v1, v4, v0

    .line 4382
    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-direct {v0, v3, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v0, p0, Lvv;->m:Landroid/content/res/ColorStateList;

    .line 4384
    :cond_e
    iget-object v0, p0, Lvv;->m:Landroid/content/res/ColorStateList;

    goto/16 :goto_2

    .line 319
    :cond_f
    sget-object v2, Lvv;->j:[I

    invoke-static {v2, p1}, Lvv;->a([II)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 4388
    new-array v1, v9, [[I

    .line 4389
    new-array v2, v9, [I

    .line 4393
    sget-object v3, Lvr;->a:[I

    aput-object v3, v1, v6

    .line 4394
    sget v3, Laen;->P:I

    invoke-static {v0, v3}, Lvr;->c(Landroid/content/Context;I)I

    move-result v3

    aput v3, v2, v6

    .line 4397
    sget-object v3, Lvr;->e:[I

    aput-object v3, v1, v7

    .line 4398
    sget v3, Laen;->N:I

    invoke-static {v0, v3}, Lvr;->a(Landroid/content/Context;I)I

    move-result v3

    aput v3, v2, v7

    .line 4402
    sget-object v3, Lvr;->h:[I

    aput-object v3, v1, v8

    .line 4403
    sget v3, Laen;->P:I

    invoke-static {v0, v3}, Lvr;->a(Landroid/content/Context;I)I

    move-result v0

    aput v0, v2, v8

    .line 4406
    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-direct {v0, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    goto/16 :goto_2

    .line 321
    :cond_10
    sget v2, Laal;->ag:I

    if-ne p1, v2, :cond_11

    .line 4558
    new-array v1, v8, [[I

    .line 4559
    new-array v2, v8, [I

    .line 4563
    sget-object v3, Lvr;->a:[I

    aput-object v3, v1, v6

    .line 4564
    sget v3, Laen;->N:I

    invoke-static {v0, v3}, Lvr;->c(Landroid/content/Context;I)I

    move-result v3

    aput v3, v2, v6

    .line 4567
    sget-object v3, Lvr;->h:[I

    aput-object v3, v1, v7

    .line 4568
    sget v3, Laen;->N:I

    invoke-static {v0, v3}, Lvr;->a(Landroid/content/Context;I)I

    move-result v0

    aput v0, v2, v7

    .line 4571
    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-direct {v0, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    goto/16 :goto_2

    :cond_11
    move-object v0, v1

    goto/16 :goto_2

    :cond_12
    move-object v0, v1

    goto/16 :goto_0
.end method
