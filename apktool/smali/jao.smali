.class public final Ljao;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljao;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljcu;

.field public b:Ljbf;

.field public c:Ljava/lang/Boolean;

.field public d:Ljava/lang/Boolean;

.field public e:Ljava/lang/Boolean;

.field public f:Ljaq;

.field public g:Ljci;

.field public h:Ljcr;

.field public i:Ljava/lang/String;

.field public j:Ljcg;

.field public k:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9713
    invoke-direct {p0}, Llyb;-><init>()V

    .line 10718
    iput-object v0, p0, Ljao;->a:Ljcu;

    .line 10719
    iput-object v0, p0, Ljao;->b:Ljbf;

    .line 10720
    iput-object v0, p0, Ljao;->c:Ljava/lang/Boolean;

    .line 10721
    iput-object v0, p0, Ljao;->d:Ljava/lang/Boolean;

    .line 10722
    iput-object v0, p0, Ljao;->e:Ljava/lang/Boolean;

    .line 10723
    iput-object v0, p0, Ljao;->f:Ljaq;

    .line 10724
    iput-object v0, p0, Ljao;->g:Ljci;

    .line 10725
    iput-object v0, p0, Ljao;->h:Ljcr;

    .line 10726
    iput-object v0, p0, Ljao;->i:Ljava/lang/String;

    .line 10727
    iput-object v0, p0, Ljao;->j:Ljcg;

    .line 10728
    iput-object v0, p0, Ljao;->k:Ljava/lang/Boolean;

    .line 10729
    iput-object v0, p0, Ljao;->eD:Llyd;

    .line 10730
    const/4 v0, -0x1

    iput v0, p0, Ljao;->eE:I

    .line 9715
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 14828
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 14829
    sparse-switch v0, :sswitch_data_0

    .line 14833
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 14834
    :sswitch_0
    return-object p0

    .line 14839
    :sswitch_1
    iget-object v0, p0, Ljao;->a:Ljcu;

    if-nez v0, :cond_1

    .line 14840
    new-instance v0, Ljcu;

    invoke-direct {v0}, Ljcu;-><init>()V

    iput-object v0, p0, Ljao;->a:Ljcu;

    .line 14842
    :cond_1
    iget-object v0, p0, Ljao;->a:Ljcu;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 14846
    :sswitch_2
    iget-object v0, p0, Ljao;->b:Ljbf;

    if-nez v0, :cond_2

    .line 14847
    new-instance v0, Ljbf;

    invoke-direct {v0}, Ljbf;-><init>()V

    iput-object v0, p0, Ljao;->b:Ljbf;

    .line 14849
    :cond_2
    iget-object v0, p0, Ljao;->b:Ljbf;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 14853
    :sswitch_3
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljao;->c:Ljava/lang/Boolean;

    goto :goto_0

    .line 14857
    :sswitch_4
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljao;->d:Ljava/lang/Boolean;

    goto :goto_0

    .line 14861
    :sswitch_5
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljao;->e:Ljava/lang/Boolean;

    goto :goto_0

    .line 14865
    :sswitch_6
    iget-object v0, p0, Ljao;->f:Ljaq;

    if-nez v0, :cond_3

    .line 14866
    new-instance v0, Ljaq;

    invoke-direct {v0}, Ljaq;-><init>()V

    iput-object v0, p0, Ljao;->f:Ljaq;

    .line 14868
    :cond_3
    iget-object v0, p0, Ljao;->f:Ljaq;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 14872
    :sswitch_7
    iget-object v0, p0, Ljao;->g:Ljci;

    if-nez v0, :cond_4

    .line 14873
    new-instance v0, Ljci;

    invoke-direct {v0}, Ljci;-><init>()V

    iput-object v0, p0, Ljao;->g:Ljci;

    .line 14875
    :cond_4
    iget-object v0, p0, Ljao;->g:Ljci;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 14879
    :sswitch_8
    iget-object v0, p0, Ljao;->h:Ljcr;

    if-nez v0, :cond_5

    .line 14880
    new-instance v0, Ljcr;

    invoke-direct {v0}, Ljcr;-><init>()V

    iput-object v0, p0, Ljao;->h:Ljcr;

    .line 14882
    :cond_5
    iget-object v0, p0, Ljao;->h:Ljcr;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 14886
    :sswitch_9
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljao;->i:Ljava/lang/String;

    goto/16 :goto_0

    .line 14890
    :sswitch_a
    iget-object v0, p0, Ljao;->j:Ljcg;

    if-nez v0, :cond_6

    .line 14891
    new-instance v0, Ljcg;

    invoke-direct {v0}, Ljcg;-><init>()V

    iput-object v0, p0, Ljao;->j:Ljcg;

    .line 14893
    :cond_6
    iget-object v0, p0, Ljao;->j:Ljcg;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 14897
    :sswitch_b
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljao;->k:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 14829
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x58 -> :sswitch_b
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 9737
    iget-object v0, p0, Ljao;->a:Ljcu;

    if-eqz v0, :cond_0

    .line 9738
    const/4 v0, 0x1

    iget-object v1, p0, Ljao;->a:Ljcu;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 9740
    :cond_0
    iget-object v0, p0, Ljao;->b:Ljbf;

    if-eqz v0, :cond_1

    .line 9741
    const/4 v0, 0x2

    iget-object v1, p0, Ljao;->b:Ljbf;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 9743
    :cond_1
    iget-object v0, p0, Ljao;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 9744
    const/4 v0, 0x3

    iget-object v1, p0, Ljao;->c:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 9746
    :cond_2
    iget-object v0, p0, Ljao;->d:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 9747
    const/4 v0, 0x4

    iget-object v1, p0, Ljao;->d:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 9749
    :cond_3
    iget-object v0, p0, Ljao;->e:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    .line 9750
    const/4 v0, 0x5

    iget-object v1, p0, Ljao;->e:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 9752
    :cond_4
    iget-object v0, p0, Ljao;->f:Ljaq;

    if-eqz v0, :cond_5

    .line 9753
    const/4 v0, 0x6

    iget-object v1, p0, Ljao;->f:Ljaq;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 9755
    :cond_5
    iget-object v0, p0, Ljao;->g:Ljci;

    if-eqz v0, :cond_6

    .line 9756
    const/4 v0, 0x7

    iget-object v1, p0, Ljao;->g:Ljci;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 9758
    :cond_6
    iget-object v0, p0, Ljao;->h:Ljcr;

    if-eqz v0, :cond_7

    .line 9759
    const/16 v0, 0x8

    iget-object v1, p0, Ljao;->h:Ljcr;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 9761
    :cond_7
    iget-object v0, p0, Ljao;->i:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 9762
    const/16 v0, 0x9

    iget-object v1, p0, Ljao;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 9764
    :cond_8
    iget-object v0, p0, Ljao;->j:Ljcg;

    if-eqz v0, :cond_9

    .line 9765
    const/16 v0, 0xa

    iget-object v1, p0, Ljao;->j:Ljcg;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 9767
    :cond_9
    iget-object v0, p0, Ljao;->k:Ljava/lang/Boolean;

    if-eqz v0, :cond_a

    .line 9768
    const/16 v0, 0xb

    iget-object v1, p0, Ljao;->k:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 9770
    :cond_a
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 9771
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 9775
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 9776
    iget-object v1, p0, Ljao;->a:Ljcu;

    if-eqz v1, :cond_0

    .line 9777
    const/4 v1, 0x1

    iget-object v2, p0, Ljao;->a:Ljcu;

    .line 9778
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9780
    :cond_0
    iget-object v1, p0, Ljao;->b:Ljbf;

    if-eqz v1, :cond_1

    .line 9781
    const/4 v1, 0x2

    iget-object v2, p0, Ljao;->b:Ljbf;

    .line 9782
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9784
    :cond_1
    iget-object v1, p0, Ljao;->c:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 9785
    const/4 v1, 0x3

    iget-object v2, p0, Ljao;->c:Ljava/lang/Boolean;

    .line 9786
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 11620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 9786
    add-int/2addr v0, v1

    .line 9788
    :cond_2
    iget-object v1, p0, Ljao;->d:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    .line 9789
    const/4 v1, 0x4

    iget-object v2, p0, Ljao;->d:Ljava/lang/Boolean;

    .line 9790
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 9790
    add-int/2addr v0, v1

    .line 9792
    :cond_3
    iget-object v1, p0, Ljao;->e:Ljava/lang/Boolean;

    if-eqz v1, :cond_4

    .line 9793
    const/4 v1, 0x5

    iget-object v2, p0, Ljao;->e:Ljava/lang/Boolean;

    .line 9794
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 13620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 9794
    add-int/2addr v0, v1

    .line 9796
    :cond_4
    iget-object v1, p0, Ljao;->f:Ljaq;

    if-eqz v1, :cond_5

    .line 9797
    const/4 v1, 0x6

    iget-object v2, p0, Ljao;->f:Ljaq;

    .line 9798
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9800
    :cond_5
    iget-object v1, p0, Ljao;->g:Ljci;

    if-eqz v1, :cond_6

    .line 9801
    const/4 v1, 0x7

    iget-object v2, p0, Ljao;->g:Ljci;

    .line 9802
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9804
    :cond_6
    iget-object v1, p0, Ljao;->h:Ljcr;

    if-eqz v1, :cond_7

    .line 9805
    const/16 v1, 0x8

    iget-object v2, p0, Ljao;->h:Ljcr;

    .line 9806
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9808
    :cond_7
    iget-object v1, p0, Ljao;->i:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 9809
    const/16 v1, 0x9

    iget-object v2, p0, Ljao;->i:Ljava/lang/String;

    .line 9810
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9812
    :cond_8
    iget-object v1, p0, Ljao;->j:Ljcg;

    if-eqz v1, :cond_9

    .line 9813
    const/16 v1, 0xa

    iget-object v2, p0, Ljao;->j:Ljcg;

    .line 9814
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9816
    :cond_9
    iget-object v1, p0, Ljao;->k:Ljava/lang/Boolean;

    if-eqz v1, :cond_a

    .line 9817
    const/16 v1, 0xb

    iget-object v2, p0, Ljao;->k:Ljava/lang/Boolean;

    .line 9818
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 9818
    add-int/2addr v0, v1

    .line 9820
    :cond_a
    return v0
.end method
