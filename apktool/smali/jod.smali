.class public final Ljod;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljod;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile f:[Ljod;


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:[I

.field public c:Ljava/lang/Boolean;

.field public d:Ljava/lang/Boolean;

.field public e:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 823
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1828
    iput-object v1, p0, Ljod;->a:Ljava/lang/Integer;

    .line 1829
    sget-object v0, Llyo;->a:[I

    iput-object v0, p0, Ljod;->b:[I

    .line 1830
    iput-object v1, p0, Ljod;->c:Ljava/lang/Boolean;

    .line 1831
    iput-object v1, p0, Ljod;->d:Ljava/lang/Boolean;

    .line 1832
    iput-object v1, p0, Ljod;->e:Ljava/lang/Boolean;

    .line 1833
    iput-object v1, p0, Ljod;->eD:Llyd;

    .line 1834
    const/4 v0, -0x1

    iput v0, p0, Ljod;->eE:I

    .line 825
    return-void
.end method

.method public static d()[Ljod;
    .locals 2

    .prologue
    .line 795
    sget-object v0, Ljod;->f:[Ljod;

    if-nez v0, :cond_1

    .line 796
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 798
    :try_start_0
    sget-object v0, Ljod;->f:[Ljod;

    if-nez v0, :cond_0

    .line 799
    const/4 v0, 0x0

    new-array v0, v0, [Ljod;

    sput-object v0, Ljod;->f:[Ljod;

    .line 801
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 803
    :cond_1
    sget-object v0, Ljod;->f:[Ljod;

    return-object v0

    .line 801
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 4898
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 4899
    sparse-switch v0, :sswitch_data_0

    .line 4903
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4904
    :sswitch_0
    return-object p0

    .line 4909
    :sswitch_1
    const/16 v0, 0x8

    .line 4910
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v4

    .line 4911
    new-array v5, v4, [I

    move v3, v2

    move v1, v2

    .line 4913
    :goto_1
    if-ge v3, v4, :cond_2

    .line 4914
    if-eqz v3, :cond_1

    .line 4915
    invoke-virtual {p1}, Llxy;->a()I

    .line 4917
    :cond_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v6

    .line 4918
    packed-switch v6, :pswitch_data_0

    move v0, v1

    .line 4913
    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_1

    .line 4927
    :pswitch_0
    add-int/lit8 v0, v1, 0x1

    aput v6, v5, v1

    goto :goto_2

    .line 4931
    :cond_2
    if-eqz v1, :cond_0

    .line 4932
    iget-object v0, p0, Ljod;->b:[I

    if-nez v0, :cond_3

    move v0, v2

    .line 4933
    :goto_3
    if-nez v0, :cond_4

    array-length v3, v5

    if-ne v1, v3, :cond_4

    .line 4934
    iput-object v5, p0, Ljod;->b:[I

    goto :goto_0

    .line 4932
    :cond_3
    iget-object v0, p0, Ljod;->b:[I

    array-length v0, v0

    goto :goto_3

    .line 4936
    :cond_4
    add-int v3, v0, v1

    new-array v3, v3, [I

    .line 4937
    if-eqz v0, :cond_5

    .line 4938
    iget-object v4, p0, Ljod;->b:[I

    invoke-static {v4, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4940
    :cond_5
    invoke-static {v5, v2, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4941
    iput-object v3, p0, Ljod;->b:[I

    goto :goto_0

    .line 4947
    :sswitch_2
    invoke-virtual {p1}, Llxy;->p()I

    move-result v0

    .line 4948
    invoke-virtual {p1, v0}, Llxy;->c(I)I

    move-result v3

    .line 4951
    invoke-virtual {p1}, Llxy;->r()I

    move-result v1

    move v0, v2

    .line 4952
    :goto_4
    invoke-virtual {p1}, Llxy;->q()I

    move-result v4

    if-lez v4, :cond_6

    .line 4953
    invoke-virtual {p1}, Llxy;->f()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    goto :goto_4

    .line 4962
    :pswitch_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 4966
    :cond_6
    if-eqz v0, :cond_a

    .line 4967
    invoke-virtual {p1, v1}, Llxy;->e(I)V

    .line 4968
    iget-object v1, p0, Ljod;->b:[I

    if-nez v1, :cond_8

    move v1, v2

    .line 4969
    :goto_5
    add-int/2addr v0, v1

    new-array v4, v0, [I

    .line 4970
    if-eqz v1, :cond_7

    .line 4971
    iget-object v0, p0, Ljod;->b:[I

    invoke-static {v0, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4973
    :cond_7
    :goto_6
    invoke-virtual {p1}, Llxy;->q()I

    move-result v0

    if-lez v0, :cond_9

    .line 4974
    invoke-virtual {p1}, Llxy;->f()I

    move-result v5

    .line 4975
    packed-switch v5, :pswitch_data_2

    goto :goto_6

    .line 4984
    :pswitch_2
    add-int/lit8 v0, v1, 0x1

    aput v5, v4, v1

    move v1, v0

    goto :goto_6

    .line 4968
    :cond_8
    iget-object v1, p0, Ljod;->b:[I

    array-length v1, v1

    goto :goto_5

    .line 4988
    :cond_9
    iput-object v4, p0, Ljod;->b:[I

    .line 4990
    :cond_a
    invoke-virtual {p1, v3}, Llxy;->d(I)V

    goto/16 :goto_0

    .line 4994
    :sswitch_3
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljod;->c:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 4998
    :sswitch_4
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljod;->d:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 5002
    :sswitch_5
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 5003
    packed-switch v0, :pswitch_data_3

    goto/16 :goto_0

    .line 5036
    :pswitch_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljod;->a:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 5042
    :sswitch_6
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljod;->e:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 4899
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0xa -> :sswitch_2
        0x10 -> :sswitch_3
        0x18 -> :sswitch_4
        0x20 -> :sswitch_5
        0x28 -> :sswitch_6
    .end sparse-switch

    .line 4918
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

    .line 4953
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 4975
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 5003
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 841
    iget-object v0, p0, Ljod;->b:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljod;->b:[I

    array-length v0, v0

    if-lez v0, :cond_0

    .line 842
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ljod;->b:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 843
    const/4 v1, 0x1

    iget-object v2, p0, Ljod;->b:[I

    aget v2, v2, v0

    invoke-virtual {p1, v1, v2}, Llxz;->a(II)V

    .line 842
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 846
    :cond_0
    iget-object v0, p0, Ljod;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 847
    const/4 v0, 0x2

    iget-object v1, p0, Ljod;->c:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 849
    :cond_1
    iget-object v0, p0, Ljod;->d:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 850
    const/4 v0, 0x3

    iget-object v1, p0, Ljod;->d:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 852
    :cond_2
    iget-object v0, p0, Ljod;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 853
    const/4 v0, 0x4

    iget-object v1, p0, Ljod;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 855
    :cond_3
    iget-object v0, p0, Ljod;->e:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    .line 856
    const/4 v0, 0x5

    iget-object v1, p0, Ljod;->e:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 858
    :cond_4
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 859
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 863
    invoke-super {p0}, Llyb;->b()I

    move-result v2

    .line 864
    iget-object v1, p0, Ljod;->b:[I

    if-eqz v1, :cond_5

    iget-object v1, p0, Ljod;->b:[I

    array-length v1, v1

    if-lez v1, :cond_5

    move v1, v0

    .line 866
    :goto_0
    iget-object v3, p0, Ljod;->b:[I

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 867
    iget-object v3, p0, Ljod;->b:[I

    aget v3, v3, v0

    .line 869
    invoke-static {v3}, Llxz;->e(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 866
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 871
    :cond_0
    add-int v0, v2, v1

    .line 872
    iget-object v1, p0, Ljod;->b:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 874
    :goto_1
    iget-object v1, p0, Ljod;->c:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 875
    const/4 v1, 0x2

    iget-object v2, p0, Ljod;->c:Ljava/lang/Boolean;

    .line 876
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 876
    add-int/2addr v0, v1

    .line 878
    :cond_1
    iget-object v1, p0, Ljod;->d:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 879
    const/4 v1, 0x3

    iget-object v2, p0, Ljod;->d:Ljava/lang/Boolean;

    .line 880
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 3620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 880
    add-int/2addr v0, v1

    .line 882
    :cond_2
    iget-object v1, p0, Ljod;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 883
    const/4 v1, 0x4

    iget-object v2, p0, Ljod;->a:Ljava/lang/Integer;

    .line 884
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 886
    :cond_3
    iget-object v1, p0, Ljod;->e:Ljava/lang/Boolean;

    if-eqz v1, :cond_4

    .line 887
    const/4 v1, 0x5

    iget-object v2, p0, Ljod;->e:Ljava/lang/Boolean;

    .line 888
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 888
    add-int/2addr v0, v1

    .line 890
    :cond_4
    return v0

    :cond_5
    move v0, v2

    goto :goto_1
.end method
