.class public final Lkey;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkey;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lkcu;

.field public b:Ljava/lang/Boolean;

.field public c:Ljava/lang/Integer;

.field public responseHeader:Lkdp;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32362
    invoke-direct {p0}, Llyb;-><init>()V

    .line 33367
    iput-object v0, p0, Lkey;->responseHeader:Lkdp;

    .line 33368
    iput-object v0, p0, Lkey;->a:Lkcu;

    .line 33369
    iput-object v0, p0, Lkey;->b:Ljava/lang/Boolean;

    .line 33370
    iput-object v0, p0, Lkey;->c:Ljava/lang/Integer;

    .line 33371
    iput-object v0, p0, Lkey;->eD:Llyd;

    .line 33372
    const/4 v0, -0x1

    iput v0, p0, Lkey;->eE:I

    .line 32364
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 34421
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 34422
    sparse-switch v0, :sswitch_data_0

    .line 34426
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 34427
    :sswitch_0
    return-object p0

    .line 34432
    :sswitch_1
    iget-object v0, p0, Lkey;->responseHeader:Lkdp;

    if-nez v0, :cond_1

    .line 34433
    new-instance v0, Lkdp;

    invoke-direct {v0}, Lkdp;-><init>()V

    iput-object v0, p0, Lkey;->responseHeader:Lkdp;

    .line 34435
    :cond_1
    iget-object v0, p0, Lkey;->responseHeader:Lkdp;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 34439
    :sswitch_2
    iget-object v0, p0, Lkey;->a:Lkcu;

    if-nez v0, :cond_2

    .line 34440
    new-instance v0, Lkcu;

    invoke-direct {v0}, Lkcu;-><init>()V

    iput-object v0, p0, Lkey;->a:Lkcu;

    .line 34442
    :cond_2
    iget-object v0, p0, Lkey;->a:Lkcu;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 34446
    :sswitch_3
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lkey;->b:Ljava/lang/Boolean;

    goto :goto_0

    .line 34450
    :sswitch_4
    invoke-virtual {p1}, Llxy;->l()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lkey;->c:Ljava/lang/Integer;

    goto :goto_0

    .line 34422
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 32379
    iget-object v0, p0, Lkey;->responseHeader:Lkdp;

    if-eqz v0, :cond_0

    .line 32380
    const/4 v0, 0x1

    iget-object v1, p0, Lkey;->responseHeader:Lkdp;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 32382
    :cond_0
    iget-object v0, p0, Lkey;->a:Lkcu;

    if-eqz v0, :cond_1

    .line 32383
    const/4 v0, 0x2

    iget-object v1, p0, Lkey;->a:Lkcu;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 32385
    :cond_1
    iget-object v0, p0, Lkey;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 32386
    const/4 v0, 0x3

    iget-object v1, p0, Lkey;->b:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 32388
    :cond_2
    iget-object v0, p0, Lkey;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 32389
    const/4 v0, 0x4

    iget-object v1, p0, Lkey;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->c(II)V

    .line 32391
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 32392
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 32396
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 32397
    iget-object v1, p0, Lkey;->responseHeader:Lkdp;

    if-eqz v1, :cond_0

    .line 32398
    const/4 v1, 0x1

    iget-object v2, p0, Lkey;->responseHeader:Lkdp;

    .line 32399
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 32401
    :cond_0
    iget-object v1, p0, Lkey;->a:Lkcu;

    if-eqz v1, :cond_1

    .line 32402
    const/4 v1, 0x2

    iget-object v2, p0, Lkey;->a:Lkcu;

    .line 32403
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 32405
    :cond_1
    iget-object v1, p0, Lkey;->b:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 32406
    const/4 v1, 0x3

    iget-object v2, p0, Lkey;->b:Ljava/lang/Boolean;

    .line 32407
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 33620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 32407
    add-int/2addr v0, v1

    .line 32409
    :cond_2
    iget-object v1, p0, Lkey;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 32410
    const/4 v1, 0x4

    iget-object v2, p0, Lkey;->c:Ljava/lang/Integer;

    .line 32411
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 32413
    :cond_3
    return v0
.end method
