.class public final Lmjh;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmjh;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lmjg;

.field public c:Lmjg;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 140
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1145
    iput-object v0, p0, Lmjh;->a:Ljava/lang/String;

    .line 1146
    iput-object v0, p0, Lmjh;->b:Lmjg;

    .line 1147
    iput-object v0, p0, Lmjh;->c:Lmjg;

    .line 1148
    iput-object v0, p0, Lmjh;->eD:Llyd;

    .line 1149
    const/4 v0, -0x1

    iput v0, p0, Lmjh;->eE:I

    .line 142
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 1191
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1192
    sparse-switch v0, :sswitch_data_0

    .line 1196
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1197
    :sswitch_0
    return-object p0

    .line 1202
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmjh;->a:Ljava/lang/String;

    goto :goto_0

    .line 1206
    :sswitch_2
    iget-object v0, p0, Lmjh;->b:Lmjg;

    if-nez v0, :cond_1

    .line 1207
    new-instance v0, Lmjg;

    invoke-direct {v0}, Lmjg;-><init>()V

    iput-object v0, p0, Lmjh;->b:Lmjg;

    .line 1209
    :cond_1
    iget-object v0, p0, Lmjh;->b:Lmjg;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1213
    :sswitch_3
    iget-object v0, p0, Lmjh;->c:Lmjg;

    if-nez v0, :cond_2

    .line 1214
    new-instance v0, Lmjg;

    invoke-direct {v0}, Lmjg;-><init>()V

    iput-object v0, p0, Lmjh;->c:Lmjg;

    .line 1216
    :cond_2
    iget-object v0, p0, Lmjh;->c:Lmjg;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1192
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lmjh;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 157
    const/4 v0, 0x1

    iget-object v1, p0, Lmjh;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 159
    :cond_0
    iget-object v0, p0, Lmjh;->b:Lmjg;

    if-eqz v0, :cond_1

    .line 160
    const/4 v0, 0x2

    iget-object v1, p0, Lmjh;->b:Lmjg;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 162
    :cond_1
    iget-object v0, p0, Lmjh;->c:Lmjg;

    if-eqz v0, :cond_2

    .line 163
    const/4 v0, 0x3

    iget-object v1, p0, Lmjh;->c:Lmjg;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 165
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 166
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 170
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 171
    iget-object v1, p0, Lmjh;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 172
    const/4 v1, 0x1

    iget-object v2, p0, Lmjh;->a:Ljava/lang/String;

    .line 173
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 175
    :cond_0
    iget-object v1, p0, Lmjh;->b:Lmjg;

    if-eqz v1, :cond_1

    .line 176
    const/4 v1, 0x2

    iget-object v2, p0, Lmjh;->b:Lmjg;

    .line 177
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 179
    :cond_1
    iget-object v1, p0, Lmjh;->c:Lmjg;

    if-eqz v1, :cond_2

    .line 180
    const/4 v1, 0x3

    iget-object v2, p0, Lmjh;->c:Lmjg;

    .line 181
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 183
    :cond_2
    return v0
.end method
