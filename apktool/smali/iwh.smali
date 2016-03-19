.class public final Liwh;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Liwh;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile e:[Liwh;


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

    .line 4602
    invoke-direct {p0}, Llyb;-><init>()V

    .line 5607
    iput-object v0, p0, Liwh;->a:Lixc;

    .line 5608
    iput-object v0, p0, Liwh;->b:Ljava/lang/String;

    .line 5609
    iput-object v0, p0, Liwh;->c:Ljava/lang/String;

    .line 5610
    iput-object v0, p0, Liwh;->d:Ljava/lang/String;

    .line 5611
    iput-object v0, p0, Liwh;->eD:Llyd;

    .line 5612
    const/4 v0, -0x1

    iput v0, p0, Liwh;->eE:I

    .line 4604
    return-void
.end method

.method public static d()[Liwh;
    .locals 2

    .prologue
    .line 4577
    sget-object v0, Liwh;->e:[Liwh;

    if-nez v0, :cond_1

    .line 4578
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 4580
    :try_start_0
    sget-object v0, Liwh;->e:[Liwh;

    if-nez v0, :cond_0

    .line 4581
    const/4 v0, 0x0

    new-array v0, v0, [Liwh;

    sput-object v0, Liwh;->e:[Liwh;

    .line 4583
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4585
    :cond_1
    sget-object v0, Liwh;->e:[Liwh;

    return-object v0

    .line 4583
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
    .line 5661
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 5662
    sparse-switch v0, :sswitch_data_0

    .line 5666
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5667
    :sswitch_0
    return-object p0

    .line 5672
    :sswitch_1
    iget-object v0, p0, Liwh;->a:Lixc;

    if-nez v0, :cond_1

    .line 5673
    new-instance v0, Lixc;

    invoke-direct {v0}, Lixc;-><init>()V

    iput-object v0, p0, Liwh;->a:Lixc;

    .line 5675
    :cond_1
    iget-object v0, p0, Liwh;->a:Lixc;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 5679
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Liwh;->b:Ljava/lang/String;

    goto :goto_0

    .line 5683
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Liwh;->c:Ljava/lang/String;

    goto :goto_0

    .line 5687
    :sswitch_4
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Liwh;->d:Ljava/lang/String;

    goto :goto_0

    .line 5662
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
    .line 4619
    iget-object v0, p0, Liwh;->a:Lixc;

    if-eqz v0, :cond_0

    .line 4620
    const/4 v0, 0x1

    iget-object v1, p0, Liwh;->a:Lixc;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 4622
    :cond_0
    iget-object v0, p0, Liwh;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 4623
    const/4 v0, 0x2

    iget-object v1, p0, Liwh;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 4625
    :cond_1
    iget-object v0, p0, Liwh;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 4626
    const/4 v0, 0x3

    iget-object v1, p0, Liwh;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 4628
    :cond_2
    iget-object v0, p0, Liwh;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 4629
    const/4 v0, 0x4

    iget-object v1, p0, Liwh;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 4631
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 4632
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 4636
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 4637
    iget-object v1, p0, Liwh;->a:Lixc;

    if-eqz v1, :cond_0

    .line 4638
    const/4 v1, 0x1

    iget-object v2, p0, Liwh;->a:Lixc;

    .line 4639
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4641
    :cond_0
    iget-object v1, p0, Liwh;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 4642
    const/4 v1, 0x2

    iget-object v2, p0, Liwh;->b:Ljava/lang/String;

    .line 4643
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4645
    :cond_1
    iget-object v1, p0, Liwh;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 4646
    const/4 v1, 0x3

    iget-object v2, p0, Liwh;->c:Ljava/lang/String;

    .line 4647
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4649
    :cond_2
    iget-object v1, p0, Liwh;->d:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 4650
    const/4 v1, 0x4

    iget-object v2, p0, Liwh;->d:Ljava/lang/String;

    .line 4651
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4653
    :cond_3
    return v0
.end method
