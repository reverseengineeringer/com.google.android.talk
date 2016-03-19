.class public final Liyu;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Liyu;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lize;

.field public apiHeader:Liye;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2399
    invoke-direct {p0}, Llyb;-><init>()V

    .line 3404
    iput-object v0, p0, Liyu;->apiHeader:Liye;

    .line 3405
    iput-object v0, p0, Liyu;->a:Lize;

    .line 3406
    iput-object v0, p0, Liyu;->eD:Llyd;

    .line 3407
    const/4 v0, -0x1

    iput v0, p0, Liyu;->eE:I

    .line 2401
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 3442
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 3443
    sparse-switch v0, :sswitch_data_0

    .line 3447
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3448
    :sswitch_0
    return-object p0

    .line 3453
    :sswitch_1
    iget-object v0, p0, Liyu;->apiHeader:Liye;

    if-nez v0, :cond_1

    .line 3454
    new-instance v0, Liye;

    invoke-direct {v0}, Liye;-><init>()V

    iput-object v0, p0, Liyu;->apiHeader:Liye;

    .line 3456
    :cond_1
    iget-object v0, p0, Liyu;->apiHeader:Liye;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 3460
    :sswitch_2
    iget-object v0, p0, Liyu;->a:Lize;

    if-nez v0, :cond_2

    .line 3461
    new-instance v0, Lize;

    invoke-direct {v0}, Lize;-><init>()V

    iput-object v0, p0, Liyu;->a:Lize;

    .line 3463
    :cond_2
    iget-object v0, p0, Liyu;->a:Lize;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 3443
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
    .line 2414
    iget-object v0, p0, Liyu;->apiHeader:Liye;

    if-eqz v0, :cond_0

    .line 2415
    const/4 v0, 0x1

    iget-object v1, p0, Liyu;->apiHeader:Liye;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 2417
    :cond_0
    iget-object v0, p0, Liyu;->a:Lize;

    if-eqz v0, :cond_1

    .line 2418
    const/4 v0, 0x2

    iget-object v1, p0, Liyu;->a:Lize;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 2420
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 2421
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 2425
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 2426
    iget-object v1, p0, Liyu;->apiHeader:Liye;

    if-eqz v1, :cond_0

    .line 2427
    const/4 v1, 0x1

    iget-object v2, p0, Liyu;->apiHeader:Liye;

    .line 2428
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2430
    :cond_0
    iget-object v1, p0, Liyu;->a:Lize;

    if-eqz v1, :cond_1

    .line 2431
    const/4 v1, 0x2

    iget-object v2, p0, Liyu;->a:Lize;

    .line 2432
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2434
    :cond_1
    return v0
.end method
