.class public final Lkbn;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkbn;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile c:[Lkbn;


# instance fields
.field public a:Lkcr;

.field public b:Ljzj;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4720
    invoke-direct {p0}, Llyb;-><init>()V

    .line 5725
    iput-object v0, p0, Lkbn;->a:Lkcr;

    .line 5726
    iput-object v0, p0, Lkbn;->b:Ljzj;

    .line 5727
    iput-object v0, p0, Lkbn;->eD:Llyd;

    .line 5728
    const/4 v0, -0x1

    iput v0, p0, Lkbn;->eE:I

    .line 4722
    return-void
.end method

.method public static d()[Lkbn;
    .locals 2

    .prologue
    .line 4701
    sget-object v0, Lkbn;->c:[Lkbn;

    if-nez v0, :cond_1

    .line 4702
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 4704
    :try_start_0
    sget-object v0, Lkbn;->c:[Lkbn;

    if-nez v0, :cond_0

    .line 4705
    const/4 v0, 0x0

    new-array v0, v0, [Lkbn;

    sput-object v0, Lkbn;->c:[Lkbn;

    .line 4707
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4709
    :cond_1
    sget-object v0, Lkbn;->c:[Lkbn;

    return-object v0

    .line 4707
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
    .line 5763
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 5764
    sparse-switch v0, :sswitch_data_0

    .line 5768
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5769
    :sswitch_0
    return-object p0

    .line 5774
    :sswitch_1
    iget-object v0, p0, Lkbn;->a:Lkcr;

    if-nez v0, :cond_1

    .line 5775
    new-instance v0, Lkcr;

    invoke-direct {v0}, Lkcr;-><init>()V

    iput-object v0, p0, Lkbn;->a:Lkcr;

    .line 5777
    :cond_1
    iget-object v0, p0, Lkbn;->a:Lkcr;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 5781
    :sswitch_2
    iget-object v0, p0, Lkbn;->b:Ljzj;

    if-nez v0, :cond_2

    .line 5782
    new-instance v0, Ljzj;

    invoke-direct {v0}, Ljzj;-><init>()V

    iput-object v0, p0, Lkbn;->b:Ljzj;

    .line 5784
    :cond_2
    iget-object v0, p0, Lkbn;->b:Ljzj;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 5764
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
    .line 4735
    iget-object v0, p0, Lkbn;->a:Lkcr;

    if-eqz v0, :cond_0

    .line 4736
    const/4 v0, 0x1

    iget-object v1, p0, Lkbn;->a:Lkcr;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 4738
    :cond_0
    iget-object v0, p0, Lkbn;->b:Ljzj;

    if-eqz v0, :cond_1

    .line 4739
    const/4 v0, 0x2

    iget-object v1, p0, Lkbn;->b:Ljzj;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 4741
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 4742
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 4746
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 4747
    iget-object v1, p0, Lkbn;->a:Lkcr;

    if-eqz v1, :cond_0

    .line 4748
    const/4 v1, 0x1

    iget-object v2, p0, Lkbn;->a:Lkcr;

    .line 4749
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4751
    :cond_0
    iget-object v1, p0, Lkbn;->b:Ljzj;

    if-eqz v1, :cond_1

    .line 4752
    const/4 v1, 0x2

    iget-object v2, p0, Lkbn;->b:Ljzj;

    .line 4753
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4755
    :cond_1
    return v0
.end method
