.class public final Llok;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llok;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile c:[Llok;


# instance fields
.field public a:Llmo;

.field public b:Llou;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 678
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1683
    iput-object v0, p0, Llok;->a:Llmo;

    .line 1684
    iput-object v0, p0, Llok;->b:Llou;

    .line 1685
    iput-object v0, p0, Llok;->eD:Llyd;

    .line 1686
    const/4 v0, -0x1

    iput v0, p0, Llok;->eE:I

    .line 680
    return-void
.end method

.method public static d()[Llok;
    .locals 2

    .prologue
    .line 659
    sget-object v0, Llok;->c:[Llok;

    if-nez v0, :cond_1

    .line 660
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 662
    :try_start_0
    sget-object v0, Llok;->c:[Llok;

    if-nez v0, :cond_0

    .line 663
    const/4 v0, 0x0

    new-array v0, v0, [Llok;

    sput-object v0, Llok;->c:[Llok;

    .line 665
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 667
    :cond_1
    sget-object v0, Llok;->c:[Llok;

    return-object v0

    .line 665
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
    .line 1721
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1722
    sparse-switch v0, :sswitch_data_0

    .line 1726
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1727
    :sswitch_0
    return-object p0

    .line 1732
    :sswitch_1
    iget-object v0, p0, Llok;->a:Llmo;

    if-nez v0, :cond_1

    .line 1733
    new-instance v0, Llmo;

    invoke-direct {v0}, Llmo;-><init>()V

    iput-object v0, p0, Llok;->a:Llmo;

    .line 1735
    :cond_1
    iget-object v0, p0, Llok;->a:Llmo;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1739
    :sswitch_2
    iget-object v0, p0, Llok;->b:Llou;

    if-nez v0, :cond_2

    .line 1740
    new-instance v0, Llou;

    invoke-direct {v0}, Llou;-><init>()V

    iput-object v0, p0, Llok;->b:Llou;

    .line 1742
    :cond_2
    iget-object v0, p0, Llok;->b:Llou;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1722
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
    .line 693
    iget-object v0, p0, Llok;->a:Llmo;

    if-eqz v0, :cond_0

    .line 694
    const/4 v0, 0x1

    iget-object v1, p0, Llok;->a:Llmo;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 696
    :cond_0
    iget-object v0, p0, Llok;->b:Llou;

    if-eqz v0, :cond_1

    .line 697
    const/4 v0, 0x2

    iget-object v1, p0, Llok;->b:Llou;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 699
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 700
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 704
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 705
    iget-object v1, p0, Llok;->a:Llmo;

    if-eqz v1, :cond_0

    .line 706
    const/4 v1, 0x1

    iget-object v2, p0, Llok;->a:Llmo;

    .line 707
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 709
    :cond_0
    iget-object v1, p0, Llok;->b:Llou;

    if-eqz v1, :cond_1

    .line 710
    const/4 v1, 0x2

    iget-object v2, p0, Llok;->b:Llou;

    .line 711
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 713
    :cond_1
    return v0
.end method
