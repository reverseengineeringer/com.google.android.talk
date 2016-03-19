.class public Lcom/google/android/apps/hangouts/views/AvatarView;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lbhv;
.implements Lehg;
.implements Lehh;


# static fields
.field public static final a:Z


# instance fields
.field public b:Z

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Lbet;

.field private f:Lbhs;

.field private g:Landroid/graphics/Bitmap;

.field private h:Landroid/graphics/Bitmap;

.field private i:Landroid/graphics/Bitmap;

.field private final j:Landroid/graphics/Rect;

.field private final k:Landroid/graphics/Rect;

.field private final l:Lelz;

.field private m:Z

.field private n:I

.field private o:I

.field private final p:Landroid/graphics/Paint;

.field private q:Lceh;

.field private r:Lcei;

.field private final s:Lauw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lauw",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lezi;->u:Limx;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/apps/hangouts/views/AvatarView;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/hangouts/views/AvatarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/hangouts/views/AvatarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 109
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/hangouts/views/AvatarView;->j:Landroid/graphics/Rect;

    .line 67
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/hangouts/views/AvatarView;->k:Landroid/graphics/Rect;

    .line 68
    new-instance v0, Lelz;

    invoke-direct {v0}, Lelz;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/hangouts/views/AvatarView;->l:Lelz;

    .line 70
    iput-boolean v2, p0, Lcom/google/android/apps/hangouts/views/AvatarView;->m:Z

    .line 71
    iput-boolean v1, p0, Lcom/google/android/apps/hangouts/views/AvatarView;->b:Z

    .line 73
    iput v2, p0, Lcom/google/android/apps/hangouts/views/AvatarView;->n:I

    .line 74
    iput v1, p0, Lcom/google/android/apps/hangouts/views/AvatarView;->o:I

    .line 91
    new-instance v0, Lfaw;

    invoke-direct {v0, p0}, Lfaw;-><init>(Lcom/google/android/apps/hangouts/views/AvatarView;)V

    iput-object v0, p0, Lcom/google/android/apps/hangouts/views/AvatarView;->s:Lauw;

    .line 111
    if-eqz p2, :cond_b

    .line 112
    sget-object v0, Lawl;->k:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 114
    sget v0, Lawl;->m:I

    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 115
    if-nez v0, :cond_0

    .line 120
    const-string v0, "small"

    .line 1446
    :cond_0
    const-string v5, "tiny"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v0, v1

    .line 123
    :goto_0
    iput v0, p0, Lcom/google/android/apps/hangouts/views/AvatarView;->c:I

    .line 125
    sget v0, Lawl;->l:I

    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 126
    if-nez v0, :cond_7

    move-object v0, p0

    .line 129
    :goto_1
    iput v1, v0, Lcom/google/android/apps/hangouts/views/AvatarView;->n:I

    .line 132
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 137
    :goto_2
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/apps/hangouts/views/AvatarView;->p:Landroid/graphics/Paint;

    .line 138
    invoke-direct {p0}, Lcom/google/android/apps/hangouts/views/AvatarView;->e()V

    .line 139
    return-void

    .line 1449
    :cond_1
    const-string v5, "small"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v0, v2

    .line 1450
    goto :goto_0

    .line 1452
    :cond_2
    const-string v5, "medium"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v0, v3

    .line 1453
    goto :goto_0

    .line 1455
    :cond_3
    const-string v5, "large"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1456
    const/4 v0, 0x3

    goto :goto_0

    .line 1458
    :cond_4
    const-string v5, "xlarge"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1459
    const/4 v0, 0x4

    goto :goto_0

    .line 1461
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid avatar size: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3

    .line 1468
    :cond_7
    const-string v5, "square"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    move v1, v2

    move-object v0, p0

    .line 1469
    goto :goto_1

    .line 1471
    :cond_8
    const-string v2, "round"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    move-object v0, p0

    .line 1472
    goto :goto_1

    .line 1474
    :cond_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid avatar shape: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_4

    .line 134
    :cond_b
    iput v3, p0, Lcom/google/android/apps/hangouts/views/AvatarView;->c:I

    .line 135
    iput v1, p0, Lcom/google/android/apps/hangouts/views/AvatarView;->n:I

    goto/16 :goto_2
