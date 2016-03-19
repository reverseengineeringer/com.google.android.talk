.class public final Lkja;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkja;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile i:[Lkja;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/Integer;

.field public e:Lkjc;

.field public f:Lkjb;

.field public g:Lkje;

.field public h:Lkjd;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 953
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1958
    iput-object v0, p0, Lkja;->a:Ljava/lang/String;

    .line 1959
    iput-object v0, p0, Lkja;->b:Ljava/lang/String;

    .line 1960
    iput-object v0, p0, Lkja;->c:Ljava/lang/String;

    .line 1961
    iput-object v0, p0, Lkja;->d:Ljava/lang/Integer;

    .line 1962
    iput-object v0, p0, Lkja;->e:Lkjc;

    .line 1963
    iput-object v0, p0, Lkja;->f:Lkjb;

    .line 1964
    iput-object v0, p0, Lkja;->g:Lkje;

    .line 1965
    iput-object v0, p0, Lkja;->h:Lkjd;

    .line 1966
    iput-object v0, p0, Lkja;->eD:Llyd;

    .line 1967
    const/4 v0, -0x1

    iput v0, p0, Lkja;->eE:I

    .line 955
    return-void
.end method

.method public static d()[Lkja;
    .locals 2

    .prologue
    .line 916
    sget-object v0, Lkja;->i:[Lkja;

    if-nez v0, :cond_1

    .line 917
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 919
    :try_start_0
    sget-object v0, Lkja;->i:[Lkja;

    if-nez v0, :cond_0

    .line 920
    const/4 v0, 0x0

    new-array v0, v0, [Lkja;

    sput-object v0, Lkja;->i:[Lkja;

    .line 922
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 924
    :cond_1
    sget-object v0, Lkja;->i:[Lkja;

    return-object v0

    .line 922
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
    .locals 1

    .prologue
    .line 2044
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2045
    sparse-switch v0, :sswitch_data_0

    .line 2049
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2050
    :sswitch_0
    return-object p0

    .line 2055
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkja;->a:Ljava/lang/String;

    goto :goto_0

    .line 2059
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkja;->b:Ljava/lang/String;

    goto :goto_0

    .line 2063
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkja;->c:Ljava/lang/String;

    goto :goto_0

    .line 2067
    :sswitch_4
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 2068
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2073
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lkja;->d:Ljava/lang/Integer;

    goto :goto_0

    .line 2079
    :sswitch_5
    iget-object v0, p0, Lkja;->e:Lkjc;

    if-nez v0, :cond_1

    .line 2080
    new-instance v0, Lkjc;

    invoke-direct {v0}, Lkjc;-><init>()V

    iput-object v0, p0, Lkja;->e:Lkjc;

    .line 2082
    :cond_1
    iget-object v0, p0, Lkja;->e:Lkjc;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2086
    :sswitch_6
    iget-object v0, p0, Lkja;->f:Lkjb;

    if-nez v0, :cond_2

    .line 2087
    new-instance v0, Lkjb;

    invoke-direct {v0}, Lkjb;-><init>()V

    iput-object v0, p0, Lkja;->f:Lkjb;

    .line 2089
    :cond_2
    iget-object v0, p0, Lkja;->f:Lkjb;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2093
    :sswitch_7
    iget-object v0, p0, Lkja;->g:Lkje;

    if-nez v0, :cond_3

    .line 2094
    new-instance v0, Lkje;

    invoke-direct {v0}, Lkje;-><init>()V

    iput-object v0, p0, Lkja;->g:Lkje;

    .line 2096
    :cond_3
    iget-object v0, p0, Lkja;->g:Lkje;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2100
    :sswitch_8
    iget-object v0, p0, Lkja;->h:Lkjd;

    if-nez v0, :cond_4

    .line 2101
    new-instance v0, Lkjd;

    invoke-direct {v0}, Lkjd;-><init>()V

    iput-object v0, p0, Lkja;->h:Lkjd;

    .line 2103
    :cond_4
    iget-object v0, p0, Lkja;->h:Lkjd;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2045
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
        0x42 -> :sswitch_8
    .end sparse-switch

    .line 2068
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 974
    iget-object v0, p0, Lkja;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 975
    const/4 v0, 0x1

    iget-object v1, p0, Lkja;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 977
    :cond_0
    iget-object v0, p0, Lkja;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 978
    const/4 v0, 0x2

    iget-object v1, p0, Lkja;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 980
    :cond_1
    iget-object v0, p0, Lkja;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 981
    const/4 v0, 0x3

    iget-object v1, p0, Lkja;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 983
    :cond_2
    iget-object v0, p0, Lkja;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 984
    const/4 v0, 0x4

    iget-object v1, p0, Lkja;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 986
    :cond_3
    iget-object v0, p0, Lkja;->e:Lkjc;

    if-eqz v0, :cond_4

    .line 987
    const/4 v0, 0x5

    iget-object v1, p0, Lkja;->e:Lkjc;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 989
    :cond_4
    iget-object v0, p0, Lkja;->f:Lkjb;

    if-eqz v0, :cond_5

    .line 990
    const/4 v0, 0x6

    iget-object v1, p0, Lkja;->f:Lkjb;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 992
    :cond_5
    iget-object v0, p0, Lkja;->g:Lkje;

    if-eqz v0, :cond_6

    .line 993
    const/4 v0, 0x7

    iget-object v1, p0, Lkja;->g:Lkje;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 995
    :cond_6
    iget-object v0, p0, Lkja;->h:Lkjd;

    if-eqz v0, :cond_7

    .line 996
    const/16 v0, 0x8

    iget-object v1, p0, Lkja;->h:Lkjd;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 998
    :cond_7
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 999
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 1003
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 1004
    iget-object v1, p0, Lkja;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1005
    const/4 v1, 0x1

    iget-object v2, p0, Lkja;->a:Ljava/lang/String;

    .line 1006
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1008
    :cond_0
    iget-object v1, p0, Lkja;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1009
    const/4 v1, 0x2

    iget-object v2, p0, Lkja;->b:Ljava/lang/String;

    .line 1010
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1012
    :cond_1
    iget-object v1, p0, Lkja;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 1013
    const/4 v1, 0x3

    iget-object v2, p0, Lkja;->c:Ljava/lang/String;

    .line 1014
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1016
    :cond_2
    iget-object v1, p0, Lkja;->d:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 1017
    const/4 v1, 0x4

    iget-object v2, p0, Lkja;->d:Ljava/lang/Integer;

    .line 1018
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1020
    :cond_3
    iget-object v1, p0, Lkja;->e:Lkjc;

    if-eqz v1, :cond_4

    .line 1021
    const/4 v1, 0x5

    iget-object v2, p0, Lkja;->e:Lkjc;

    .line 1022
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1024
    :cond_4
    iget-object v1, p0, Lkja;->f:Lkjb;

    if-eqz v1, :cond_5

    .line 1025
    const/4 v1, 0x6

    iget-object v2, p0, Lkja;->f:Lkjb;

    .line 1026
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1028
    :cond_5
    iget-object v1, p0, Lkja;->g:Lkje;

    if-eqz v1, :cond_6

    .line 1029
    const/4 v1, 0x7

    iget-object v2, p0, Lkja;->g:Lkje;

    .line 1030
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1032
    :cond_6
    iget-object v1, p0, Lkja;->h:Lkjd;

    if-eqz v1, :cond_7

    .line 1033
    const/16 v1, 0x8

    iget-object v2, p0, Lkja;->h:Lkjd;

    .line 1034
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1036
    :cond_7
    return v0
.end method
