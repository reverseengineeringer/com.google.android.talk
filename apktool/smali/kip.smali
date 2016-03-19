.class public final Lkip;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkip;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/Integer;

.field public c:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2337
    invoke-direct {p0}, Llyb;-><init>()V

    .line 3342
    iput-object v0, p0, Lkip;->a:Ljava/lang/Integer;

    .line 3343
    iput-object v0, p0, Lkip;->b:Ljava/lang/Integer;

    .line 3344
    iput-object v0, p0, Lkip;->c:Ljava/lang/Integer;

    .line 3345
    iput-object v0, p0, Lkip;->eD:Llyd;

    .line 3346
    const/4 v0, -0x1

    iput v0, p0, Lkip;->eE:I

    .line 2339
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 3388
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 3389
    sparse-switch v0, :sswitch_data_0

    .line 3393
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3394
    :sswitch_0
    return-object p0

    .line 3399
    :sswitch_1
    invoke-virtual {p1}, Llxy;->l()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lkip;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 3403
    :sswitch_2
    invoke-virtual {p1}, Llxy;->l()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lkip;->b:Ljava/lang/Integer;

    goto :goto_0

    .line 3407
    :sswitch_3
    invoke-virtual {p1}, Llxy;->l()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lkip;->c:Ljava/lang/Integer;

    goto :goto_0

    .line 3389
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 2353
    iget-object v0, p0, Lkip;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 2354
    const/4 v0, 0x1

    iget-object v1, p0, Lkip;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->c(II)V

    .line 2356
    :cond_0
    iget-object v0, p0, Lkip;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 2357
    const/4 v0, 0x2

    iget-object v1, p0, Lkip;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->c(II)V

    .line 2359
    :cond_1
    iget-object v0, p0, Lkip;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 2360
    const/4 v0, 0x3

    iget-object v1, p0, Lkip;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->c(II)V

    .line 2362
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 2363
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 2367
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 2368
    iget-object v1, p0, Lkip;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 2369
    const/4 v1, 0x1

    iget-object v2, p0, Lkip;->a:Ljava/lang/Integer;

    .line 2370
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2372
    :cond_0
    iget-object v1, p0, Lkip;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 2373
    const/4 v1, 0x2

    iget-object v2, p0, Lkip;->b:Ljava/lang/Integer;

    .line 2374
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2376
    :cond_1
    iget-object v1, p0, Lkip;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 2377
    const/4 v1, 0x3

    iget-object v2, p0, Lkip;->c:Ljava/lang/Integer;

    .line 2378
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2380
    :cond_2
    return v0
.end method
