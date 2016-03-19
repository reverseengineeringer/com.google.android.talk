.class public final Ljkn;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljkn;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Ljkw;

.field public b:[Ljpj;

.field public c:Ljava/lang/String;

.field public d:Ljkp;

.field public e:Ljava/lang/String;

.field public f:[Ljjk;

.field public g:Ljke;

.field public h:Ljava/lang/Integer;

.field public i:Ljot;

.field public j:[B

.field public k:Ljoz;

.field public l:[Ljot;

.field public m:Ljkt;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 9728
    invoke-direct {p0}, Llyb;-><init>()V

    .line 11188
    sget-object v0, Ljkw;->c:[Ljkw;

    .line 10733
    iput-object v0, p0, Ljkn;->a:[Ljkw;

    .line 10734
    invoke-static {}, Ljpj;->d()[Ljpj;

    move-result-object v0

    iput-object v0, p0, Ljkn;->b:[Ljpj;

    .line 10735
    iput-object v1, p0, Ljkn;->c:Ljava/lang/String;

    .line 10736
    iput-object v1, p0, Ljkn;->d:Ljkp;

    .line 10737
    iput-object v1, p0, Ljkn;->e:Ljava/lang/String;

    .line 10738
    invoke-static {}, Ljjk;->d()[Ljjk;

    move-result-object v0

    iput-object v0, p0, Ljkn;->f:[Ljjk;

    .line 10739
    iput-object v1, p0, Ljkn;->g:Ljke;

    .line 10740
    iput-object v1, p0, Ljkn;->h:Ljava/lang/Integer;

    .line 10741
    iput-object v1, p0, Ljkn;->i:Ljot;

    .line 10742
    iput-object v1, p0, Ljkn;->j:[B

    .line 10743
    iput-object v1, p0, Ljkn;->k:Ljoz;

    .line 10744
    invoke-static {}, Ljot;->d()[Ljot;

    move-result-object v0

    iput-object v0, p0, Ljkn;->l:[Ljot;

    .line 10745
    iput-object v1, p0, Ljkn;->m:Ljkt;

    .line 10746
    iput-object v1, p0, Ljkn;->eD:Llyd;

    .line 10747
    const/4 v0, -0x1

    iput v0, p0, Ljkn;->eE:I

    .line 9730
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 11899
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 11900
    sparse-switch v0, :sswitch_data_0

    .line 11904
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 11905
    :sswitch_0
    return-object p0

    .line 11910
    :sswitch_1
    const/16 v0, 0xa

    .line 11911
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 11912
    iget-object v0, p0, Ljkn;->a:[Ljkw;

    if-nez v0, :cond_2

    move v0, v1

    .line 11913
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljkw;

    .line 11915
    if-eqz v0, :cond_1

    .line 11916
    iget-object v3, p0, Ljkn;->a:[Ljkw;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11918
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 11919
    new-instance v3, Ljkw;

    invoke-direct {v3}, Ljkw;-><init>()V

    aput-object v3, v2, v0

    .line 11920
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 11921
    invoke-virtual {p1}, Llxy;->a()I

    .line 11918
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 11912
    :cond_2
    iget-object v0, p0, Ljkn;->a:[Ljkw;

    array-length v0, v0

    goto :goto_1

    .line 11924
    :cond_3
    new-instance v3, Ljkw;

    invoke-direct {v3}, Ljkw;-><init>()V

    aput-object v3, v2, v0

    .line 11925
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 11926
    iput-object v2, p0, Ljkn;->a:[Ljkw;

    goto :goto_0

    .line 11930
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljkn;->c:Ljava/lang/String;

    goto :goto_0

    .line 11934
    :sswitch_3
    iget-object v0, p0, Ljkn;->d:Ljkp;

    if-nez v0, :cond_4

    .line 11935
    new-instance v0, Ljkp;

    invoke-direct {v0}, Ljkp;-><init>()V

    iput-object v0, p0, Ljkn;->d:Ljkp;

    .line 11937
    :cond_4
    iget-object v0, p0, Ljkn;->d:Ljkp;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 11941
    :sswitch_4
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljkn;->e:Ljava/lang/String;

    goto :goto_0

    .line 11945
    :sswitch_5
    const/16 v0, 0x2a

    .line 11946
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 11947
    iget-object v0, p0, Ljkn;->f:[Ljjk;

    if-nez v0, :cond_6

    move v0, v1

    .line 11948
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Ljjk;

    .line 11950
    if-eqz v0, :cond_5

    .line 11951
    iget-object v3, p0, Ljkn;->f:[Ljjk;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11953
    :cond_5
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_7

    .line 11954
    new-instance v3, Ljjk;

    invoke-direct {v3}, Ljjk;-><init>()V

    aput-object v3, v2, v0

    .line 11955
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 11956
    invoke-virtual {p1}, Llxy;->a()I

    .line 11953
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 11947
    :cond_6
    iget-object v0, p0, Ljkn;->f:[Ljjk;

    array-length v0, v0

    goto :goto_3

    .line 11959
    :cond_7
    new-instance v3, Ljjk;

    invoke-direct {v3}, Ljjk;-><init>()V

    aput-object v3, v2, v0

    .line 11960
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 11961
    iput-object v2, p0, Ljkn;->f:[Ljjk;

    goto/16 :goto_0

    .line 11965
    :sswitch_6
    iget-object v0, p0, Ljkn;->g:Ljke;

    if-nez v0, :cond_8

    .line 11966
    new-instance v0, Ljke;

    invoke-direct {v0}, Ljke;-><init>()V

    iput-object v0, p0, Ljkn;->g:Ljke;

    .line 11968
    :cond_8
    iget-object v0, p0, Ljkn;->g:Ljke;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 11972
    :sswitch_7
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 11973
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 11979
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljkn;->h:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 11985
    :sswitch_8
    const/16 v0, 0x42

    .line 11986
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 11987
    iget-object v0, p0, Ljkn;->b:[Ljpj;

    if-nez v0, :cond_a

    move v0, v1

    .line 11988
    :goto_5
    add-int/2addr v2, v0

    new-array v2, v2, [Ljpj;

    .line 11990
    if-eqz v0, :cond_9

    .line 11991
    iget-object v3, p0, Ljkn;->b:[Ljpj;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11993
    :cond_9
    :goto_6
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_b

    .line 11994
    new-instance v3, Ljpj;

    invoke-direct {v3}, Ljpj;-><init>()V

    aput-object v3, v2, v0

    .line 11995
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 11996
    invoke-virtual {p1}, Llxy;->a()I

    .line 11993
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 11987
    :cond_a
    iget-object v0, p0, Ljkn;->b:[Ljpj;

    array-length v0, v0

    goto :goto_5

    .line 11999
    :cond_b
    new-instance v3, Ljpj;

    invoke-direct {v3}, Ljpj;-><init>()V

    aput-object v3, v2, v0

    .line 12000
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 12001
    iput-object v2, p0, Ljkn;->b:[Ljpj;

    goto/16 :goto_0

    .line 12005
    :sswitch_9
    iget-object v0, p0, Ljkn;->i:Ljot;

    if-nez v0, :cond_c

    .line 12006
    new-instance v0, Ljot;

    invoke-direct {v0}, Ljot;-><init>()V

    iput-object v0, p0, Ljkn;->i:Ljot;

    .line 12008
    :cond_c
    iget-object v0, p0, Ljkn;->i:Ljot;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 12012
    :sswitch_a
    invoke-virtual {p1}, Llxy;->k()[B

    move-result-object v0

    iput-object v0, p0, Ljkn;->j:[B

    goto/16 :goto_0

    .line 12016
    :sswitch_b
    iget-object v0, p0, Ljkn;->k:Ljoz;

    if-nez v0, :cond_d

    .line 12017
    new-instance v0, Ljoz;

    invoke-direct {v0}, Ljoz;-><init>()V

    iput-object v0, p0, Ljkn;->k:Ljoz;

    .line 12019
    :cond_d
    iget-object v0, p0, Ljkn;->k:Ljoz;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 12023
    :sswitch_c
    const/16 v0, 0x62

    .line 12024
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 12025
    iget-object v0, p0, Ljkn;->l:[Ljot;

    if-nez v0, :cond_f

    move v0, v1

    .line 12026
    :goto_7
    add-int/2addr v2, v0

    new-array v2, v2, [Ljot;

    .line 12028
    if-eqz v0, :cond_e

    .line 12029
    iget-object v3, p0, Ljkn;->l:[Ljot;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12031
    :cond_e
    :goto_8
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_10

    .line 12032
    new-instance v3, Ljot;

    invoke-direct {v3}, Ljot;-><init>()V

    aput-object v3, v2, v0

    .line 12033
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 12034
    invoke-virtual {p1}, Llxy;->a()I

    .line 12031
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 12025
    :cond_f
    iget-object v0, p0, Ljkn;->l:[Ljot;

    array-length v0, v0

    goto :goto_7

    .line 12037
    :cond_10
    new-instance v3, Ljot;

    invoke-direct {v3}, Ljot;-><init>()V

    aput-object v3, v2, v0

    .line 12038
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 12039
    iput-object v2, p0, Ljkn;->l:[Ljot;

    goto/16 :goto_0

    .line 12043
    :sswitch_d
    iget-object v0, p0, Ljkn;->m:Ljkt;

    if-nez v0, :cond_11

    .line 12044
    new-instance v0, Ljkt;

    invoke-direct {v0}, Ljkt;-><init>()V

    iput-object v0, p0, Ljkn;->m:Ljkt;

    .line 12046
    :cond_11
    iget-object v0, p0, Ljkn;->m:Ljkt;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 11900
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x38 -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
        0x62 -> :sswitch_c
        0x6a -> :sswitch_d
    .end sparse-switch

    .line 11973
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 9754
    iget-object v0, p0, Ljkn;->a:[Ljkw;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljkn;->a:[Ljkw;

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v1

    .line 9755
    :goto_0
    iget-object v2, p0, Ljkn;->a:[Ljkw;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 9756
    iget-object v2, p0, Ljkn;->a:[Ljkw;

    aget-object v2, v2, v0

    .line 9757
    if-eqz v2, :cond_0

    .line 9758
    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 9755
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9762
    :cond_1
    iget-object v0, p0, Ljkn;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 9763
    const/4 v0, 0x2

    iget-object v2, p0, Ljkn;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Llxz;->a(ILjava/lang/String;)V

    .line 9765
    :cond_2
    iget-object v0, p0, Ljkn;->d:Ljkp;

    if-eqz v0, :cond_3

    .line 9766
    const/4 v0, 0x3

    iget-object v2, p0, Ljkn;->d:Ljkp;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 9768
    :cond_3
    iget-object v0, p0, Ljkn;->e:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 9769
    const/4 v0, 0x4

    iget-object v2, p0, Ljkn;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Llxz;->a(ILjava/lang/String;)V

    .line 9771
    :cond_4
    iget-object v0, p0, Ljkn;->f:[Ljjk;

    if-eqz v0, :cond_6

    iget-object v0, p0, Ljkn;->f:[Ljjk;

    array-length v0, v0

    if-lez v0, :cond_6

    move v0, v1

    .line 9772
    :goto_1
    iget-object v2, p0, Ljkn;->f:[Ljjk;

    array-length v2, v2

    if-ge v0, v2, :cond_6

    .line 9773
    iget-object v2, p0, Ljkn;->f:[Ljjk;

    aget-object v2, v2, v0

    .line 9774
    if-eqz v2, :cond_5

    .line 9775
    const/4 v3, 0x5

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 9772
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 9779
    :cond_6
    iget-object v0, p0, Ljkn;->g:Ljke;

    if-eqz v0, :cond_7

    .line 9780
    const/4 v0, 0x6

    iget-object v2, p0, Ljkn;->g:Ljke;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 9782
    :cond_7
    iget-object v0, p0, Ljkn;->h:Ljava/lang/Integer;

    if-eqz v0, :cond_8

    .line 9783
    const/4 v0, 0x7

    iget-object v2, p0, Ljkn;->h:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Llxz;->a(II)V

    .line 9785
    :cond_8
    iget-object v0, p0, Ljkn;->b:[Ljpj;

    if-eqz v0, :cond_a

    iget-object v0, p0, Ljkn;->b:[Ljpj;

    array-length v0, v0

    if-lez v0, :cond_a

    move v0, v1

    .line 9786
    :goto_2
    iget-object v2, p0, Ljkn;->b:[Ljpj;

    array-length v2, v2

    if-ge v0, v2, :cond_a

    .line 9787
    iget-object v2, p0, Ljkn;->b:[Ljpj;

    aget-object v2, v2, v0

    .line 9788
    if-eqz v2, :cond_9

    .line 9789
    const/16 v3, 0x8

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 9786
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 9793
    :cond_a
    iget-object v0, p0, Ljkn;->i:Ljot;

    if-eqz v0, :cond_b

    .line 9794
    const/16 v0, 0x9

    iget-object v2, p0, Ljkn;->i:Ljot;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 9796
    :cond_b
    iget-object v0, p0, Ljkn;->j:[B

    if-eqz v0, :cond_c

    .line 9797
    const/16 v0, 0xa

    iget-object v2, p0, Ljkn;->j:[B

    invoke-virtual {p1, v0, v2}, Llxz;->a(I[B)V

    .line 9799
    :cond_c
    iget-object v0, p0, Ljkn;->k:Ljoz;

    if-eqz v0, :cond_d

    .line 9800
    const/16 v0, 0xb

    iget-object v2, p0, Ljkn;->k:Ljoz;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 9802
    :cond_d
    iget-object v0, p0, Ljkn;->l:[Ljot;

    if-eqz v0, :cond_f

    iget-object v0, p0, Ljkn;->l:[Ljot;

    array-length v0, v0

    if-lez v0, :cond_f

    .line 9803
    :goto_3
    iget-object v0, p0, Ljkn;->l:[Ljot;

    array-length v0, v0

    if-ge v1, v0, :cond_f

    .line 9804
    iget-object v0, p0, Ljkn;->l:[Ljot;

    aget-object v0, v0, v1

    .line 9805
    if-eqz v0, :cond_e

    .line 9806
    const/16 v2, 0xc

    invoke-virtual {p1, v2, v0}, Llxz;->b(ILlyi;)V

    .line 9803
    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 9810
    :cond_f
    iget-object v0, p0, Ljkn;->m:Ljkt;

    if-eqz v0, :cond_10

    .line 9811
    const/16 v0, 0xd

    iget-object v1, p0, Ljkn;->m:Ljkt;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 9813
    :cond_10
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 9814
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 9818
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 9819
    iget-object v2, p0, Ljkn;->a:[Ljkw;

    if-eqz v2, :cond_2

    iget-object v2, p0, Ljkn;->a:[Ljkw;

    array-length v2, v2

    if-lez v2, :cond_2

    move v2, v0

    move v0, v1

    .line 9820
    :goto_0
    iget-object v3, p0, Ljkn;->a:[Ljkw;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 9821
    iget-object v3, p0, Ljkn;->a:[Ljkw;

    aget-object v3, v3, v0

    .line 9822
    if-eqz v3, :cond_0

    .line 9823
    const/4 v4, 0x1

    .line 9824
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 9820
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 9828
    :cond_2
    iget-object v2, p0, Ljkn;->c:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 9829
    const/4 v2, 0x2

    iget-object v3, p0, Ljkn;->c:Ljava/lang/String;

    .line 9830
    invoke-static {v2, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 9832
    :cond_3
    iget-object v2, p0, Ljkn;->d:Ljkp;

    if-eqz v2, :cond_4

    .line 9833
    const/4 v2, 0x3

    iget-object v3, p0, Ljkn;->d:Ljkp;

    .line 9834
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 9836
    :cond_4
    iget-object v2, p0, Ljkn;->e:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 9837
    const/4 v2, 0x4

    iget-object v3, p0, Ljkn;->e:Ljava/lang/String;

    .line 9838
    invoke-static {v2, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 9840
    :cond_5
    iget-object v2, p0, Ljkn;->f:[Ljjk;

    if-eqz v2, :cond_8

    iget-object v2, p0, Ljkn;->f:[Ljjk;

    array-length v2, v2

    if-lez v2, :cond_8

    move v2, v0

    move v0, v1

    .line 9841
    :goto_1
    iget-object v3, p0, Ljkn;->f:[Ljjk;

    array-length v3, v3

    if-ge v0, v3, :cond_7

    .line 9842
    iget-object v3, p0, Ljkn;->f:[Ljjk;

    aget-object v3, v3, v0

    .line 9843
    if-eqz v3, :cond_6

    .line 9844
    const/4 v4, 0x5

    .line 9845
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 9841
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    move v0, v2

    .line 9849
    :cond_8
    iget-object v2, p0, Ljkn;->g:Ljke;

    if-eqz v2, :cond_9

    .line 9850
    const/4 v2, 0x6

    iget-object v3, p0, Ljkn;->g:Ljke;

    .line 9851
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 9853
    :cond_9
    iget-object v2, p0, Ljkn;->h:Ljava/lang/Integer;

    if-eqz v2, :cond_a

    .line 9854
    const/4 v2, 0x7

    iget-object v3, p0, Ljkn;->h:Ljava/lang/Integer;

    .line 9855
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Llxz;->e(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 9857
    :cond_a
    iget-object v2, p0, Ljkn;->b:[Ljpj;

    if-eqz v2, :cond_d

    iget-object v2, p0, Ljkn;->b:[Ljpj;

    array-length v2, v2

    if-lez v2, :cond_d

    move v2, v0

    move v0, v1

    .line 9858
    :goto_2
    iget-object v3, p0, Ljkn;->b:[Ljpj;

    array-length v3, v3

    if-ge v0, v3, :cond_c

    .line 9859
    iget-object v3, p0, Ljkn;->b:[Ljpj;

    aget-object v3, v3, v0

    .line 9860
    if-eqz v3, :cond_b

    .line 9861
    const/16 v4, 0x8

    .line 9862
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 9858
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_c
    move v0, v2

    .line 9866
    :cond_d
    iget-object v2, p0, Ljkn;->i:Ljot;

    if-eqz v2, :cond_e

    .line 9867
    const/16 v2, 0x9

    iget-object v3, p0, Ljkn;->i:Ljot;

    .line 9868
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 9870
    :cond_e
    iget-object v2, p0, Ljkn;->j:[B

    if-eqz v2, :cond_f

    .line 9871
    const/16 v2, 0xa

    iget-object v3, p0, Ljkn;->j:[B

    .line 9872
    invoke-static {v2, v3}, Llxz;->b(I[B)I

    move-result v2

    add-int/2addr v0, v2

    .line 9874
    :cond_f
    iget-object v2, p0, Ljkn;->k:Ljoz;

    if-eqz v2, :cond_10

    .line 9875
    const/16 v2, 0xb

    iget-object v3, p0, Ljkn;->k:Ljoz;

    .line 9876
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 9878
    :cond_10
    iget-object v2, p0, Ljkn;->l:[Ljot;

    if-eqz v2, :cond_12

    iget-object v2, p0, Ljkn;->l:[Ljot;

    array-length v2, v2

    if-lez v2, :cond_12

    .line 9879
    :goto_3
    iget-object v2, p0, Ljkn;->l:[Ljot;

    array-length v2, v2

    if-ge v1, v2, :cond_12

    .line 9880
    iget-object v2, p0, Ljkn;->l:[Ljot;

    aget-object v2, v2, v1

    .line 9881
    if-eqz v2, :cond_11

    .line 9882
    const/16 v3, 0xc

    .line 9883
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 9879
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 9887
    :cond_12
    iget-object v1, p0, Ljkn;->m:Ljkt;

    if-eqz v1, :cond_13

    .line 9888
    const/16 v1, 0xd

    iget-object v2, p0, Ljkn;->m:Ljkt;

    .line 9889
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9891
    :cond_13
    return v0
.end method
