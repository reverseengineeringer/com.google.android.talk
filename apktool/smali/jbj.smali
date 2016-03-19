.class public final Ljbj;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljbj;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile c:[Ljbj;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 665
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1670
    iput-object v0, p0, Ljbj;->a:Ljava/lang/String;

    .line 1671
    iput-object v0, p0, Ljbj;->b:Ljava/lang/String;

    .line 1672
    iput-object v0, p0, Ljbj;->eD:Llyd;

    .line 1673
    const/4 v0, -0x1

    iput v0, p0, Ljbj;->eE:I

    .line 667
    return-void
.end method

.method public static d()[Ljbj;
    .locals 2

    .prologue
    .line 646
    sget-object v0, Ljbj;->c:[Ljbj;

    if-nez v0, :cond_1

    .line 647
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 649
    :try_start_0
    sget-object v0, Ljbj;->c:[Ljbj;

    if-nez v0, :cond_0

    .line 650
    const/4 v0, 0x0

    new-array v0, v0, [Ljbj;

    sput-object v0, Ljbj;->c:[Ljbj;

    .line 652
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 654
    :cond_1
    sget-object v0, Ljbj;->c:[Ljbj;

    return-object v0

    .line 652
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
    .line 1700
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1701
    sparse-switch v0, :sswitch_data_0

    .line 1705
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1706
    :sswitch_0
    return-object p0

    .line 1711
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljbj;->a:Ljava/lang/String;

    goto :goto_0

    .line 1715
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljbj;->b:Ljava/lang/String;

    goto :goto_0

    .line 1701
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
    .line 680
    const/4 v0, 0x1

    iget-object v1, p0, Ljbj;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 681
    const/4 v0, 0x2

    iget-object v1, p0, Ljbj;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 682
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 683
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 687
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 688
    const/4 v1, 0x1

    iget-object v2, p0, Ljbj;->a:Ljava/lang/String;

    .line 689
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 690
    const/4 v1, 0x2

    iget-object v2, p0, Ljbj;->b:Ljava/lang/String;

    .line 691
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 692
    return v0
.end method
