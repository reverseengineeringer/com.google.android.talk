.class public final Liuh;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Liuh;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lium;

.field public b:Llyt;

.field public c:Liuj;

.field public d:Ljava/lang/Long;

.field public e:Ljava/lang/String;

.field public f:Liui;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/Boolean;

.field public i:Ljava/lang/Integer;

.field public j:Liul;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 876
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1881
    iput-object v0, p0, Liuh;->a:Lium;

    .line 1882
    iput-object v0, p0, Liuh;->b:Llyt;

    .line 1883
    iput-object v0, p0, Liuh;->c:Liuj;

    .line 1884
    iput-object v0, p0, Liuh;->d:Ljava/lang/Long;

    .line 1885
    iput-object v0, p0, Liuh;->e:Ljava/lang/String;

    .line 1886
    iput-object v0, p0, Liuh;->f:Liui;

    .line 1887
    iput-object v0, p0, Liuh;->g:Ljava/lang/String;

    .line 1888
    iput-object v0, p0, Liuh;->h:Ljava/lang/Boolean;

    .line 1889
    iput-object v0, p0, Liuh;->i:Ljava/lang/Integer;

    .line 1890
    iput-object v0, p0, Liuh;->j:Liul;

    .line 1891
    iput-object v0, p0, Liuh;->eD:Llyd;

    .line 1892
    const/4 v0, -0x1

    iput v0, p0, Liuh;->eE:I

    .line 878
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 2

    .prologue
    .line 2983
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2984
    sparse-switch v0, :sswitch_data_0

    .line 2988
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2989
    :sswitch_0
    return-object p0

    .line 2994
    :sswitch_1
    iget-object v0, p0, Liuh;->a:Lium;

    if-nez v0, :cond_1

    .line 2995
    new-instance v0, Lium;

    invoke-direct {v0}, Lium;-><init>()V

    iput-object v0, p0, Liuh;->a:Lium;

    .line 2997
    :cond_1
    iget-object v0, p0, Liuh;->a:Lium;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 3001
    :sswitch_2
    iget-object v0, p0, Liuh;->b:Llyt;

    if-nez v0, :cond_2

    .line 3002
    new-instance v0, Llyt;

    invoke-direct {v0}, Llyt;-><init>()V

    iput-object v0, p0, Liuh;->b:Llyt;

    .line 3004
    :cond_2
    iget-object v0, p0, Liuh;->b:Llyt;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 3008
    :sswitch_3
    iget-object v0, p0, Liuh;->c:Liuj;

    if-nez v0, :cond_3

    .line 3009
    new-instance v0, Liuj;

    invoke-direct {v0}, Liuj;-><init>()V

    iput-object v0, p0, Liuh;->c:Liuj;

    .line 3011
    :cond_3
    iget-object v0, p0, Liuh;->c:Liuj;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 3015
    :sswitch_4
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Liuh;->d:Ljava/lang/Long;

    goto :goto_0

    .line 3019
    :sswitch_5
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Liuh;->e:Ljava/lang/String;

    goto :goto_0

    .line 3023
    :sswitch_6
    iget-object v0, p0, Liuh;->f:Liui;

    if-nez v0, :cond_4

    .line 3024
    new-instance v0, Liui;

    invoke-direct {v0}, Liui;-><init>()V

    iput-object v0, p0, Liuh;->f:Liui;

    .line 3026
    :cond_4
    iget-object v0, p0, Liuh;->f:Liui;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 3030
    :sswitch_7
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Liuh;->g:Ljava/lang/String;

    goto :goto_0

    .line 3034
    :sswitch_8
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Liuh;->h:Ljava/lang/Boolean;

    goto :goto_0

    .line 3038
    :sswitch_9
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 3039
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 3044
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Liuh;->i:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 3050
    :sswitch_a
    iget-object v0, p0, Liuh;->j:Liul;

    if-nez v0, :cond_5

    .line 3051
    new-instance v0, Liul;

    invoke-direct {v0}, Liul;-><init>()V

    iput-object v0, p0, Liuh;->j:Liul;

    .line 3053
    :cond_5
    iget-object v0, p0, Liuh;->j:Liul;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 2984
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
        0x52 -> :sswitch_a
    .end sparse-switch

    .line 3039
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 899
    iget-object v0, p0, Liuh;->a:Lium;

    if-eqz v0, :cond_0

    .line 900
    const/4 v0, 0x1

    iget-object v1, p0, Liuh;->a:Lium;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 902
    :cond_0
    iget-object v0, p0, Liuh;->b:Llyt;

    if-eqz v0, :cond_1

    .line 903
    const/4 v0, 0x2

    iget-object v1, p0, Liuh;->b:Llyt;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 905
    :cond_1
    iget-object v0, p0, Liuh;->c:Liuj;

    if-eqz v0, :cond_2

    .line 906
    const/4 v0, 0x3

    iget-object v1, p0, Liuh;->c:Liuj;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 908
    :cond_2
    iget-object v0, p0, Liuh;->d:Ljava/lang/Long;

    if-eqz v0, :cond_3

    .line 909
    const/4 v0, 0x4

    iget-object v1, p0, Liuh;->d:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 911
    :cond_3
    iget-object v0, p0, Liuh;->e:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 912
    const/4 v0, 0x5

    iget-object v1, p0, Liuh;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 914
    :cond_4
    iget-object v0, p0, Liuh;->f:Liui;

    if-eqz v0, :cond_5

    .line 915
    const/4 v0, 0x6

    iget-object v1, p0, Liuh;->f:Liui;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 917
    :cond_5
    iget-object v0, p0, Liuh;->g:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 918
    const/4 v0, 0x7

    iget-object v1, p0, Liuh;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 920
    :cond_6
    iget-object v0, p0, Liuh;->h:Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    .line 921
    const/16 v0, 0x8

    iget-object v1, p0, Liuh;->h:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 923
    :cond_7
    iget-object v0, p0, Liuh;->i:Ljava/lang/Integer;

    if-eqz v0, :cond_8

    .line 924
    const/16 v0, 0x9

    iget-object v1, p0, Liuh;->i:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 926
    :cond_8
    iget-object v0, p0, Liuh;->j:Liul;

    if-eqz v0, :cond_9

    .line 927
    const/16 v0, 0xa

    iget-object v1, p0, Liuh;->j:Liul;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 929
    :cond_9
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 930
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 934
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 935
    iget-object v1, p0, Liuh;->a:Lium;

    if-eqz v1, :cond_0

    .line 936
    const/4 v1, 0x1

    iget-object v2, p0, Liuh;->a:Lium;

    .line 937
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 939
    :cond_0
    iget-object v1, p0, Liuh;->b:Llyt;

    if-eqz v1, :cond_1

    .line 940
    const/4 v1, 0x2

    iget-object v2, p0, Liuh;->b:Llyt;

    .line 941
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 943
    :cond_1
    iget-object v1, p0, Liuh;->c:Liuj;

    if-eqz v1, :cond_2

    .line 944
    const/4 v1, 0x3

    iget-object v2, p0, Liuh;->c:Liuj;

    .line 945
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 947
    :cond_2
    iget-object v1, p0, Liuh;->d:Ljava/lang/Long;

    if-eqz v1, :cond_3

    .line 948
    const/4 v1, 0x4

    iget-object v2, p0, Liuh;->d:Ljava/lang/Long;

    .line 949
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 951
    :cond_3
    iget-object v1, p0, Liuh;->e:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 952
    const/4 v1, 0x5

    iget-object v2, p0, Liuh;->e:Ljava/lang/String;

    .line 953
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 955
    :cond_4
    iget-object v1, p0, Liuh;->f:Liui;

    if-eqz v1, :cond_5

    .line 956
    const/4 v1, 0x6

    iget-object v2, p0, Liuh;->f:Liui;

    .line 957
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 959
    :cond_5
    iget-object v1, p0, Liuh;->g:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 960
    const/4 v1, 0x7

    iget-object v2, p0, Liuh;->g:Ljava/lang/String;

    .line 961
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 963
    :cond_6
    iget-object v1, p0, Liuh;->h:Ljava/lang/Boolean;

    if-eqz v1, :cond_7

    .line 964
    const/16 v1, 0x8

    iget-object v2, p0, Liuh;->h:Ljava/lang/Boolean;

    .line 965
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 965
    add-int/2addr v0, v1

    .line 967
    :cond_7
    iget-object v1, p0, Liuh;->i:Ljava/lang/Integer;

    if-eqz v1, :cond_8

    .line 968
    const/16 v1, 0x9

    iget-object v2, p0, Liuh;->i:Ljava/lang/Integer;

    .line 969
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 971
    :cond_8
    iget-object v1, p0, Liuh;->j:Liul;

    if-eqz v1, :cond_9

    .line 972
    const/16 v1, 0xa

    iget-object v2, p0, Liuh;->j:Liul;

    .line 973
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 975
    :cond_9
    return v0
.end method
