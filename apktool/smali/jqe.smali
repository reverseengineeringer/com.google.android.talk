.class public final Ljqe;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljqe;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile e:[Ljqe;


# instance fields
.field public a:Ljpn;

.field public b:Ljava/lang/Integer;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3318
    invoke-direct {p0}, Llyb;-><init>()V

    .line 4323
    iput-object v0, p0, Ljqe;->a:Ljpn;

    .line 4324
    iput-object v0, p0, Ljqe;->b:Ljava/lang/Integer;

    .line 4325
    iput-object v0, p0, Ljqe;->c:Ljava/lang/String;

    .line 4326
    iput-object v0, p0, Ljqe;->d:Ljava/lang/Boolean;

    .line 4327
    iput-object v0, p0, Ljqe;->eD:Llyd;

    .line 4328
    const/4 v0, -0x1

    iput v0, p0, Ljqe;->eE:I

    .line 3320
    return-void
.end method

.method public static d()[Ljqe;
    .locals 2

    .prologue
    .line 3293
    sget-object v0, Ljqe;->e:[Ljqe;

    if-nez v0, :cond_1

    .line 3294
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 3296
    :try_start_0
    sget-object v0, Ljqe;->e:[Ljqe;

    if-nez v0, :cond_0

    .line 3297
    const/4 v0, 0x0

    new-array v0, v0, [Ljqe;

    sput-object v0, Ljqe;->e:[Ljqe;

    .line 3299
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3301
    :cond_1
    sget-object v0, Ljqe;->e:[Ljqe;

    return-object v0

    .line 3299
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
    .line 5377
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 5378
    sparse-switch v0, :sswitch_data_0

    .line 5382
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5383
    :sswitch_0
    return-object p0

    .line 5388
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 5389
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 5395
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljqe;->b:Ljava/lang/Integer;

    goto :goto_0

    .line 5401
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljqe;->c:Ljava/lang/String;

    goto :goto_0

    .line 5405
    :sswitch_3
    iget-object v0, p0, Ljqe;->a:Ljpn;

    if-nez v0, :cond_1

    .line 5406
    new-instance v0, Ljpn;

    invoke-direct {v0}, Ljpn;-><init>()V

    iput-object v0, p0, Ljqe;->a:Ljpn;

    .line 5408
    :cond_1
    iget-object v0, p0, Ljqe;->a:Ljpn;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 5412
    :sswitch_4
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljqe;->d:Ljava/lang/Boolean;

    goto :goto_0

    .line 5378
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch

    .line 5389
    :pswitch_data_0
    .packed-switch 0x1
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
    .line 3335
    iget-object v0, p0, Ljqe;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 3336
    const/4 v0, 0x1

    iget-object v1, p0, Ljqe;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 3338
    :cond_0
    iget-object v0, p0, Ljqe;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 3339
    const/4 v0, 0x2

    iget-object v1, p0, Ljqe;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 3341
    :cond_1
    iget-object v0, p0, Ljqe;->a:Ljpn;

    if-eqz v0, :cond_2

    .line 3342
    const/4 v0, 0x3

    iget-object v1, p0, Ljqe;->a:Ljpn;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 3344
    :cond_2
    iget-object v0, p0, Ljqe;->d:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 3345
    const/4 v0, 0x4

    iget-object v1, p0, Ljqe;->d:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 3347
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 3348
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 3352
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 3353
    iget-object v1, p0, Ljqe;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 3354
    const/4 v1, 0x1

    iget-object v2, p0, Ljqe;->b:Ljava/lang/Integer;

    .line 3355
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3357
    :cond_0
    iget-object v1, p0, Ljqe;->c:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 3358
    const/4 v1, 0x2

    iget-object v2, p0, Ljqe;->c:Ljava/lang/String;

    .line 3359
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3361
    :cond_1
    iget-object v1, p0, Ljqe;->a:Ljpn;

    if-eqz v1, :cond_2

    .line 3362
    const/4 v1, 0x3

    iget-object v2, p0, Ljqe;->a:Ljpn;

    .line 3363
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3365
    :cond_2
    iget-object v1, p0, Ljqe;->d:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    .line 3366
    const/4 v1, 0x4

    iget-object v2, p0, Ljqe;->d:Ljava/lang/Boolean;

    .line 3367
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 3367
    add-int/2addr v0, v1

    .line 3369
    :cond_3
    return v0
.end method
