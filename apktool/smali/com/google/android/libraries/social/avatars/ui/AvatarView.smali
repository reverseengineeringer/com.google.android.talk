.class public final Lcom/google/android/libraries/social/avatars/ui/AvatarView;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Ligr;


# static fields
.field private static a:Z

.field private static b:Landroid/graphics/Paint;

.field private static c:Lhuy;


# instance fields
.field private final d:Landroid/graphics/RectF;

.field private final e:Landroid/graphics/RectF;

.field private final f:Landroid/graphics/RectF;

.field private final g:Landroid/graphics/Matrix;

.field private final h:Landroid/graphics/Matrix;

.field private final i:Landroid/graphics/Paint;

.field private j:Landroid/graphics/drawable/Drawable;

.field private k:Ligp;

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:Z

.field private q:I

.field private r:Z

.field private s:Z

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/social/avatars/ui/AvatarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/libraries/social/avatars/ui/AvatarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 75
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->d:Landroid/graphics/RectF;

    .line 43
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->e:Landroid/graphics/RectF;

    .line 44
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->f:Landroid/graphics/RectF;

    .line 45
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->g:Landroid/graphics/Matrix;

    .line 46
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->h:Landroid/graphics/Matrix;

    .line 47
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->i:Landroid/graphics/Paint;

    .line 58
    iput-boolean v2, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->s:Z

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 79
    sget-boolean v0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->a:Z

    if-nez v0, :cond_0

    .line 80
    const-class v0, Lhuy;

    invoke-static {p1, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhuy;

    sput-object v0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->c:Lhuy;

    .line 81
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 82
    sput-object v0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 83
    sget-object v0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->b:Landroid/graphics/Paint;

    const/high16 v5, 0x40800000    # 4.0f

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 84
    sget-object v0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->b:Landroid/graphics/Paint;

    sget v5, Laal;->tS:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 85
    sget-object v0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->b:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 86
    sput-boolean v2, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->a:Z

    .line 89
    :cond_0
    sget v0, Laal;->tU:I

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->j:Landroid/graphics/drawable/Drawable;

    .line 90
    iget-object v0, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 92
    iput v3, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->l:I

    .line 93
    iput v3, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->q:I

    .line 94
    if-eqz p2, :cond_5

    .line 95
    const-string v0, "size"

    invoke-interface {p2, v6, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    if-eqz v0, :cond_1

    .line 1277
    const-string v4, "tiny"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    move v0, v1

    .line 97
    :goto_0
    iput v0, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->l:I

    .line 100
    :cond_1
    const-string v0, "shape"

    invoke-interface {p2, v6, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    if-eqz v0, :cond_3

    .line 1296
    const-string v4, "normal"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    move v2, v1

    .line 102
    :cond_2
    :goto_1
    iput v2, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->q:I

    .line 105
    :cond_3
    const-string v0, "selectable"

    invoke-interface {p2, v6, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    if-eqz v0, :cond_4

    .line 107
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->s:Z

    .line 110
    :cond_4
    const-string v0, "allowNonSquare"

    invoke-interface {p2, v6, v0, v1}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->p:Z

    .line 114
    :cond_5
    iget v0, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->l:I

    .line 2131
    iput v0, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->l:I

    .line 2132
    iget v0, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->l:I

    packed-switch v0, :pswitch_data_0

    .line 2147
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Laal;->D(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->m:I

    .line 2143
    :goto_2
    return-void

    .line 1280
    :cond_6
    const-string v4, "small"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    move v0, v2

    .line 1281
    goto :goto_0

    .line 1283
    :cond_7
    const-string v4, "medium"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    move v0, v3

    .line 1284
    goto :goto_0

    .line 1286
    :cond_8
    const-string v4, "large"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1287
    const/4 v0, 0x3

    goto :goto_0

    .line 1289
    :cond_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid avatar size: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3

    .line 1299
    :cond_b
    const-string v4, "round"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1302
    const-string v2, "rounded_corners"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    move v2, v3

    .line 1303
    goto :goto_1

    .line 1305
    :cond_c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid avatar shape: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_4

    .line 2134
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Laal;->z(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->m:I

    goto :goto_2

    .line 2138
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Laal;->B(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->m:I

    goto :goto_2

    .line 2142
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Laal;->F(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->m:I

    goto/16 :goto_2

    .line 2132
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private a()V
    .locals 6

    .prologue
    .line 2257
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 246
    :goto_0
    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->u:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 248
    sget-object v0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->c:Lhuy;

    .line 249
    invoke-virtual {p0}, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->u:Ljava/lang/String;

    iget v3, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->l:I

    iget v4, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->q:I

    move-object v5, p0

    invoke-interface/range {v0 .. v5}, Lhuy;->a(Landroid/content/Context;Ljava/lang/String;IILigr;)Ligp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->k:Ligp;

    .line 254
    :cond_0
    :goto_1
    return-void

    .line 2257
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 251
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->invalidate()V

    goto :goto_1
.end method

.method private a(IIII)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 326
    iget-object v0, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->g:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 327
    iget-object v0, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->h:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 329
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 341
    :cond_0
    :goto_0
    return-void

    .line 333
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->e:Landroid/graphics/RectF;

    int-to-float v1, p2

    int-to-float v2, p4

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 334
    iget-object v0, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->f:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    .line 335
    invoke-virtual {p0}, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->getPaddingRight()I

    move-result v3

    sub-int v3, p1, v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->getPaddingBottom()I

    move-result v4

    sub-int v4, p3, v4

    int-to-float v4, v4

    .line 334
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 337
    iget-object v0, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->g:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->e:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->f:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 338
    iget-object v0, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->g:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->h:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->h:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    goto :goto_0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->k:Ligp;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->k:Ligp;

    invoke-virtual {v0, p0}, Ligp;->b(Ligr;)V

    .line 264
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->k:Ligp;

    .line 266
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ligp;)V
    .locals 4

    .prologue
    .line 270
    invoke-virtual {p1}, Ligp;->m()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 271
    invoke-virtual {p1}, Ligp;->o()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->n:I

    .line 272
    invoke-virtual {p1}, Ligp;->o()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->o:I

    .line 273
    invoke-virtual {p0}, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->n:I

    invoke-virtual {p0}, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->getMeasuredHeight()I

    move-result v2

    iget v3, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->o:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->a(IIII)V

    .line 276
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->invalidate()V

    .line 277
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 205
    iget-object v0, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->t:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->u:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 206
    :cond_0
    invoke-direct {p0}, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->b()V

    .line 207
    iput-object p1, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->t:Ljava/lang/String;

    .line 208
    iput-object p2, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->u:Ljava/lang/String;

    .line 209
    iput-object v1, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->w:Ljava/lang/String;

    .line 210
    iput-object v1, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->v:Ljava/lang/String;

    .line 211
    invoke-direct {p0}, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->a()V

    .line 213
    :cond_1
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 353
    iget-object v0, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 354
    invoke-virtual {p0}, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->invalidate()V

    .line 356
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 357
    return-void
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 5

    .prologue
    .line 438
    iget-object v0, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->w:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->w:Ljava/lang/String;

    .line 453
    :goto_0
    return-object v0

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->v:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 443
    invoke-virtual {p0}, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 444
    invoke-virtual {p0}, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Laal;->tY:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->v:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 447
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Laal;->tX:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 450
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 451
    invoke-virtual {p0}, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Laal;->tW:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 453
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Laal;->tV:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 234
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 235
    invoke-direct {p0}, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->a()V

    .line 236
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 240
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 241
    invoke-direct {p0}, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->b()V

    .line 242
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    .line 361
    const/4 v0, 0x0

    .line 362
    iget-object v1, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->k:Ligp;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->k:Ligp;

    invoke-virtual {v1}, Ligp;->m()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 363
    iget-object v0, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->k:Ligp;

    invoke-virtual {v0}, Ligp;->o()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 366
    :cond_0
    if-nez v0, :cond_1

    .line 367
    iget v1, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->l:I

    packed-switch v1, :pswitch_data_0

    .line 386
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->r:Z

    if-eqz v1, :cond_2

    .line 387
    iget-object v1, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->d:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 388
    iget-object v1, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->d:Landroid/graphics/RectF;

    const/16 v2, 0x69

    const/16 v3, 0x1f

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    .line 391
    :cond_2
    iget-object v1, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->g:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 392
    iget-object v1, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 393
    iget-object v0, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->h:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 395
    iget-boolean v0, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->r:Z

    if-eqz v0, :cond_3

    .line 396
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 399
    :cond_3
    iget-boolean v0, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->s:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->isPressed()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    iget-boolean v0, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->r:Z

    if-nez v0, :cond_5

    .line 402
    iget-object v0, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->d:Landroid/graphics/RectF;

    iget v1, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->n:I

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->o:I

    int-to-float v2, v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 403
    iget-object v0, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->g:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->d:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 405
    iget v0, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->q:I

    packed-switch v0, :pswitch_data_1

    .line 428
    :cond_5
    :goto_1
    return-void

    .line 369
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->q:I

    .line 3100
    packed-switch v1, :pswitch_data_2

    .line 3115
    invoke-static {v0}, Laal;->A(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 3102
    :pswitch_1
    sget-object v1, Laal;->tG:Landroid/graphics/Bitmap;

    if-nez v1, :cond_6

    .line 3104
    invoke-static {v0}, Laal;->A(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3103
    invoke-static {v0}, Liky;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Laal;->tG:Landroid/graphics/Bitmap;

    .line 3106
    :cond_6
    sget-object v0, Laal;->tG:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 3108
    :pswitch_2
    sget-object v1, Laal;->tH:Landroid/graphics/Bitmap;

    if-nez v1, :cond_7

    .line 3110
    invoke-static {v0}, Laal;->A(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0}, Laal;->H(Landroid/content/Context;)F

    move-result v0

    .line 3109
    invoke-static {v1, v0}, Liky;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Laal;->tH:Landroid/graphics/Bitmap;

    .line 3112
    :cond_7
    sget-object v0, Laal;->tH:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 373
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->q:I

    .line 3151
    packed-switch v1, :pswitch_data_3

    .line 3166
    invoke-static {v0}, Laal;->C(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_0

    .line 3153
    :pswitch_4
    sget-object v1, Laal;->tJ:Landroid/graphics/Bitmap;

    if-nez v1, :cond_8

    .line 3155
    invoke-static {v0}, Laal;->C(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3154
    invoke-static {v0}, Liky;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Laal;->tJ:Landroid/graphics/Bitmap;

    .line 3157
    :cond_8
    sget-object v0, Laal;->tJ:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 3159
    :pswitch_5
    sget-object v1, Laal;->tK:Landroid/graphics/Bitmap;

    if-nez v1, :cond_9

    .line 3161
    invoke-static {v0}, Laal;->C(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0}, Laal;->H(Landroid/content/Context;)F

    move-result v0

    .line 3160
    invoke-static {v1, v0}, Liky;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Laal;->tK:Landroid/graphics/Bitmap;

    .line 3163
    :cond_9
    sget-object v0, Laal;->tK:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 377
    :pswitch_6
    invoke-virtual {p0}, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->q:I

    .line 3202
    packed-switch v1, :pswitch_data_4

    .line 3217
    invoke-static {v0}, Laal;->E(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_0

    .line 3204
    :pswitch_7
    sget-object v1, Laal;->tM:Landroid/graphics/Bitmap;

    if-nez v1, :cond_a

    .line 3206
    invoke-static {v0}, Laal;->E(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3205
    invoke-static {v0}, Liky;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Laal;->tM:Landroid/graphics/Bitmap;

    .line 3208
    :cond_a
    sget-object v0, Laal;->tM:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 3210
    :pswitch_8
    sget-object v1, Laal;->tN:Landroid/graphics/Bitmap;

    if-nez v1, :cond_b

    .line 3212
    invoke-static {v0}, Laal;->E(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0}, Laal;->H(Landroid/content/Context;)F

    move-result v0

    .line 3211
    invoke-static {v1, v0}, Liky;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Laal;->tN:Landroid/graphics/Bitmap;

    .line 3214
    :cond_b
    sget-object v0, Laal;->tN:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 381
    :pswitch_9
    invoke-virtual {p0}, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->q:I

    .line 3254
    packed-switch v1, :pswitch_data_5

    .line 3269
    invoke-static {v0}, Laal;->G(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_0

    .line 3256
    :pswitch_a
    sget-object v1, Laal;->tP:Landroid/graphics/Bitmap;

    if-nez v1, :cond_c

    .line 3258
    invoke-static {v0}, Laal;->G(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3257
    invoke-static {v0}, Liky;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Laal;->tP:Landroid/graphics/Bitmap;

    .line 3260
    :cond_c
    sget-object v0, Laal;->tP:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 3262
    :pswitch_b
    sget-object v1, Laal;->tQ:Landroid/graphics/Bitmap;

    if-nez v1, :cond_d

    .line 3264
    invoke-static {v0}, Laal;->G(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0}, Laal;->H(Landroid/content/Context;)F

    move-result v0

    .line 3263
    invoke-static {v1, v0}, Liky;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Laal;->tQ:Landroid/graphics/Bitmap;

    .line 3266
    :cond_d
    sget-object v0, Laal;->tQ:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 407
    :pswitch_c
    iget-object v0, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->j:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->d:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget-object v2, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->d:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->d:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->d:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 409
    iget-object v0, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_1

    .line 412
    :pswitch_d
    iget-object v0, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->d:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->d:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v5

    iget-object v2, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->d:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v5

    iget-object v3, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->d:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v5

    iget-object v4, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->d:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 416
    iget-object v0, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->d:Landroid/graphics/RectF;

    sget-object v1, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 419
    :pswitch_e
    iget-object v0, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->d:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->d:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v5

    iget-object v2, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->d:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v5

    iget-object v3, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->d:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v5

    iget-object v4, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->d:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 423
    invoke-virtual {p0}, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Laal;->H(Landroid/content/Context;)F

    move-result v0

    .line 424
    iget-object v1, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->d:Landroid/graphics/RectF;

    sget-object v2, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 367
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_6
        :pswitch_9
    .end packed-switch

    .line 405
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch

    .line 3100
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 3151
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 3202
    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 3254
    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 7

    .prologue
    const/high16 v6, -0x80000000

    const/high16 v5, 0x40000000    # 2.0f

    .line 281
    iget v0, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->m:I

    .line 282
    invoke-virtual {p0}, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 283
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 284
    if-ne v1, v5, :cond_2

    .line 285
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 292
    :cond_0
    :goto_0
    iget v1, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->m:I

    .line 293
    invoke-virtual {p0}, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->getPaddingTop()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p0}, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    .line 294
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 295
    iget-boolean v4, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->p:Z

    if-eqz v4, :cond_3

    .line 296
    if-eq v3, v5, :cond_1

    if-ne v3, v6, :cond_6

    .line 297
    :cond_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    move v2, v0

    .line 309
    :goto_1
    iget-object v0, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->k:Ligp;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->k:Ligp;

    invoke-virtual {v0}, Ligp;->m()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_5

    .line 310
    iget-object v0, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->k:Ligp;

    invoke-virtual {v0}, Ligp;->o()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 311
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iput v3, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->n:I

    .line 312
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->o:I

    .line 318
    :goto_2
    iget v0, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->n:I

    iget v3, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->o:I

    invoke-direct {p0, v2, v0, v1, v3}, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->a(IIII)V

    .line 320
    invoke-virtual {p0, v2, v1}, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->setMeasuredDimension(II)V

    .line 321
    return-void

    .line 286
    :cond_2
    if-ne v1, v6, :cond_0

    .line 287
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 301
    :cond_3
    if-ne v3, v5, :cond_4

    .line 302
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_3
    move v1, v0

    move v2, v0

    .line 306
    goto :goto_1

    .line 304
    :cond_4
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_3

    .line 314
    :cond_5
    iget v0, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->m:I

    iput v0, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->n:I

    .line 315
    iget v0, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->m:I

    iput v0, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->o:I

    goto :goto_2

    :cond_6
    move v2, v0

    goto :goto_1
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 432
    invoke-super {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 433
    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->w:Ljava/lang/String;

    .line 434
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/google/android/libraries/social/avatars/ui/AvatarView;->j:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    .line 346
    const/4 v0, 0x1

    .line 348
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    goto :goto_0
.end method
