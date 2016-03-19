.class public final Ljax;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljax;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljbn;

.field public b:Ljbn;

.field public c:[Ljaw;

.field public d:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3318
    invoke-direct {p0}, Llyb;-><init>()V

    .line 4323
    iput-object v1, p0, Ljax;->a:Ljbn;

    .line 4324
    iput-object v1, p0, Ljax;->b:Ljbn;

    .line 4325
    invoke-static {}, Ljaw;->d()[Ljaw;

    move-result-object v0

    iput-object v0, p0, Ljax;->c:[Ljaw;

    .line 4326
    iput-object v1, p0, Ljax;->d:Ljava/lang/Boolean;

    .line 4327
    iput-object v1, p0, Ljax;->eD:Llyd;

    .line 4328
    const/4 v0, -0x1

    iput v0, p0, Ljax;->eE:I

    .line 3320
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 5387
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 5388
    sparse-switch v0, :sswitch_data_0

    .line 5392
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5393
    :sswitch_0
    return-object p0

    .line 5398
    :sswitch_1
    iget-object v0, p0, Ljax;->a:Ljbn;

    if-nez v0, :cond_1

    .line 5399
    new-instance v0, Ljbn;

    invoke-direct {v0}, Ljbn;-><init>()V

    iput-object v0, p0, Ljax;->a:Ljbn;

    .line 5401
    :cond_1
    iget-object v0, p0, Ljax;->a:Ljbn;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 5405
    :sswitch_2
    const/16 v0, 0x12

    .line 5406
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 5407
    iget-object v0, p0, Ljax;->c:[Ljaw;

    if-nez v0, :cond_3

    move v0, v1

    .line 5408
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljaw;

    .line 5410
    if-eqz v0, :cond_2

    .line 5411
    iget-object v3, p0, Ljax;->c:[Ljaw;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5413
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 5414
    new-instance v3, Ljaw;

    invoke-direct {v3}, Ljaw;-><init>()V

    aput-object v3, v2, v0

    .line 5415
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 5416
    invoke-virtual {p1}, Llxy;->a()I

    .line 5413
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 5407
    :cond_3
    iget-object v0, p0, Ljax;->c:[Ljaw;

    array-length v0, v0

    goto :goto_1

    .line 5419
    :cond_4
    new-instance v3, Ljaw;

    invoke-direct {v3}, Ljaw;-><init>()V

    aput-object v3, v2, v0

    .line 5420
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 5421
    iput-object v2, p0, Ljax;->c:[Ljaw;

    goto :goto_0

    .line 5425
    :sswitch_3
    iget-object v0, p0, Ljax;->b:Ljbn;

    if-nez v0, :cond_5

    .line 5426
    new-instance v0, Ljbn;

    invoke-direct {v0}, Ljbn;-><init>()V

    iput-object v0, p0, Ljax;->b:Ljbn;

    .line 5428
    :cond_5
    iget-object v0, p0, Ljax;->b:Ljbn;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 5432
    :sswitch_4
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljax;->d:Ljava/lang/Boolean;

    goto :goto_0

    .line 5388
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 3335
    iget-object v0, p0, Ljax;->a:Ljbn;

    if-eqz v0, :cond_0

    .line 3336
    const/4 v0, 0x1

    iget-object v1, p0, Ljax;->a:Ljbn;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 3338
    :cond_0
    iget-object v0, p0, Ljax;->c:[Ljaw;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljax;->c:[Ljaw;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 3339
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ljax;->c:[Ljaw;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 3340
    iget-object v1, p0, Ljax;->c:[Ljaw;

    aget-object v1, v1, v0

    .line 3341
    if-eqz v1, :cond_1

    .line 3342
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 3339
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3346
    :cond_2
    iget-object v0, p0, Ljax;->b:Ljbn;

    if-eqz v0, :cond_3

    .line 3347
    const/4 v0, 0x3

    iget-object v1, p0, Ljax;->b:Ljbn;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 3349
    :cond_3
    iget-object v0, p0, Ljax;->d:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    .line 3350
    const/4 v0, 0x4

    iget-object v1, p0, Ljax;->d:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 3352
    :cond_4
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 3353
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 3357
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 3358
    iget-object v1, p0, Ljax;->a:Ljbn;

    if-eqz v1, :cond_0

    .line 3359
    const/4 v1, 0x1

    iget-object v2, p0, Ljax;->a:Ljbn;

    .line 3360
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3362
    :cond_0
    iget-object v1, p0, Ljax;->c:[Ljaw;

    if-eqz v1, :cond_3

    iget-object v1, p0, Ljax;->c:[Ljaw;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 3363
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Ljax;->c:[Ljaw;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 3364
    iget-object v2, p0, Ljax;->c:[Ljaw;

    aget-object v2, v2, v0

    .line 3365
    if-eqz v2, :cond_1

    .line 3366
    const/4 v3, 0x2

    .line 3367
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 3363
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 3371
    :cond_3
    iget-object v1, p0, Ljax;->b:Ljbn;

    if-eqz v1, :cond_4

    .line 3372
    const/4 v1, 0x3

    iget-object v2, p0, Ljax;->b:Ljbn;

    .line 3373
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3375
    :cond_4
    iget-object v1, p0, Ljax;->d:Ljava/lang/Boolean;

    if-eqz v1, :cond_5

    .line 3376
    const/4 v1, 0x4

    iget-object v2, p0, Ljax;->d:Ljava/lang/Boolean;

    .line 3377
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 3377
    add-int/2addr v0, v1

    .line 3379
    :cond_5
    return v0
.end method
