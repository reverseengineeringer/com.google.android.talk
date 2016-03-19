.class public final Lmgp;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmgp;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lmgg;

.field public c:Ljava/lang/Integer;

.field public d:Lmgr;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 143
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1148
    iput-object v0, p0, Lmgp;->a:Ljava/lang/String;

    .line 1149
    iput-object v0, p0, Lmgp;->b:Lmgg;

    .line 1150
    iput-object v0, p0, Lmgp;->c:Ljava/lang/Integer;

    .line 1151
    iput-object v0, p0, Lmgp;->d:Lmgr;

    .line 1152
    iput-object v0, p0, Lmgp;->eD:Llyd;

    .line 1153
    const/4 v0, -0x1

    iput v0, p0, Lmgp;->eE:I

    .line 145
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 1202
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1203
    sparse-switch v0, :sswitch_data_0

    .line 1207
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1208
    :sswitch_0
    return-object p0

    .line 1213
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmgp;->a:Ljava/lang/String;

    goto :goto_0

    .line 1217
    :sswitch_2
    iget-object v0, p0, Lmgp;->b:Lmgg;

    if-nez v0, :cond_1

    .line 1218
    new-instance v0, Lmgg;

    invoke-direct {v0}, Lmgg;-><init>()V

    iput-object v0, p0, Lmgp;->b:Lmgg;

    .line 1220
    :cond_1
    iget-object v0, p0, Lmgp;->b:Lmgg;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1224
    :sswitch_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lmgp;->c:Ljava/lang/Integer;

    goto :goto_0

    .line 1228
    :sswitch_4
    iget-object v0, p0, Lmgp;->d:Lmgr;

    if-nez v0, :cond_2

    .line 1229
    new-instance v0, Lmgr;

    invoke-direct {v0}, Lmgr;-><init>()V

    iput-object v0, p0, Lmgp;->d:Lmgr;

    .line 1231
    :cond_2
    iget-object v0, p0, Lmgp;->d:Lmgr;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1203
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lmgp;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 161
    const/4 v0, 0x1

    iget-object v1, p0, Lmgp;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 163
    :cond_0
    iget-object v0, p0, Lmgp;->b:Lmgg;

    if-eqz v0, :cond_1

    .line 164
    const/4 v0, 0x2

    iget-object v1, p0, Lmgp;->b:Lmgg;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 166
    :cond_1
    iget-object v0, p0, Lmgp;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 167
    const/4 v0, 0x3

    iget-object v1, p0, Lmgp;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 169
    :cond_2
    iget-object v0, p0, Lmgp;->d:Lmgr;

    if-eqz v0, :cond_3

    .line 170
    const/4 v0, 0x4

    iget-object v1, p0, Lmgp;->d:Lmgr;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 172
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 173
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 177
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 178
    iget-object v1, p0, Lmgp;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 179
    const/4 v1, 0x1

    iget-object v2, p0, Lmgp;->a:Ljava/lang/String;

    .line 180
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 182
    :cond_0
    iget-object v1, p0, Lmgp;->b:Lmgg;

    if-eqz v1, :cond_1

    .line 183
    const/4 v1, 0x2

    iget-object v2, p0, Lmgp;->b:Lmgg;

    .line 184
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 186
    :cond_1
    iget-object v1, p0, Lmgp;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 187
    const/4 v1, 0x3

    iget-object v2, p0, Lmgp;->c:Ljava/lang/Integer;

    .line 188
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 190
    :cond_2
    iget-object v1, p0, Lmgp;->d:Lmgr;

    if-eqz v1, :cond_3

    .line 191
    const/4 v1, 0x4

    iget-object v2, p0, Lmgp;->d:Lmgr;

    .line 192
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 194
    :cond_3
    return v0
.end method
