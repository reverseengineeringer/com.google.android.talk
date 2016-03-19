.class public final Ljxf;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljxf;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Ljxg;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37364
    invoke-direct {p0}, Llyb;-><init>()V

    .line 38369
    invoke-static {}, Ljxg;->d()[Ljxg;

    move-result-object v0

    iput-object v0, p0, Ljxf;->a:[Ljxg;

    .line 38370
    const/4 v0, 0x0

    iput-object v0, p0, Ljxf;->eD:Llyd;

    .line 38371
    const/4 v0, -0x1

    iput v0, p0, Ljxf;->eE:I

    .line 37366
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 38409
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 38410
    sparse-switch v0, :sswitch_data_0

    .line 38414
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 38415
    :sswitch_0
    return-object p0

    .line 38420
    :sswitch_1
    const/16 v0, 0xa

    .line 38421
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 38422
    iget-object v0, p0, Ljxf;->a:[Ljxg;

    if-nez v0, :cond_2

    move v0, v1

    .line 38423
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljxg;

    .line 38425
    if-eqz v0, :cond_1

    .line 38426
    iget-object v3, p0, Ljxf;->a:[Ljxg;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38428
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 38429
    new-instance v3, Ljxg;

    invoke-direct {v3}, Ljxg;-><init>()V

    aput-object v3, v2, v0

    .line 38430
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 38431
    invoke-virtual {p1}, Llxy;->a()I

    .line 38428
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 38422
    :cond_2
    iget-object v0, p0, Ljxf;->a:[Ljxg;

    array-length v0, v0

    goto :goto_1

    .line 38434
    :cond_3
    new-instance v3, Ljxg;

    invoke-direct {v3}, Ljxg;-><init>()V

    aput-object v3, v2, v0

    .line 38435
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 38436
    iput-object v2, p0, Ljxf;->a:[Ljxg;

    goto :goto_0

    .line 38410
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 37378
    iget-object v0, p0, Ljxf;->a:[Ljxg;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljxf;->a:[Ljxg;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 37379
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ljxf;->a:[Ljxg;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 37380
    iget-object v1, p0, Ljxf;->a:[Ljxg;

    aget-object v1, v1, v0

    .line 37381
    if-eqz v1, :cond_0

    .line 37382
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 37379
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 37386
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 37387
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 37391
    invoke-super {p0}, Llyb;->b()I

    move-result v1

    .line 37392
    iget-object v0, p0, Ljxf;->a:[Ljxg;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljxf;->a:[Ljxg;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 37393
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Ljxf;->a:[Ljxg;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 37394
    iget-object v2, p0, Ljxf;->a:[Ljxg;

    aget-object v2, v2, v0

    .line 37395
    if-eqz v2, :cond_0

    .line 37396
    const/4 v3, 0x1

    .line 37397
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 37393
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 37401
    :cond_1
    return v1
.end method
