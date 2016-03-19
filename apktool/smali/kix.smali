.class public final Lkix;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkix;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile g:[Lkix;


# instance fields
.field public a:Ljava/lang/String;

.field public b:[Lkis;

.field public c:[Lkis;

.field public d:[Lkjr;

.field public e:[Ljava/lang/String;

.field public f:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3023
    invoke-direct {p0}, Llyb;-><init>()V

    .line 4028
    iput-object v1, p0, Lkix;->a:Ljava/lang/String;

    .line 4029
    invoke-static {}, Lkis;->d()[Lkis;

    move-result-object v0

    iput-object v0, p0, Lkix;->b:[Lkis;

    .line 4030
    invoke-static {}, Lkis;->d()[Lkis;

    move-result-object v0

    iput-object v0, p0, Lkix;->c:[Lkis;

    .line 4031
    invoke-static {}, Lkjr;->d()[Lkjr;

    move-result-object v0

    iput-object v0, p0, Lkix;->d:[Lkjr;

    .line 4032
    sget-object v0, Llyo;->f:[Ljava/lang/String;

    iput-object v0, p0, Lkix;->e:[Ljava/lang/String;

    .line 4033
    iput-object v1, p0, Lkix;->f:Ljava/lang/Integer;

    .line 4034
    iput-object v1, p0, Lkix;->eD:Llyd;

    .line 4035
    const/4 v0, -0x1

    iput v0, p0, Lkix;->eE:I

    .line 3025
    return-void
.end method

.method public static d()[Lkix;
    .locals 2

    .prologue
    .line 2992
    sget-object v0, Lkix;->g:[Lkix;

    if-nez v0, :cond_1

    .line 2993
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 2995
    :try_start_0
    sget-object v0, Lkix;->g:[Lkix;

    if-nez v0, :cond_0

    .line 2996
    const/4 v0, 0x0

    new-array v0, v0, [Lkix;

    sput-object v0, Lkix;->g:[Lkix;

    .line 2998
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3000
    :cond_1
    sget-object v0, Lkix;->g:[Lkix;

    return-object v0

    .line 2998
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

    .line 4143
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 4144
    sparse-switch v0, :sswitch_data_0

    .line 4148
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4149
    :sswitch_0
    return-object p0

    .line 4154
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkix;->a:Ljava/lang/String;

    goto :goto_0

    .line 4158
    :sswitch_2
    const/16 v0, 0x1a

    .line 4159
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 4160
    iget-object v0, p0, Lkix;->b:[Lkis;

    if-nez v0, :cond_2

    move v0, v1

    .line 4161
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lkis;

    .line 4163
    if-eqz v0, :cond_1

    .line 4164
    iget-object v3, p0, Lkix;->b:[Lkis;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4166
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 4167
    new-instance v3, Lkis;

    invoke-direct {v3}, Lkis;-><init>()V

    aput-object v3, v2, v0

    .line 4168
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 4169
    invoke-virtual {p1}, Llxy;->a()I

    .line 4166
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 4160
    :cond_2
    iget-object v0, p0, Lkix;->b:[Lkis;

    array-length v0, v0

    goto :goto_1

    .line 4172
    :cond_3
    new-instance v3, Lkis;

    invoke-direct {v3}, Lkis;-><init>()V

    aput-object v3, v2, v0

    .line 4173
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 4174
    iput-object v2, p0, Lkix;->b:[Lkis;

    goto :goto_0

    .line 4178
    :sswitch_3
    const/16 v0, 0x22

    .line 4179
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 4180
    iget-object v0, p0, Lkix;->c:[Lkis;

    if-nez v0, :cond_5

    move v0, v1

    .line 4181
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lkis;

    .line 4183
    if-eqz v0, :cond_4

    .line 4184
    iget-object v3, p0, Lkix;->c:[Lkis;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4186
    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    .line 4187
    new-instance v3, Lkis;

    invoke-direct {v3}, Lkis;-><init>()V

    aput-object v3, v2, v0

    .line 4188
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 4189
    invoke-virtual {p1}, Llxy;->a()I

    .line 4186
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 4180
    :cond_5
    iget-object v0, p0, Lkix;->c:[Lkis;

    array-length v0, v0

    goto :goto_3

    .line 4192
    :cond_6
    new-instance v3, Lkis;

    invoke-direct {v3}, Lkis;-><init>()V

    aput-object v3, v2, v0

    .line 4193
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 4194
    iput-object v2, p0, Lkix;->c:[Lkis;

    goto/16 :goto_0

    .line 4198
    :sswitch_4
    const/16 v0, 0x2a

    .line 4199
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 4200
    iget-object v0, p0, Lkix;->d:[Lkjr;

    if-nez v0, :cond_8

    move v0, v1

    .line 4201
    :goto_5
    add-int/2addr v2, v0

    new-array v2, v2, [Lkjr;

    .line 4203
    if-eqz v0, :cond_7

    .line 4204
    iget-object v3, p0, Lkix;->d:[Lkjr;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4206
    :cond_7
    :goto_6
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_9

    .line 4207
    new-instance v3, Lkjr;

    invoke-direct {v3}, Lkjr;-><init>()V

    aput-object v3, v2, v0

    .line 4208
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 4209
    invoke-virtual {p1}, Llxy;->a()I

    .line 4206
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 4200
    :cond_8
    iget-object v0, p0, Lkix;->d:[Lkjr;

    array-length v0, v0

    goto :goto_5

    .line 4212
    :cond_9
    new-instance v3, Lkjr;

    invoke-direct {v3}, Lkjr;-><init>()V

    aput-object v3, v2, v0

    .line 4213
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 4214
    iput-object v2, p0, Lkix;->d:[Lkjr;

    goto/16 :goto_0

    .line 4218
    :sswitch_5
    const/16 v0, 0x32

    .line 4219
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 4220
    iget-object v0, p0, Lkix;->e:[Ljava/lang/String;

    if-nez v0, :cond_b

    move v0, v1

    .line 4221
    :goto_7
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    .line 4222
    if-eqz v0, :cond_a

    .line 4223
    iget-object v3, p0, Lkix;->e:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4225
    :cond_a
    :goto_8
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_c

    .line 4226
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 4227
    invoke-virtual {p1}, Llxy;->a()I

    .line 4225
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 4220
    :cond_b
    iget-object v0, p0, Lkix;->e:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_7

    .line 4230
    :cond_c
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 4231
    iput-object v2, p0, Lkix;->e:[Ljava/lang/String;

    goto/16 :goto_0

    .line 4235
    :sswitch_6
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 4236
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 4239
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lkix;->f:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 4144
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x1a -> :sswitch_2
        0x22 -> :sswitch_3
        0x2a -> :sswitch_4
        0x32 -> :sswitch_5
        0x38 -> :sswitch_6
    .end sparse-switch

    .line 4236
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 3042
    iget-object v0, p0, Lkix;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3043
    const/4 v0, 0x1

    iget-object v2, p0, Lkix;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Llxz;->a(ILjava/lang/String;)V

    .line 3045
    :cond_0
    iget-object v0, p0, Lkix;->b:[Lkis;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lkix;->b:[Lkis;

    array-length v0, v0

    if-lez v0, :cond_2

    move v0, v1

    .line 3046
    :goto_0
    iget-object v2, p0, Lkix;->b:[Lkis;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 3047
    iget-object v2, p0, Lkix;->b:[Lkis;

    aget-object v2, v2, v0

    .line 3048
    if-eqz v2, :cond_1

    .line 3049
    const/4 v3, 0x3

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 3046
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3053
    :cond_2
    iget-object v0, p0, Lkix;->c:[Lkis;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lkix;->c:[Lkis;

    array-length v0, v0

    if-lez v0, :cond_4

    move v0, v1

    .line 3054
    :goto_1
    iget-object v2, p0, Lkix;->c:[Lkis;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 3055
    iget-object v2, p0, Lkix;->c:[Lkis;

    aget-object v2, v2, v0

    .line 3056
    if-eqz v2, :cond_3

    .line 3057
    const/4 v3, 0x4

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 3054
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3061
    :cond_4
    iget-object v0, p0, Lkix;->d:[Lkjr;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lkix;->d:[Lkjr;

    array-length v0, v0

    if-lez v0, :cond_6

    move v0, v1

    .line 3062
    :goto_2
    iget-object v2, p0, Lkix;->d:[Lkjr;

    array-length v2, v2

    if-ge v0, v2, :cond_6

    .line 3063
    iget-object v2, p0, Lkix;->d:[Lkjr;

    aget-object v2, v2, v0

    .line 3064
    if-eqz v2, :cond_5

    .line 3065
    const/4 v3, 0x5

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 3062
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3069
    :cond_6
    iget-object v0, p0, Lkix;->e:[Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lkix;->e:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_8

    .line 3070
    :goto_3
    iget-object v0, p0, Lkix;->e:[Ljava/lang/String;

    array-length v0, v0

    if-ge v1, v0, :cond_8

    .line 3071
    iget-object v0, p0, Lkix;->e:[Ljava/lang/String;

    aget-object v0, v0, v1

    .line 3072
    if-eqz v0, :cond_7

    .line 3073
    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Llxz;->a(ILjava/lang/String;)V

    .line 3070
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 3077
    :cond_8
    iget-object v0, p0, Lkix;->f:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    .line 3078
    const/4 v0, 0x7

    iget-object v1, p0, Lkix;->f:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 3080
    :cond_9
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 3081
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 3085
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 3086
    iget-object v2, p0, Lkix;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 3087
    const/4 v2, 0x1

    iget-object v3, p0, Lkix;->a:Ljava/lang/String;

    .line 3088
    invoke-static {v2, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3090
    :cond_0
    iget-object v2, p0, Lkix;->b:[Lkis;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lkix;->b:[Lkis;

    array-length v2, v2

    if-lez v2, :cond_3

    move v2, v0

    move v0, v1

    .line 3091
    :goto_0
    iget-object v3, p0, Lkix;->b:[Lkis;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 3092
    iget-object v3, p0, Lkix;->b:[Lkis;

    aget-object v3, v3, v0

    .line 3093
    if-eqz v3, :cond_1

    .line 3094
    const/4 v4, 0x3

    .line 3095
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 3091
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 3099
    :cond_3
    iget-object v2, p0, Lkix;->c:[Lkis;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lkix;->c:[Lkis;

    array-length v2, v2

    if-lez v2, :cond_6

    move v2, v0

    move v0, v1

    .line 3100
    :goto_1
    iget-object v3, p0, Lkix;->c:[Lkis;

    array-length v3, v3

    if-ge v0, v3, :cond_5

    .line 3101
    iget-object v3, p0, Lkix;->c:[Lkis;

    aget-object v3, v3, v0

    .line 3102
    if-eqz v3, :cond_4

    .line 3103
    const/4 v4, 0x4

    .line 3104
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 3100
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    move v0, v2

    .line 3108
    :cond_6
    iget-object v2, p0, Lkix;->d:[Lkjr;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lkix;->d:[Lkjr;

    array-length v2, v2

    if-lez v2, :cond_9

    move v2, v0

    move v0, v1

    .line 3109
    :goto_2
    iget-object v3, p0, Lkix;->d:[Lkjr;

    array-length v3, v3

    if-ge v0, v3, :cond_8

    .line 3110
    iget-object v3, p0, Lkix;->d:[Lkjr;

    aget-object v3, v3, v0

    .line 3111
    if-eqz v3, :cond_7

    .line 3112
    const/4 v4, 0x5

    .line 3113
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 3109
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_8
    move v0, v2

    .line 3117
    :cond_9
    iget-object v2, p0, Lkix;->e:[Ljava/lang/String;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lkix;->e:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_c

    move v2, v1

    move v3, v1

    .line 3120
    :goto_3
    iget-object v4, p0, Lkix;->e:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_b

    .line 3121
    iget-object v4, p0, Lkix;->e:[Ljava/lang/String;

    aget-object v4, v4, v1

    .line 3122
    if-eqz v4, :cond_a

    .line 3123
    add-int/lit8 v3, v3, 0x1

    .line 3125
    invoke-static {v4}, Llxz;->a(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 3120
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 3128
    :cond_b
    add-int/2addr v0, v2

    .line 3129
    mul-int/lit8 v1, v3, 0x1

    add-int/2addr v0, v1

    .line 3131
    :cond_c
    iget-object v1, p0, Lkix;->f:Ljava/lang/Integer;

    if-eqz v1, :cond_d

    .line 3132
    const/4 v1, 0x7

    iget-object v2, p0, Lkix;->f:Ljava/lang/Integer;

    .line 3133
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3135
    :cond_d
    return v0
.end method