.end method

.method private a(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 308
    invoke-direct {p0}, Lcom/google/android/apps/hangouts/views/AvatarView;->f()I

    move-result v2

    .line 309
    iget v0, p0, Lcom/google/android/apps/hangouts/views/AvatarView;->n:I

    if-nez v0, :cond_0

    .line 310
    sget v4, Lemb;->a:I

    .line 311
    :goto_0
    invoke-static {}, Leye;->a()Lexb;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lexb;->b(II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/hangouts/views/AvatarView;->h:Landroid/graphics/Bitmap;

    .line 314
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/views/AvatarView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/hangouts/views/AvatarView;->h:Landroid/graphics/Bitmap;

    int-to-float v3, v2

    sget v5, Laal;->dh:I

    move-object v2, p1

    .line 313
    invoke-static/range {v0 .. v5}, Lelz;->a(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;FII)Z

    move-result v0

    .line 322
    if-eqz v0, :cond_1

    .line 323
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/AvatarView;->h:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/views/AvatarView;->a(Landroid/graphics/Bitmap;)V

    .line 328
    :goto_1
    return-void

    .line 310
    :cond_0
    sget v4, Lemb;->b:I

    goto :goto_0

    .line 325
    :cond_1
    invoke-static {}, Leye;->a()Lexb;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/hangouts/views/AvatarView;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lexb;->a(Landroid/graphics/Bitmap;)V

    .line 326
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/hangouts/views/AvatarView;->h:Landroid/graphics/Bitmap;

    goto :goto_1
.end method

.method private e()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 142
    const/4 v0, 0x0

    .line 144
    iget v2, p0, Lcom/google/android/apps/hangouts/views/AvatarView;->o:I

    if-nez v2, :cond_3

    .line 145
    iget v2, p0, Lcom/google/android/apps/hangouts/views/AvatarView;->c:I

    packed-switch v2, :pswitch_data_0

    .line 198
    :goto_0
    iget-object v1, p0, Lcom/google/android/apps/hangouts/views/AvatarView;->g:Landroid/graphics/Bitmap;

    if-eq v1, v0, :cond_0

    .line 199
    iput-object v0, p0, Lcom/google/android/apps/hangouts/views/AvatarView;->g:Landroid/graphics/Bitmap;

    .line 200
    iget-boolean v0, p0, Lcom/google/android/apps/hangouts/views/AvatarView;->b:Z

    if-nez v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/AvatarView;->g:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/views/AvatarView;->a(Landroid/graphics/Bitmap;)V

    .line 205
    :cond_0
    return-void

    .line 149
    :pswitch_0
    iget v0, p0, Lcom/google/android/apps/hangouts/views/AvatarView;->n:I

    if-ne v0, v1, :cond_1

    .line 150
    invoke-static {}, Lbfq;->c()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 152
    :cond_1
    invoke-static {}, Lbfq;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 158
    :pswitch_1
    iget v0, p0, Lcom/google/android/apps/hangouts/views/AvatarView;->n:I

    if-ne v0, v1, :cond_2

    .line 159
    invoke-static {}, Lbfq;->f()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 161
    :cond_2
    invoke-static {}, Lbfq;->e()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 165
    :cond_3
    iget v2, p0, Lcom/google/android/apps/hangouts/views/AvatarView;->o:I

    if-ne v2, v1, :cond_4

    .line 166
    invoke-static {}, Lbfq;->k()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 167
    :cond_4
    iget v2, p0, Lcom/google/android/apps/hangouts/views/AvatarView;->o:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_7

    .line 168
    iget v2, p0, Lcom/google/android/apps/hangouts/views/AvatarView;->c:I

    packed-switch v2, :pswitch_data_1

    goto :goto_0

    .line 172
    :pswitch_2
    iget v0, p0, Lcom/google/android/apps/hangouts/views/AvatarView;->n:I

    if-ne v0, v1, :cond_5

    .line 173
    invoke-static {}, Lbfq;->h()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 175
    :cond_5
    invoke-static {}, Lbfq;->g()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 181
    :pswitch_3
    iget v0, p0, Lcom/google/android/apps/hangouts/views/AvatarView;->n:I

    if-ne v0, v1, :cond_6

    .line 182
    invoke-static {}, Lbfq;->j()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 184
    :cond_6
    invoke-static {}, Lbfq;->i()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 189
    :cond_7
    iget v0, p0, Lcom/google/android/apps/hangouts/views/AvatarView;->o:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_8

    move v0, v1

    .line 2134
    :goto_1
    const-string v2, "Expected condition to be true"

    invoke-static {v2, v0}, Lhbs;->a(Ljava/lang/String;Z)V

    .line 190
    iget v0, p0, Lcom/google/android/apps/hangouts/views/AvatarView;->n:I

    if-ne v0, v1, :cond_9

    .line 2217
    invoke-static {}, Lbfq;->f()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 189
    :cond_8
    const/4 v0, 0x0

    goto :goto_1

    .line 3212
    :cond_9
    invoke-static {}, Lbfq;->e()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 145
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 168
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private f()I
    .locals 2

    .prologue
    .line 223
    iget v0, p0, Lcom/google/android/apps/hangouts/views/AvatarView;->c:I

    packed-switch v0, :pswitch_data_0

    .line 235
    const-string v0, "Invalid avatar size"

    invoke-static {v0}, Lhbs;->a(Ljava/lang/String;)V

    .line 236
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 227
    :pswitch_0
    invoke-static {}, Lbfq;->a()I

    move-result v0

    goto :goto_0

    .line 230
    :pswitch_1
    invoke-static {}, Lbfq;->d()I

    move-result v0

    goto :goto_0

    .line 4172
    :pswitch_2
    sget v0, Lbfq;->b:I

    if-nez v0, :cond_0

    .line 5036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 4175
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Laal;->ea:I

    .line 4176
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lbfq;->b:I

    .line 4178
    :cond_0
    sget v0, Lbfq;->b:I

    goto :goto_0

    .line 223
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private g()V
    .locals 10

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    .line 405
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/views/AvatarView;->getMeasuredHeight()I

    move-result v0

    .line 406
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/views/AvatarView;->getMeasuredWidth()I

    move-result v1

    .line 410
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 427
    :cond_0
    :goto_0
    return-void

    .line 414
    :cond_1
    iget-object v2, p0, Lcom/google/android/apps/hangouts/views/AvatarView;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 415
    iget-object v3, p0, Lcom/google/android/apps/hangouts/views/AvatarView;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 417
    if-le v1, v0, :cond_2

    .line 418
    int-to-float v4, v2

    int-to-float v5, v0

    int-to-float v6, v1

    div-float/2addr v5, v6

    sub-float v5, v8, v5

    mul-float/2addr v4, v5

    div-float/2addr v4, v9

    float-to-int v4, v4

    .line 419
    sub-int/2addr v2, v4

    .line 420
    iget-object v5, p0, Lcom/google/android/apps/hangouts/views/AvatarView;->k:Landroid/graphics/Rect;

    invoke-virtual {v5, v7, v4, v3, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 426
    :goto_1
    iget-object v2, p0, Lcom/google/android/apps/hangouts/views/AvatarView;->j:Landroid/graphics/Rect;

    invoke-virtual {v2, v7, v7, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 422
    :cond_2
    int-to-float v4, v3

    int-to-float v5, v1

    int-to-float v6, v0

    div-float/2addr v5, v6

    sub-float v5, v8, v5

    mul-float/2addr v4, v5

    div-float/2addr v4, v9

    float-to-int v4, v4

    .line 423
    sub-int/2addr v3, v4

    .line 424
    iget-object v5, p0, Lcom/google/android/apps/hangouts/views/AvatarView;->k:Landroid/graphics/Rect;

    invoke-virtual {v5, v4, v7, v3, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 218
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/hangouts/views/AvatarView;->n:I

    .line 219
    invoke-direct {p0}, Lcom/google/android/apps/hangouts/views/AvatarView;->e()V

    .line 220
    return-void
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 208
    iput p1, p0, Lcom/google/android/apps/hangouts/views/AvatarView;->o:I

    .line 209
    invoke-direct {p0}, Lcom/google/android/apps/hangouts/views/AvatarView;->e()V

    .line 210
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/AvatarView;->i:Landroid/graphics/Bitmap;

    if-eq v0, p1, :cond_0

    .line 346
    iput-object p1, p0, Lcom/google/android/apps/hangouts/views/AvatarView;->i:Landroid/graphics/Bitmap;

    .line 347
    invoke-direct {p0}, Lcom/google/android/apps/hangouts/views/AvatarView;->g()V

    .line 348
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/views/AvatarView;->invalidate()V

    .line 350
    :cond_0
    return-void
.end method

.method public a(Lbet;)V
    .locals 1

    .prologue
    .line 503
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/hangouts/views/AvatarView;->e:Lbet;

    .line 504
    return-void
.end method

.method public a(Lczb;Lbfd;)V
    .locals 1

    .prologue
    .line 335
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/views/AvatarView;->c()V

    .line 336
    invoke-static {p1, p2, p0}, Lehd;->a(Lczb;Lbfd;Lehg;)Lbet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/hangouts/views/AvatarView;->e:Lbet;

    .line 337
    return-void
.end method

.method public a(Leys;Lexs;ZLbhs;Z)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 5188
    const-string v0, "Expected null"

    invoke-static {v0, p2}, Lhbs;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 367
    sget-boolean v0, Lcom/google/android/apps/hangouts/views/AvatarView;->a:Z

    if-eqz v0, :cond_0

    .line 368
    if-nez p1, :cond_2

    move-object v2, v1

    .line 371
    :goto_0
    if-nez p2, :cond_3

    move-object v0, v1

    .line 373
    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x48

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "AvatarView: setImageBitmap "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "gifImage="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " success="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " loadedFromCache="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/AvatarView;->f:Lbhs;

    if-eq v0, p4, :cond_4

    .line 382
    if-eqz p1, :cond_1

    .line 383
    invoke-virtual {p1}, Leys;->b()V

    .line 398
    :cond_1
    :goto_2
    return-void

    .line 371
    :cond_2
    invoke-virtual {p1}, Leys;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    .line 373
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 389
    :cond_4
    iput-object v1, p0, Lcom/google/android/apps/hangouts/views/AvatarView;->f:Lbhs;

    .line 391
    if-eqz p3, :cond_1

    if-eqz p1, :cond_1

    .line 394
    iget-boolean v0, p0, Lcom/google/android/apps/hangouts/views/AvatarView;->b:Z

    .line 6144
    const-string v1, "Expected condition to be false"

    invoke-static {v1, v0}, Lhbs;->b(Ljava/lang/String;Z)V

    .line 395
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/hangouts/views/AvatarView;->b:Z

    .line 396
    invoke-virtual {p1}, Leys;->e()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/views/AvatarView;->a(Landroid/graphics/Bitmap;)V

    goto :goto_2
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ILbip;Lbfd;)V
    .locals 6

    .prologue
    .line 495
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/hangouts/views/AvatarView;->a(Ljava/lang/String;Ljava/lang/String;Lbet;Ljava/lang/String;Lbfd;)V

    .line 496
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 497
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/views/AvatarView;->a(I)V

    .line 499
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lbet;Ljava/lang/String;Lbfd;)V
    .locals 1

    .prologue
    .line 484
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/hangouts/views/AvatarView;->e:Lbet;

    .line 485
    invoke-virtual {p0, p2, p1, p5}, Lcom/google/android/apps/hangouts/views/AvatarView;->a(Ljava/lang/String;Ljava/lang/String;Lbfd;)V

    .line 486
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lbfd;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 255
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 256
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/views/AvatarView;->c()V

    .line 257
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 258
    invoke-direct {p0, p2}, Lcom/google/android/apps/hangouts/views/AvatarView;->a(Ljava/lang/String;)V

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 262
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/AvatarView;->d:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 266
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/views/AvatarView;->c()V

    .line 267
    iput-object p1, p0, Lcom/google/android/apps/hangouts/views/AvatarView;->d:Ljava/lang/String;

    .line 268
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/views/AvatarView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v3, Lcei;

    invoke-static {v0, v3}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcei;

    iput-object v0, p0, Lcom/google/android/apps/hangouts/views/AvatarView;->r:Lcei;

    .line 269
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/views/AvatarView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v3, Lceh;

    invoke-static {v0, v3}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lceh;

    iput-object v0, p0, Lcom/google/android/apps/hangouts/views/AvatarView;->q:Lceh;

    .line 270
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/AvatarView;->q:Lceh;

    invoke-interface {v0}, Lceh;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 272
    iget v0, p0, Lcom/google/android/apps/hangouts/views/AvatarView;->n:I

    if-nez v0, :cond_2

    .line 273
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/views/AvatarView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 274
    iget-object v1, p0, Lcom/google/android/apps/hangouts/views/AvatarView;->r:Lcei;

    .line 276
    invoke-direct {p0}, Lcom/google/android/apps/hangouts/views/AvatarView;->f()I

    move-result v2

    invoke-interface {v1, v2}, Lcei;->c(I)Lauk;

    move-result-object v1

    new-instance v2, Lard;

    invoke-direct {v2, v0}, Lard;-><init>(Landroid/content/Context;)V

    .line 277
    invoke-virtual {v1, v0, v2}, Lauk;->a(Landroid/content/Context;Lajd;)Laug;

    move-result-object v0

    check-cast v0, Lauk;

    move-object v1, v0

    .line 281
    :goto_1
    iget-object v2, p0, Lcom/google/android/apps/hangouts/views/AvatarView;->q:Lceh;

    iget-object v3, p0, Lcom/google/android/apps/hangouts/views/AvatarView;->s:Lauw;

    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/AvatarView;->r:Lcei;

    .line 285
    invoke-interface {v0}, Lcei;->b()Laix;

    move-result-object v0

    invoke-virtual {v0}, Laix;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhav;

    .line 281
    invoke-interface {v2, p1, v3, v1, v0}, Lceh;->a(Ljava/lang/String;Lauw;Lauk;Lhav;)V

    goto :goto_0

    .line 279
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/AvatarView;->r:Lcei;

    invoke-direct {p0}, Lcom/google/android/apps/hangouts/views/AvatarView;->f()I

    move-result v1

    invoke-interface {v0, v1}, Lcei;->c(I)Lauk;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    .line 287
    :cond_3
    new-instance v3, Lbhs;

    new-instance v0, Leyd;

    .line 289
    invoke-virtual {p3}, Lbfd;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, p1, v4}, Leyd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    invoke-direct {p0}, Lcom/google/android/apps/hangouts/views/AvatarView;->f()I

    move-result v4

    invoke-virtual {v0, v4}, Leyd;->a(I)Leyd;

    move-result-object v0

    .line 291
    invoke-virtual {v0, v1}, Leyd;->d(Z)Leyd;

    move-result-object v4

    iget v0, p0, Lcom/google/android/apps/hangouts/views/AvatarView;->n:I

    if-nez v0, :cond_4

    move v0, v1

    .line 292
    :goto_2
    invoke-virtual {v4, v0}, Leyd;->b(Z)Leyd;

    move-result-object v0

    invoke-direct {v3, v0, p0, v1, v5}, Lbhs;-><init>(Leyd;Lbhv;ZLjava/lang/Object;)V

    iput-object v3, p0, Lcom/google/android/apps/hangouts/views/AvatarView;->f:Lbhs;

    .line 297
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/views/AvatarView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Leit;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leit;

    iget-object v1, p0, Lcom/google/android/apps/hangouts/views/AvatarView;->f:Lbhs;

    invoke-virtual {v0, v1, v2}, Leit;->a(Lehx;Z)Z

    move-result v0

    .line 299
    if-eqz v0, :cond_5

    .line 300
    iput-object v5, p0, Lcom/google/android/apps/hangouts/views/AvatarView;->f:Lbhs;

    goto/16 :goto_0

    :cond_4
    move v0, v2

    .line 291
    goto :goto_2

    .line 301
    :cond_5
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 302
    invoke-direct {p0, p2}, Lcom/google/android/apps/hangouts/views/AvatarView;->a(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/String;ZLbfd;)V
    .locals 1

    .prologue
    .line 340
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/views/AvatarView;->c()V

    .line 341
    invoke-static {p1, p2, p3, p0}, Lehd;->a(Ljava/lang/String;ZLbfd;Lehh;)Lbet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/hangouts/views/AvatarView;->e:Lbet;

    .line 342
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 240
    if-eqz p1, :cond_0

    .line 241
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/AvatarView;->p:Landroid/graphics/Paint;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 245
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/views/AvatarView;->invalidate()V

    .line 246
    return-void

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/AvatarView;->p:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/AvatarView;->d:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 213
    iput p1, p0, Lcom/google/android/apps/hangouts/views/AvatarView;->c:I

    .line 214
    invoke-direct {p0}, Lcom/google/android/apps/hangouts/views/AvatarView;->e()V

    .line 215
    return-void
.end method

.method public c()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 507
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/AvatarView;->f:Lbhs;

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/AvatarView;->f:Lbhs;

    invoke-virtual {v0}, Lbhs;->b()V

    .line 509
    iput-object v2, p0, Lcom/google/android/apps/hangouts/views/AvatarView;->f:Lbhs;

    .line 511
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/AvatarView;->e:Lbet;

    if-eqz v0, :cond_1

    .line 512
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/AvatarView;->e:Lbet;

    invoke-virtual {v0}, Lbet;->b()V

    .line 513
    iput-object v2, p0, Lcom/google/android/apps/hangouts/views/AvatarView;->e:Lbet;

    .line 515
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/AvatarView;->g:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/views/AvatarView;->a(Landroid/graphics/Bitmap;)V

    .line 516
    iget-boolean v0, p0, Lcom/google/android/apps/hangouts/views/AvatarView;->b:Z

    if-eqz v0, :cond_2

    .line 517
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/hangouts/views/AvatarView;->b:Z

    .line 519
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/AvatarView;->h:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 520
    invoke-static {}, Leye;->a()Lexb;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/hangouts/views/AvatarView;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lexb;->a(Landroid/graphics/Bitmap;)V

    .line 521
    iput-object v2, p0, Lcom/google/android/apps/hangouts/views/AvatarView;->h:Landroid/graphics/Bitmap;

    .line 523
    :cond_3
    iput-object v2, p0, Lcom/google/android/apps/hangouts/views/AvatarView;->d:Ljava/lang/String;

    .line 524
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 527
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/hangouts/views/AvatarView;->m:Z

    .line 528
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 535
    iget-boolean v0, p0, Lcom/google/android/apps/hangouts/views/AvatarView;->m:Z

    if-eqz v0, :cond_0

    .line 536
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/views/AvatarView;->c()V

    .line 538
    :cond_0
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 539
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 431
    sget-boolean v0, Lcom/google/android/apps/hangouts/views/AvatarView;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/AvatarView;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    invoke-static {}, Leye;->a()Lexb;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/hangouts/views/AvatarView;->i:Landroid/graphics/Bitmap;

    .line 6668
    iget-object v0, v0, Lexb;->b:Lexd;

    .line 7209
    iget-object v0, v0, Lexd;->d:Lhv;

    invoke-virtual {v0, v1}, Lhv;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    .line 434
    const-string v1, "Babel"

    const-string v2, "Attempting to draw with a recycled bitmap"

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1, v2, v3}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/AvatarView;->i:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/google/android/apps/hangouts/views/AvatarView;->k:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/google/android/apps/hangouts/views/AvatarView;->j:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/google/android/apps/hangouts/views/AvatarView;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 440
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 355
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 354
    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/hangouts/views/AvatarView;->setMeasuredDimension(II)V

    .line 356
    invoke-direct {p0}, Lcom/google/android/apps/hangouts/views/AvatarView;->g()V

    .line 357
    return-void
.end method
