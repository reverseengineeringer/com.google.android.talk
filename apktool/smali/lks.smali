.class public final Llks;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llks;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile b:[Llks;


# instance fields
.field public a:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2420
    invoke-direct {p0}, Llyb;-><init>()V

    .line 3425
    iput-object v0, p0, Llks;->a:Ljava/lang/Integer;

    .line 3426
    iput-object v0, p0, Llks;->eD:Llyd;

    .line 3427
    const/4 v0, -0x1

    iput v0, p0, Llks;->eE:I

    .line 2422
    return-void
.end method

.method public static d()[Llks;
    .locals 2

    .prologue
    .line 2404
    sget-object v0, Llks;->b:[Llks;

    if-nez v0, :cond_1

    .line 2405
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 2407
    :try_start_0
    sget-object v0, Llks;->b:[Llks;

    if-nez v0, :cond_0

    .line 2408
    const/4 v0, 0x0

    new-array v0, v0, [Llks;

    sput-object v0, Llks;->b:[Llks;

    .line 2410
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2412
    :cond_1
    sget-object v0, Llks;->b:[Llks;

    return-object v0

    .line 2410
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
    .line 3455
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 3456
    sparse-switch v0, :sswitch_data_0

    .line 3460
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3461
    :sswitch_0
    return-object p0

    .line 3466
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 3467
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 3471
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Llks;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 3456
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch

    .line 3467
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 2434
    iget-object v0, p0, Llks;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 2435
    const/4 v0, 0x1

    iget-object v1, p0, Llks;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 2437
    :cond_0
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 2438
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 2442
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 2443
    iget-object v1, p0, Llks;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 2444
    const/4 v1, 0x1

    iget-object v2, p0, Llks;->a:Ljava/lang/Integer;

    .line 2445
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2447
    :cond_0
    return v0
.end method
