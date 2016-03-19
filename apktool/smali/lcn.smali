.class public final Llcn;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llcn;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Float;

.field public b:Ljava/lang/Float;

.field public c:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 272
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1277
    iput-object v1, p0, Llcn;->a:Ljava/lang/Float;

    .line 1278
    iput-object v1, p0, Llcn;->b:Ljava/lang/Float;

    .line 1279
    sget-object v0, Llyo;->a:[I

    iput-object v0, p0, Llcn;->c:[I

    .line 1280
    iput-object v1, p0, Llcn;->eD:Llyd;

    .line 1281
    const/4 v0, -0x1

    iput v0, p0, Llcn;->eE:I

    .line 274
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 3331
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 3332
    sparse-switch v0, :sswitch_data_0

    .line 3336
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3337
    :sswitch_0
    return-object p0

    .line 3342
    :sswitch_1
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Llcn;->a:Ljava/lang/Float;

    goto :goto_0

    .line 3346
    :sswitch_2
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Llcn;->b:Ljava/lang/Float;

    goto :goto_0

    .line 3350
    :sswitch_3
    const/16 v0, 0x18

    .line 3351
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 3352
    iget-object v0, p0, Llcn;->c:[I

    if-nez v0, :cond_2

    move v0, v1

    .line 3353
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [I

    .line 3354
    if-eqz v0, :cond_1

    .line 3355
    iget-object v3, p0, Llcn;->c:[I

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3357
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 3358
    invoke-virtual {p1}, Llxy;->f()I

    move-result v3

    aput v3, v2, v0

    .line 3359
    invoke-virtual {p1}, Llxy;->a()I

    .line 3357
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3352
    :cond_2
    iget-object v0, p0, Llcn;->c:[I

    array-length v0, v0

    goto :goto_1

    .line 3362
    :cond_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v3

    aput v3, v2, v0

    .line 3363
    iput-object v2, p0, Llcn;->c:[I

    goto :goto_0

    .line 3367
    :sswitch_4
    invoke-virtual {p1}, Llxy;->p()I

    move-result v0

    .line 3368
    invoke-virtual {p1, v0}, Llxy;->c(I)I

    move-result v3

    .line 3371
    invoke-virtual {p1}, Llxy;->r()I

    move-result v2

    move v0, v1

    .line 3372
    :goto_3
    invoke-virtual {p1}, Llxy;->q()I

    move-result v4

    if-lez v4, :cond_4

    .line 3373
    invoke-virtual {p1}, Llxy;->f()I

    .line 3374
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 3376
    :cond_4
    invoke-virtual {p1, v2}, Llxy;->e(I)V

    .line 3377
    iget-object v2, p0, Llcn;->c:[I

    if-nez v2, :cond_6

    move v2, v1

    .line 3378
    :goto_4
    add-int/2addr v0, v2

    new-array v0, v0, [I

    .line 3379
    if-eqz v2, :cond_5

    .line 3380
    iget-object v4, p0, Llcn;->c:[I

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3382
    :cond_5
    :goto_5
    array-length v4, v0

    if-ge v2, v4, :cond_7

    .line 3383
    invoke-virtual {p1}, Llxy;->f()I

    move-result v4

    aput v4, v0, v2

    .line 3382
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 3377
    :cond_6
    iget-object v2, p0, Llcn;->c:[I

    array-length v2, v2

    goto :goto_4

    .line 3385
    :cond_7
    iput-object v0, p0, Llcn;->c:[I

    .line 3386
    invoke-virtual {p1, v3}, Llxy;->d(I)V

    goto/16 :goto_0

    .line 3332
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_1
        0x15 -> :sswitch_2
        0x18 -> :sswitch_3
        0x1a -> :sswitch_4
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 288
    iget-object v0, p0, Llcn;->a:Ljava/lang/Float;

    if-eqz v0, :cond_0

    .line 289
    const/4 v0, 0x1

    iget-object v1, p0, Llcn;->a:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 291
    :cond_0
    iget-object v0, p0, Llcn;->b:Ljava/lang/Float;

    if-eqz v0, :cond_1

    .line 292
    const/4 v0, 0x2

    iget-object v1, p0, Llcn;->b:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 294
    :cond_1
    iget-object v0, p0, Llcn;->c:[I

    if-eqz v0, :cond_2

    iget-object v0, p0, Llcn;->c:[I

    array-length v0, v0

    if-lez v0, :cond_2

    .line 295
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Llcn;->c:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 296
    const/4 v1, 0x3

    iget-object v2, p0, Llcn;->c:[I

    aget v2, v2, v0

    invoke-virtual {p1, v1, v2}, Llxz;->a(II)V

    .line 295
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 299
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 300
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 304
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 305
    iget-object v2, p0, Llcn;->a:Ljava/lang/Float;

    if-eqz v2, :cond_0

    .line 306
    const/4 v2, 0x1

    iget-object v3, p0, Llcn;->a:Ljava/lang/Float;

    .line 307
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 1569
    invoke-static {v2}, Llxz;->f(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    .line 307
    add-int/2addr v0, v2

    .line 309
    :cond_0
    iget-object v2, p0, Llcn;->b:Ljava/lang/Float;

    if-eqz v2, :cond_1

    .line 310
    const/4 v2, 0x2

    iget-object v3, p0, Llcn;->b:Ljava/lang/Float;

    .line 311
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 2569
    invoke-static {v2}, Llxz;->f(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    .line 311
    add-int/2addr v0, v2

    .line 313
    :cond_1
    iget-object v2, p0, Llcn;->c:[I

    if-eqz v2, :cond_3

    iget-object v2, p0, Llcn;->c:[I

    array-length v2, v2

    if-lez v2, :cond_3

    move v2, v1

    .line 315
    :goto_0
    iget-object v3, p0, Llcn;->c:[I

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 316
    iget-object v3, p0, Llcn;->c:[I

    aget v3, v3, v1

    .line 318
    invoke-static {v3}, Llxz;->e(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 315
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 320
    :cond_2
    add-int/2addr v0, v2

    .line 321
    iget-object v1, p0, Llcn;->c:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 323
    :cond_3
    return v0
.end method
