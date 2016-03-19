.class public final Lixg;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lixg;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile e:[Lixg;


# instance fields
.field public a:Lixc;

.field public b:Liww;

.field public c:Liwp;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10524
    invoke-direct {p0}, Llyb;-><init>()V

    .line 11529
    iput-object v0, p0, Lixg;->a:Lixc;

    .line 11530
    iput-object v0, p0, Lixg;->b:Liww;

    .line 11531
    iput-object v0, p0, Lixg;->c:Liwp;

    .line 11532
    iput-object v0, p0, Lixg;->d:Ljava/lang/String;

    .line 11533
    iput-object v0, p0, Lixg;->eD:Llyd;

    .line 11534
    const/4 v0, -0x1

    iput v0, p0, Lixg;->eE:I

    .line 10526
    return-void
.end method

.method public static d()[Lixg;
    .locals 2

    .prologue
    .line 10499
    sget-object v0, Lixg;->e:[Lixg;

    if-nez v0, :cond_1

    .line 10500
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 10502
    :try_start_0
    sget-object v0, Lixg;->e:[Lixg;

    if-nez v0, :cond_0

    .line 10503
    const/4 v0, 0x0

    new-array v0, v0, [Lixg;

    sput-object v0, Lixg;->e:[Lixg;

    .line 10505
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10507
    :cond_1
    sget-object v0, Lixg;->e:[Lixg;

    return-object v0

    .line 10505
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
    .line 11583
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 11584
    sparse-switch v0, :sswitch_data_0

    .line 11588
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 11589
    :sswitch_0
    return-object p0

    .line 11594
    :sswitch_1
    iget-object v0, p0, Lixg;->a:Lixc;

    if-nez v0, :cond_1

    .line 11595
    new-instance v0, Lixc;

    invoke-direct {v0}, Lixc;-><init>()V

    iput-object v0, p0, Lixg;->a:Lixc;

    .line 11597
    :cond_1
    iget-object v0, p0, Lixg;->a:Lixc;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 11601
    :sswitch_2
    iget-object v0, p0, Lixg;->b:Liww;

    if-nez v0, :cond_2

    .line 11602
    new-instance v0, Liww;

    invoke-direct {v0}, Liww;-><init>()V

    iput-object v0, p0, Lixg;->b:Liww;

    .line 11604
    :cond_2
    iget-object v0, p0, Lixg;->b:Liww;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 11608
    :sswitch_3
    iget-object v0, p0, Lixg;->c:Liwp;

    if-nez v0, :cond_3

    .line 11609
    new-instance v0, Liwp;

    invoke-direct {v0}, Liwp;-><init>()V

    iput-object v0, p0, Lixg;->c:Liwp;

    .line 11611
    :cond_3
    iget-object v0, p0, Lixg;->c:Liwp;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 11615
    :sswitch_4
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lixg;->d:Ljava/lang/String;

    goto :goto_0

    .line 11584
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
    .line 10541
    iget-object v0, p0, Lixg;->a:Lixc;

    if-eqz v0, :cond_0

    .line 10542
    const/4 v0, 0x1

    iget-object v1, p0, Lixg;->a:Lixc;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 10544
    :cond_0
    iget-object v0, p0, Lixg;->b:Liww;

    if-eqz v0, :cond_1

    .line 10545
    const/4 v0, 0x2

    iget-object v1, p0, Lixg;->b:Liww;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 10547
    :cond_1
    iget-object v0, p0, Lixg;->c:Liwp;

    if-eqz v0, :cond_2

    .line 10548
    const/4 v0, 0x3

    iget-object v1, p0, Lixg;->c:Liwp;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 10550
    :cond_2
    iget-object v0, p0, Lixg;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 10551
    const/4 v0, 0x4

    iget-object v1, p0, Lixg;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 10553
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 10554
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 10558
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 10559
    iget-object v1, p0, Lixg;->a:Lixc;

    if-eqz v1, :cond_0

    .line 10560
    const/4 v1, 0x1

    iget-object v2, p0, Lixg;->a:Lixc;

    .line 10561
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10563
    :cond_0
    iget-object v1, p0, Lixg;->b:Liww;

    if-eqz v1, :cond_1

    .line 10564
    const/4 v1, 0x2

    iget-object v2, p0, Lixg;->b:Liww;

    .line 10565
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10567
    :cond_1
    iget-object v1, p0, Lixg;->c:Liwp;

    if-eqz v1, :cond_2

    .line 10568
    const/4 v1, 0x3

    iget-object v2, p0, Lixg;->c:Liwp;

    .line 10569
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10571
    :cond_2
    iget-object v1, p0, Lixg;->d:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 10572
    const/4 v1, 0x4

    iget-object v2, p0, Lixg;->d:Ljava/lang/String;

    .line 10573
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10575
    :cond_3
    return v0
.end method
