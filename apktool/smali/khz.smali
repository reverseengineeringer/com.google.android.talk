.class public final Lkhz;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkhz;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lkhe;

.field public b:[Lkbi;

.field public c:Lkib;

.field public d:Ljava/lang/Boolean;

.field public e:Ljava/lang/Integer;

.field public f:Ljava/lang/String;

.field public g:Lkii;

.field public requestHeader:Lkdo;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2711
    invoke-direct {p0}, Llyb;-><init>()V

    .line 3716
    iput-object v1, p0, Lkhz;->requestHeader:Lkdo;

    .line 3717
    iput-object v1, p0, Lkhz;->a:Lkhe;

    .line 3718
    invoke-static {}, Lkbi;->d()[Lkbi;

    move-result-object v0

    iput-object v0, p0, Lkhz;->b:[Lkbi;

    .line 3719
    iput-object v1, p0, Lkhz;->c:Lkib;

    .line 3720
    iput-object v1, p0, Lkhz;->d:Ljava/lang/Boolean;

    .line 3721
    iput-object v1, p0, Lkhz;->e:Ljava/lang/Integer;

    .line 3722
    iput-object v1, p0, Lkhz;->f:Ljava/lang/String;

    .line 3723
    iput-object v1, p0, Lkhz;->g:Lkii;

    .line 3724
    iput-object v1, p0, Lkhz;->eD:Llyd;

    .line 3725
    const/4 v0, -0x1

    iput v0, p0, Lkhz;->eE:I

    .line 2713
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 4812
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 4813
    sparse-switch v0, :sswitch_data_0

    .line 4817
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4818
    :sswitch_0
    return-object p0

    .line 4823
    :sswitch_1
    iget-object v0, p0, Lkhz;->requestHeader:Lkdo;

    if-nez v0, :cond_1

    .line 4824
    new-instance v0, Lkdo;

    invoke-direct {v0}, Lkdo;-><init>()V

    iput-object v0, p0, Lkhz;->requestHeader:Lkdo;

    .line 4826
    :cond_1
    iget-object v0, p0, Lkhz;->requestHeader:Lkdo;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 4830
    :sswitch_2
    iget-object v0, p0, Lkhz;->a:Lkhe;

    if-nez v0, :cond_2

    .line 4831
    new-instance v0, Lkhe;

    invoke-direct {v0}, Lkhe;-><init>()V

    iput-object v0, p0, Lkhz;->a:Lkhe;

    .line 4833
    :cond_2
    iget-object v0, p0, Lkhz;->a:Lkhe;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 4837
    :sswitch_3
    const/16 v0, 0x1a

    .line 4838
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 4839
    iget-object v0, p0, Lkhz;->b:[Lkbi;

    if-nez v0, :cond_4

    move v0, v1

    .line 4840
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lkbi;

    .line 4842
    if-eqz v0, :cond_3

    .line 4843
    iget-object v3, p0, Lkhz;->b:[Lkbi;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4845
    :cond_3
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_5

    .line 4846
    new-instance v3, Lkbi;

    invoke-direct {v3}, Lkbi;-><init>()V

    aput-object v3, v2, v0

    .line 4847
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 4848
    invoke-virtual {p1}, Llxy;->a()I

    .line 4845
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 4839
    :cond_4
    iget-object v0, p0, Lkhz;->b:[Lkbi;

    array-length v0, v0

    goto :goto_1

    .line 4851
    :cond_5
    new-instance v3, Lkbi;

    invoke-direct {v3}, Lkbi;-><init>()V

    aput-object v3, v2, v0

    .line 4852
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 4853
    iput-object v2, p0, Lkhz;->b:[Lkbi;

    goto :goto_0

    .line 4857
    :sswitch_4
    iget-object v0, p0, Lkhz;->c:Lkib;

    if-nez v0, :cond_6

    .line 4858
    new-instance v0, Lkib;

    invoke-direct {v0}, Lkib;-><init>()V

    iput-object v0, p0, Lkhz;->c:Lkib;

    .line 4860
    :cond_6
    iget-object v0, p0, Lkhz;->c:Lkib;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 4864
    :sswitch_5
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lkhz;->d:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 4868
    :sswitch_6
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 4869
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 4873
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lkhz;->e:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 4879
    :sswitch_7
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkhz;->f:Ljava/lang/String;

    goto/16 :goto_0

    .line 4883
    :sswitch_8
    iget-object v0, p0, Lkhz;->g:Lkii;

    if-nez v0, :cond_7

    .line 4884
    new-instance v0, Lkii;

    invoke-direct {v0}, Lkii;-><init>()V

    iput-object v0, p0, Lkhz;->g:Lkii;

    .line 4886
    :cond_7
    iget-object v0, p0, Lkhz;->g:Lkii;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 4813
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
    .end sparse-switch

    .line 4869
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 2732
    iget-object v0, p0, Lkhz;->requestHeader:Lkdo;

    if-eqz v0, :cond_0

    .line 2733
    const/4 v0, 0x1

    iget-object v1, p0, Lkhz;->requestHeader:Lkdo;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 2735
    :cond_0
    iget-object v0, p0, Lkhz;->a:Lkhe;

    if-eqz v0, :cond_1

    .line 2736
    const/4 v0, 0x2

    iget-object v1, p0, Lkhz;->a:Lkhe;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 2738
    :cond_1
    iget-object v0, p0, Lkhz;->b:[Lkbi;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lkhz;->b:[Lkbi;

    array-length v0, v0

    if-lez v0, :cond_3

    .line 2739
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lkhz;->b:[Lkbi;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 2740
    iget-object v1, p0, Lkhz;->b:[Lkbi;

    aget-object v1, v1, v0

    .line 2741
    if-eqz v1, :cond_2

    .line 2742
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 2739
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2746
    :cond_3
    iget-object v0, p0, Lkhz;->c:Lkib;

    if-eqz v0, :cond_4

    .line 2747
    const/4 v0, 0x4

    iget-object v1, p0, Lkhz;->c:Lkib;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 2749
    :cond_4
    iget-object v0, p0, Lkhz;->d:Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    .line 2750
    const/4 v0, 0x5

    iget-object v1, p0, Lkhz;->d:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 2752
    :cond_5
    iget-object v0, p0, Lkhz;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    .line 2753
    const/4 v0, 0x6

    iget-object v1, p0, Lkhz;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 2755
    :cond_6
    iget-object v0, p0, Lkhz;->f:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 2756
    const/4 v0, 0x7

    iget-object v1, p0, Lkhz;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 2758
    :cond_7
    iget-object v0, p0, Lkhz;->g:Lkii;

    if-eqz v0, :cond_8

    .line 2759
    const/16 v0, 0x8

    iget-object v1, p0, Lkhz;->g:Lkii;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 2761
    :cond_8
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 2762
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 2766
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 2767
    iget-object v1, p0, Lkhz;->requestHeader:Lkdo;

    if-eqz v1, :cond_0

    .line 2768
    const/4 v1, 0x1

    iget-object v2, p0, Lkhz;->requestHeader:Lkdo;

    .line 2769
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2771
    :cond_0
    iget-object v1, p0, Lkhz;->a:Lkhe;

    if-eqz v1, :cond_1

    .line 2772
    const/4 v1, 0x2

    iget-object v2, p0, Lkhz;->a:Lkhe;

    .line 2773
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2775
    :cond_1
    iget-object v1, p0, Lkhz;->b:[Lkbi;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lkhz;->b:[Lkbi;

    array-length v1, v1

    if-lez v1, :cond_4

    .line 2776
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lkhz;->b:[Lkbi;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 2777
    iget-object v2, p0, Lkhz;->b:[Lkbi;

    aget-object v2, v2, v0

    .line 2778
    if-eqz v2, :cond_2

    .line 2779
    const/4 v3, 0x3

    .line 2780
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 2776
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 2784
    :cond_4
    iget-object v1, p0, Lkhz;->c:Lkib;

    if-eqz v1, :cond_5

    .line 2785
    const/4 v1, 0x4

    iget-object v2, p0, Lkhz;->c:Lkib;

    .line 2786
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2788
    :cond_5
    iget-object v1, p0, Lkhz;->d:Ljava/lang/Boolean;

    if-eqz v1, :cond_6

    .line 2789
    const/4 v1, 0x5

    iget-object v2, p0, Lkhz;->d:Ljava/lang/Boolean;

    .line 2790
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 2790
    add-int/2addr v0, v1

    .line 2792
    :cond_6
    iget-object v1, p0, Lkhz;->e:Ljava/lang/Integer;

    if-eqz v1, :cond_7

    .line 2793
    const/4 v1, 0x6

    iget-object v2, p0, Lkhz;->e:Ljava/lang/Integer;

    .line 2794
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2796
    :cond_7
    iget-object v1, p0, Lkhz;->f:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 2797
    const/4 v1, 0x7

    iget-object v2, p0, Lkhz;->f:Ljava/lang/String;

    .line 2798
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2800
    :cond_8
    iget-object v1, p0, Lkhz;->g:Lkii;

    if-eqz v1, :cond_9

    .line 2801
    const/16 v1, 0x8

    iget-object v2, p0, Lkhz;->g:Lkii;

    .line 2802
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2804
    :cond_9
    return v0
.end method
