.class public final Ljat;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljat;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Ljcm;

.field public b:[Ljck;

.field public c:[Ljcj;

.field public d:[Ljcl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8738
    invoke-direct {p0}, Llyb;-><init>()V

    .line 9743
    invoke-static {}, Ljcm;->d()[Ljcm;

    move-result-object v0

    iput-object v0, p0, Ljat;->a:[Ljcm;

    .line 9744
    invoke-static {}, Ljck;->d()[Ljck;

    move-result-object v0

    iput-object v0, p0, Ljat;->b:[Ljck;

    .line 9745
    invoke-static {}, Ljcj;->d()[Ljcj;

    move-result-object v0

    iput-object v0, p0, Ljat;->c:[Ljcj;

    .line 9746
    invoke-static {}, Ljcl;->d()[Ljcl;

    move-result-object v0

    iput-object v0, p0, Ljat;->d:[Ljcl;

    .line 9747
    const/4 v0, 0x0

    iput-object v0, p0, Ljat;->eD:Llyd;

    .line 9748
    const/4 v0, -0x1

    iput v0, p0, Ljat;->eE:I

    .line 8740
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 9837
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 9838
    sparse-switch v0, :sswitch_data_0

    .line 9842
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9843
    :sswitch_0
    return-object p0

    .line 9848
    :sswitch_1
    const/16 v0, 0xa

    .line 9849
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 9850
    iget-object v0, p0, Ljat;->a:[Ljcm;

    if-nez v0, :cond_2

    move v0, v1

    .line 9851
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljcm;

    .line 9853
    if-eqz v0, :cond_1

    .line 9854
    iget-object v3, p0, Ljat;->a:[Ljcm;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9856
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 9857
    new-instance v3, Ljcm;

    invoke-direct {v3}, Ljcm;-><init>()V

    aput-object v3, v2, v0

    .line 9858
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 9859
    invoke-virtual {p1}, Llxy;->a()I

    .line 9856
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 9850
    :cond_2
    iget-object v0, p0, Ljat;->a:[Ljcm;

    array-length v0, v0

    goto :goto_1

    .line 9862
    :cond_3
    new-instance v3, Ljcm;

    invoke-direct {v3}, Ljcm;-><init>()V

    aput-object v3, v2, v0

    .line 9863
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 9864
    iput-object v2, p0, Ljat;->a:[Ljcm;

    goto :goto_0

    .line 9868
    :sswitch_2
    const/16 v0, 0x12

    .line 9869
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 9870
    iget-object v0, p0, Ljat;->b:[Ljck;

    if-nez v0, :cond_5

    move v0, v1

    .line 9871
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Ljck;

    .line 9873
    if-eqz v0, :cond_4

    .line 9874
    iget-object v3, p0, Ljat;->b:[Ljck;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9876
    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    .line 9877
    new-instance v3, Ljck;

    invoke-direct {v3}, Ljck;-><init>()V

    aput-object v3, v2, v0

    .line 9878
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 9879
    invoke-virtual {p1}, Llxy;->a()I

    .line 9876
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 9870
    :cond_5
    iget-object v0, p0, Ljat;->b:[Ljck;

    array-length v0, v0

    goto :goto_3

    .line 9882
    :cond_6
    new-instance v3, Ljck;

    invoke-direct {v3}, Ljck;-><init>()V

    aput-object v3, v2, v0

    .line 9883
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 9884
    iput-object v2, p0, Ljat;->b:[Ljck;

    goto/16 :goto_0

    .line 9888
    :sswitch_3
    const/16 v0, 0x1a

    .line 9889
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 9890
    iget-object v0, p0, Ljat;->c:[Ljcj;

    if-nez v0, :cond_8

    move v0, v1

    .line 9891
    :goto_5
    add-int/2addr v2, v0

    new-array v2, v2, [Ljcj;

    .line 9893
    if-eqz v0, :cond_7

    .line 9894
    iget-object v3, p0, Ljat;->c:[Ljcj;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9896
    :cond_7
    :goto_6
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_9

    .line 9897
    new-instance v3, Ljcj;

    invoke-direct {v3}, Ljcj;-><init>()V

    aput-object v3, v2, v0

    .line 9898
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 9899
    invoke-virtual {p1}, Llxy;->a()I

    .line 9896
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 9890
    :cond_8
    iget-object v0, p0, Ljat;->c:[Ljcj;

    array-length v0, v0

    goto :goto_5

    .line 9902
    :cond_9
    new-instance v3, Ljcj;

    invoke-direct {v3}, Ljcj;-><init>()V

    aput-object v3, v2, v0

    .line 9903
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 9904
    iput-object v2, p0, Ljat;->c:[Ljcj;

    goto/16 :goto_0

    .line 9908
    :sswitch_4
    const/16 v0, 0x22

    .line 9909
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 9910
    iget-object v0, p0, Ljat;->d:[Ljcl;

    if-nez v0, :cond_b

    move v0, v1

    .line 9911
    :goto_7
    add-int/2addr v2, v0

    new-array v2, v2, [Ljcl;

    .line 9913
    if-eqz v0, :cond_a

    .line 9914
    iget-object v3, p0, Ljat;->d:[Ljcl;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9916
    :cond_a
    :goto_8
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_c

    .line 9917
    new-instance v3, Ljcl;

    invoke-direct {v3}, Ljcl;-><init>()V

    aput-object v3, v2, v0

    .line 9918
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 9919
    invoke-virtual {p1}, Llxy;->a()I

    .line 9916
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 9910
    :cond_b
    iget-object v0, p0, Ljat;->d:[Ljcl;

    array-length v0, v0

    goto :goto_7

    .line 9922
    :cond_c
    new-instance v3, Ljcl;

    invoke-direct {v3}, Ljcl;-><init>()V

    aput-object v3, v2, v0

    .line 9923
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 9924
    iput-object v2, p0, Ljat;->d:[Ljcl;

    goto/16 :goto_0

    .line 9838
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
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 8755
    iget-object v0, p0, Ljat;->a:[Ljcm;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljat;->a:[Ljcm;

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v1

    .line 8756
    :goto_0
    iget-object v2, p0, Ljat;->a:[Ljcm;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 8757
    iget-object v2, p0, Ljat;->a:[Ljcm;

    aget-object v2, v2, v0

    .line 8758
    if-eqz v2, :cond_0

    .line 8759
    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 8756
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8763
    :cond_1
    iget-object v0, p0, Ljat;->b:[Ljck;

    if-eqz v0, :cond_3

    iget-object v0, p0, Ljat;->b:[Ljck;

    array-length v0, v0

    if-lez v0, :cond_3

    move v0, v1

    .line 8764
    :goto_1
    iget-object v2, p0, Ljat;->b:[Ljck;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 8765
    iget-object v2, p0, Ljat;->b:[Ljck;

    aget-object v2, v2, v0

    .line 8766
    if-eqz v2, :cond_2

    .line 8767
    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 8764
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 8771
    :cond_3
    iget-object v0, p0, Ljat;->c:[Ljcj;

    if-eqz v0, :cond_5

    iget-object v0, p0, Ljat;->c:[Ljcj;

    array-length v0, v0

    if-lez v0, :cond_5

    move v0, v1

    .line 8772
    :goto_2
    iget-object v2, p0, Ljat;->c:[Ljcj;

    array-length v2, v2

    if-ge v0, v2, :cond_5

    .line 8773
    iget-object v2, p0, Ljat;->c:[Ljcj;

    aget-object v2, v2, v0

    .line 8774
    if-eqz v2, :cond_4

    .line 8775
    const/4 v3, 0x3

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 8772
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 8779
    :cond_5
    iget-object v0, p0, Ljat;->d:[Ljcl;

    if-eqz v0, :cond_7

    iget-object v0, p0, Ljat;->d:[Ljcl;

    array-length v0, v0

    if-lez v0, :cond_7

    .line 8780
    :goto_3
    iget-object v0, p0, Ljat;->d:[Ljcl;

    array-length v0, v0

    if-ge v1, v0, :cond_7

    .line 8781
    iget-object v0, p0, Ljat;->d:[Ljcl;

    aget-object v0, v0, v1

    .line 8782
    if-eqz v0, :cond_6

    .line 8783
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Llxz;->b(ILlyi;)V

    .line 8780
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 8787
    :cond_7
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 8788
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 8792
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 8793
    iget-object v2, p0, Ljat;->a:[Ljcm;

    if-eqz v2, :cond_2

    iget-object v2, p0, Ljat;->a:[Ljcm;

    array-length v2, v2

    if-lez v2, :cond_2

    move v2, v0

    move v0, v1

    .line 8794
    :goto_0
    iget-object v3, p0, Ljat;->a:[Ljcm;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 8795
    iget-object v3, p0, Ljat;->a:[Ljcm;

    aget-object v3, v3, v0

    .line 8796
    if-eqz v3, :cond_0

    .line 8797
    const/4 v4, 0x1

    .line 8798
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 8794
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 8802
    :cond_2
    iget-object v2, p0, Ljat;->b:[Ljck;

    if-eqz v2, :cond_5

    iget-object v2, p0, Ljat;->b:[Ljck;

    array-length v2, v2

    if-lez v2, :cond_5

    move v2, v0

    move v0, v1

    .line 8803
    :goto_1
    iget-object v3, p0, Ljat;->b:[Ljck;

    array-length v3, v3

    if-ge v0, v3, :cond_4

    .line 8804
    iget-object v3, p0, Ljat;->b:[Ljck;

    aget-object v3, v3, v0

    .line 8805
    if-eqz v3, :cond_3

    .line 8806
    const/4 v4, 0x2

    .line 8807
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 8803
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move v0, v2

    .line 8811
    :cond_5
    iget-object v2, p0, Ljat;->c:[Ljcj;

    if-eqz v2, :cond_8

    iget-object v2, p0, Ljat;->c:[Ljcj;

    array-length v2, v2

    if-lez v2, :cond_8

    move v2, v0

    move v0, v1

    .line 8812
    :goto_2
    iget-object v3, p0, Ljat;->c:[Ljcj;

    array-length v3, v3

    if-ge v0, v3, :cond_7

    .line 8813
    iget-object v3, p0, Ljat;->c:[Ljcj;

    aget-object v3, v3, v0

    .line 8814
    if-eqz v3, :cond_6

    .line 8815
    const/4 v4, 0x3

    .line 8816
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 8812
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    move v0, v2

    .line 8820
    :cond_8
    iget-object v2, p0, Ljat;->d:[Ljcl;

    if-eqz v2, :cond_a

    iget-object v2, p0, Ljat;->d:[Ljcl;

    array-length v2, v2

    if-lez v2, :cond_a

    .line 8821
    :goto_3
    iget-object v2, p0, Ljat;->d:[Ljcl;

    array-length v2, v2

    if-ge v1, v2, :cond_a

    .line 8822
    iget-object v2, p0, Ljat;->d:[Ljcl;

    aget-object v2, v2, v1

    .line 8823
    if-eqz v2, :cond_9

    .line 8824
    const/4 v3, 0x4

    .line 8825
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 8821
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 8829
    :cond_a
    return v0
.end method
