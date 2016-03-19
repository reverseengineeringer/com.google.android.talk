.class public final Ljcc;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljcc;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljcd;

.field public c:Ljava/lang/Integer;

.field public d:Ljcb;

.field public e:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6831
    invoke-direct {p0}, Llyb;-><init>()V

    .line 7836
    iput-object v0, p0, Ljcc;->a:Ljava/lang/String;

    .line 7837
    iput-object v0, p0, Ljcc;->b:Ljcd;

    .line 7838
    iput-object v0, p0, Ljcc;->c:Ljava/lang/Integer;

    .line 7839
    iput-object v0, p0, Ljcc;->d:Ljcb;

    .line 7840
    iput-object v0, p0, Ljcc;->e:Ljava/lang/Integer;

    .line 7841
    iput-object v0, p0, Ljcc;->eD:Llyd;

    .line 7842
    const/4 v0, -0x1

    iput v0, p0, Ljcc;->eE:I

    .line 6833
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 7898
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 7899
    sparse-switch v0, :sswitch_data_0

    .line 7903
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7904
    :sswitch_0
    return-object p0

    .line 7909
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljcc;->a:Ljava/lang/String;

    goto :goto_0

    .line 7913
    :sswitch_2
    iget-object v0, p0, Ljcc;->b:Ljcd;

    if-nez v0, :cond_1

    .line 7914
    new-instance v0, Ljcd;

    invoke-direct {v0}, Ljcd;-><init>()V

    iput-object v0, p0, Ljcc;->b:Ljcd;

    .line 7916
    :cond_1
    iget-object v0, p0, Ljcc;->b:Ljcd;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 7920
    :sswitch_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 7921
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 7924
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljcc;->c:Ljava/lang/Integer;

    goto :goto_0

    .line 7930
    :sswitch_4
    iget-object v0, p0, Ljcc;->d:Ljcb;

    if-nez v0, :cond_2

    .line 7931
    new-instance v0, Ljcb;

    invoke-direct {v0}, Ljcb;-><init>()V

    iput-object v0, p0, Ljcc;->d:Ljcb;

    .line 7933
    :cond_2
    iget-object v0, p0, Ljcc;->d:Ljcb;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 7937
    :sswitch_5
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljcc;->e:Ljava/lang/Integer;

    goto :goto_0

    .line 7899
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
    .end sparse-switch

    .line 7921
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 6849
    iget-object v0, p0, Ljcc;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 6850
    const/4 v0, 0x1

    iget-object v1, p0, Ljcc;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 6852
    :cond_0
    iget-object v0, p0, Ljcc;->b:Ljcd;

    if-eqz v0, :cond_1

    .line 6853
    const/4 v0, 0x2

    iget-object v1, p0, Ljcc;->b:Ljcd;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 6855
    :cond_1
    iget-object v0, p0, Ljcc;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 6856
    const/4 v0, 0x3

    iget-object v1, p0, Ljcc;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 6858
    :cond_2
    iget-object v0, p0, Ljcc;->d:Ljcb;

    if-eqz v0, :cond_3

    .line 6859
    const/4 v0, 0x4

    iget-object v1, p0, Ljcc;->d:Ljcb;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 6861
    :cond_3
    iget-object v0, p0, Ljcc;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 6862
    const/4 v0, 0x5

    iget-object v1, p0, Ljcc;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 6864
    :cond_4
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 6865
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 6869
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 6870
    iget-object v1, p0, Ljcc;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 6871
    const/4 v1, 0x1

    iget-object v2, p0, Ljcc;->a:Ljava/lang/String;

    .line 6872
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6874
    :cond_0
    iget-object v1, p0, Ljcc;->b:Ljcd;

    if-eqz v1, :cond_1

    .line 6875
    const/4 v1, 0x2

    iget-object v2, p0, Ljcc;->b:Ljcd;

    .line 6876
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6878
    :cond_1
    iget-object v1, p0, Ljcc;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 6879
    const/4 v1, 0x3

    iget-object v2, p0, Ljcc;->c:Ljava/lang/Integer;

    .line 6880
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6882
    :cond_2
    iget-object v1, p0, Ljcc;->d:Ljcb;

    if-eqz v1, :cond_3

    .line 6883
    const/4 v1, 0x4

    iget-object v2, p0, Ljcc;->d:Ljcb;

    .line 6884
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6886
    :cond_3
    iget-object v1, p0, Ljcc;->e:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    .line 6887
    const/4 v1, 0x5

    iget-object v2, p0, Ljcc;->e:Ljava/lang/Integer;

    .line 6888
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6890
    :cond_4
    return v0
.end method
