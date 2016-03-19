.class public final Ljkb;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljkb;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:[Ljjl;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 6290
    invoke-direct {p0}, Llyb;-><init>()V

    .line 7295
    iput-object v1, p0, Ljkb;->a:Ljava/lang/Integer;

    .line 7296
    invoke-static {}, Ljjl;->d()[Ljjl;

    move-result-object v0

    iput-object v0, p0, Ljkb;->b:[Ljjl;

    .line 7297
    iput-object v1, p0, Ljkb;->eD:Llyd;

    .line 7298
    const/4 v0, -0x1

    iput v0, p0, Ljkb;->eE:I

    .line 6292
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 7343
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 7344
    sparse-switch v0, :sswitch_data_0

    .line 7348
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7349
    :sswitch_0
    return-object p0

    .line 7354
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljkb;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 7358
    :sswitch_2
    const/16 v0, 0x12

    .line 7359
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 7360
    iget-object v0, p0, Ljkb;->b:[Ljjl;

    if-nez v0, :cond_2

    move v0, v1

    .line 7361
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljjl;

    .line 7363
    if-eqz v0, :cond_1

    .line 7364
    iget-object v3, p0, Ljkb;->b:[Ljjl;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7366
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 7367
    new-instance v3, Ljjl;

    invoke-direct {v3}, Ljjl;-><init>()V

    aput-object v3, v2, v0

    .line 7368
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 7369
    invoke-virtual {p1}, Llxy;->a()I

    .line 7366
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 7360
    :cond_2
    iget-object v0, p0, Ljkb;->b:[Ljjl;

    array-length v0, v0

    goto :goto_1

    .line 7372
    :cond_3
    new-instance v3, Ljjl;

    invoke-direct {v3}, Ljjl;-><init>()V

    aput-object v3, v2, v0

    .line 7373
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 7374
    iput-object v2, p0, Ljkb;->b:[Ljjl;

    goto :goto_0

    .line 7344
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 6305
    iget-object v0, p0, Ljkb;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 6306
    const/4 v0, 0x1

    iget-object v1, p0, Ljkb;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 6308
    :cond_0
    iget-object v0, p0, Ljkb;->b:[Ljjl;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljkb;->b:[Ljjl;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 6309
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ljkb;->b:[Ljjl;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 6310
    iget-object v1, p0, Ljkb;->b:[Ljjl;

    aget-object v1, v1, v0

    .line 6311
    if-eqz v1, :cond_1

    .line 6312
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 6309
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6316
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 6317
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 6321
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 6322
    iget-object v1, p0, Ljkb;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 6323
    const/4 v1, 0x1

    iget-object v2, p0, Ljkb;->a:Ljava/lang/Integer;

    .line 6324
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6326
    :cond_0
    iget-object v1, p0, Ljkb;->b:[Ljjl;

    if-eqz v1, :cond_3

    iget-object v1, p0, Ljkb;->b:[Ljjl;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 6327
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Ljkb;->b:[Ljjl;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 6328
    iget-object v2, p0, Ljkb;->b:[Ljjl;

    aget-object v2, v2, v0

    .line 6329
    if-eqz v2, :cond_1

    .line 6330
    const/4 v3, 0x2

    .line 6331
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 6327
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 6335
    :cond_3
    return v0
.end method
