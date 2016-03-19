.class public final Lkax;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkax;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile c:[Lkax;


# instance fields
.field public a:Lkzq;

.field public b:Lkay;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 11331
    invoke-direct {p0}, Llyb;-><init>()V

    .line 12336
    iput-object v0, p0, Lkax;->a:Lkzq;

    .line 12337
    iput-object v0, p0, Lkax;->b:Lkay;

    .line 12338
    iput-object v0, p0, Lkax;->eD:Llyd;

    .line 12339
    const/4 v0, -0x1

    iput v0, p0, Lkax;->eE:I

    .line 11333
    return-void
.end method

.method public static d()[Lkax;
    .locals 2

    .prologue
    .line 11312
    sget-object v0, Lkax;->c:[Lkax;

    if-nez v0, :cond_1

    .line 11313
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 11315
    :try_start_0
    sget-object v0, Lkax;->c:[Lkax;

    if-nez v0, :cond_0

    .line 11316
    const/4 v0, 0x0

    new-array v0, v0, [Lkax;

    sput-object v0, Lkax;->c:[Lkax;

    .line 11318
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11320
    :cond_1
    sget-object v0, Lkax;->c:[Lkax;

    return-object v0

    .line 11318
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 12374
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 12375
    sparse-switch v0, :sswitch_data_0

    .line 12379
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 12380
    :sswitch_0
    return-object p0

    .line 12385
    :sswitch_1
    iget-object v0, p0, Lkax;->a:Lkzq;

    if-nez v0, :cond_1

    .line 12386
    new-instance v0, Lkzq;

    invoke-direct {v0}, Lkzq;-><init>()V

    iput-object v0, p0, Lkax;->a:Lkzq;

    .line 12388
    :cond_1
    iget-object v0, p0, Lkax;->a:Lkzq;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 12392
    :sswitch_2
    iget-object v0, p0, Lkax;->b:Lkay;

    if-nez v0, :cond_2

    .line 12393
    new-instance v0, Lkay;

    invoke-direct {v0}, Lkay;-><init>()V

    iput-object v0, p0, Lkax;->b:Lkay;

    .line 12395
    :cond_2
    iget-object v0, p0, Lkax;->b:Lkay;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 12375
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
    .line 11346
    iget-object v0, p0, Lkax;->a:Lkzq;

    if-eqz v0, :cond_0

    .line 11347
    const/4 v0, 0x1

    iget-object v1, p0, Lkax;->a:Lkzq;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 11349
    :cond_0
    iget-object v0, p0, Lkax;->b:Lkay;

    if-eqz v0, :cond_1

    .line 11350
    const/4 v0, 0x2

    iget-object v1, p0, Lkax;->b:Lkay;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 11352
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 11353
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 11357
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 11358
    iget-object v1, p0, Lkax;->a:Lkzq;

    if-eqz v1, :cond_0

    .line 11359
    const/4 v1, 0x1

    iget-object v2, p0, Lkax;->a:Lkzq;

    .line 11360
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11362
    :cond_0
    iget-object v1, p0, Lkax;->b:Lkay;

    if-eqz v1, :cond_1

    .line 11363
    const/4 v1, 0x2

    iget-object v2, p0, Lkax;->b:Lkay;

    .line 11364
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11366
    :cond_1
    return v0
.end method
