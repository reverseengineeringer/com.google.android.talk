.class public final Lkad;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkad;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Llcf;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/Boolean;

.field public d:[Llcf;

.field public e:Lkcu;

.field public requestHeader:Lkdo;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 32506
    invoke-direct {p0}, Llyb;-><init>()V

    .line 33511
    iput-object v1, p0, Lkad;->requestHeader:Lkdo;

    .line 33512
    iput-object v1, p0, Lkad;->a:Llcf;

    .line 33513
    iput-object v1, p0, Lkad;->b:Ljava/lang/String;

    .line 33514
    iput-object v1, p0, Lkad;->c:Ljava/lang/Boolean;

    .line 33515
    invoke-static {}, Llcf;->d()[Llcf;

    move-result-object v0

    iput-object v0, p0, Lkad;->d:[Llcf;

    .line 33516
    iput-object v1, p0, Lkad;->e:Lkcu;

    .line 33517
    iput-object v1, p0, Lkad;->eD:Llyd;

    .line 33518
    const/4 v0, -0x1

    iput v0, p0, Lkad;->eE:I

    .line 32508
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 34591
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 34592
    sparse-switch v0, :sswitch_data_0

    .line 34596
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 34597
    :sswitch_0
    return-object p0

    .line 34602
    :sswitch_1
    iget-object v0, p0, Lkad;->requestHeader:Lkdo;

    if-nez v0, :cond_1

    .line 34603
    new-instance v0, Lkdo;

    invoke-direct {v0}, Lkdo;-><init>()V

    iput-object v0, p0, Lkad;->requestHeader:Lkdo;

    .line 34605
    :cond_1
    iget-object v0, p0, Lkad;->requestHeader:Lkdo;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 34609
    :sswitch_2
    iget-object v0, p0, Lkad;->a:Llcf;

    if-nez v0, :cond_2

    .line 34610
    new-instance v0, Llcf;

    invoke-direct {v0}, Llcf;-><init>()V

    iput-object v0, p0, Lkad;->a:Llcf;

    .line 34612
    :cond_2
    iget-object v0, p0, Lkad;->a:Llcf;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 34616
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkad;->b:Ljava/lang/String;

    goto :goto_0

    .line 34620
    :sswitch_4
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lkad;->c:Ljava/lang/Boolean;

    goto :goto_0

    .line 34624
    :sswitch_5
    const/16 v0, 0x2a

    .line 34625
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 34626
    iget-object v0, p0, Lkad;->d:[Llcf;

    if-nez v0, :cond_4

    move v0, v1

    .line 34627
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Llcf;

    .line 34629
    if-eqz v0, :cond_3

    .line 34630
    iget-object v3, p0, Lkad;->d:[Llcf;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34632
    :cond_3
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_5

    .line 34633
    new-instance v3, Llcf;

    invoke-direct {v3}, Llcf;-><init>()V

    aput-object v3, v2, v0

    .line 34634
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 34635
    invoke-virtual {p1}, Llxy;->a()I

    .line 34632
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 34626
    :cond_4
    iget-object v0, p0, Lkad;->d:[Llcf;

    array-length v0, v0

    goto :goto_1

    .line 34638
    :cond_5
    new-instance v3, Llcf;

    invoke-direct {v3}, Llcf;-><init>()V

    aput-object v3, v2, v0

    .line 34639
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 34640
    iput-object v2, p0, Lkad;->d:[Llcf;

    goto :goto_0

    .line 34644
    :sswitch_6
    iget-object v0, p0, Lkad;->e:Lkcu;

    if-nez v0, :cond_6

    .line 34645
    new-instance v0, Lkcu;

    invoke-direct {v0}, Lkcu;-><init>()V

    iput-object v0, p0, Lkad;->e:Lkcu;

    .line 34647
    :cond_6
    iget-object v0, p0, Lkad;->e:Lkcu;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 34592
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 32525
    iget-object v0, p0, Lkad;->requestHeader:Lkdo;

    if-eqz v0, :cond_0

    .line 32526
    const/4 v0, 0x1

    iget-object v1, p0, Lkad;->requestHeader:Lkdo;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 32528
    :cond_0
    iget-object v0, p0, Lkad;->a:Llcf;

    if-eqz v0, :cond_1

    .line 32529
    const/4 v0, 0x2

    iget-object v1, p0, Lkad;->a:Llcf;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 32531
    :cond_1
    iget-object v0, p0, Lkad;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 32532
    const/4 v0, 0x3

    iget-object v1, p0, Lkad;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 32534
    :cond_2
    iget-object v0, p0, Lkad;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 32535
    const/4 v0, 0x4

    iget-object v1, p0, Lkad;->c:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 32537
    :cond_3
    iget-object v0, p0, Lkad;->d:[Llcf;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lkad;->d:[Llcf;

    array-length v0, v0

    if-lez v0, :cond_5

    .line 32538
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lkad;->d:[Llcf;

    array-length v1, v1

    if-ge v0, v1, :cond_5

    .line 32539
    iget-object v1, p0, Lkad;->d:[Llcf;

    aget-object v1, v1, v0

    .line 32540
    if-eqz v1, :cond_4

    .line 32541
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 32538
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 32545
    :cond_5
    iget-object v0, p0, Lkad;->e:Lkcu;

    if-eqz v0, :cond_6

    .line 32546
    const/4 v0, 0x6

    iget-object v1, p0, Lkad;->e:Lkcu;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 32548
    :cond_6
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 32549
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 32553
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 32554
    iget-object v1, p0, Lkad;->requestHeader:Lkdo;

    if-eqz v1, :cond_0

    .line 32555
    const/4 v1, 0x1

    iget-object v2, p0, Lkad;->requestHeader:Lkdo;

    .line 32556
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 32558
    :cond_0
    iget-object v1, p0, Lkad;->a:Llcf;

    if-eqz v1, :cond_1

    .line 32559
    const/4 v1, 0x2

    iget-object v2, p0, Lkad;->a:Llcf;

    .line 32560
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 32562
    :cond_1
    iget-object v1, p0, Lkad;->b:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 32563
    const/4 v1, 0x3

    iget-object v2, p0, Lkad;->b:Ljava/lang/String;

    .line 32564
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 32566
    :cond_2
    iget-object v1, p0, Lkad;->c:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    .line 32567
    const/4 v1, 0x4

    iget-object v2, p0, Lkad;->c:Ljava/lang/Boolean;

    .line 32568
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 33620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 32568
    add-int/2addr v0, v1

    .line 32570
    :cond_3
    iget-object v1, p0, Lkad;->d:[Llcf;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lkad;->d:[Llcf;

    array-length v1, v1

    if-lez v1, :cond_6

    .line 32571
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lkad;->d:[Llcf;

    array-length v2, v2

    if-ge v0, v2, :cond_5

    .line 32572
    iget-object v2, p0, Lkad;->d:[Llcf;

    aget-object v2, v2, v0

    .line 32573
    if-eqz v2, :cond_4

    .line 32574
    const/4 v3, 0x5

    .line 32575
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 32571
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    move v0, v1

    .line 32579
    :cond_6
    iget-object v1, p0, Lkad;->e:Lkcu;

    if-eqz v1, :cond_7

    .line 32580
    const/4 v1, 0x6

    iget-object v2, p0, Lkad;->e:Lkcu;

    .line 32581
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 32583
    :cond_7
    return v0
.end method
