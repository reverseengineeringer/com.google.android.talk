.class public final Lkht;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkht;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lkii;

.field public c:Lkic;

.field public requestHeader:Lkdo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3711
    invoke-direct {p0}, Llyb;-><init>()V

    .line 4716
    iput-object v0, p0, Lkht;->requestHeader:Lkdo;

    .line 4717
    iput-object v0, p0, Lkht;->a:Ljava/lang/String;

    .line 4718
    iput-object v0, p0, Lkht;->b:Lkii;

    .line 4719
    iput-object v0, p0, Lkht;->c:Lkic;

    .line 4720
    iput-object v0, p0, Lkht;->eD:Llyd;

    .line 4721
    const/4 v0, -0x1

    iput v0, p0, Lkht;->eE:I

    .line 3713
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 4770
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 4771
    sparse-switch v0, :sswitch_data_0

    .line 4775
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4776
    :sswitch_0
    return-object p0

    .line 4781
    :sswitch_1
    iget-object v0, p0, Lkht;->requestHeader:Lkdo;

    if-nez v0, :cond_1

    .line 4782
    new-instance v0, Lkdo;

    invoke-direct {v0}, Lkdo;-><init>()V

    iput-object v0, p0, Lkht;->requestHeader:Lkdo;

    .line 4784
    :cond_1
    iget-object v0, p0, Lkht;->requestHeader:Lkdo;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 4788
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkht;->a:Ljava/lang/String;

    goto :goto_0

    .line 4792
    :sswitch_3
    iget-object v0, p0, Lkht;->b:Lkii;

    if-nez v0, :cond_2

    .line 4793
    new-instance v0, Lkii;

    invoke-direct {v0}, Lkii;-><init>()V

    iput-object v0, p0, Lkht;->b:Lkii;

    .line 4795
    :cond_2
    iget-object v0, p0, Lkht;->b:Lkii;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 4799
    :sswitch_4
    iget-object v0, p0, Lkht;->c:Lkic;

    if-nez v0, :cond_3

    .line 4800
    new-instance v0, Lkic;

    invoke-direct {v0}, Lkic;-><init>()V

    iput-object v0, p0, Lkht;->c:Lkic;

    .line 4802
    :cond_3
    iget-object v0, p0, Lkht;->c:Lkic;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 4771
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
    .line 3728
    iget-object v0, p0, Lkht;->requestHeader:Lkdo;

    if-eqz v0, :cond_0

    .line 3729
    const/4 v0, 0x1

    iget-object v1, p0, Lkht;->requestHeader:Lkdo;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 3731
    :cond_0
    iget-object v0, p0, Lkht;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 3732
    const/4 v0, 0x2

    iget-object v1, p0, Lkht;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 3734
    :cond_1
    iget-object v0, p0, Lkht;->b:Lkii;

    if-eqz v0, :cond_2

    .line 3735
    const/4 v0, 0x3

    iget-object v1, p0, Lkht;->b:Lkii;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 3737
    :cond_2
    iget-object v0, p0, Lkht;->c:Lkic;

    if-eqz v0, :cond_3

    .line 3738
    const/4 v0, 0x4

    iget-object v1, p0, Lkht;->c:Lkic;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 3740
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 3741
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 3745
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 3746
    iget-object v1, p0, Lkht;->requestHeader:Lkdo;

    if-eqz v1, :cond_0

    .line 3747
    const/4 v1, 0x1

    iget-object v2, p0, Lkht;->requestHeader:Lkdo;

    .line 3748
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3750
    :cond_0
    iget-object v1, p0, Lkht;->a:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 3751
    const/4 v1, 0x2

    iget-object v2, p0, Lkht;->a:Ljava/lang/String;

    .line 3752
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3754
    :cond_1
    iget-object v1, p0, Lkht;->b:Lkii;

    if-eqz v1, :cond_2

    .line 3755
    const/4 v1, 0x3

    iget-object v2, p0, Lkht;->b:Lkii;

    .line 3756
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3758
    :cond_2
    iget-object v1, p0, Lkht;->c:Lkic;

    if-eqz v1, :cond_3

    .line 3759
    const/4 v1, 0x4

    iget-object v2, p0, Lkht;->c:Lkic;

    .line 3760
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3762
    :cond_3
    return v0
.end method
