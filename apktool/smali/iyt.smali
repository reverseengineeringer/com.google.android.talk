.class public final Liyt;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Liyt;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lizc;

.field public apiHeader:Liyd;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2291
    invoke-direct {p0}, Llyb;-><init>()V

    .line 3296
    iput-object v0, p0, Liyt;->apiHeader:Liyd;

    .line 3297
    iput-object v0, p0, Liyt;->a:Lizc;

    .line 3298
    iput-object v0, p0, Liyt;->eD:Llyd;

    .line 3299
    const/4 v0, -0x1

    iput v0, p0, Liyt;->eE:I

    .line 2293
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 3334
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 3335
    sparse-switch v0, :sswitch_data_0

    .line 3339
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3340
    :sswitch_0
    return-object p0

    .line 3345
    :sswitch_1
    iget-object v0, p0, Liyt;->apiHeader:Liyd;

    if-nez v0, :cond_1

    .line 3346
    new-instance v0, Liyd;

    invoke-direct {v0}, Liyd;-><init>()V

    iput-object v0, p0, Liyt;->apiHeader:Liyd;

    .line 3348
    :cond_1
    iget-object v0, p0, Liyt;->apiHeader:Liyd;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 3352
    :sswitch_2
    iget-object v0, p0, Liyt;->a:Lizc;

    if-nez v0, :cond_2

    .line 3353
    new-instance v0, Lizc;

    invoke-direct {v0}, Lizc;-><init>()V

    iput-object v0, p0, Liyt;->a:Lizc;

    .line 3355
    :cond_2
    iget-object v0, p0, Liyt;->a:Lizc;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 3335
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
    .line 2306
    iget-object v0, p0, Liyt;->apiHeader:Liyd;

    if-eqz v0, :cond_0

    .line 2307
    const/4 v0, 0x1

    iget-object v1, p0, Liyt;->apiHeader:Liyd;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 2309
    :cond_0
    iget-object v0, p0, Liyt;->a:Lizc;

    if-eqz v0, :cond_1

    .line 2310
    const/4 v0, 0x2

    iget-object v1, p0, Liyt;->a:Lizc;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 2312
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 2313
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 2317
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 2318
    iget-object v1, p0, Liyt;->apiHeader:Liyd;

    if-eqz v1, :cond_0

    .line 2319
    const/4 v1, 0x1

    iget-object v2, p0, Liyt;->apiHeader:Liyd;

    .line 2320
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2322
    :cond_0
    iget-object v1, p0, Liyt;->a:Lizc;

    if-eqz v1, :cond_1

    .line 2323
    const/4 v1, 0x2

    iget-object v2, p0, Liyt;->a:Lizc;

    .line 2324
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2326
    :cond_1
    return v0
.end method
