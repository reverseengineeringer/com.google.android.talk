.class public final Ljqi;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljqi;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljqj;

.field public c:Ljava/lang/Integer;

.field public d:Ljqh;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1108
    invoke-direct {p0}, Llyb;-><init>()V

    .line 2113
    iput-object v0, p0, Ljqi;->a:Ljava/lang/String;

    .line 2114
    iput-object v0, p0, Ljqi;->b:Ljqj;

    .line 2115
    iput-object v0, p0, Ljqi;->c:Ljava/lang/Integer;

    .line 2116
    iput-object v0, p0, Ljqi;->d:Ljqh;

    .line 2117
    iput-object v0, p0, Ljqi;->eD:Llyd;

    .line 2118
    const/4 v0, -0x1

    iput v0, p0, Ljqi;->eE:I

    .line 1110
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 2167
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2168
    sparse-switch v0, :sswitch_data_0

    .line 2172
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2173
    :sswitch_0
    return-object p0

    .line 2178
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljqi;->a:Ljava/lang/String;

    goto :goto_0

    .line 2182
    :sswitch_2
    iget-object v0, p0, Ljqi;->b:Ljqj;

    if-nez v0, :cond_1

    .line 2183
    new-instance v0, Ljqj;

    invoke-direct {v0}, Ljqj;-><init>()V

    iput-object v0, p0, Ljqi;->b:Ljqj;

    .line 2185
    :cond_1
    iget-object v0, p0, Ljqi;->b:Ljqj;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2189
    :sswitch_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 2190
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2193
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljqi;->c:Ljava/lang/Integer;

    goto :goto_0

    .line 2199
    :sswitch_4
    iget-object v0, p0, Ljqi;->d:Ljqh;

    if-nez v0, :cond_2

    .line 2200
    new-instance v0, Ljqh;

    invoke-direct {v0}, Ljqh;-><init>()V

    iput-object v0, p0, Ljqi;->d:Ljqh;

    .line 2202
    :cond_2
    iget-object v0, p0, Ljqi;->d:Ljqh;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2168
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch

    .line 2190
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 1125
    iget-object v0, p0, Ljqi;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1126
    const/4 v0, 0x1

    iget-object v1, p0, Ljqi;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 1128
    :cond_0
    iget-object v0, p0, Ljqi;->b:Ljqj;

    if-eqz v0, :cond_1

    .line 1129
    const/4 v0, 0x2

    iget-object v1, p0, Ljqi;->b:Ljqj;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1131
    :cond_1
    iget-object v0, p0, Ljqi;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 1132
    const/4 v0, 0x3

    iget-object v1, p0, Ljqi;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 1134
    :cond_2
    iget-object v0, p0, Ljqi;->d:Ljqh;

    if-eqz v0, :cond_3

    .line 1135
    const/4 v0, 0x4

    iget-object v1, p0, Ljqi;->d:Ljqh;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1137
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1138
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 1142
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 1143
    iget-object v1, p0, Ljqi;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1144
    const/4 v1, 0x1

    iget-object v2, p0, Ljqi;->a:Ljava/lang/String;

    .line 1145
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1147
    :cond_0
    iget-object v1, p0, Ljqi;->b:Ljqj;

    if-eqz v1, :cond_1

    .line 1148
    const/4 v1, 0x2

    iget-object v2, p0, Ljqi;->b:Ljqj;

    .line 1149
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1151
    :cond_1
    iget-object v1, p0, Ljqi;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 1152
    const/4 v1, 0x3

    iget-object v2, p0, Ljqi;->c:Ljava/lang/Integer;

    .line 1153
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1155
    :cond_2
    iget-object v1, p0, Ljqi;->d:Ljqh;

    if-eqz v1, :cond_3

    .line 1156
    const/4 v1, 0x4

    iget-object v2, p0, Ljqi;->d:Ljqh;

    .line 1157
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1159
    :cond_3
    return v0
.end method
