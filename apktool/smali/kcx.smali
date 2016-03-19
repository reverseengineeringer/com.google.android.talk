.class public final Lkcx;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkcx;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Lkcy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18343
    invoke-direct {p0}, Llyb;-><init>()V

    .line 19348
    invoke-static {}, Lkcy;->d()[Lkcy;

    move-result-object v0

    iput-object v0, p0, Lkcx;->a:[Lkcy;

    .line 19349
    const/4 v0, 0x0

    iput-object v0, p0, Lkcx;->eD:Llyd;

    .line 19350
    const/4 v0, -0x1

    iput v0, p0, Lkcx;->eE:I

    .line 18345
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 19388
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 19389
    sparse-switch v0, :sswitch_data_0

    .line 19393
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 19394
    :sswitch_0
    return-object p0

    .line 19399
    :sswitch_1
    const/16 v0, 0xa

    .line 19400
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 19401
    iget-object v0, p0, Lkcx;->a:[Lkcy;

    if-nez v0, :cond_2

    move v0, v1

    .line 19402
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lkcy;

    .line 19404
    if-eqz v0, :cond_1

    .line 19405
    iget-object v3, p0, Lkcx;->a:[Lkcy;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19407
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 19408
    new-instance v3, Lkcy;

    invoke-direct {v3}, Lkcy;-><init>()V

    aput-object v3, v2, v0

    .line 19409
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 19410
    invoke-virtual {p1}, Llxy;->a()I

    .line 19407
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 19401
    :cond_2
    iget-object v0, p0, Lkcx;->a:[Lkcy;

    array-length v0, v0

    goto :goto_1

    .line 19413
    :cond_3
    new-instance v3, Lkcy;

    invoke-direct {v3}, Lkcy;-><init>()V

    aput-object v3, v2, v0

    .line 19414
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 19415
    iput-object v2, p0, Lkcx;->a:[Lkcy;

    goto :goto_0

    .line 19389
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 18357
    iget-object v0, p0, Lkcx;->a:[Lkcy;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lkcx;->a:[Lkcy;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 18358
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lkcx;->a:[Lkcy;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 18359
    iget-object v1, p0, Lkcx;->a:[Lkcy;

    aget-object v1, v1, v0

    .line 18360
    if-eqz v1, :cond_0

    .line 18361
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 18358
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 18365
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 18366
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 18370
    invoke-super {p0}, Llyb;->b()I

    move-result v1

    .line 18371
    iget-object v0, p0, Lkcx;->a:[Lkcy;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lkcx;->a:[Lkcy;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 18372
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lkcx;->a:[Lkcy;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 18373
    iget-object v2, p0, Lkcx;->a:[Lkcy;

    aget-object v2, v2, v0

    .line 18374
    if-eqz v2, :cond_0

    .line 18375
    const/4 v3, 0x1

    .line 18376
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 18372
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 18380
    :cond_1
    return v1
.end method
