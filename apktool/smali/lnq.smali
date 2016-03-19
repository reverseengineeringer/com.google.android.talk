.class public final Llnq;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llnq;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[B

.field public b:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2340
    invoke-direct {p0}, Llyb;-><init>()V

    .line 3345
    iput-object v0, p0, Llnq;->a:[B

    .line 3346
    iput-object v0, p0, Llnq;->b:[B

    .line 3347
    iput-object v0, p0, Llnq;->eD:Llyd;

    .line 3348
    const/4 v0, -0x1

    iput v0, p0, Llnq;->eE:I

    .line 2342
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 3383
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 3384
    sparse-switch v0, :sswitch_data_0

    .line 3388
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3389
    :sswitch_0
    return-object p0

    .line 3394
    :sswitch_1
    invoke-virtual {p1}, Llxy;->k()[B

    move-result-object v0

    iput-object v0, p0, Llnq;->a:[B

    goto :goto_0

    .line 3398
    :sswitch_2
    invoke-virtual {p1}, Llxy;->k()[B

    move-result-object v0

    iput-object v0, p0, Llnq;->b:[B

    goto :goto_0

    .line 3384
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 2355
    iget-object v0, p0, Llnq;->a:[B

    if-eqz v0, :cond_0

    .line 2356
    const/4 v0, 0x1

    iget-object v1, p0, Llnq;->a:[B

    invoke-virtual {p1, v0, v1}, Llxz;->a(I[B)V

    .line 2358
    :cond_0
    iget-object v0, p0, Llnq;->b:[B

    if-eqz v0, :cond_1

    .line 2359
    const/4 v0, 0x2

    iget-object v1, p0, Llnq;->b:[B

    invoke-virtual {p1, v0, v1}, Llxz;->a(I[B)V

    .line 2361
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 2362
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 2366
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 2367
    iget-object v1, p0, Llnq;->a:[B

    if-eqz v1, :cond_0

    .line 2368
    const/4 v1, 0x1

    iget-object v2, p0, Llnq;->a:[B

    .line 2369
    invoke-static {v1, v2}, Llxz;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 2371
    :cond_0
    iget-object v1, p0, Llnq;->b:[B

    if-eqz v1, :cond_1

    .line 2372
    const/4 v1, 0x2

    iget-object v2, p0, Llnq;->b:[B

    .line 2373
    invoke-static {v1, v2}, Llxz;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 2375
    :cond_1
    return v0
.end method
