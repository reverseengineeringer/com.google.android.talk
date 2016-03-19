.class public final Liyo;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Liyo;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljqr;

.field public apiHeader:Liye;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1319
    invoke-direct {p0}, Llyb;-><init>()V

    .line 2324
    iput-object v0, p0, Liyo;->apiHeader:Liye;

    .line 2325
    iput-object v0, p0, Liyo;->a:Ljqr;

    .line 2326
    iput-object v0, p0, Liyo;->eD:Llyd;

    .line 2327
    const/4 v0, -0x1

    iput v0, p0, Liyo;->eE:I

    .line 1321
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 2362
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2363
    sparse-switch v0, :sswitch_data_0

    .line 2367
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2368
    :sswitch_0
    return-object p0

    .line 2373
    :sswitch_1
    iget-object v0, p0, Liyo;->apiHeader:Liye;

    if-nez v0, :cond_1

    .line 2374
    new-instance v0, Liye;

    invoke-direct {v0}, Liye;-><init>()V

    iput-object v0, p0, Liyo;->apiHeader:Liye;

    .line 2376
    :cond_1
    iget-object v0, p0, Liyo;->apiHeader:Liye;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2380
    :sswitch_2
    iget-object v0, p0, Liyo;->a:Ljqr;

    if-nez v0, :cond_2

    .line 2381
    new-instance v0, Ljqr;

    invoke-direct {v0}, Ljqr;-><init>()V

    iput-object v0, p0, Liyo;->a:Ljqr;

    .line 2383
    :cond_2
    iget-object v0, p0, Liyo;->a:Ljqr;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2363
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
    .line 1334
    iget-object v0, p0, Liyo;->apiHeader:Liye;

    if-eqz v0, :cond_0

    .line 1335
    const/4 v0, 0x1

    iget-object v1, p0, Liyo;->apiHeader:Liye;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1337
    :cond_0
    iget-object v0, p0, Liyo;->a:Ljqr;

    if-eqz v0, :cond_1

    .line 1338
    const/4 v0, 0x2

    iget-object v1, p0, Liyo;->a:Ljqr;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1340
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1341
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 1345
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 1346
    iget-object v1, p0, Liyo;->apiHeader:Liye;

    if-eqz v1, :cond_0

    .line 1347
    const/4 v1, 0x1

    iget-object v2, p0, Liyo;->apiHeader:Liye;

    .line 1348
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1350
    :cond_0
    iget-object v1, p0, Liyo;->a:Ljqr;

    if-eqz v1, :cond_1

    .line 1351
    const/4 v1, 0x2

    iget-object v2, p0, Liyo;->a:Ljqr;

    .line 1352
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1354
    :cond_1
    return v0
.end method
