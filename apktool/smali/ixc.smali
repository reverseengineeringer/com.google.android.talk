.class public final Lixc;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lixc;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Boolean;

.field public b:Ljava/lang/Integer;

.field public c:Ljava/lang/Long;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/Boolean;

.field public f:Ljava/lang/Boolean;

.field public g:[Livs;

.field public h:Ljava/lang/Integer;

.field public i:Ljava/lang/Boolean;

.field public j:[Livm;

.field public k:Ljava/lang/Long;

.field public l:Livz;

.field public m:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3026
    invoke-direct {p0}, Llyb;-><init>()V

    .line 4031
    iput-object v1, p0, Lixc;->a:Ljava/lang/Boolean;

    .line 4032
    iput-object v1, p0, Lixc;->b:Ljava/lang/Integer;

    .line 4033
    iput-object v1, p0, Lixc;->c:Ljava/lang/Long;

    .line 4034
    iput-object v1, p0, Lixc;->d:Ljava/lang/String;

    .line 4035
    iput-object v1, p0, Lixc;->e:Ljava/lang/Boolean;

    .line 4036
    iput-object v1, p0, Lixc;->f:Ljava/lang/Boolean;

    .line 4037
    invoke-static {}, Livs;->d()[Livs;

    move-result-object v0

    iput-object v0, p0, Lixc;->g:[Livs;

    .line 4038
    iput-object v1, p0, Lixc;->h:Ljava/lang/Integer;

    .line 4039
    iput-object v1, p0, Lixc;->i:Ljava/lang/Boolean;

    .line 4040
    invoke-static {}, Livm;->d()[Livm;

    move-result-object v0

    iput-object v0, p0, Lixc;->j:[Livm;

    .line 4041
    iput-object v1, p0, Lixc;->k:Ljava/lang/Long;

    .line 4042
    iput-object v1, p0, Lixc;->l:Livz;

    .line 4043
    iput-object v1, p0, Lixc;->m:Ljava/lang/Boolean;

    .line 4044
    iput-object v1, p0, Lixc;->eD:Llyd;

    .line 4045
    const/4 v0, -0x1

    iput v0, p0, Lixc;->eE:I

    .line 3028
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 9177
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 9178
    sparse-switch v0, :sswitch_data_0

    .line 9182
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9183
    :sswitch_0
    return-object p0

    .line 9188
    :sswitch_1
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lixc;->a:Ljava/lang/Boolean;

    goto :goto_0

    .line 9192
    :sswitch_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 9193
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 9202
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lixc;->b:Ljava/lang/Integer;

    goto :goto_0

    .line 9208
    :sswitch_3
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lixc;->e:Ljava/lang/Boolean;

    goto :goto_0

    .line 9212
    :sswitch_4
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lixc;->f:Ljava/lang/Boolean;

    goto :goto_0

    .line 9216
    :sswitch_5
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lixc;->k:Ljava/lang/Long;

    goto :goto_0

    .line 9220
    :sswitch_6
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 9221
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 9225
    :pswitch_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lixc;->h:Ljava/lang/Integer;

    goto :goto_0

    .line 9231
    :sswitch_7
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lixc;->i:Ljava/lang/Boolean;

    goto :goto_0

    .line 9235
    :sswitch_8
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lixc;->c:Ljava/lang/Long;

    goto :goto_0

    .line 9239
    :sswitch_9
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lixc;->d:Ljava/lang/String;

    goto :goto_0

    .line 9243
    :sswitch_a
    const/16 v0, 0x52

    .line 9244
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 9245
    iget-object v0, p0, Lixc;->j:[Livm;

    if-nez v0, :cond_2

    move v0, v1

    .line 9246
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Livm;

    .line 9248
    if-eqz v0, :cond_1

    .line 9249
    iget-object v3, p0, Lixc;->j:[Livm;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9251
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 9252
    new-instance v3, Livm;

    invoke-direct {v3}, Livm;-><init>()V

    aput-object v3, v2, v0

    .line 9253
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 9254
    invoke-virtual {p1}, Llxy;->a()I

    .line 9251
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 9245
    :cond_2
    iget-object v0, p0, Lixc;->j:[Livm;

    array-length v0, v0

    goto :goto_1

    .line 9257
    :cond_3
    new-instance v3, Livm;

    invoke-direct {v3}, Livm;-><init>()V

    aput-object v3, v2, v0

    .line 9258
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 9259
    iput-object v2, p0, Lixc;->j:[Livm;

    goto/16 :goto_0

    .line 9263
    :sswitch_b
    iget-object v0, p0, Lixc;->l:Livz;

    if-nez v0, :cond_4

    .line 9264
    new-instance v0, Livz;

    invoke-direct {v0}, Livz;-><init>()V

    iput-object v0, p0, Lixc;->l:Livz;

    .line 9266
    :cond_4
    iget-object v0, p0, Lixc;->l:Livz;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 9270
    :sswitch_c
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lixc;->m:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 9274
    :sswitch_d
    const/16 v0, 0x6a

    .line 9275
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 9276
    iget-object v0, p0, Lixc;->g:[Livs;

    if-nez v0, :cond_6

    move v0, v1

    .line 9277
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Livs;

    .line 9279
    if-eqz v0, :cond_5

    .line 9280
    iget-object v3, p0, Lixc;->g:[Livs;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9282
    :cond_5
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_7

    .line 9283
    new-instance v3, Livs;

    invoke-direct {v3}, Livs;-><init>()V

    aput-object v3, v2, v0

    .line 9284
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 9285
    invoke-virtual {p1}, Llxy;->a()I

    .line 9282
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 9276
    :cond_6
    iget-object v0, p0, Lixc;->g:[Livs;

    array-length v0, v0

    goto :goto_3

    .line 9288
    :cond_7
    new-instance v3, Livs;

    invoke-direct {v3}, Livs;-><init>()V

    aput-object v3, v2, v0

    .line 9289
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 9290
    iput-object v2, p0, Lixc;->g:[Livs;

    goto/16 :goto_0

    .line 9178
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
        0x60 -> :sswitch_c
        0x6a -> :sswitch_d
    .end sparse-switch

    .line 9193
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

    .line 9221
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
    const/4 v1, 0x0

    .line 3052
    iget-object v0, p0, Lixc;->a:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 3053
    const/4 v0, 0x1

    iget-object v2, p0, Lixc;->a:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p1, v0, v2}, Llxz;->a(IZ)V

    .line 3055
    :cond_0
    iget-object v0, p0, Lixc;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 3056
    const/4 v0, 0x2

    iget-object v2, p0, Lixc;->b:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Llxz;->a(II)V

    .line 3058
    :cond_1
    iget-object v0, p0, Lixc;->e:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 3059
    const/4 v0, 0x3

    iget-object v2, p0, Lixc;->e:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p1, v0, v2}, Llxz;->a(IZ)V

    .line 3061
    :cond_2
    iget-object v0, p0, Lixc;->f:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 3062
    const/4 v0, 0x4

    iget-object v2, p0, Lixc;->f:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p1, v0, v2}, Llxz;->a(IZ)V

    .line 3064
    :cond_3
    iget-object v0, p0, Lixc;->k:Ljava/lang/Long;

    if-eqz v0, :cond_4

    .line 3065
    const/4 v0, 0x5

    iget-object v2, p0, Lixc;->k:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 3067
    :cond_4
    iget-object v0, p0, Lixc;->h:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 3068
    const/4 v0, 0x6

    iget-object v2, p0, Lixc;->h:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Llxz;->a(II)V

    .line 3070
    :cond_5
    iget-object v0, p0, Lixc;->i:Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    .line 3071
    const/4 v0, 0x7

    iget-object v2, p0, Lixc;->i:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p1, v0, v2}, Llxz;->a(IZ)V

    .line 3073
    :cond_6
    iget-object v0, p0, Lixc;->c:Ljava/lang/Long;

    if-eqz v0, :cond_7

    .line 3074
    const/16 v0, 0x8

    iget-object v2, p0, Lixc;->c:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 3076
    :cond_7
    iget-object v0, p0, Lixc;->d:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 3077
    const/16 v0, 0x9

    iget-object v2, p0, Lixc;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Llxz;->a(ILjava/lang/String;)V

    .line 3079
    :cond_8
    iget-object v0, p0, Lixc;->j:[Livm;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lixc;->j:[Livm;

    array-length v0, v0

    if-lez v0, :cond_a

    move v0, v1

    .line 3080
    :goto_0
    iget-object v2, p0, Lixc;->j:[Livm;

    array-length v2, v2

    if-ge v0, v2, :cond_a

    .line 3081
    iget-object v2, p0, Lixc;->j:[Livm;

    aget-object v2, v2, v0

    .line 3082
    if-eqz v2, :cond_9

    .line 3083
    const/16 v3, 0xa

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 3080
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3087
    :cond_a
    iget-object v0, p0, Lixc;->l:Livz;

    if-eqz v0, :cond_b

    .line 3088
    const/16 v0, 0xb

    iget-object v2, p0, Lixc;->l:Livz;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 3090
    :cond_b
    iget-object v0, p0, Lixc;->m:Ljava/lang/Boolean;

    if-eqz v0, :cond_c

    .line 3091
    const/16 v0, 0xc

    iget-object v2, p0, Lixc;->m:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p1, v0, v2}, Llxz;->a(IZ)V

    .line 3093
    :cond_c
    iget-object v0, p0, Lixc;->g:[Livs;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lixc;->g:[Livs;

    array-length v0, v0

    if-lez v0, :cond_e

    .line 3094
    :goto_1
    iget-object v0, p0, Lixc;->g:[Livs;

    array-length v0, v0

    if-ge v1, v0, :cond_e

    .line 3095
    iget-object v0, p0, Lixc;->g:[Livs;

    aget-object v0, v0, v1

    .line 3096
    if-eqz v0, :cond_d

    .line 3097
    const/16 v2, 0xd

    invoke-virtual {p1, v2, v0}, Llxz;->b(ILlyi;)V

    .line 3094
    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3101
    :cond_e
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 3102
    return-void
.end method

.method protected b()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 3106
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 3107
    iget-object v2, p0, Lixc;->a:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    .line 3108
    const/4 v2, 0x1

    iget-object v3, p0, Lixc;->a:Ljava/lang/Boolean;

    .line 3109
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4620
    invoke-static {v2}, Llxz;->f(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 3109
    add-int/2addr v0, v2

    .line 3111
    :cond_0
    iget-object v2, p0, Lixc;->b:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 3112
    const/4 v2, 0x2

    iget-object v3, p0, Lixc;->b:Ljava/lang/Integer;

    .line 3113
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Llxz;->e(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 3115
    :cond_1
    iget-object v2, p0, Lixc;->e:Ljava/lang/Boolean;

    if-eqz v2, :cond_2

    .line 3116
    const/4 v2, 0x3

    iget-object v3, p0, Lixc;->e:Ljava/lang/Boolean;

    .line 3117
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 5620
    invoke-static {v2}, Llxz;->f(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 3117
    add-int/2addr v0, v2

    .line 3119
    :cond_2
    iget-object v2, p0, Lixc;->f:Ljava/lang/Boolean;

    if-eqz v2, :cond_3

    .line 3120
    const/4 v2, 0x4

    iget-object v3, p0, Lixc;->f:Ljava/lang/Boolean;

    .line 3121
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6620
    invoke-static {v2}, Llxz;->f(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 3121
    add-int/2addr v0, v2

    .line 3123
    :cond_3
    iget-object v2, p0, Lixc;->k:Ljava/lang/Long;

    if-eqz v2, :cond_4

    .line 3124
    const/4 v2, 0x5

    iget-object v3, p0, Lixc;->k:Ljava/lang/Long;

    .line 3125
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Llxz;->e(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 3127
    :cond_4
    iget-object v2, p0, Lixc;->h:Ljava/lang/Integer;

    if-eqz v2, :cond_5

    .line 3128
    const/4 v2, 0x6

    iget-object v3, p0, Lixc;->h:Ljava/lang/Integer;

    .line 3129
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Llxz;->e(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 3131
    :cond_5
    iget-object v2, p0, Lixc;->i:Ljava/lang/Boolean;

    if-eqz v2, :cond_6

    .line 3132
    const/4 v2, 0x7

    iget-object v3, p0, Lixc;->i:Ljava/lang/Boolean;

    .line 3133
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 7620
    invoke-static {v2}, Llxz;->f(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 3133
    add-int/2addr v0, v2

    .line 3135
    :cond_6
    iget-object v2, p0, Lixc;->c:Ljava/lang/Long;

    if-eqz v2, :cond_7

    .line 3136
    const/16 v2, 0x8

    iget-object v3, p0, Lixc;->c:Ljava/lang/Long;

    .line 3137
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Llxz;->e(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 3139
    :cond_7
    iget-object v2, p0, Lixc;->d:Ljava/lang/String;

    if-eqz v2, :cond_8

    .line 3140
    const/16 v2, 0x9

    iget-object v3, p0, Lixc;->d:Ljava/lang/String;

    .line 3141
    invoke-static {v2, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3143
    :cond_8
    iget-object v2, p0, Lixc;->j:[Livm;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lixc;->j:[Livm;

    array-length v2, v2

    if-lez v2, :cond_b

    move v2, v0

    move v0, v1

    .line 3144
    :goto_0
    iget-object v3, p0, Lixc;->j:[Livm;

    array-length v3, v3

    if-ge v0, v3, :cond_a

    .line 3145
    iget-object v3, p0, Lixc;->j:[Livm;

    aget-object v3, v3, v0

    .line 3146
    if-eqz v3, :cond_9

    .line 3147
    const/16 v4, 0xa

    .line 3148
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 3144
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_a
    move v0, v2

    .line 3152
    :cond_b
    iget-object v2, p0, Lixc;->l:Livz;

    if-eqz v2, :cond_c

    .line 3153
    const/16 v2, 0xb

    iget-object v3, p0, Lixc;->l:Livz;

    .line 3154
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3156
    :cond_c
    iget-object v2, p0, Lixc;->m:Ljava/lang/Boolean;

    if-eqz v2, :cond_d

    .line 3157
    const/16 v2, 0xc

    iget-object v3, p0, Lixc;->m:Ljava/lang/Boolean;

    .line 3158
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8620
    invoke-static {v2}, Llxz;->f(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 3158
    add-int/2addr v0, v2

    .line 3160
    :cond_d
    iget-object v2, p0, Lixc;->g:[Livs;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lixc;->g:[Livs;

    array-length v2, v2

    if-lez v2, :cond_f

    .line 3161
    :goto_1
    iget-object v2, p0, Lixc;->g:[Livs;

    array-length v2, v2

    if-ge v1, v2, :cond_f

    .line 3162
    iget-object v2, p0, Lixc;->g:[Livs;

    aget-object v2, v2, v1

    .line 3163
    if-eqz v2, :cond_e

    .line 3164
    const/16 v3, 0xd

    .line 3165
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3161
    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3169
    :cond_f
    return v0
.end method
