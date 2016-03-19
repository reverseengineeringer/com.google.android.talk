.class public final Lmjk;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmjk;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile c:[Lmjk;


# instance fields
.field public a:Lmks;

.field public b:Lmks;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 654
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1659
    iput-object v0, p0, Lmjk;->a:Lmks;

    .line 1660
    iput-object v0, p0, Lmjk;->b:Lmks;

    .line 1661
    iput-object v0, p0, Lmjk;->eD:Llyd;

    .line 1662
    const/4 v0, -0x1

    iput v0, p0, Lmjk;->eE:I

    .line 656
    return-void
.end method

.method public static d()[Lmjk;
    .locals 2

    .prologue
    .line 635
    sget-object v0, Lmjk;->c:[Lmjk;

    if-nez v0, :cond_1

    .line 636
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 638
    :try_start_0
    sget-object v0, Lmjk;->c:[Lmjk;

    if-nez v0, :cond_0

    .line 639
    const/4 v0, 0x0

    new-array v0, v0, [Lmjk;

    sput-object v0, Lmjk;->c:[Lmjk;

    .line 641
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 643
    :cond_1
    sget-object v0, Lmjk;->c:[Lmjk;

    return-object v0

    .line 641
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
    .line 1697
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1698
    sparse-switch v0, :sswitch_data_0

    .line 1702
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1703
    :sswitch_0
    return-object p0

    .line 1708
    :sswitch_1
    iget-object v0, p0, Lmjk;->a:Lmks;

    if-nez v0, :cond_1

    .line 1709
    new-instance v0, Lmks;

    invoke-direct {v0}, Lmks;-><init>()V

    iput-object v0, p0, Lmjk;->a:Lmks;

    .line 1711
    :cond_1
    iget-object v0, p0, Lmjk;->a:Lmks;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1715
    :sswitch_2
    iget-object v0, p0, Lmjk;->b:Lmks;

    if-nez v0, :cond_2

    .line 1716
    new-instance v0, Lmks;

    invoke-direct {v0}, Lmks;-><init>()V

    iput-object v0, p0, Lmjk;->b:Lmks;

    .line 1718
    :cond_2
    iget-object v0, p0, Lmjk;->b:Lmks;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1698
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 669
    iget-object v0, p0, Lmjk;->a:Lmks;

    if-eqz v0, :cond_0

    .line 670
    const/4 v0, 0x1

    iget-object v1, p0, Lmjk;->a:Lmks;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 672
    :cond_0
    iget-object v0, p0, Lmjk;->b:Lmks;

    if-eqz v0, :cond_1

    .line 673
    const/4 v0, 0x2

    iget-object v1, p0, Lmjk;->b:Lmks;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 675
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 676
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 680
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 681
    iget-object v1, p0, Lmjk;->a:Lmks;

    if-eqz v1, :cond_0

    .line 682
    const/4 v1, 0x1

    iget-object v2, p0, Lmjk;->a:Lmks;

    .line 683
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 685
    :cond_0
    iget-object v1, p0, Lmjk;->b:Lmks;

    if-eqz v1, :cond_1

    .line 686
    const/4 v1, 0x2

    iget-object v2, p0, Lmjk;->b:Lmks;

    .line 687
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 689
    :cond_1
    return v0
.end method
