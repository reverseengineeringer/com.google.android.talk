.class public final Lizi;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lizi;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Lizf;

.field public b:[Lizf;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:[Lizj;

.field public f:Lizh;

.field public g:Lizg;

.field public h:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 745
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1750
    invoke-static {}, Lizf;->d()[Lizf;

    move-result-object v0

    iput-object v0, p0, Lizi;->a:[Lizf;

    .line 1751
    invoke-static {}, Lizf;->d()[Lizf;

    move-result-object v0

    iput-object v0, p0, Lizi;->b:[Lizf;

    .line 1752
    iput-object v1, p0, Lizi;->c:Ljava/lang/String;

    .line 1753
    iput-object v1, p0, Lizi;->d:Ljava/lang/String;

    .line 1754
    invoke-static {}, Lizj;->d()[Lizj;

    move-result-object v0

    iput-object v0, p0, Lizi;->e:[Lizj;

    .line 1755
    iput-object v1, p0, Lizi;->f:Lizh;

    .line 1756
    iput-object v1, p0, Lizi;->g:Lizg;

    .line 1757
    iput-object v1, p0, Lizi;->h:Ljava/lang/Boolean;

    .line 1758
    iput-object v1, p0, Lizi;->eD:Llyd;

    .line 1759
    const/4 v0, -0x1

    iput v0, p0, Lizi;->eE:I

    .line 747
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2866
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2867
    sparse-switch v0, :sswitch_data_0

    .line 2871
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2872
    :sswitch_0
    return-object p0

    .line 2877
    :sswitch_1
    const/16 v0, 0xa

    .line 2878
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 2879
    iget-object v0, p0, Lizi;->a:[Lizf;

    if-nez v0, :cond_2

    move v0, v1

    .line 2880
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lizf;

    .line 2882
    if-eqz v0, :cond_1

    .line 2883
    iget-object v3, p0, Lizi;->a:[Lizf;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2885
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 2886
    new-instance v3, Lizf;

    invoke-direct {v3}, Lizf;-><init>()V

    aput-object v3, v2, v0

    .line 2887
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 2888
    invoke-virtual {p1}, Llxy;->a()I

    .line 2885
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2879
    :cond_2
    iget-object v0, p0, Lizi;->a:[Lizf;

    array-length v0, v0

    goto :goto_1

    .line 2891
    :cond_3
    new-instance v3, Lizf;

    invoke-direct {v3}, Lizf;-><init>()V

    aput-object v3, v2, v0

    .line 2892
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 2893
    iput-object v2, p0, Lizi;->a:[Lizf;

    goto :goto_0

    .line 2897
    :sswitch_2
    const/16 v0, 0x12

    .line 2898
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 2899
    iget-object v0, p0, Lizi;->b:[Lizf;

    if-nez v0, :cond_5

    move v0, v1

    .line 2900
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lizf;

    .line 2902
    if-eqz v0, :cond_4

    .line 2903
    iget-object v3, p0, Lizi;->b:[Lizf;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2905
    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    .line 2906
    new-instance v3, Lizf;

    invoke-direct {v3}, Lizf;-><init>()V

    aput-object v3, v2, v0

    .line 2907
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 2908
    invoke-virtual {p1}, Llxy;->a()I

    .line 2905
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2899
    :cond_5
    iget-object v0, p0, Lizi;->b:[Lizf;

    array-length v0, v0

    goto :goto_3

    .line 2911
    :cond_6
    new-instance v3, Lizf;

    invoke-direct {v3}, Lizf;-><init>()V

    aput-object v3, v2, v0

    .line 2912
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 2913
    iput-object v2, p0, Lizi;->b:[Lizf;

    goto/16 :goto_0

    .line 2917
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lizi;->c:Ljava/lang/String;

    goto/16 :goto_0

    .line 2921
    :sswitch_4
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lizi;->d:Ljava/lang/String;

    goto/16 :goto_0

    .line 2925
    :sswitch_5
    const/16 v0, 0x2a

    .line 2926
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 2927
    iget-object v0, p0, Lizi;->e:[Lizj;

    if-nez v0, :cond_8

    move v0, v1

    .line 2928
    :goto_5
    add-int/2addr v2, v0

    new-array v2, v2, [Lizj;

    .line 2930
    if-eqz v0, :cond_7

    .line 2931
    iget-object v3, p0, Lizi;->e:[Lizj;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2933
    :cond_7
    :goto_6
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_9

    .line 2934
    new-instance v3, Lizj;

    invoke-direct {v3}, Lizj;-><init>()V

    aput-object v3, v2, v0

    .line 2935
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 2936
    invoke-virtual {p1}, Llxy;->a()I

    .line 2933
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 2927
    :cond_8
    iget-object v0, p0, Lizi;->e:[Lizj;

    array-length v0, v0

    goto :goto_5

    .line 2939
    :cond_9
    new-instance v3, Lizj;

    invoke-direct {v3}, Lizj;-><init>()V

    aput-object v3, v2, v0

    .line 2940
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 2941
    iput-object v2, p0, Lizi;->e:[Lizj;

    goto/16 :goto_0

    .line 2945
    :sswitch_6
    iget-object v0, p0, Lizi;->f:Lizh;

    if-nez v0, :cond_a

    .line 2946
    new-instance v0, Lizh;

    invoke-direct {v0}, Lizh;-><init>()V

    iput-object v0, p0, Lizi;->f:Lizh;

    .line 2948
    :cond_a
    iget-object v0, p0, Lizi;->f:Lizh;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 2952
    :sswitch_7
    iget-object v0, p0, Lizi;->g:Lizg;

    if-nez v0, :cond_b

    .line 2953
    new-instance v0, Lizg;

    invoke-direct {v0}, Lizg;-><init>()V

    iput-object v0, p0, Lizi;->g:Lizg;

    .line 2955
    :cond_b
    iget-object v0, p0, Lizi;->g:Lizg;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 2959
    :sswitch_8
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lizi;->h:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 2867
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x40 -> :sswitch_8
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 766
    iget-object v0, p0, Lizi;->a:[Lizf;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lizi;->a:[Lizf;

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v1

    .line 767
    :goto_0
    iget-object v2, p0, Lizi;->a:[Lizf;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 768
    iget-object v2, p0, Lizi;->a:[Lizf;

    aget-object v2, v2, v0

    .line 769
    if-eqz v2, :cond_0

    .line 770
    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 767
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 774
    :cond_1
    iget-object v0, p0, Lizi;->b:[Lizf;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lizi;->b:[Lizf;

    array-length v0, v0

    if-lez v0, :cond_3

    move v0, v1

    .line 775
    :goto_1
    iget-object v2, p0, Lizi;->b:[Lizf;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 776
    iget-object v2, p0, Lizi;->b:[Lizf;

    aget-object v2, v2, v0

    .line 777
    if-eqz v2, :cond_2

    .line 778
    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 775
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 782
    :cond_3
    iget-object v0, p0, Lizi;->c:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 783
    const/4 v0, 0x3

    iget-object v2, p0, Lizi;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Llxz;->a(ILjava/lang/String;)V

    .line 785
    :cond_4
    iget-object v0, p0, Lizi;->d:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 786
    const/4 v0, 0x4

    iget-object v2, p0, Lizi;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Llxz;->a(ILjava/lang/String;)V

    .line 788
    :cond_5
    iget-object v0, p0, Lizi;->e:[Lizj;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lizi;->e:[Lizj;

    array-length v0, v0

    if-lez v0, :cond_7

    .line 789
    :goto_2
    iget-object v0, p0, Lizi;->e:[Lizj;

    array-length v0, v0

    if-ge v1, v0, :cond_7

    .line 790
    iget-object v0, p0, Lizi;->e:[Lizj;

    aget-object v0, v0, v1

    .line 791
    if-eqz v0, :cond_6

    .line 792
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Llxz;->b(ILlyi;)V

    .line 789
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 796
    :cond_7
    iget-object v0, p0, Lizi;->f:Lizh;

    if-eqz v0, :cond_8

    .line 797
    const/4 v0, 0x6

    iget-object v1, p0, Lizi;->f:Lizh;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 799
    :cond_8
    iget-object v0, p0, Lizi;->g:Lizg;

    if-eqz v0, :cond_9

    .line 800
    const/4 v0, 0x7

    iget-object v1, p0, Lizi;->g:Lizg;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 802
    :cond_9
    iget-object v0, p0, Lizi;->h:Ljava/lang/Boolean;

    if-eqz v0, :cond_a

    .line 803
    const/16 v0, 0x8

    iget-object v1, p0, Lizi;->h:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 805
    :cond_a
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 806
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 810
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 811
    iget-object v2, p0, Lizi;->a:[Lizf;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lizi;->a:[Lizf;

    array-length v2, v2

    if-lez v2, :cond_2

    move v2, v0

    move v0, v1

    .line 812
    :goto_0
    iget-object v3, p0, Lizi;->a:[Lizf;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 813
    iget-object v3, p0, Lizi;->a:[Lizf;

    aget-object v3, v3, v0

    .line 814
    if-eqz v3, :cond_0

    .line 815
    const/4 v4, 0x1

    .line 816
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 812
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 820
    :cond_2
    iget-object v2, p0, Lizi;->b:[Lizf;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lizi;->b:[Lizf;

    array-length v2, v2

    if-lez v2, :cond_5

    move v2, v0

    move v0, v1

    .line 821
    :goto_1
    iget-object v3, p0, Lizi;->b:[Lizf;

    array-length v3, v3

    if-ge v0, v3, :cond_4

    .line 822
    iget-object v3, p0, Lizi;->b:[Lizf;

    aget-object v3, v3, v0

    .line 823
    if-eqz v3, :cond_3

    .line 824
    const/4 v4, 0x2

    .line 825
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 821
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move v0, v2

    .line 829
    :cond_5
    iget-object v2, p0, Lizi;->c:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 830
    const/4 v2, 0x3

    iget-object v3, p0, Lizi;->c:Ljava/lang/String;

    .line 831
    invoke-static {v2, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 833
    :cond_6
    iget-object v2, p0, Lizi;->d:Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 834
    const/4 v2, 0x4

    iget-object v3, p0, Lizi;->d:Ljava/lang/String;

    .line 835
    invoke-static {v2, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 837
    :cond_7
    iget-object v2, p0, Lizi;->e:[Lizj;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lizi;->e:[Lizj;

    array-length v2, v2

    if-lez v2, :cond_9

    .line 838
    :goto_2
    iget-object v2, p0, Lizi;->e:[Lizj;

    array-length v2, v2

    if-ge v1, v2, :cond_9

    .line 839
    iget-object v2, p0, Lizi;->e:[Lizj;

    aget-object v2, v2, v1

    .line 840
    if-eqz v2, :cond_8

    .line 841
    const/4 v3, 0x5

    .line 842
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 838
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 846
    :cond_9
    iget-object v1, p0, Lizi;->f:Lizh;

    if-eqz v1, :cond_a

    .line 847
    const/4 v1, 0x6

    iget-object v2, p0, Lizi;->f:Lizh;

    .line 848
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 850
    :cond_a
    iget-object v1, p0, Lizi;->g:Lizg;

    if-eqz v1, :cond_b

    .line 851
    const/4 v1, 0x7

    iget-object v2, p0, Lizi;->g:Lizg;

    .line 852
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 854
    :cond_b
    iget-object v1, p0, Lizi;->h:Ljava/lang/Boolean;

    if-eqz v1, :cond_c

    .line 855
    const/16 v1, 0x8

    iget-object v2, p0, Lizi;->h:Ljava/lang/Boolean;

    .line 856
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 856
    add-int/2addr v0, v1

    .line 858
    :cond_c
    return v0
.end method
