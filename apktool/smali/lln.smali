.class public final Llln;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llln;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Llof;

.field public b:Llog;

.field public c:Lloc;

.field public d:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4675
    invoke-direct {p0}, Llyb;-><init>()V

    .line 5680
    iput-object v0, p0, Llln;->a:Llof;

    .line 5681
    iput-object v0, p0, Llln;->b:Llog;

    .line 5682
    iput-object v0, p0, Llln;->c:Lloc;

    .line 5683
    iput-object v0, p0, Llln;->d:Ljava/lang/Boolean;

    .line 5684
    iput-object v0, p0, Llln;->eD:Llyd;

    .line 5685
    const/4 v0, -0x1

    iput v0, p0, Llln;->eE:I

    .line 4677
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 6734
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 6735
    sparse-switch v0, :sswitch_data_0

    .line 6739
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6740
    :sswitch_0
    return-object p0

    .line 6745
    :sswitch_1
    iget-object v0, p0, Llln;->a:Llof;

    if-nez v0, :cond_1

    .line 6746
    new-instance v0, Llof;

    invoke-direct {v0}, Llof;-><init>()V

    iput-object v0, p0, Llln;->a:Llof;

    .line 6748
    :cond_1
    iget-object v0, p0, Llln;->a:Llof;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 6752
    :sswitch_2
    iget-object v0, p0, Llln;->b:Llog;

    if-nez v0, :cond_2

    .line 6753
    new-instance v0, Llog;

    invoke-direct {v0}, Llog;-><init>()V

    iput-object v0, p0, Llln;->b:Llog;

    .line 6755
    :cond_2
    iget-object v0, p0, Llln;->b:Llog;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 6759
    :sswitch_3
    iget-object v0, p0, Llln;->c:Lloc;

    if-nez v0, :cond_3

    .line 6760
    new-instance v0, Lloc;

    invoke-direct {v0}, Lloc;-><init>()V

    iput-object v0, p0, Llln;->c:Lloc;

    .line 6762
    :cond_3
    iget-object v0, p0, Llln;->c:Lloc;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 6766
    :sswitch_4
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Llln;->d:Ljava/lang/Boolean;

    goto :goto_0

    .line 6735
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 4692
    iget-object v0, p0, Llln;->a:Llof;

    if-eqz v0, :cond_0

    .line 4693
    const/4 v0, 0x1

    iget-object v1, p0, Llln;->a:Llof;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 4695
    :cond_0
    iget-object v0, p0, Llln;->b:Llog;

    if-eqz v0, :cond_1

    .line 4696
    const/4 v0, 0x2

    iget-object v1, p0, Llln;->b:Llog;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 4698
    :cond_1
    iget-object v0, p0, Llln;->c:Lloc;

    if-eqz v0, :cond_2

    .line 4699
    const/4 v0, 0x3

    iget-object v1, p0, Llln;->c:Lloc;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 4701
    :cond_2
    iget-object v0, p0, Llln;->d:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 4702
    const/4 v0, 0x4

    iget-object v1, p0, Llln;->d:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 4704
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 4705
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 4709
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 4710
    iget-object v1, p0, Llln;->a:Llof;

    if-eqz v1, :cond_0

    .line 4711
    const/4 v1, 0x1

    iget-object v2, p0, Llln;->a:Llof;

    .line 4712
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4714
    :cond_0
    iget-object v1, p0, Llln;->b:Llog;

    if-eqz v1, :cond_1

    .line 4715
    const/4 v1, 0x2

    iget-object v2, p0, Llln;->b:Llog;

    .line 4716
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4718
    :cond_1
    iget-object v1, p0, Llln;->c:Lloc;

    if-eqz v1, :cond_2

    .line 4719
    const/4 v1, 0x3

    iget-object v2, p0, Llln;->c:Lloc;

    .line 4720
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4722
    :cond_2
    iget-object v1, p0, Llln;->d:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    .line 4723
    const/4 v1, 0x4

    iget-object v2, p0, Llln;->d:Ljava/lang/Boolean;

    .line 4724
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 4724
    add-int/2addr v0, v1

    .line 4726
    :cond_3
    return v0
.end method
