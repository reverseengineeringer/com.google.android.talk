.class public final Livp;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Livp;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile e:[Livp;


# instance fields
.field public a:Lixc;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8313
    invoke-direct {p0}, Llyb;-><init>()V

    .line 9318
    iput-object v0, p0, Livp;->a:Lixc;

    .line 9319
    iput-object v0, p0, Livp;->b:Ljava/lang/String;

    .line 9320
    iput-object v0, p0, Livp;->c:Ljava/lang/String;

    .line 9321
    iput-object v0, p0, Livp;->d:Ljava/lang/String;

    .line 9322
    iput-object v0, p0, Livp;->eD:Llyd;

    .line 9323
    const/4 v0, -0x1

    iput v0, p0, Livp;->eE:I

    .line 8315
    return-void
.end method

.method public static d()[Livp;
    .locals 2

    .prologue
    .line 8288
    sget-object v0, Livp;->e:[Livp;

    if-nez v0, :cond_1

    .line 8289
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 8291
    :try_start_0
    sget-object v0, Livp;->e:[Livp;

    if-nez v0, :cond_0

    .line 8292
    const/4 v0, 0x0

    new-array v0, v0, [Livp;

    sput-object v0, Livp;->e:[Livp;

    .line 8294
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8296
    :cond_1
    sget-object v0, Livp;->e:[Livp;

    return-object v0

    .line 8294
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
    .line 9372
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 9373
    sparse-switch v0, :sswitch_data_0

    .line 9377
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9378
    :sswitch_0
    return-object p0

    .line 9383
    :sswitch_1
    iget-object v0, p0, Livp;->a:Lixc;

    if-nez v0, :cond_1

    .line 9384
    new-instance v0, Lixc;

    invoke-direct {v0}, Lixc;-><init>()V

    iput-object v0, p0, Livp;->a:Lixc;

    .line 9386
    :cond_1
    iget-object v0, p0, Livp;->a:Lixc;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 9390
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Livp;->b:Ljava/lang/String;

    goto :goto_0

    .line 9394
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Livp;->c:Ljava/lang/String;

    goto :goto_0

    .line 9398
    :sswitch_4
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Livp;->d:Ljava/lang/String;

    goto :goto_0

    .line 9373
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 8330
    iget-object v0, p0, Livp;->a:Lixc;

    if-eqz v0, :cond_0

    .line 8331
    const/4 v0, 0x1

    iget-object v1, p0, Livp;->a:Lixc;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 8333
    :cond_0
    iget-object v0, p0, Livp;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 8334
    const/4 v0, 0x2

    iget-object v1, p0, Livp;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 8336
    :cond_1
    iget-object v0, p0, Livp;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 8337
    const/4 v0, 0x3

    iget-object v1, p0, Livp;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 8339
    :cond_2
    iget-object v0, p0, Livp;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 8340
    const/4 v0, 0x4

    iget-object v1, p0, Livp;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 8342
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 8343
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 8347
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 8348
    iget-object v1, p0, Livp;->a:Lixc;

    if-eqz v1, :cond_0

    .line 8349
    const/4 v1, 0x1

    iget-object v2, p0, Livp;->a:Lixc;

    .line 8350
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8352
    :cond_0
    iget-object v1, p0, Livp;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 8353
    const/4 v1, 0x2

    iget-object v2, p0, Livp;->b:Ljava/lang/String;

    .line 8354
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8356
    :cond_1
    iget-object v1, p0, Livp;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 8357
    const/4 v1, 0x3

    iget-object v2, p0, Livp;->c:Ljava/lang/String;

    .line 8358
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8360
    :cond_2
    iget-object v1, p0, Livp;->d:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 8361
    const/4 v1, 0x4

    iget-object v2, p0, Livp;->d:Ljava/lang/String;

    .line 8362
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8364
    :cond_3
    return v0
.end method
