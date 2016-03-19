.class public final Lkjw;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkjw;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile c:[Lkjw;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 562
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1567
    iput-object v0, p0, Lkjw;->a:Ljava/lang/String;

    .line 1568
    iput-object v0, p0, Lkjw;->b:Ljava/lang/Long;

    .line 1569
    iput-object v0, p0, Lkjw;->eD:Llyd;

    .line 1570
    const/4 v0, -0x1

    iput v0, p0, Lkjw;->eE:I

    .line 564
    return-void
.end method

.method public static d()[Lkjw;
    .locals 2

    .prologue
    .line 543
    sget-object v0, Lkjw;->c:[Lkjw;

    if-nez v0, :cond_1

    .line 544
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 546
    :try_start_0
    sget-object v0, Lkjw;->c:[Lkjw;

    if-nez v0, :cond_0

    .line 547
    const/4 v0, 0x0

    new-array v0, v0, [Lkjw;

    sput-object v0, Lkjw;->c:[Lkjw;

    .line 549
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 551
    :cond_1
    sget-object v0, Lkjw;->c:[Lkjw;

    return-object v0

    .line 549
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
    .line 1605
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1606
    sparse-switch v0, :sswitch_data_0

    .line 1610
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1611
    :sswitch_0
    return-object p0

    .line 1616
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkjw;->a:Ljava/lang/String;

    goto :goto_0

    .line 1620
    :sswitch_2
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lkjw;->b:Ljava/lang/Long;

    goto :goto_0

    .line 1606
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
    .line 577
    iget-object v0, p0, Lkjw;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 578
    const/4 v0, 0x1

    iget-object v1, p0, Lkjw;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 580
    :cond_0
    iget-object v0, p0, Lkjw;->b:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 581
    const/4 v0, 0x2

    iget-object v1, p0, Lkjw;->b:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 583
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 584
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 588
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 589
    iget-object v1, p0, Lkjw;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 590
    const/4 v1, 0x1

    iget-object v2, p0, Lkjw;->a:Ljava/lang/String;

    .line 591
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 593
    :cond_0
    iget-object v1, p0, Lkjw;->b:Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 594
    const/4 v1, 0x2

    iget-object v2, p0, Lkjw;->b:Ljava/lang/Long;

    .line 595
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 597
    :cond_1
    return v0
.end method
