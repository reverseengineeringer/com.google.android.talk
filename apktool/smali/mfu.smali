.class public final Lmfu;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmfu;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile c:[Lmfu;


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Lmfz;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 671
    invoke-direct {p0}, Llyb;-><init>()V

    .line 672
    iput-object v0, p0, Lmfu;->a:Ljava/lang/Integer;

    .line 673
    iput-object v0, p0, Lmfu;->b:Lmfz;

    .line 674
    iput-object v0, p0, Lmfu;->eD:Llyd;

    .line 675
    const/4 v0, -0x1

    iput v0, p0, Lmfu;->eE:I

    .line 676
    return-void
.end method

.method public static d()[Lmfu;
    .locals 2

    .prologue
    .line 652
    sget-object v0, Lmfu;->c:[Lmfu;

    if-nez v0, :cond_1

    .line 653
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 655
    :try_start_0
    sget-object v0, Lmfu;->c:[Lmfu;

    if-nez v0, :cond_0

    .line 656
    const/4 v0, 0x0

    new-array v0, v0, [Lmfu;

    sput-object v0, Lmfu;->c:[Lmfu;

    .line 658
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 660
    :cond_1
    sget-object v0, Lmfu;->c:[Lmfu;

    return-object v0

    .line 658
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
    .line 1705
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1706
    sparse-switch v0, :sswitch_data_0

    .line 1710
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1711
    :sswitch_0
    return-object p0

    .line 1716
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lmfu;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 1720
    :sswitch_2
    iget-object v0, p0, Lmfu;->b:Lmfz;

    if-nez v0, :cond_1

    .line 1721
    new-instance v0, Lmfz;

    invoke-direct {v0}, Lmfz;-><init>()V

    iput-object v0, p0, Lmfu;->b:Lmfz;

    .line 1723
    :cond_1
    iget-object v0, p0, Lmfu;->b:Lmfz;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1706
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 681
    const/4 v0, 0x1

    iget-object v1, p0, Lmfu;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 682
    iget-object v0, p0, Lmfu;->b:Lmfz;

    if-eqz v0, :cond_0

    .line 683
    const/4 v0, 0x2

    iget-object v1, p0, Lmfu;->b:Lmfz;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 685
    :cond_0
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 686
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 690
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 691
    const/4 v1, 0x1

    iget-object v2, p0, Lmfu;->a:Ljava/lang/Integer;

    .line 692
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 693
    iget-object v1, p0, Lmfu;->b:Lmfz;

    if-eqz v1, :cond_0

    .line 694
    const/4 v1, 0x2

    iget-object v2, p0, Lmfu;->b:Lmfz;

    .line 695
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 697
    :cond_0
    return v0
.end method
