.class public final Lltz;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lltz;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile e:[Lltz;


# instance fields
.field public a:Llua;

.field public b:[I

.field public c:Ljava/lang/Integer;

.field public d:Llue;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1062
    iput-object v1, p0, Lltz;->a:Llua;

    .line 1063
    sget-object v0, Llyo;->a:[I

    iput-object v0, p0, Lltz;->b:[I

    .line 1064
    iput-object v1, p0, Lltz;->c:Ljava/lang/Integer;

    .line 1065
    iput-object v1, p0, Lltz;->d:Llue;

    .line 1066
    iput-object v1, p0, Lltz;->eD:Llyd;

    .line 1067
    const/4 v0, -0x1

    iput v0, p0, Lltz;->eE:I

    .line 59
    return-void
.end method

.method public static d()[Lltz;
    .locals 2

    .prologue
    .line 32
    sget-object v0, Lltz;->e:[Lltz;

    if-nez v0, :cond_1

    .line 33
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 35
    :try_start_0
    sget-object v0, Lltz;->e:[Lltz;

    if-nez v0, :cond_0

    .line 36
    const/4 v0, 0x0

    new-array v0, v0, [Lltz;

    sput-object v0, Lltz;->e:[Lltz;

    .line 38
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    :cond_1
    sget-object v0, Lltz;->e:[Lltz;

    return-object v0

    .line 38
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

    .line 1124
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1125
    sparse-switch v0, :sswitch_data_0

    .line 1129
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1130
    :sswitch_0
    return-object p0

    .line 1135
    :sswitch_1
    iget-object v0, p0, Lltz;->a:Llua;

    if-nez v0, :cond_1

    .line 1136
    new-instance v0, Llua;

    invoke-direct {v0}, Llua;-><init>()V

    iput-object v0, p0, Lltz;->a:Llua;

    .line 1138
    :cond_1
    iget-object v0, p0, Lltz;->a:Llua;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1142
    :sswitch_2
    const/16 v0, 0x10

    .line 1143
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v4

    .line 1144
    new-array v5, v4, [I

    move v3, v2

    move v1, v2

    .line 1146
    :goto_1
    if-ge v3, v4, :cond_3

    .line 1147
    if-eqz v3, :cond_2

    .line 1148
    invoke-virtual {p1}, Llxy;->a()I

    .line 1150
    :cond_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v6

    .line 1151
    packed-switch v6, :pswitch_data_0

    move v0, v1

    .line 1146
    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_1

    .line 1158
    :pswitch_0
    add-int/lit8 v0, v1, 0x1

    aput v6, v5, v1

    goto :goto_2

    .line 1162
    :cond_3
    if-eqz v1, :cond_0

    .line 1163
    iget-object v0, p0, Lltz;->b:[I

    if-nez v0, :cond_4

    move v0, v2

    .line 1164
    :goto_3
    if-nez v0, :cond_5

    array-length v3, v5

    if-ne v1, v3, :cond_5

    .line 1165
    iput-object v5, p0, Lltz;->b:[I

    goto :goto_0

    .line 1163
    :cond_4
    iget-object v0, p0, Lltz;->b:[I

    array-length v0, v0

    goto :goto_3

    .line 1167
    :cond_5
    add-int v3, v0, v1

    new-array v3, v3, [I

    .line 1168
    if-eqz v0, :cond_6

    .line 1169
    iget-object v4, p0, Lltz;->b:[I

    invoke-static {v4, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1171
    :cond_6
    invoke-static {v5, v2, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1172
    iput-object v3, p0, Lltz;->b:[I

    goto :goto_0

    .line 1178
    :sswitch_3
    invoke-virtual {p1}, Llxy;->p()I

    move-result v0

    .line 1179
    invoke-virtual {p1, v0}, Llxy;->c(I)I

    move-result v3

    .line 1182
    invoke-virtual {p1}, Llxy;->r()I

    move-result v1

    move v0, v2

    .line 1183
    :goto_4
    invoke-virtual {p1}, Llxy;->q()I

    move-result v4

    if-lez v4, :cond_7

    .line 1184
    invoke-virtual {p1}, Llxy;->f()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    goto :goto_4

    .line 1191
    :pswitch_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1195
    :cond_7
    if-eqz v0, :cond_b

    .line 1196
    invoke-virtual {p1, v1}, Llxy;->e(I)V

    .line 1197
    iget-object v1, p0, Lltz;->b:[I

    if-nez v1, :cond_9

    move v1, v2

    .line 1198
    :goto_5
    add-int/2addr v0, v1

    new-array v4, v0, [I

    .line 1199
    if-eqz v1, :cond_8

    .line 1200
    iget-object v0, p0, Lltz;->b:[I

    invoke-static {v0, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1202
    :cond_8
    :goto_6
    invoke-virtual {p1}, Llxy;->q()I

    move-result v0

    if-lez v0, :cond_a

    .line 1203
    invoke-virtual {p1}, Llxy;->f()I

    move-result v5

    .line 1204
    packed-switch v5, :pswitch_data_2

    goto :goto_6

    .line 1211
    :pswitch_2
    add-int/lit8 v0, v1, 0x1

    aput v5, v4, v1

    move v1, v0

    goto :goto_6

    .line 1197
    :cond_9
    iget-object v1, p0, Lltz;->b:[I

    array-length v1, v1

    goto :goto_5

    .line 1215
    :cond_a
    iput-object v4, p0, Lltz;->b:[I

    .line 1217
    :cond_b
    invoke-virtual {p1, v3}, Llxy;->d(I)V

    goto/16 :goto_0

    .line 1221
    :sswitch_4
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1222
    packed-switch v0, :pswitch_data_3

    goto/16 :goto_0

    .line 1225
    :pswitch_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lltz;->c:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 1231
    :sswitch_5
    iget-object v0, p0, Lltz;->d:Llue;

    if-nez v0, :cond_c

    .line 1232
    new-instance v0, Llue;

    invoke-direct {v0}, Llue;-><init>()V

    iput-object v0, p0, Lltz;->d:Llue;

    .line 1234
    :cond_c
    iget-object v0, p0, Lltz;->d:Llue;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 1125
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

    .line 1151
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 1184
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 1204
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 1222
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 74
    iget-object v0, p0, Lltz;->a:Llua;

    if-eqz v0, :cond_0

    .line 75
    const/4 v0, 0x1

    iget-object v1, p0, Lltz;->a:Llua;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 77
    :cond_0
    iget-object v0, p0, Lltz;->b:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lltz;->b:[I

    array-length v0, v0

    if-lez v0, :cond_1

    .line 78
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lltz;->b:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 79
    const/4 v1, 0x2

    iget-object v2, p0, Lltz;->b:[I

    aget v2, v2, v0

    invoke-virtual {p1, v1, v2}, Llxz;->a(II)V

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    :cond_1
    iget-object v0, p0, Lltz;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 83
    const/4 v0, 0x3

    iget-object v1, p0, Lltz;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 85
    :cond_2
    iget-object v0, p0, Lltz;->d:Llue;

    if-eqz v0, :cond_3

    .line 86
    const/4 v0, 0x4

    iget-object v1, p0, Lltz;->d:Llue;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 88
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 89
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 93
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 94
    iget-object v2, p0, Lltz;->a:Llua;

    if-eqz v2, :cond_0

    .line 95
    const/4 v2, 0x1

    iget-object v3, p0, Lltz;->a:Llua;

    .line 96
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 98
    :cond_0
    iget-object v2, p0, Lltz;->b:[I

    if-eqz v2, :cond_2

    iget-object v2, p0, Lltz;->b:[I

    array-length v2, v2

    if-lez v2, :cond_2

    move v2, v1

    .line 100
    :goto_0
    iget-object v3, p0, Lltz;->b:[I

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 101
    iget-object v3, p0, Lltz;->b:[I

    aget v3, v3, v1

    .line 103
    invoke-static {v3}, Llxz;->e(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 100
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 105
    :cond_1
    add-int/2addr v0, v2

    .line 106
    iget-object v1, p0, Lltz;->b:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 108
    :cond_2
    iget-object v1, p0, Lltz;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 109
    const/4 v1, 0x3

    iget-object v2, p0, Lltz;->c:Ljava/lang/Integer;

    .line 110
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 112
    :cond_3
    iget-object v1, p0, Lltz;->d:Llue;

    if-eqz v1, :cond_4

    .line 113
    const/4 v1, 0x4

    iget-object v2, p0, Lltz;->d:Llue;

    .line 114
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 116
    :cond_4
    return v0
.end method
