.class public final Lizj;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lizj;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile c:[Lizj;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 628
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1633
    iput-object v0, p0, Lizj;->a:Ljava/lang/String;

    .line 1634
    iput-object v0, p0, Lizj;->b:Ljava/lang/String;

    .line 1635
    iput-object v0, p0, Lizj;->eD:Llyd;

    .line 1636
    const/4 v0, -0x1

    iput v0, p0, Lizj;->eE:I

    .line 630
    return-void
.end method

.method public static d()[Lizj;
    .locals 2

    .prologue
    .line 609
    sget-object v0, Lizj;->c:[Lizj;

    if-nez v0, :cond_1

    .line 610
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 612
    :try_start_0
    sget-object v0, Lizj;->c:[Lizj;

    if-nez v0, :cond_0

    .line 613
    const/4 v0, 0x0

    new-array v0, v0, [Lizj;

    sput-object v0, Lizj;->c:[Lizj;

    .line 615
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 617
    :cond_1
    sget-object v0, Lizj;->c:[Lizj;

    return-object v0

    .line 615
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
    .line 1671
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1672
    sparse-switch v0, :sswitch_data_0

    .line 1676
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1677
    :sswitch_0
    return-object p0

    .line 1682
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lizj;->a:Ljava/lang/String;

    goto :goto_0

    .line 1686
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lizj;->b:Ljava/lang/String;

    goto :goto_0

    .line 1672
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
    .line 643
    iget-object v0, p0, Lizj;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 644
    const/4 v0, 0x1

    iget-object v1, p0, Lizj;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 646
    :cond_0
    iget-object v0, p0, Lizj;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 647
    const/4 v0, 0x2

    iget-object v1, p0, Lizj;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 649
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 650
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 654
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 655
    iget-object v1, p0, Lizj;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 656
    const/4 v1, 0x1

    iget-object v2, p0, Lizj;->a:Ljava/lang/String;

    .line 657
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 659
    :cond_0
    iget-object v1, p0, Lizj;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 660
    const/4 v1, 0x2

    iget-object v2, p0, Lizj;->b:Ljava/lang/String;

    .line 661
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 663
    :cond_1
    return v0
.end method
