.class public final Lklt;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lklt;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Lklu;

.field public b:[Lklv;

.field public c:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1043
    invoke-static {}, Lklu;->d()[Lklu;

    move-result-object v0

    iput-object v0, p0, Lklt;->a:[Lklu;

    .line 1044
    invoke-static {}, Lklv;->d()[Lklv;

    move-result-object v0

    iput-object v0, p0, Lklt;->b:[Lklv;

    .line 1045
    sget-object v0, Llyo;->a:[I

    iput-object v0, p0, Lklt;->c:[I

    .line 1046
    const/4 v0, 0x0

    iput-object v0, p0, Lklt;->eD:Llyd;

    .line 1047
    const/4 v0, -0x1

    iput v0, p0, Lklt;->eE:I

    .line 40
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 1117
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1118
    sparse-switch v0, :sswitch_data_0

    .line 1122
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1123
    :sswitch_0
    return-object p0

    .line 1128
    :sswitch_1
    const/16 v0, 0xa

    .line 1129
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1130
    iget-object v0, p0, Lklt;->a:[Lklu;

    if-nez v0, :cond_2

    move v0, v1

    .line 1131
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lklu;

    .line 1133
    if-eqz v0, :cond_1

    .line 1134
    iget-object v3, p0, Lklt;->a:[Lklu;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1136
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 1137
    new-instance v3, Lklu;

    invoke-direct {v3}, Lklu;-><init>()V

    aput-object v3, v2, v0

    .line 1138
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1139
    invoke-virtual {p1}, Llxy;->a()I

    .line 1136
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1130
    :cond_2
    iget-object v0, p0, Lklt;->a:[Lklu;

    array-length v0, v0

    goto :goto_1

    .line 1142
    :cond_3
    new-instance v3, Lklu;

    invoke-direct {v3}, Lklu;-><init>()V

    aput-object v3, v2, v0

    .line 1143
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1144
    iput-object v2, p0, Lklt;->a:[Lklu;

    goto :goto_0

    .line 1148
    :sswitch_2
    const/16 v0, 0x12

    .line 1149
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1150
    iget-object v0, p0, Lklt;->b:[Lklv;

    if-nez v0, :cond_5

    move v0, v1

    .line 1151
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lklv;

    .line 1153
    if-eqz v0, :cond_4

    .line 1154
    iget-object v3, p0, Lklt;->b:[Lklv;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1156
    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    .line 1157
    new-instance v3, Lklv;

    invoke-direct {v3}, Lklv;-><init>()V

    aput-object v3, v2, v0

    .line 1158
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1159
    invoke-virtual {p1}, Llxy;->a()I

    .line 1156
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1150
    :cond_5
    iget-object v0, p0, Lklt;->b:[Lklv;

    array-length v0, v0

    goto :goto_3

    .line 1162
    :cond_6
    new-instance v3, Lklv;

    invoke-direct {v3}, Lklv;-><init>()V

    aput-object v3, v2, v0

    .line 1163
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1164
    iput-object v2, p0, Lklt;->b:[Lklv;

    goto/16 :goto_0

    .line 1168
    :sswitch_3
    const/16 v0, 0x18

    .line 1169
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v4

    .line 1170
    new-array v5, v4, [I

    move v3, v1

    move v2, v1

    .line 1172
    :goto_5
    if-ge v3, v4, :cond_8

    .line 1173
    if-eqz v3, :cond_7

    .line 1174
    invoke-virtual {p1}, Llxy;->a()I

    .line 1176
    :cond_7
    invoke-virtual {p1}, Llxy;->f()I

    move-result v6

    .line 1177
    packed-switch v6, :pswitch_data_0

    move v0, v2

    .line 1172
    :goto_6
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto :goto_5

    .line 1195
    :pswitch_0
    add-int/lit8 v0, v2, 0x1

    aput v6, v5, v2

    goto :goto_6

    .line 1199
    :cond_8
    if-eqz v2, :cond_0

    .line 1200
    iget-object v0, p0, Lklt;->c:[I

    if-nez v0, :cond_9

    move v0, v1

    .line 1201
    :goto_7
    if-nez v0, :cond_a

    array-length v3, v5

    if-ne v2, v3, :cond_a

    .line 1202
    iput-object v5, p0, Lklt;->c:[I

    goto/16 :goto_0

    .line 1200
    :cond_9
    iget-object v0, p0, Lklt;->c:[I

    array-length v0, v0

    goto :goto_7

    .line 1204
    :cond_a
    add-int v3, v0, v2

    new-array v3, v3, [I

    .line 1205
    if-eqz v0, :cond_b

    .line 1206
    iget-object v4, p0, Lklt;->c:[I

    invoke-static {v4, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1208
    :cond_b
    invoke-static {v5, v1, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1209
    iput-object v3, p0, Lklt;->c:[I

    goto/16 :goto_0

    .line 1215
    :sswitch_4
    invoke-virtual {p1}, Llxy;->p()I

    move-result v0

    .line 1216
    invoke-virtual {p1, v0}, Llxy;->c(I)I

    move-result v3

    .line 1219
    invoke-virtual {p1}, Llxy;->r()I

    move-result v2

    move v0, v1

    .line 1220
    :goto_8
    invoke-virtual {p1}, Llxy;->q()I

    move-result v4

    if-lez v4, :cond_c

    .line 1221
    invoke-virtual {p1}, Llxy;->f()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    goto :goto_8

    .line 1239
    :pswitch_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 1243
    :cond_c
    if-eqz v0, :cond_10

    .line 1244
    invoke-virtual {p1, v2}, Llxy;->e(I)V

    .line 1245
    iget-object v2, p0, Lklt;->c:[I

    if-nez v2, :cond_e

    move v2, v1

    .line 1246
    :goto_9
    add-int/2addr v0, v2

    new-array v4, v0, [I

    .line 1247
    if-eqz v2, :cond_d

    .line 1248
    iget-object v0, p0, Lklt;->c:[I

    invoke-static {v0, v1, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1250
    :cond_d
    :goto_a
    invoke-virtual {p1}, Llxy;->q()I

    move-result v0

    if-lez v0, :cond_f

    .line 1251
    invoke-virtual {p1}, Llxy;->f()I

    move-result v5

    .line 1252
    packed-switch v5, :pswitch_data_2

    goto :goto_a

    .line 1270
    :pswitch_2
    add-int/lit8 v0, v2, 0x1

    aput v5, v4, v2

    move v2, v0

    goto :goto_a

    .line 1245
    :cond_e
    iget-object v2, p0, Lklt;->c:[I

    array-length v2, v2

    goto :goto_9

    .line 1274
    :cond_f
    iput-object v4, p0, Lklt;->c:[I

    .line 1276
    :cond_10
    invoke-virtual {p1, v3}, Llxy;->d(I)V

    goto/16 :goto_0

    .line 1118
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x1a -> :sswitch_4
    .end sparse-switch

    .line 1177
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
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 1221
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
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 1252
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
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 54
    iget-object v0, p0, Lklt;->a:[Lklu;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lklt;->a:[Lklu;

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v1

    .line 55
    :goto_0
    iget-object v2, p0, Lklt;->a:[Lklu;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 56
    iget-object v2, p0, Lklt;->a:[Lklu;

    aget-object v2, v2, v0

    .line 57
    if-eqz v2, :cond_0

    .line 58
    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 55
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 62
    :cond_1
    iget-object v0, p0, Lklt;->b:[Lklv;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lklt;->b:[Lklv;

    array-length v0, v0

    if-lez v0, :cond_3

    move v0, v1

    .line 63
    :goto_1
    iget-object v2, p0, Lklt;->b:[Lklv;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 64
    iget-object v2, p0, Lklt;->b:[Lklv;

    aget-object v2, v2, v0

    .line 65
    if-eqz v2, :cond_2

    .line 66
    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 63
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 70
    :cond_3
    iget-object v0, p0, Lklt;->c:[I

    if-eqz v0, :cond_4

    iget-object v0, p0, Lklt;->c:[I

    array-length v0, v0

    if-lez v0, :cond_4

    .line 71
    :goto_2
    iget-object v0, p0, Lklt;->c:[I

    array-length v0, v0

    if-ge v1, v0, :cond_4

    .line 72
    const/4 v0, 0x3

    iget-object v2, p0, Lklt;->c:[I

    aget v2, v2, v1

    invoke-virtual {p1, v0, v2}, Llxz;->a(II)V

    .line 71
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 75
    :cond_4
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 76
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 81
    iget-object v2, p0, Lklt;->a:[Lklu;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lklt;->a:[Lklu;

    array-length v2, v2

    if-lez v2, :cond_2

    move v2, v0

    move v0, v1

    .line 82
    :goto_0
    iget-object v3, p0, Lklt;->a:[Lklu;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 83
    iget-object v3, p0, Lklt;->a:[Lklu;

    aget-object v3, v3, v0

    .line 84
    if-eqz v3, :cond_0

    .line 85
    const/4 v4, 0x1

    .line 86
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 82
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 90
    :cond_2
    iget-object v2, p0, Lklt;->b:[Lklv;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lklt;->b:[Lklv;

    array-length v2, v2

    if-lez v2, :cond_5

    move v2, v0

    move v0, v1

    .line 91
    :goto_1
    iget-object v3, p0, Lklt;->b:[Lklv;

    array-length v3, v3

    if-ge v0, v3, :cond_4

    .line 92
    iget-object v3, p0, Lklt;->b:[Lklv;

    aget-object v3, v3, v0

    .line 93
    if-eqz v3, :cond_3

    .line 94
    const/4 v4, 0x2

    .line 95
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 91
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move v0, v2

    .line 99
    :cond_5
    iget-object v2, p0, Lklt;->c:[I

    if-eqz v2, :cond_7

    iget-object v2, p0, Lklt;->c:[I

    array-length v2, v2

    if-lez v2, :cond_7

    move v2, v1

    .line 101
    :goto_2
    iget-object v3, p0, Lklt;->c:[I

    array-length v3, v3

    if-ge v1, v3, :cond_6

    .line 102
    iget-object v3, p0, Lklt;->c:[I

    aget v3, v3, v1

    .line 104
    invoke-static {v3}, Llxz;->e(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 101
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 106
    :cond_6
    add-int/2addr v0, v2

    .line 107
    iget-object v1, p0, Lklt;->c:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 109
    :cond_7
    return v0
.end method
