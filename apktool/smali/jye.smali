.class public final Ljye;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljye;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljzx;

.field public c:Ljava/lang/Long;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:[Lkbi;

.field public g:Ljyp;

.field public h:Lkbf;

.field public i:Ljava/lang/Integer;

.field public requestHeader:Lkdo;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3986
    invoke-direct {p0}, Llyb;-><init>()V

    .line 4991
    iput-object v1, p0, Ljye;->requestHeader:Lkdo;

    .line 4992
    iput-object v1, p0, Ljye;->a:Ljava/lang/Integer;

    .line 4993
    iput-object v1, p0, Ljye;->b:Ljzx;

    .line 4994
    iput-object v1, p0, Ljye;->c:Ljava/lang/Long;

    .line 4995
    iput-object v1, p0, Ljye;->d:Ljava/lang/String;

    .line 4996
    iput-object v1, p0, Ljye;->e:Ljava/lang/String;

    .line 4997
    invoke-static {}, Lkbi;->d()[Lkbi;

    move-result-object v0

    iput-object v0, p0, Ljye;->f:[Lkbi;

    .line 4998
    iput-object v1, p0, Ljye;->g:Ljyp;

    .line 4999
    iput-object v1, p0, Ljye;->h:Lkbf;

    .line 5000
    iput-object v1, p0, Ljye;->i:Ljava/lang/Integer;

    .line 5001
    iput-object v1, p0, Ljye;->eD:Llyd;

    .line 5002
    const/4 v0, -0x1

    iput v0, p0, Ljye;->eE:I

    .line 3988
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 5103
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 5104
    sparse-switch v0, :sswitch_data_0

    .line 5108
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5109
    :sswitch_0
    return-object p0

    .line 5114
    :sswitch_1
    iget-object v0, p0, Ljye;->requestHeader:Lkdo;

    if-nez v0, :cond_1

    .line 5115
    new-instance v0, Lkdo;

    invoke-direct {v0}, Lkdo;-><init>()V

    iput-object v0, p0, Ljye;->requestHeader:Lkdo;

    .line 5117
    :cond_1
    iget-object v0, p0, Ljye;->requestHeader:Lkdo;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 5121
    :sswitch_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 5122
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 5126
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljye;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 5132
    :sswitch_3
    invoke-virtual {p1}, Llxy;->d()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Ljye;->c:Ljava/lang/Long;

    goto :goto_0

    .line 5136
    :sswitch_4
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljye;->d:Ljava/lang/String;

    goto :goto_0

    .line 5140
    :sswitch_5
    const/16 v0, 0x2a

    .line 5141
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 5142
    iget-object v0, p0, Ljye;->f:[Lkbi;

    if-nez v0, :cond_3

    move v0, v1

    .line 5143
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lkbi;

    .line 5145
    if-eqz v0, :cond_2

    .line 5146
    iget-object v3, p0, Ljye;->f:[Lkbi;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5148
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 5149
    new-instance v3, Lkbi;

    invoke-direct {v3}, Lkbi;-><init>()V

    aput-object v3, v2, v0

    .line 5150
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 5151
    invoke-virtual {p1}, Llxy;->a()I

    .line 5148
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 5142
    :cond_3
    iget-object v0, p0, Ljye;->f:[Lkbi;

    array-length v0, v0

    goto :goto_1

    .line 5154
    :cond_4
    new-instance v3, Lkbi;

    invoke-direct {v3}, Lkbi;-><init>()V

    aput-object v3, v2, v0

    .line 5155
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 5156
    iput-object v2, p0, Ljye;->f:[Lkbi;

    goto :goto_0

    .line 5160
    :sswitch_6
    iget-object v0, p0, Ljye;->g:Ljyp;

    if-nez v0, :cond_5

    .line 5161
    new-instance v0, Ljyp;

    invoke-direct {v0}, Ljyp;-><init>()V

    iput-object v0, p0, Ljye;->g:Ljyp;

    .line 5163
    :cond_5
    iget-object v0, p0, Ljye;->g:Ljyp;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 5167
    :sswitch_7
    iget-object v0, p0, Ljye;->h:Lkbf;

    if-nez v0, :cond_6

    .line 5168
    new-instance v0, Lkbf;

    invoke-direct {v0}, Lkbf;-><init>()V

    iput-object v0, p0, Ljye;->h:Lkbf;

    .line 5170
    :cond_6
    iget-object v0, p0, Ljye;->h:Lkbf;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 5174
    :sswitch_8
    iget-object v0, p0, Ljye;->b:Ljzx;

    if-nez v0, :cond_7

    .line 5175
    new-instance v0, Ljzx;

    invoke-direct {v0}, Ljzx;-><init>()V

    iput-object v0, p0, Ljye;->b:Ljzx;

    .line 5177
    :cond_7
    iget-object v0, p0, Ljye;->b:Ljzx;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 5181
    :sswitch_9
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljye;->e:Ljava/lang/String;

    goto/16 :goto_0

    .line 5185
    :sswitch_a
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 5186
    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    .line 5190
    :pswitch_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljye;->i:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 5104
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x5a -> :sswitch_6
        0x62 -> :sswitch_7
        0x6a -> :sswitch_8
        0x72 -> :sswitch_9
        0x78 -> :sswitch_a
    .end sparse-switch

    .line 5122
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 5186
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 4009
    iget-object v0, p0, Ljye;->requestHeader:Lkdo;

    if-eqz v0, :cond_0

    .line 4010
    const/4 v0, 0x1

    iget-object v1, p0, Ljye;->requestHeader:Lkdo;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 4012
    :cond_0
    iget-object v0, p0, Ljye;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 4013
    const/4 v0, 0x2

    iget-object v1, p0, Ljye;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 4015
    :cond_1
    iget-object v0, p0, Ljye;->c:Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 4016
    const/4 v0, 0x3

    iget-object v1, p0, Ljye;->c:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->a(IJ)V

    .line 4018
    :cond_2
    iget-object v0, p0, Ljye;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 4019
    const/4 v0, 0x4

    iget-object v1, p0, Ljye;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 4021
    :cond_3
    iget-object v0, p0, Ljye;->f:[Lkbi;

    if-eqz v0, :cond_5

    iget-object v0, p0, Ljye;->f:[Lkbi;

    array-length v0, v0

    if-lez v0, :cond_5

    .line 4022
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ljye;->f:[Lkbi;

    array-length v1, v1

    if-ge v0, v1, :cond_5

    .line 4023
    iget-object v1, p0, Ljye;->f:[Lkbi;

    aget-object v1, v1, v0

    .line 4024
    if-eqz v1, :cond_4

    .line 4025
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 4022
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4029
    :cond_5
    iget-object v0, p0, Ljye;->g:Ljyp;

    if-eqz v0, :cond_6

    .line 4030
    const/16 v0, 0xb

    iget-object v1, p0, Ljye;->g:Ljyp;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 4032
    :cond_6
    iget-object v0, p0, Ljye;->h:Lkbf;

    if-eqz v0, :cond_7

    .line 4033
    const/16 v0, 0xc

    iget-object v1, p0, Ljye;->h:Lkbf;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 4035
    :cond_7
    iget-object v0, p0, Ljye;->b:Ljzx;

    if-eqz v0, :cond_8

    .line 4036
    const/16 v0, 0xd

    iget-object v1, p0, Ljye;->b:Ljzx;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 4038
    :cond_8
    iget-object v0, p0, Ljye;->e:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 4039
    const/16 v0, 0xe

    iget-object v1, p0, Ljye;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 4041
    :cond_9
    iget-object v0, p0, Ljye;->i:Ljava/lang/Integer;

    if-eqz v0, :cond_a

    .line 4042
    const/16 v0, 0xf

    iget-object v1, p0, Ljye;->i:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 4044
    :cond_a
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 4045
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 4049
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 4050
    iget-object v1, p0, Ljye;->requestHeader:Lkdo;

    if-eqz v1, :cond_0

    .line 4051
    const/4 v1, 0x1

    iget-object v2, p0, Ljye;->requestHeader:Lkdo;

    .line 4052
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4054
    :cond_0
    iget-object v1, p0, Ljye;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 4055
    const/4 v1, 0x2

    iget-object v2, p0, Ljye;->a:Ljava/lang/Integer;

    .line 4056
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4058
    :cond_1
    iget-object v1, p0, Ljye;->c:Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 4059
    const/4 v1, 0x3

    iget-object v2, p0, Ljye;->c:Ljava/lang/Long;

    .line 4060
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->d(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4062
    :cond_2
    iget-object v1, p0, Ljye;->d:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 4063
    const/4 v1, 0x4

    iget-object v2, p0, Ljye;->d:Ljava/lang/String;

    .line 4064
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4066
    :cond_3
    iget-object v1, p0, Ljye;->f:[Lkbi;

    if-eqz v1, :cond_6

    iget-object v1, p0, Ljye;->f:[Lkbi;

    array-length v1, v1

    if-lez v1, :cond_6

    .line 4067
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Ljye;->f:[Lkbi;

    array-length v2, v2

    if-ge v0, v2, :cond_5

    .line 4068
    iget-object v2, p0, Ljye;->f:[Lkbi;

    aget-object v2, v2, v0

    .line 4069
    if-eqz v2, :cond_4

    .line 4070
    const/4 v3, 0x5

    .line 4071
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 4067
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    move v0, v1

    .line 4075
    :cond_6
    iget-object v1, p0, Ljye;->g:Ljyp;

    if-eqz v1, :cond_7

    .line 4076
    const/16 v1, 0xb

    iget-object v2, p0, Ljye;->g:Ljyp;

    .line 4077
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4079
    :cond_7
    iget-object v1, p0, Ljye;->h:Lkbf;

    if-eqz v1, :cond_8

    .line 4080
    const/16 v1, 0xc

    iget-object v2, p0, Ljye;->h:Lkbf;

    .line 4081
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4083
    :cond_8
    iget-object v1, p0, Ljye;->b:Ljzx;

    if-eqz v1, :cond_9

    .line 4084
    const/16 v1, 0xd

    iget-object v2, p0, Ljye;->b:Ljzx;

    .line 4085
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4087
    :cond_9
    iget-object v1, p0, Ljye;->e:Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 4088
    const/16 v1, 0xe

    iget-object v2, p0, Ljye;->e:Ljava/lang/String;

    .line 4089
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4091
    :cond_a
    iget-object v1, p0, Ljye;->i:Ljava/lang/Integer;

    if-eqz v1, :cond_b

    .line 4092
    const/16 v1, 0xf

    iget-object v2, p0, Ljye;->i:Ljava/lang/Integer;

    .line 4093
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4095
    :cond_b
    return v0
.end method
