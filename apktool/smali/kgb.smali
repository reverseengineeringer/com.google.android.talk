.class public final Lkgb;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkgb;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile c:[Lkgb;


# instance fields
.field public a:Lkcr;

.field public b:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4502
    invoke-direct {p0}, Llyb;-><init>()V

    .line 5507
    iput-object v0, p0, Lkgb;->a:Lkcr;

    .line 5508
    iput-object v0, p0, Lkgb;->b:Ljava/lang/Long;

    .line 5509
    iput-object v0, p0, Lkgb;->eD:Llyd;

    .line 5510
    const/4 v0, -0x1

    iput v0, p0, Lkgb;->eE:I

    .line 4504
    return-void
.end method

.method public static d()[Lkgb;
    .locals 2

    .prologue
    .line 4483
    sget-object v0, Lkgb;->c:[Lkgb;

    if-nez v0, :cond_1

    .line 4484
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 4486
    :try_start_0
    sget-object v0, Lkgb;->c:[Lkgb;

    if-nez v0, :cond_0

    .line 4487
    const/4 v0, 0x0

    new-array v0, v0, [Lkgb;

    sput-object v0, Lkgb;->c:[Lkgb;

    .line 4489
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4491
    :cond_1
    sget-object v0, Lkgb;->c:[Lkgb;

    return-object v0

    .line 4489
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
    .locals 2

    .prologue
    .line 5545
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 5546
    sparse-switch v0, :sswitch_data_0

    .line 5550
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5551
    :sswitch_0
    return-object p0

    .line 5556
    :sswitch_1
    iget-object v0, p0, Lkgb;->a:Lkcr;

    if-nez v0, :cond_1

    .line 5557
    new-instance v0, Lkcr;

    invoke-direct {v0}, Lkcr;-><init>()V

    iput-object v0, p0, Lkgb;->a:Lkcr;

    .line 5559
    :cond_1
    iget-object v0, p0, Lkgb;->a:Lkcr;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 5563
    :sswitch_2
    invoke-virtual {p1}, Llxy;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lkgb;->b:Ljava/lang/Long;

    goto :goto_0

    .line 5546
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 4517
    iget-object v0, p0, Lkgb;->a:Lkcr;

    if-eqz v0, :cond_0

    .line 4518
    const/4 v0, 0x1

    iget-object v1, p0, Lkgb;->a:Lkcr;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 4520
    :cond_0
    iget-object v0, p0, Lkgb;->b:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 4521
    const/4 v0, 0x2

    iget-object v1, p0, Lkgb;->b:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->a(IJ)V

    .line 4523
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 4524
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 4528
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 4529
    iget-object v1, p0, Lkgb;->a:Lkcr;

    if-eqz v1, :cond_0

    .line 4530
    const/4 v1, 0x1

    iget-object v2, p0, Lkgb;->a:Lkcr;

    .line 4531
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4533
    :cond_0
    iget-object v1, p0, Lkgb;->b:Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 4534
    const/4 v1, 0x2

    iget-object v2, p0, Lkgb;->b:Ljava/lang/Long;

    .line 4535
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->d(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4537
    :cond_1
    return v0
.end method
