.class public final Livs;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Livs;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile d:[Livs;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/Integer;

.field public c:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3337
    invoke-direct {p0}, Llyb;-><init>()V

    .line 4342
    iput-object v0, p0, Livs;->a:Ljava/lang/String;

    .line 4343
    iput-object v0, p0, Livs;->b:Ljava/lang/Integer;

    .line 4344
    iput-object v0, p0, Livs;->c:Ljava/lang/Boolean;

    .line 4345
    iput-object v0, p0, Livs;->eD:Llyd;

    .line 4346
    const/4 v0, -0x1

    iput v0, p0, Livs;->eE:I

    .line 3339
    return-void
.end method

.method public static d()[Livs;
    .locals 2

    .prologue
    .line 3315
    sget-object v0, Livs;->d:[Livs;

    if-nez v0, :cond_1

    .line 3316
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 3318
    :try_start_0
    sget-object v0, Livs;->d:[Livs;

    if-nez v0, :cond_0

    .line 3319
    const/4 v0, 0x0

    new-array v0, v0, [Livs;

    sput-object v0, Livs;->d:[Livs;

    .line 3321
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3323
    :cond_1
    sget-object v0, Livs;->d:[Livs;

    return-object v0

    .line 3321
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
    .line 5388
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 5389
    sparse-switch v0, :sswitch_data_0

    .line 5393
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5394
    :sswitch_0
    return-object p0

    .line 5399
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Livs;->a:Ljava/lang/String;

    goto :goto_0

    .line 5403
    :sswitch_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 5404
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 5413
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Livs;->b:Ljava/lang/Integer;

    goto :goto_0

    .line 5419
    :sswitch_3
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Livs;->c:Ljava/lang/Boolean;

    goto :goto_0

    .line 5389
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch

    .line 5404
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
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
    .line 3353
    iget-object v0, p0, Livs;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3354
    const/4 v0, 0x1

    iget-object v1, p0, Livs;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 3356
    :cond_0
    iget-object v0, p0, Livs;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 3357
    const/4 v0, 0x2

    iget-object v1, p0, Livs;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 3359
    :cond_1
    iget-object v0, p0, Livs;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 3360
    const/4 v0, 0x3

    iget-object v1, p0, Livs;->c:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 3362
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 3363
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 3367
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 3368
    iget-object v1, p0, Livs;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3369
    const/4 v1, 0x1

    iget-object v2, p0, Livs;->a:Ljava/lang/String;

    .line 3370
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3372
    :cond_0
    iget-object v1, p0, Livs;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 3373
    const/4 v1, 0x2

    iget-object v2, p0, Livs;->b:Ljava/lang/Integer;

    .line 3374
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3376
    :cond_1
    iget-object v1, p0, Livs;->c:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 3377
    const/4 v1, 0x3

    iget-object v2, p0, Livs;->c:Ljava/lang/Boolean;

    .line 3378
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 3378
    add-int/2addr v0, v1

    .line 3380
    :cond_2
    return v0
.end method
