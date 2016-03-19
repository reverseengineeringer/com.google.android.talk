.class public final Ljbt;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljbt;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/Boolean;

.field public c:Ljam;

.field public d:Ljava/lang/Integer;

.field public e:Ljbk;

.field public f:Ljgq;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 7804
    invoke-direct {p0}, Llyb;-><init>()V

    .line 8809
    iput-object v0, p0, Ljbt;->a:Ljava/lang/Integer;

    .line 8810
    iput-object v0, p0, Ljbt;->b:Ljava/lang/Boolean;

    .line 8811
    iput-object v0, p0, Ljbt;->c:Ljam;

    .line 8812
    iput-object v0, p0, Ljbt;->d:Ljava/lang/Integer;

    .line 8813
    iput-object v0, p0, Ljbt;->e:Ljbk;

    .line 8814
    iput-object v0, p0, Ljbt;->f:Ljgq;

    .line 8815
    iput-object v0, p0, Ljbt;->eD:Llyd;

    .line 8816
    const/4 v0, -0x1

    iput v0, p0, Ljbt;->eE:I

    .line 7806
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 9879
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 9880
    sparse-switch v0, :sswitch_data_0

    .line 9884
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9885
    :sswitch_0
    return-object p0

    .line 9890
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 9891
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 9900
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljbt;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 9906
    :sswitch_2
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljbt;->b:Ljava/lang/Boolean;

    goto :goto_0

    .line 9910
    :sswitch_3
    iget-object v0, p0, Ljbt;->c:Ljam;

    if-nez v0, :cond_1

    .line 9911
    new-instance v0, Ljam;

    invoke-direct {v0}, Ljam;-><init>()V

    iput-object v0, p0, Ljbt;->c:Ljam;

    .line 9913
    :cond_1
    iget-object v0, p0, Ljbt;->c:Ljam;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 9917
    :sswitch_4
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 9918
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 9921
    :pswitch_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljbt;->d:Ljava/lang/Integer;

    goto :goto_0

    .line 9927
    :sswitch_5
    iget-object v0, p0, Ljbt;->e:Ljbk;

    if-nez v0, :cond_2

    .line 9928
    new-instance v0, Ljbk;

    invoke-direct {v0}, Ljbk;-><init>()V

    iput-object v0, p0, Ljbt;->e:Ljbk;

    .line 9930
    :cond_2
    iget-object v0, p0, Ljbt;->e:Ljbk;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 9934
    :sswitch_6
    iget-object v0, p0, Ljbt;->f:Ljgq;

    if-nez v0, :cond_3

    .line 9935
    new-instance v0, Ljgq;

    invoke-direct {v0}, Ljgq;-><init>()V

    iput-object v0, p0, Ljbt;->f:Ljgq;

    .line 9937
    :cond_3
    iget-object v0, p0, Ljbt;->f:Ljgq;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 9880
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
    .end sparse-switch

    .line 9891
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 9918
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 7823
    iget-object v0, p0, Ljbt;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 7824
    const/4 v0, 0x1

    iget-object v1, p0, Ljbt;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 7826
    :cond_0
    iget-object v0, p0, Ljbt;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 7827
    const/4 v0, 0x2

    iget-object v1, p0, Ljbt;->b:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 7829
    :cond_1
    iget-object v0, p0, Ljbt;->c:Ljam;

    if-eqz v0, :cond_2

    .line 7830
    const/4 v0, 0x3

    iget-object v1, p0, Ljbt;->c:Ljam;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 7832
    :cond_2
    iget-object v0, p0, Ljbt;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 7833
    const/4 v0, 0x4

    iget-object v1, p0, Ljbt;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 7835
    :cond_3
    iget-object v0, p0, Ljbt;->e:Ljbk;

    if-eqz v0, :cond_4

    .line 7836
    const/4 v0, 0x5

    iget-object v1, p0, Ljbt;->e:Ljbk;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 7838
    :cond_4
    iget-object v0, p0, Ljbt;->f:Ljgq;

    if-eqz v0, :cond_5

    .line 7839
    const/4 v0, 0x6

    iget-object v1, p0, Ljbt;->f:Ljgq;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 7841
    :cond_5
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 7842
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 7846
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 7847
    iget-object v1, p0, Ljbt;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 7848
    const/4 v1, 0x1

    iget-object v2, p0, Ljbt;->a:Ljava/lang/Integer;

    .line 7849
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7851
    :cond_0
    iget-object v1, p0, Ljbt;->b:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 7852
    const/4 v1, 0x2

    iget-object v2, p0, Ljbt;->b:Ljava/lang/Boolean;

    .line 7853
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 9620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 7853
    add-int/2addr v0, v1

    .line 7855
    :cond_1
    iget-object v1, p0, Ljbt;->c:Ljam;

    if-eqz v1, :cond_2

    .line 7856
    const/4 v1, 0x3

    iget-object v2, p0, Ljbt;->c:Ljam;

    .line 7857
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7859
    :cond_2
    iget-object v1, p0, Ljbt;->d:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 7860
    const/4 v1, 0x4

    iget-object v2, p0, Ljbt;->d:Ljava/lang/Integer;

    .line 7861
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7863
    :cond_3
    iget-object v1, p0, Ljbt;->e:Ljbk;

    if-eqz v1, :cond_4

    .line 7864
    const/4 v1, 0x5

    iget-object v2, p0, Ljbt;->e:Ljbk;

    .line 7865
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7867
    :cond_4
    iget-object v1, p0, Ljbt;->f:Ljgq;

    if-eqz v1, :cond_5

    .line 7868
    const/4 v1, 0x6

    iget-object v2, p0, Ljbt;->f:Ljgq;

    .line 7869
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7871
    :cond_5
    return v0
.end method
