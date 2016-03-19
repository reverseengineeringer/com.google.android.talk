.class public final Ljau;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljau;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljan;

.field public b:Ljan;

.field public c:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2346
    invoke-direct {p0}, Llyb;-><init>()V

    .line 3351
    iput-object v0, p0, Ljau;->a:Ljan;

    .line 3352
    iput-object v0, p0, Ljau;->b:Ljan;

    .line 3353
    iput-object v0, p0, Ljau;->c:Ljava/lang/Boolean;

    .line 3354
    iput-object v0, p0, Ljau;->eD:Llyd;

    .line 3355
    const/4 v0, -0x1

    iput v0, p0, Ljau;->eE:I

    .line 2348
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 4397
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 4398
    sparse-switch v0, :sswitch_data_0

    .line 4402
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4403
    :sswitch_0
    return-object p0

    .line 4408
    :sswitch_1
    iget-object v0, p0, Ljau;->a:Ljan;

    if-nez v0, :cond_1

    .line 4409
    new-instance v0, Ljan;

    invoke-direct {v0}, Ljan;-><init>()V

    iput-object v0, p0, Ljau;->a:Ljan;

    .line 4411
    :cond_1
    iget-object v0, p0, Ljau;->a:Ljan;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 4415
    :sswitch_2
    iget-object v0, p0, Ljau;->b:Ljan;

    if-nez v0, :cond_2

    .line 4416
    new-instance v0, Ljan;

    invoke-direct {v0}, Ljan;-><init>()V

    iput-object v0, p0, Ljau;->b:Ljan;

    .line 4418
    :cond_2
    iget-object v0, p0, Ljau;->b:Ljan;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 4422
    :sswitch_3
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljau;->c:Ljava/lang/Boolean;

    goto :goto_0

    .line 4398
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 2362
    iget-object v0, p0, Ljau;->a:Ljan;

    if-eqz v0, :cond_0

    .line 2363
    const/4 v0, 0x1

    iget-object v1, p0, Ljau;->a:Ljan;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 2365
    :cond_0
    iget-object v0, p0, Ljau;->b:Ljan;

    if-eqz v0, :cond_1

    .line 2366
    const/4 v0, 0x2

    iget-object v1, p0, Ljau;->b:Ljan;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 2368
    :cond_1
    iget-object v0, p0, Ljau;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 2369
    const/4 v0, 0x3

    iget-object v1, p0, Ljau;->c:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 2371
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 2372
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 2376
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 2377
    iget-object v1, p0, Ljau;->a:Ljan;

    if-eqz v1, :cond_0

    .line 2378
    const/4 v1, 0x1

    iget-object v2, p0, Ljau;->a:Ljan;

    .line 2379
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2381
    :cond_0
    iget-object v1, p0, Ljau;->b:Ljan;

    if-eqz v1, :cond_1

    .line 2382
    const/4 v1, 0x2

    iget-object v2, p0, Ljau;->b:Ljan;

    .line 2383
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2385
    :cond_1
    iget-object v1, p0, Ljau;->c:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 2386
    const/4 v1, 0x3

    iget-object v2, p0, Ljau;->c:Ljava/lang/Boolean;

    .line 2387
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 3620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 2387
    add-int/2addr v0, v1

    .line 2389
    :cond_2
    return v0
.end method
