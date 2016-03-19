.class public final Llfy;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llfy;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile e:[Llfy;


# instance fields
.field public a:Llga;

.field public b:[I

.field public c:I

.field public d:Llqo;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Llyb;-><init>()V

    .line 44
    iput-object v1, p0, Llfy;->a:Llga;

    .line 45
    sget-object v0, Llyo;->a:[I

    iput-object v0, p0, Llfy;->b:[I

    .line 46
    const/high16 v0, -0x80000000

    iput v0, p0, Llfy;->c:I

    .line 47
    iput-object v1, p0, Llfy;->d:Llqo;

    .line 48
    iput-object v1, p0, Llfy;->eD:Llyd;

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Llfy;->eE:I

    .line 50
    return-void
.end method

.method public static d()[Llfy;
    .locals 2

    .prologue
    .line 18
    sget-object v0, Llfy;->e:[Llfy;

    if-nez v0, :cond_1

    .line 19
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 21
    :try_start_0
    sget-object v0, Llfy;->e:[Llfy;

    if-nez v0, :cond_0

    .line 22
    const/4 v0, 0x0

    new-array v0, v0, [Llfy;

    sput-object v0, Llfy;->e:[Llfy;

    .line 24
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    :cond_1
    sget-object v0, Llfy;->e:[Llfy;

    return-object v0

    .line 24
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

    .line 1105
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1106
    sparse-switch v0, :sswitch_data_0

    .line 1110
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1111
    :sswitch_0
    return-object p0

    .line 1116
    :sswitch_1
    iget-object v0, p0, Llfy;->a:Llga;

    if-nez v0, :cond_1

    .line 1117
    new-instance v0, Llga;

    invoke-direct {v0}, Llga;-><init>()V

    iput-object v0, p0, Llfy;->a:Llga;

    .line 1119
    :cond_1
    iget-object v0, p0, Llfy;->a:Llga;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1123
    :sswitch_2
    const/16 v0, 0x10

    .line 1124
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v4

    .line 1125
    new-array v5, v4, [I

    move v3, v2

    move v1, v2

    .line 1127
    :goto_1
    if-ge v3, v4, :cond_3

    .line 1128
    if-eqz v3, :cond_2

    .line 1129
    invoke-virtual {p1}, Llxy;->a()I

    .line 1131
    :cond_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v6

    .line 1132
    packed-switch v6, :pswitch_data_0

    move v0, v1

    .line 1127
    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_1

    .line 1139
    :pswitch_0
    add-int/lit8 v0, v1, 0x1

    aput v6, v5, v1

    goto :goto_2

    .line 1143
    :cond_3
    if-eqz v1, :cond_0

    .line 1144
    iget-object v0, p0, Llfy;->b:[I

    if-nez v0, :cond_4

    move v0, v2

    .line 1145
    :goto_3
    if-nez v0, :cond_5

    array-length v3, v5

    if-ne v1, v3, :cond_5

    .line 1146
    iput-object v5, p0, Llfy;->b:[I

    goto :goto_0

    .line 1144
    :cond_4
    iget-object v0, p0, Llfy;->b:[I

    array-length v0, v0

    goto :goto_3

    .line 1148
    :cond_5
    add-int v3, v0, v1

    new-array v3, v3, [I

    .line 1149
    if-eqz v0, :cond_6

    .line 1150
    iget-object v4, p0, Llfy;->b:[I

    invoke-static {v4, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1152
    :cond_6
    invoke-static {v5, v2, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1153
    iput-object v3, p0, Llfy;->b:[I

    goto :goto_0

    .line 1159
    :sswitch_3
    invoke-virtual {p1}, Llxy;->p()I

    move-result v0

    .line 1160
    invoke-virtual {p1, v0}, Llxy;->c(I)I

    move-result v3

    .line 1163
    invoke-virtual {p1}, Llxy;->r()I

    move-result v1

    move v0, v2

    .line 1164
    :goto_4
    invoke-virtual {p1}, Llxy;->q()I

    move-result v4

    if-lez v4, :cond_7

    .line 1165
    invoke-virtual {p1}, Llxy;->f()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    goto :goto_4

    .line 1172
    :pswitch_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1176
    :cond_7
    if-eqz v0, :cond_b

    .line 1177
    invoke-virtual {p1, v1}, Llxy;->e(I)V

    .line 1178
    iget-object v1, p0, Llfy;->b:[I

    if-nez v1, :cond_9

    move v1, v2

    .line 1179
    :goto_5
    add-int/2addr v0, v1

    new-array v4, v0, [I

    .line 1180
    if-eqz v1, :cond_8

    .line 1181
    iget-object v0, p0, Llfy;->b:[I

    invoke-static {v0, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1183
    :cond_8
    :goto_6
    invoke-virtual {p1}, Llxy;->q()I

    move-result v0

    if-lez v0, :cond_a

    .line 1184
    invoke-virtual {p1}, Llxy;->f()I

    move-result v5

    .line 1185
    packed-switch v5, :pswitch_data_2

    goto :goto_6

    .line 1192
    :pswitch_2
    add-int/lit8 v0, v1, 0x1

    aput v5, v4, v1

    move v1, v0

    goto :goto_6

    .line 1178
    :cond_9
    iget-object v1, p0, Llfy;->b:[I

    array-length v1, v1

    goto :goto_5

    .line 1196
    :cond_a
    iput-object v4, p0, Llfy;->b:[I

    .line 1198
    :cond_b
    invoke-virtual {p1, v3}, Llxy;->d(I)V

    goto/16 :goto_0

    .line 1202
    :sswitch_4
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1203
    packed-switch v0, :pswitch_data_3

    goto/16 :goto_0

    .line 1206
    :pswitch_3
    iput v0, p0, Llfy;->c:I

    goto/16 :goto_0

    .line 1212
    :sswitch_5
    iget-object v0, p0, Llfy;->d:Llqo;

    if-nez v0, :cond_c

    .line 1213
    new-instance v0, Llqo;

    invoke-direct {v0}, Llqo;-><init>()V

    iput-object v0, p0, Llfy;->d:Llqo;

    .line 1215
    :cond_c
    iget-object v0, p0, Llfy;->d:Llqo;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 1106
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x12 -> :sswitch_3
        0x18 -> :sswitch_4
        0x22 -> :sswitch_5
    .end sparse-switch

    .line 1132
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 1165
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 1185
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 1203
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 55
    iget-object v0, p0, Llfy;->a:Llga;

    if-eqz v0, :cond_0

    .line 56
    const/4 v0, 0x1

    iget-object v1, p0, Llfy;->a:Llga;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 58
    :cond_0
    iget-object v0, p0, Llfy;->b:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Llfy;->b:[I

    array-length v0, v0

    if-lez v0, :cond_1

    .line 59
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Llfy;->b:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 60
    const/4 v1, 0x2

    iget-object v2, p0, Llfy;->b:[I

    aget v2, v2, v0

    invoke-virtual {p1, v1, v2}, Llxz;->a(II)V

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 63
    :cond_1
    iget v0, p0, Llfy;->c:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_2

    .line 64
    const/4 v0, 0x3

    iget v1, p0, Llfy;->c:I

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 66
    :cond_2
    iget-object v0, p0, Llfy;->d:Llqo;

    if-eqz v0, :cond_3

    .line 67
    const/4 v0, 0x4

    iget-object v1, p0, Llfy;->d:Llqo;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 69
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 70
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 75
    iget-object v2, p0, Llfy;->a:Llga;

    if-eqz v2, :cond_0

    .line 76
    const/4 v2, 0x1

    iget-object v3, p0, Llfy;->a:Llga;

    .line 77
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 79
    :cond_0
    iget-object v2, p0, Llfy;->b:[I

    if-eqz v2, :cond_2

    iget-object v2, p0, Llfy;->b:[I

    array-length v2, v2

    if-lez v2, :cond_2

    move v2, v1

    .line 81
    :goto_0
    iget-object v3, p0, Llfy;->b:[I

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 82
    iget-object v3, p0, Llfy;->b:[I

    aget v3, v3, v1

    .line 84
    invoke-static {v3}, Llxz;->e(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 81
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 86
    :cond_1
    add-int/2addr v0, v2

    .line 87
    iget-object v1, p0, Llfy;->b:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 89
    :cond_2
    iget v1, p0, Llfy;->c:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_3

    .line 90
    const/4 v1, 0x3

    iget v2, p0, Llfy;->c:I

    .line 91
    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 93
    :cond_3
    iget-object v1, p0, Llfy;->d:Llqo;

    if-eqz v1, :cond_4

    .line 94
    const/4 v1, 0x4

    iget-object v2, p0, Llfy;->d:Llqo;

    .line 95
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 97
    :cond_4
    return v0
.end method
