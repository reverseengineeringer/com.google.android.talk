.class public final Ljbc;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljbc;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljbn;

.field public b:Ljava/lang/Integer;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4804
    invoke-direct {p0}, Llyb;-><init>()V

    .line 5809
    iput-object v0, p0, Ljbc;->a:Ljbn;

    .line 5810
    iput-object v0, p0, Ljbc;->b:Ljava/lang/Integer;

    .line 5811
    iput-object v0, p0, Ljbc;->c:Ljava/lang/String;

    .line 5812
    iput-object v0, p0, Ljbc;->eD:Llyd;

    .line 5813
    const/4 v0, -0x1

    iput v0, p0, Ljbc;->eE:I

    .line 4806
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 5855
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 5856
    sparse-switch v0, :sswitch_data_0

    .line 5860
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5861
    :sswitch_0
    return-object p0

    .line 5866
    :sswitch_1
    iget-object v0, p0, Ljbc;->a:Ljbn;

    if-nez v0, :cond_1

    .line 5867
    new-instance v0, Ljbn;

    invoke-direct {v0}, Ljbn;-><init>()V

    iput-object v0, p0, Ljbc;->a:Ljbn;

    .line 5869
    :cond_1
    iget-object v0, p0, Ljbc;->a:Ljbn;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 5873
    :sswitch_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 5874
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 5879
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljbc;->b:Ljava/lang/Integer;

    goto :goto_0

    .line 5885
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljbc;->c:Ljava/lang/String;

    goto :goto_0

    .line 5856
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch

    .line 5874
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 4820
    iget-object v0, p0, Ljbc;->a:Ljbn;

    if-eqz v0, :cond_0

    .line 4821
    const/4 v0, 0x1

    iget-object v1, p0, Ljbc;->a:Ljbn;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 4823
    :cond_0
    iget-object v0, p0, Ljbc;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 4824
    const/4 v0, 0x2

    iget-object v1, p0, Ljbc;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 4826
    :cond_1
    iget-object v0, p0, Ljbc;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 4827
    const/4 v0, 0x3

    iget-object v1, p0, Ljbc;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 4829
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 4830
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 4834
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 4835
    iget-object v1, p0, Ljbc;->a:Ljbn;

    if-eqz v1, :cond_0

    .line 4836
    const/4 v1, 0x1

    iget-object v2, p0, Ljbc;->a:Ljbn;

    .line 4837
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4839
    :cond_0
    iget-object v1, p0, Ljbc;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 4840
    const/4 v1, 0x2

    iget-object v2, p0, Ljbc;->b:Ljava/lang/Integer;

    .line 4841
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4843
    :cond_1
    iget-object v1, p0, Ljbc;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 4844
    const/4 v1, 0x3

    iget-object v2, p0, Ljbc;->c:Ljava/lang/String;

    .line 4845
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4847
    :cond_2
    return v0
.end method
