.class public final Liwu;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Liwu;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile d:[Liwu;


# instance fields
.field public a:Lixc;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5334
    invoke-direct {p0}, Llyb;-><init>()V

    .line 6339
    iput-object v0, p0, Liwu;->a:Lixc;

    .line 6340
    iput-object v0, p0, Liwu;->b:Ljava/lang/String;

    .line 6341
    iput-object v0, p0, Liwu;->c:Ljava/lang/Integer;

    .line 6342
    iput-object v0, p0, Liwu;->eD:Llyd;

    .line 6343
    const/4 v0, -0x1

    iput v0, p0, Liwu;->eE:I

    .line 5336
    return-void
.end method

.method public static d()[Liwu;
    .locals 2

    .prologue
    .line 5312
    sget-object v0, Liwu;->d:[Liwu;

    if-nez v0, :cond_1

    .line 5313
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 5315
    :try_start_0
    sget-object v0, Liwu;->d:[Liwu;

    if-nez v0, :cond_0

    .line 5316
    const/4 v0, 0x0

    new-array v0, v0, [Liwu;

    sput-object v0, Liwu;->d:[Liwu;

    .line 5318
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5320
    :cond_1
    sget-object v0, Liwu;->d:[Liwu;

    return-object v0

    .line 5318
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
    .line 6385
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 6386
    sparse-switch v0, :sswitch_data_0

    .line 6390
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6391
    :sswitch_0
    return-object p0

    .line 6396
    :sswitch_1
    iget-object v0, p0, Liwu;->a:Lixc;

    if-nez v0, :cond_1

    .line 6397
    new-instance v0, Lixc;

    invoke-direct {v0}, Lixc;-><init>()V

    iput-object v0, p0, Liwu;->a:Lixc;

    .line 6399
    :cond_1
    iget-object v0, p0, Liwu;->a:Lixc;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 6403
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Liwu;->b:Ljava/lang/String;

    goto :goto_0

    .line 6407
    :sswitch_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 6408
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 6416
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Liwu;->c:Ljava/lang/Integer;

    goto :goto_0

    .line 6386
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch

    .line 6408
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 5350
    iget-object v0, p0, Liwu;->a:Lixc;

    if-eqz v0, :cond_0

    .line 5351
    const/4 v0, 0x1

    iget-object v1, p0, Liwu;->a:Lixc;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 5353
    :cond_0
    iget-object v0, p0, Liwu;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 5354
    const/4 v0, 0x2

    iget-object v1, p0, Liwu;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 5356
    :cond_1
    iget-object v0, p0, Liwu;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 5357
    const/4 v0, 0x3

    iget-object v1, p0, Liwu;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 5359
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 5360
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 5364
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 5365
    iget-object v1, p0, Liwu;->a:Lixc;

    if-eqz v1, :cond_0

    .line 5366
    const/4 v1, 0x1

    iget-object v2, p0, Liwu;->a:Lixc;

    .line 5367
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5369
    :cond_0
    iget-object v1, p0, Liwu;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 5370
    const/4 v1, 0x2

    iget-object v2, p0, Liwu;->b:Ljava/lang/String;

    .line 5371
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5373
    :cond_1
    iget-object v1, p0, Liwu;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 5374
    const/4 v1, 0x3

    iget-object v2, p0, Liwu;->c:Ljava/lang/Integer;

    .line 5375
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5377
    :cond_2
    return v0
.end method
