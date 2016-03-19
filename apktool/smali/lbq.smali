.class public final Llbq;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llbq;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Llyc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llyc",
            "<",
            "Lmsu;",
            "Llbq;",
            ">;"
        }
    .end annotation
.end field

.field private static final k:[Llbq;


# instance fields
.field public b:[Llbr;

.field public c:[Llbs;

.field public d:[Llbs;

.field public e:Ljava/lang/Boolean;

.field public f:Ljava/lang/Boolean;

.field public g:Ljava/lang/Boolean;

.field public h:[Llbr;

.field public i:Lmsu;

.field public j:Llbv;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 17
    const-class v0, Llbq;

    const-wide/32 v2, 0x5d25432

    .line 18
    invoke-static {v0, v2, v3}, Llyc;->a(Ljava/lang/Class;J)Llyc;

    move-result-object v0

    sput-object v0, Llbq;->a:Llyc;

    .line 23
    const/4 v0, 0x0

    new-array v0, v0, [Llbq;

    sput-object v0, Llbq;->k:[Llbq;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1062
    invoke-static {}, Llbr;->d()[Llbr;

    move-result-object v0

    iput-object v0, p0, Llbq;->b:[Llbr;

    .line 1063
    invoke-static {}, Llbs;->d()[Llbs;

    move-result-object v0

    iput-object v0, p0, Llbq;->c:[Llbs;

    .line 1064
    invoke-static {}, Llbs;->d()[Llbs;

    move-result-object v0

    iput-object v0, p0, Llbq;->d:[Llbs;

    .line 1065
    iput-object v1, p0, Llbq;->e:Ljava/lang/Boolean;

    .line 1066
    iput-object v1, p0, Llbq;->f:Ljava/lang/Boolean;

    .line 1067
    iput-object v1, p0, Llbq;->g:Ljava/lang/Boolean;

    .line 1068
    invoke-static {}, Llbr;->d()[Llbr;

    move-result-object v0

    iput-object v0, p0, Llbq;->h:[Llbr;

    .line 1069
    iput-object v1, p0, Llbq;->i:Lmsu;

    .line 1070
    iput-object v1, p0, Llbq;->j:Llbv;

    .line 1071
    iput-object v1, p0, Llbq;->eD:Llyd;

    .line 1072
    const/4 v0, -0x1

    iput v0, p0, Llbq;->eE:I

    .line 59
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 4196
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 4197
    sparse-switch v0, :sswitch_data_0

    .line 4201
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4202
    :sswitch_0
    return-object p0

    .line 4207
    :sswitch_1
    const/16 v0, 0x12

    .line 4208
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 4209
    iget-object v0, p0, Llbq;->b:[Llbr;

    if-nez v0, :cond_2

    move v0, v1

    .line 4210
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Llbr;

    .line 4212
    if-eqz v0, :cond_1

    .line 4213
    iget-object v3, p0, Llbq;->b:[Llbr;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4215
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 4216
    new-instance v3, Llbr;

    invoke-direct {v3}, Llbr;-><init>()V

    aput-object v3, v2, v0

    .line 4217
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 4218
    invoke-virtual {p1}, Llxy;->a()I

    .line 4215
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 4209
    :cond_2
    iget-object v0, p0, Llbq;->b:[Llbr;

    array-length v0, v0

    goto :goto_1

    .line 4221
    :cond_3
    new-instance v3, Llbr;

    invoke-direct {v3}, Llbr;-><init>()V

    aput-object v3, v2, v0

    .line 4222
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 4223
    iput-object v2, p0, Llbq;->b:[Llbr;

    goto :goto_0

    .line 4227
    :sswitch_2
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Llbq;->e:Ljava/lang/Boolean;

    goto :goto_0

    .line 4231
    :sswitch_3
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Llbq;->f:Ljava/lang/Boolean;

    goto :goto_0

    .line 4235
    :sswitch_4
    const/16 v0, 0x2a

    .line 4236
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 4237
    iget-object v0, p0, Llbq;->h:[Llbr;

    if-nez v0, :cond_5

    move v0, v1

    .line 4238
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Llbr;

    .line 4240
    if-eqz v0, :cond_4

    .line 4241
    iget-object v3, p0, Llbq;->h:[Llbr;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4243
    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    .line 4244
    new-instance v3, Llbr;

    invoke-direct {v3}, Llbr;-><init>()V

    aput-object v3, v2, v0

    .line 4245
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 4246
    invoke-virtual {p1}, Llxy;->a()I

    .line 4243
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 4237
    :cond_5
    iget-object v0, p0, Llbq;->h:[Llbr;

    array-length v0, v0

    goto :goto_3

    .line 4249
    :cond_6
    new-instance v3, Llbr;

    invoke-direct {v3}, Llbr;-><init>()V

    aput-object v3, v2, v0

    .line 4250
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 4251
    iput-object v2, p0, Llbq;->h:[Llbr;

    goto/16 :goto_0

    .line 4255
    :sswitch_5
    const/16 v0, 0x32

    .line 4256
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 4257
    iget-object v0, p0, Llbq;->c:[Llbs;

    if-nez v0, :cond_8

    move v0, v1

    .line 4258
    :goto_5
    add-int/2addr v2, v0

    new-array v2, v2, [Llbs;

    .line 4260
    if-eqz v0, :cond_7

    .line 4261
    iget-object v3, p0, Llbq;->c:[Llbs;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4263
    :cond_7
    :goto_6
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_9

    .line 4264
    new-instance v3, Llbs;

    invoke-direct {v3}, Llbs;-><init>()V

    aput-object v3, v2, v0

    .line 4265
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 4266
    invoke-virtual {p1}, Llxy;->a()I

    .line 4263
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 4257
    :cond_8
    iget-object v0, p0, Llbq;->c:[Llbs;

    array-length v0, v0

    goto :goto_5

    .line 4269
    :cond_9
    new-instance v3, Llbs;

    invoke-direct {v3}, Llbs;-><init>()V

    aput-object v3, v2, v0

    .line 4270
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 4271
    iput-object v2, p0, Llbq;->c:[Llbs;

    goto/16 :goto_0

    .line 4275
    :sswitch_6
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Llbq;->g:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 4279
    :sswitch_7
    iget-object v0, p0, Llbq;->i:Lmsu;

    if-nez v0, :cond_a

    .line 4280
    new-instance v0, Lmsu;

    invoke-direct {v0}, Lmsu;-><init>()V

    iput-object v0, p0, Llbq;->i:Lmsu;

    .line 4282
    :cond_a
    iget-object v0, p0, Llbq;->i:Lmsu;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 4286
    :sswitch_8
    const/16 v0, 0x4a

    .line 4287
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 4288
    iget-object v0, p0, Llbq;->d:[Llbs;

    if-nez v0, :cond_c

    move v0, v1

    .line 4289
    :goto_7
    add-int/2addr v2, v0

    new-array v2, v2, [Llbs;

    .line 4291
    if-eqz v0, :cond_b

    .line 4292
    iget-object v3, p0, Llbq;->d:[Llbs;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4294
    :cond_b
    :goto_8
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_d

    .line 4295
    new-instance v3, Llbs;

    invoke-direct {v3}, Llbs;-><init>()V

    aput-object v3, v2, v0

    .line 4296
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 4297
    invoke-virtual {p1}, Llxy;->a()I

    .line 4294
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 4288
    :cond_c
    iget-object v0, p0, Llbq;->d:[Llbs;

    array-length v0, v0

    goto :goto_7

    .line 4300
    :cond_d
    new-instance v3, Llbs;

    invoke-direct {v3}, Llbs;-><init>()V

    aput-object v3, v2, v0

    .line 4301
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 4302
    iput-object v2, p0, Llbq;->d:[Llbs;

    goto/16 :goto_0

    .line 4306
    :sswitch_9
    iget-object v0, p0, Llbq;->j:Llbv;

    if-nez v0, :cond_e

    .line 4307
    new-instance v0, Llbv;

    invoke-direct {v0}, Llbv;-><init>()V

    iput-object v0, p0, Llbq;->j:Llbv;

    .line 4309
    :cond_e
    iget-object v0, p0, Llbq;->j:Llbv;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 4197
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x12 -> :sswitch_1
        0x18 -> :sswitch_2
        0x20 -> :sswitch_3
        0x2a -> :sswitch_4
        0x32 -> :sswitch_5
        0x38 -> :sswitch_6
        0x42 -> :sswitch_7
        0x4a -> :sswitch_8
        0xfa2 -> :sswitch_9
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 79
    iget-object v0, p0, Llbq;->b:[Llbr;

    if-eqz v0, :cond_1

    iget-object v0, p0, Llbq;->b:[Llbr;

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v1

    .line 80
    :goto_0
    iget-object v2, p0, Llbq;->b:[Llbr;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 81
    iget-object v2, p0, Llbq;->b:[Llbr;

    aget-object v2, v2, v0

    .line 82
    if-eqz v2, :cond_0

    .line 83
    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 80
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    :cond_1
    iget-object v0, p0, Llbq;->e:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 88
    const/4 v0, 0x3

    iget-object v2, p0, Llbq;->e:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p1, v0, v2}, Llxz;->a(IZ)V

    .line 90
    :cond_2
    iget-object v0, p0, Llbq;->f:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 91
    const/4 v0, 0x4

    iget-object v2, p0, Llbq;->f:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p1, v0, v2}, Llxz;->a(IZ)V

    .line 93
    :cond_3
    iget-object v0, p0, Llbq;->h:[Llbr;

    if-eqz v0, :cond_5

    iget-object v0, p0, Llbq;->h:[Llbr;

    array-length v0, v0

    if-lez v0, :cond_5

    move v0, v1

    .line 94
    :goto_1
    iget-object v2, p0, Llbq;->h:[Llbr;

    array-length v2, v2

    if-ge v0, v2, :cond_5

    .line 95
    iget-object v2, p0, Llbq;->h:[Llbr;

    aget-object v2, v2, v0

    .line 96
    if-eqz v2, :cond_4

    .line 97
    const/4 v3, 0x5

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 94
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 101
    :cond_5
    iget-object v0, p0, Llbq;->c:[Llbs;

    if-eqz v0, :cond_7

    iget-object v0, p0, Llbq;->c:[Llbs;

    array-length v0, v0

    if-lez v0, :cond_7

    move v0, v1

    .line 102
    :goto_2
    iget-object v2, p0, Llbq;->c:[Llbs;

    array-length v2, v2

    if-ge v0, v2, :cond_7

    .line 103
    iget-object v2, p0, Llbq;->c:[Llbs;

    aget-object v2, v2, v0

    .line 104
    if-eqz v2, :cond_6

    .line 105
    const/4 v3, 0x6

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 102
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 109
    :cond_7
    iget-object v0, p0, Llbq;->g:Ljava/lang/Boolean;

    if-eqz v0, :cond_8

    .line 110
    const/4 v0, 0x7

    iget-object v2, p0, Llbq;->g:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p1, v0, v2}, Llxz;->a(IZ)V

    .line 112
    :cond_8
    iget-object v0, p0, Llbq;->i:Lmsu;

    if-eqz v0, :cond_9

    .line 113
    const/16 v0, 0x8

    iget-object v2, p0, Llbq;->i:Lmsu;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 115
    :cond_9
    iget-object v0, p0, Llbq;->d:[Llbs;

    if-eqz v0, :cond_b

    iget-object v0, p0, Llbq;->d:[Llbs;

    array-length v0, v0

    if-lez v0, :cond_b

    .line 116
    :goto_3
    iget-object v0, p0, Llbq;->d:[Llbs;

    array-length v0, v0

    if-ge v1, v0, :cond_b

    .line 117
    iget-object v0, p0, Llbq;->d:[Llbs;

    aget-object v0, v0, v1

    .line 118
    if-eqz v0, :cond_a

    .line 119
    const/16 v2, 0x9

    invoke-virtual {p1, v2, v0}, Llxz;->b(ILlyi;)V

    .line 116
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 123
    :cond_b
    iget-object v0, p0, Llbq;->j:Llbv;

    if-eqz v0, :cond_c

    .line 124
    const/16 v0, 0x1f4

    iget-object v1, p0, Llbq;->j:Llbv;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 126
    :cond_c
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 127
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 131
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 132
    iget-object v2, p0, Llbq;->b:[Llbr;

    if-eqz v2, :cond_2

    iget-object v2, p0, Llbq;->b:[Llbr;

    array-length v2, v2

    if-lez v2, :cond_2

    move v2, v0

    move v0, v1

    .line 133
    :goto_0
    iget-object v3, p0, Llbq;->b:[Llbr;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 134
    iget-object v3, p0, Llbq;->b:[Llbr;

    aget-object v3, v3, v0

    .line 135
    if-eqz v3, :cond_0

    .line 136
    const/4 v4, 0x2

    .line 137
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 133
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 141
    :cond_2
    iget-object v2, p0, Llbq;->e:Ljava/lang/Boolean;

    if-eqz v2, :cond_3

    .line 142
    const/4 v2, 0x3

    iget-object v3, p0, Llbq;->e:Ljava/lang/Boolean;

    .line 143
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1620
    invoke-static {v2}, Llxz;->f(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 143
    add-int/2addr v0, v2

    .line 145
    :cond_3
    iget-object v2, p0, Llbq;->f:Ljava/lang/Boolean;

    if-eqz v2, :cond_4

    .line 146
    const/4 v2, 0x4

    iget-object v3, p0, Llbq;->f:Ljava/lang/Boolean;

    .line 147
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2620
    invoke-static {v2}, Llxz;->f(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 147
    add-int/2addr v0, v2

    .line 149
    :cond_4
    iget-object v2, p0, Llbq;->h:[Llbr;

    if-eqz v2, :cond_7

    iget-object v2, p0, Llbq;->h:[Llbr;

    array-length v2, v2

    if-lez v2, :cond_7

    move v2, v0

    move v0, v1

    .line 150
    :goto_1
    iget-object v3, p0, Llbq;->h:[Llbr;

    array-length v3, v3

    if-ge v0, v3, :cond_6

    .line 151
    iget-object v3, p0, Llbq;->h:[Llbr;

    aget-object v3, v3, v0

    .line 152
    if-eqz v3, :cond_5

    .line 153
    const/4 v4, 0x5

    .line 154
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 150
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    move v0, v2

    .line 158
    :cond_7
    iget-object v2, p0, Llbq;->c:[Llbs;

    if-eqz v2, :cond_a

    iget-object v2, p0, Llbq;->c:[Llbs;

    array-length v2, v2

    if-lez v2, :cond_a

    move v2, v0

    move v0, v1

    .line 159
    :goto_2
    iget-object v3, p0, Llbq;->c:[Llbs;

    array-length v3, v3

    if-ge v0, v3, :cond_9

    .line 160
    iget-object v3, p0, Llbq;->c:[Llbs;

    aget-object v3, v3, v0

    .line 161
    if-eqz v3, :cond_8

    .line 162
    const/4 v4, 0x6

    .line 163
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 159
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_9
    move v0, v2

    .line 167
    :cond_a
    iget-object v2, p0, Llbq;->g:Ljava/lang/Boolean;

    if-eqz v2, :cond_b

    .line 168
    const/4 v2, 0x7

    iget-object v3, p0, Llbq;->g:Ljava/lang/Boolean;

    .line 169
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 3620
    invoke-static {v2}, Llxz;->f(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 169
    add-int/2addr v0, v2

    .line 171
    :cond_b
    iget-object v2, p0, Llbq;->i:Lmsu;

    if-eqz v2, :cond_c

    .line 172
    const/16 v2, 0x8

    iget-object v3, p0, Llbq;->i:Lmsu;

    .line 173
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 175
    :cond_c
    iget-object v2, p0, Llbq;->d:[Llbs;

    if-eqz v2, :cond_e

    iget-object v2, p0, Llbq;->d:[Llbs;

    array-length v2, v2

    if-lez v2, :cond_e

    .line 176
    :goto_3
    iget-object v2, p0, Llbq;->d:[Llbs;

    array-length v2, v2

    if-ge v1, v2, :cond_e

    .line 177
    iget-object v2, p0, Llbq;->d:[Llbs;

    aget-object v2, v2, v1

    .line 178
    if-eqz v2, :cond_d

    .line 179
    const/16 v3, 0x9

    .line 180
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 176
    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 184
    :cond_e
    iget-object v1, p0, Llbq;->j:Llbv;

    if-eqz v1, :cond_f

    .line 185
    const/16 v1, 0x1f4

    iget-object v2, p0, Llbq;->j:Llbv;

    .line 186
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 188
    :cond_f
    return v0
.end method
