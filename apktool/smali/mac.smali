.class public final Lmac;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmac;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile m:[Lmac;


# instance fields
.field public a:Llzu;

.field public b:Lmav;

.field public c:Ljava/lang/Integer;

.field public d:Ljava/lang/Integer;

.field public e:Llzu;

.field public f:Lmav;

.field public g:Ljava/lang/Boolean;

.field public h:[Lmaf;

.field public i:Ljava/lang/Boolean;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/Integer;

.field public l:Lity;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 966
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1971
    iput-object v1, p0, Lmac;->a:Llzu;

    .line 1972
    iput-object v1, p0, Lmac;->b:Lmav;

    .line 1973
    iput-object v1, p0, Lmac;->c:Ljava/lang/Integer;

    .line 1974
    iput-object v1, p0, Lmac;->d:Ljava/lang/Integer;

    .line 1975
    iput-object v1, p0, Lmac;->e:Llzu;

    .line 1976
    iput-object v1, p0, Lmac;->f:Lmav;

    .line 1977
    iput-object v1, p0, Lmac;->g:Ljava/lang/Boolean;

    .line 1978
    invoke-static {}, Lmaf;->d()[Lmaf;

    move-result-object v0

    iput-object v0, p0, Lmac;->h:[Lmaf;

    .line 1979
    iput-object v1, p0, Lmac;->i:Ljava/lang/Boolean;

    .line 1980
    iput-object v1, p0, Lmac;->j:Ljava/lang/String;

    .line 1981
    iput-object v1, p0, Lmac;->k:Ljava/lang/Integer;

    .line 1982
    iput-object v1, p0, Lmac;->l:Lity;

    .line 1983
    iput-object v1, p0, Lmac;->eD:Llyd;

    .line 1984
    const/4 v0, -0x1

    iput v0, p0, Lmac;->eE:I

    .line 968
    return-void
.end method

.method public static d()[Lmac;
    .locals 2

    .prologue
    .line 917
    sget-object v0, Lmac;->m:[Lmac;

    if-nez v0, :cond_1

    .line 918
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 920
    :try_start_0
    sget-object v0, Lmac;->m:[Lmac;

    if-nez v0, :cond_0

    .line 921
    const/4 v0, 0x0

    new-array v0, v0, [Lmac;

    sput-object v0, Lmac;->m:[Lmac;

    .line 923
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 925
    :cond_1
    sget-object v0, Lmac;->m:[Lmac;

    return-object v0

    .line 923
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
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 4099
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 4100
    sparse-switch v0, :sswitch_data_0

    .line 4104
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4105
    :sswitch_0
    return-object p0

    .line 4110
    :sswitch_1
    iget-object v0, p0, Lmac;->a:Llzu;

    if-nez v0, :cond_1

    .line 4111
    new-instance v0, Llzu;

    invoke-direct {v0}, Llzu;-><init>()V

    iput-object v0, p0, Lmac;->a:Llzu;

    .line 4113
    :cond_1
    iget-object v0, p0, Lmac;->a:Llzu;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 4117
    :sswitch_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 4118
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 4126
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lmac;->c:Ljava/lang/Integer;

    goto :goto_0

    .line 4132
    :sswitch_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lmac;->d:Ljava/lang/Integer;

    goto :goto_0

    .line 4136
    :sswitch_4
    iget-object v0, p0, Lmac;->e:Llzu;

    if-nez v0, :cond_2

    .line 4137
    new-instance v0, Llzu;

    invoke-direct {v0}, Llzu;-><init>()V

    iput-object v0, p0, Lmac;->e:Llzu;

    .line 4139
    :cond_2
    iget-object v0, p0, Lmac;->e:Llzu;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 4143
    :sswitch_5
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmac;->g:Ljava/lang/Boolean;

    goto :goto_0

    .line 4147
    :sswitch_6
    const/16 v0, 0x32

    .line 4148
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 4149
    iget-object v0, p0, Lmac;->h:[Lmaf;

    if-nez v0, :cond_4

    move v0, v1

    .line 4150
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lmaf;

    .line 4152
    if-eqz v0, :cond_3

    .line 4153
    iget-object v3, p0, Lmac;->h:[Lmaf;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4155
    :cond_3
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_5

    .line 4156
    new-instance v3, Lmaf;

    invoke-direct {v3}, Lmaf;-><init>()V

    aput-object v3, v2, v0

    .line 4157
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 4158
    invoke-virtual {p1}, Llxy;->a()I

    .line 4155
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 4149
    :cond_4
    iget-object v0, p0, Lmac;->h:[Lmaf;

    array-length v0, v0

    goto :goto_1

    .line 4161
    :cond_5
    new-instance v3, Lmaf;

    invoke-direct {v3}, Lmaf;-><init>()V

    aput-object v3, v2, v0

    .line 4162
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 4163
    iput-object v2, p0, Lmac;->h:[Lmaf;

    goto/16 :goto_0

    .line 4167
    :sswitch_7
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmac;->i:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 4171
    :sswitch_8
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmac;->j:Ljava/lang/String;

    goto/16 :goto_0

    .line 4175
    :sswitch_9
    iget-object v0, p0, Lmac;->b:Lmav;

    if-nez v0, :cond_6

    .line 4176
    new-instance v0, Lmav;

    invoke-direct {v0}, Lmav;-><init>()V

    iput-object v0, p0, Lmac;->b:Lmav;

    .line 4178
    :cond_6
    iget-object v0, p0, Lmac;->b:Lmav;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 4182
    :sswitch_a
    iget-object v0, p0, Lmac;->l:Lity;

    if-nez v0, :cond_7

    .line 4183
    new-instance v0, Lity;

    invoke-direct {v0}, Lity;-><init>()V

    iput-object v0, p0, Lmac;->l:Lity;

    .line 4185
    :cond_7
    iget-object v0, p0, Lmac;->l:Lity;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 4189
    :sswitch_b
    iget-object v0, p0, Lmac;->f:Lmav;

    if-nez v0, :cond_8

    .line 4190
    new-instance v0, Lmav;

    invoke-direct {v0}, Lmav;-><init>()V

    iput-object v0, p0, Lmac;->f:Lmav;

    .line 4192
    :cond_8
    iget-object v0, p0, Lmac;->f:Lmav;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 4196
    :sswitch_c
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 4197
    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    .line 4201
    :pswitch_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lmac;->k:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 4100
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
        0x38 -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
        0x60 -> :sswitch_c
    .end sparse-switch

    .line 4118
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 4197
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 991
    iget-object v0, p0, Lmac;->a:Llzu;

    if-eqz v0, :cond_0

    .line 992
    const/4 v0, 0x1

    iget-object v1, p0, Lmac;->a:Llzu;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 994
    :cond_0
    iget-object v0, p0, Lmac;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 995
    const/4 v0, 0x2

    iget-object v1, p0, Lmac;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 997
    :cond_1
    iget-object v0, p0, Lmac;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 998
    const/4 v0, 0x3

    iget-object v1, p0, Lmac;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 1000
    :cond_2
    iget-object v0, p0, Lmac;->e:Llzu;

    if-eqz v0, :cond_3

    .line 1001
    const/4 v0, 0x4

    iget-object v1, p0, Lmac;->e:Llzu;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1003
    :cond_3
    iget-object v0, p0, Lmac;->g:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    .line 1004
    const/4 v0, 0x5

    iget-object v1, p0, Lmac;->g:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 1006
    :cond_4
    iget-object v0, p0, Lmac;->h:[Lmaf;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lmac;->h:[Lmaf;

    array-length v0, v0

    if-lez v0, :cond_6

    .line 1007
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lmac;->h:[Lmaf;

    array-length v1, v1

    if-ge v0, v1, :cond_6

    .line 1008
    iget-object v1, p0, Lmac;->h:[Lmaf;

    aget-object v1, v1, v0

    .line 1009
    if-eqz v1, :cond_5

    .line 1010
    const/4 v2, 0x6

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 1007
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1014
    :cond_6
    iget-object v0, p0, Lmac;->i:Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    .line 1015
    const/4 v0, 0x7

    iget-object v1, p0, Lmac;->i:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 1017
    :cond_7
    iget-object v0, p0, Lmac;->j:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 1018
    const/16 v0, 0x8

    iget-object v1, p0, Lmac;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 1020
    :cond_8
    iget-object v0, p0, Lmac;->b:Lmav;

    if-eqz v0, :cond_9

    .line 1021
    const/16 v0, 0x9

    iget-object v1, p0, Lmac;->b:Lmav;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1023
    :cond_9
    iget-object v0, p0, Lmac;->l:Lity;

    if-eqz v0, :cond_a

    .line 1024
    const/16 v0, 0xa

    iget-object v1, p0, Lmac;->l:Lity;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1026
    :cond_a
    iget-object v0, p0, Lmac;->f:Lmav;

    if-eqz v0, :cond_b

    .line 1027
    const/16 v0, 0xb

    iget-object v1, p0, Lmac;->f:Lmav;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1029
    :cond_b
    iget-object v0, p0, Lmac;->k:Ljava/lang/Integer;

    if-eqz v0, :cond_c

    .line 1030
    const/16 v0, 0xc

    iget-object v1, p0, Lmac;->k:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 1032
    :cond_c
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1033
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 1037
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 1038
    iget-object v1, p0, Lmac;->a:Llzu;

    if-eqz v1, :cond_0

    .line 1039
    const/4 v1, 0x1

    iget-object v2, p0, Lmac;->a:Llzu;

    .line 1040
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1042
    :cond_0
    iget-object v1, p0, Lmac;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 1043
    const/4 v1, 0x2

    iget-object v2, p0, Lmac;->c:Ljava/lang/Integer;

    .line 1044
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1046
    :cond_1
    iget-object v1, p0, Lmac;->d:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 1047
    const/4 v1, 0x3

    iget-object v2, p0, Lmac;->d:Ljava/lang/Integer;

    .line 1048
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1050
    :cond_2
    iget-object v1, p0, Lmac;->e:Llzu;

    if-eqz v1, :cond_3

    .line 1051
    const/4 v1, 0x4

    iget-object v2, p0, Lmac;->e:Llzu;

    .line 1052
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1054
    :cond_3
    iget-object v1, p0, Lmac;->g:Ljava/lang/Boolean;

    if-eqz v1, :cond_4

    .line 1055
    const/4 v1, 0x5

    iget-object v2, p0, Lmac;->g:Ljava/lang/Boolean;

    .line 1056
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 1056
    add-int/2addr v0, v1

    .line 1058
    :cond_4
    iget-object v1, p0, Lmac;->h:[Lmaf;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lmac;->h:[Lmaf;

    array-length v1, v1

    if-lez v1, :cond_7

    .line 1059
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lmac;->h:[Lmaf;

    array-length v2, v2

    if-ge v0, v2, :cond_6

    .line 1060
    iget-object v2, p0, Lmac;->h:[Lmaf;

    aget-object v2, v2, v0

    .line 1061
    if-eqz v2, :cond_5

    .line 1062
    const/4 v3, 0x6

    .line 1063
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1059
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    move v0, v1

    .line 1067
    :cond_7
    iget-object v1, p0, Lmac;->i:Ljava/lang/Boolean;

    if-eqz v1, :cond_8

    .line 1068
    const/4 v1, 0x7

    iget-object v2, p0, Lmac;->i:Ljava/lang/Boolean;

    .line 1069
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 3620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 1069
    add-int/2addr v0, v1

    .line 1071
    :cond_8
    iget-object v1, p0, Lmac;->j:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 1072
    const/16 v1, 0x8

    iget-object v2, p0, Lmac;->j:Ljava/lang/String;

    .line 1073
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1075
    :cond_9
    iget-object v1, p0, Lmac;->b:Lmav;

    if-eqz v1, :cond_a

    .line 1076
    const/16 v1, 0x9

    iget-object v2, p0, Lmac;->b:Lmav;

    .line 1077
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1079
    :cond_a
    iget-object v1, p0, Lmac;->l:Lity;

    if-eqz v1, :cond_b

    .line 1080
    const/16 v1, 0xa

    iget-object v2, p0, Lmac;->l:Lity;

    .line 1081
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1083
    :cond_b
    iget-object v1, p0, Lmac;->f:Lmav;

    if-eqz v1, :cond_c

    .line 1084
    const/16 v1, 0xb

    iget-object v2, p0, Lmac;->f:Lmav;

    .line 1085
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1087
    :cond_c
    iget-object v1, p0, Lmac;->k:Ljava/lang/Integer;

    if-eqz v1, :cond_d

    .line 1088
    const/16 v1, 0xc

    iget-object v2, p0, Lmac;->k:Ljava/lang/Integer;

    .line 1089
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1091
    :cond_d
    return v0
.end method
