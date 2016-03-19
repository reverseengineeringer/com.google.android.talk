.class public final Lkbz;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkbz;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/Boolean;

.field public d:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6703
    invoke-direct {p0}, Llyb;-><init>()V

    .line 7708
    iput-object v0, p0, Lkbz;->a:Ljava/lang/String;

    .line 7709
    iput-object v0, p0, Lkbz;->b:Ljava/lang/String;

    .line 7710
    iput-object v0, p0, Lkbz;->c:Ljava/lang/Boolean;

    .line 7711
    iput-object v0, p0, Lkbz;->d:Ljava/lang/Boolean;

    .line 7712
    iput-object v0, p0, Lkbz;->eD:Llyd;

    .line 7713
    const/4 v0, -0x1

    iput v0, p0, Lkbz;->eE:I

    .line 6705
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 9762
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 9763
    sparse-switch v0, :sswitch_data_0

    .line 9767
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9768
    :sswitch_0
    return-object p0

    .line 9773
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkbz;->a:Ljava/lang/String;

    goto :goto_0

    .line 9777
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkbz;->b:Ljava/lang/String;

    goto :goto_0

    .line 9781
    :sswitch_3
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lkbz;->c:Ljava/lang/Boolean;

    goto :goto_0

    .line 9785
    :sswitch_4
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lkbz;->d:Ljava/lang/Boolean;

    goto :goto_0

    .line 9763
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 6720
    iget-object v0, p0, Lkbz;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 6721
    const/4 v0, 0x1

    iget-object v1, p0, Lkbz;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 6723
    :cond_0
    iget-object v0, p0, Lkbz;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 6724
    const/4 v0, 0x2

    iget-object v1, p0, Lkbz;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 6726
    :cond_1
    iget-object v0, p0, Lkbz;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 6727
    const/4 v0, 0x3

    iget-object v1, p0, Lkbz;->c:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 6729
    :cond_2
    iget-object v0, p0, Lkbz;->d:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 6730
    const/4 v0, 0x4

    iget-object v1, p0, Lkbz;->d:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 6732
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 6733
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 6737
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 6738
    iget-object v1, p0, Lkbz;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 6739
    const/4 v1, 0x1

    iget-object v2, p0, Lkbz;->a:Ljava/lang/String;

    .line 6740
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6742
    :cond_0
    iget-object v1, p0, Lkbz;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 6743
    const/4 v1, 0x2

    iget-object v2, p0, Lkbz;->b:Ljava/lang/String;

    .line 6744
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6746
    :cond_1
    iget-object v1, p0, Lkbz;->c:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 6747
    const/4 v1, 0x3

    iget-object v2, p0, Lkbz;->c:Ljava/lang/Boolean;

    .line 6748
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 6748
    add-int/2addr v0, v1

    .line 6750
    :cond_2
    iget-object v1, p0, Lkbz;->d:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    .line 6751
    const/4 v1, 0x4

    iget-object v2, p0, Lkbz;->d:Ljava/lang/Boolean;

    .line 6752
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 9620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 6752
    add-int/2addr v0, v1

    .line 6754
    :cond_3
    return v0
.end method
