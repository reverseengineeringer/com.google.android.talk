.class public final Liye;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Liye;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lmhl;

.field public b:Lmhm;

.field public c:Ljava/lang/String;

.field public d:Lmre;

.field public e:Litb;

.field public f:Lite;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 182
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1187
    iput-object v0, p0, Liye;->a:Lmhl;

    .line 1188
    iput-object v0, p0, Liye;->b:Lmhm;

    .line 1189
    iput-object v0, p0, Liye;->c:Ljava/lang/String;

    .line 1190
    iput-object v0, p0, Liye;->d:Lmre;

    .line 1191
    iput-object v0, p0, Liye;->e:Litb;

    .line 1192
    iput-object v0, p0, Liye;->f:Lite;

    .line 1193
    iput-object v0, p0, Liye;->eD:Llyd;

    .line 1194
    const/4 v0, -0x1

    iput v0, p0, Liye;->eE:I

    .line 184
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 1257
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1258
    sparse-switch v0, :sswitch_data_0

    .line 1262
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1263
    :sswitch_0
    return-object p0

    .line 1268
    :sswitch_1
    iget-object v0, p0, Liye;->a:Lmhl;

    if-nez v0, :cond_1

    .line 1269
    new-instance v0, Lmhl;

    invoke-direct {v0}, Lmhl;-><init>()V

    iput-object v0, p0, Liye;->a:Lmhl;

    .line 1271
    :cond_1
    iget-object v0, p0, Liye;->a:Lmhl;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1275
    :sswitch_2
    iget-object v0, p0, Liye;->b:Lmhm;

    if-nez v0, :cond_2

    .line 1276
    new-instance v0, Lmhm;

    invoke-direct {v0}, Lmhm;-><init>()V

    iput-object v0, p0, Liye;->b:Lmhm;

    .line 1278
    :cond_2
    iget-object v0, p0, Liye;->b:Lmhm;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1282
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Liye;->c:Ljava/lang/String;

    goto :goto_0

    .line 1286
    :sswitch_4
    iget-object v0, p0, Liye;->d:Lmre;

    if-nez v0, :cond_3

    .line 1287
    new-instance v0, Lmre;

    invoke-direct {v0}, Lmre;-><init>()V

    iput-object v0, p0, Liye;->d:Lmre;

    .line 1289
    :cond_3
    iget-object v0, p0, Liye;->d:Lmre;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1293
    :sswitch_5
    iget-object v0, p0, Liye;->e:Litb;

    if-nez v0, :cond_4

    .line 1294
    new-instance v0, Litb;

    invoke-direct {v0}, Litb;-><init>()V

    iput-object v0, p0, Liye;->e:Litb;

    .line 1296
    :cond_4
    iget-object v0, p0, Liye;->e:Litb;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1300
    :sswitch_6
    iget-object v0, p0, Liye;->f:Lite;

    if-nez v0, :cond_5

    .line 1301
    new-instance v0, Lite;

    invoke-direct {v0}, Lite;-><init>()V

    iput-object v0, p0, Liye;->f:Lite;

    .line 1303
    :cond_5
    iget-object v0, p0, Liye;->f:Lite;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1258
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Liye;->a:Lmhl;

    if-eqz v0, :cond_0

    .line 202
    const/4 v0, 0x1

    iget-object v1, p0, Liye;->a:Lmhl;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 204
    :cond_0
    iget-object v0, p0, Liye;->b:Lmhm;

    if-eqz v0, :cond_1

    .line 205
    const/4 v0, 0x2

    iget-object v1, p0, Liye;->b:Lmhm;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 207
    :cond_1
    iget-object v0, p0, Liye;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 208
    const/4 v0, 0x3

    iget-object v1, p0, Liye;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 210
    :cond_2
    iget-object v0, p0, Liye;->d:Lmre;

    if-eqz v0, :cond_3

    .line 211
    const/4 v0, 0x4

    iget-object v1, p0, Liye;->d:Lmre;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 213
    :cond_3
    iget-object v0, p0, Liye;->e:Litb;

    if-eqz v0, :cond_4

    .line 214
    const/4 v0, 0x5

    iget-object v1, p0, Liye;->e:Litb;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 216
    :cond_4
    iget-object v0, p0, Liye;->f:Lite;

    if-eqz v0, :cond_5

    .line 217
    const/4 v0, 0x6

    iget-object v1, p0, Liye;->f:Lite;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 219
    :cond_5
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 220
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 224
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 225
    iget-object v1, p0, Liye;->a:Lmhl;

    if-eqz v1, :cond_0

    .line 226
    const/4 v1, 0x1

    iget-object v2, p0, Liye;->a:Lmhl;

    .line 227
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 229
    :cond_0
    iget-object v1, p0, Liye;->b:Lmhm;

    if-eqz v1, :cond_1

    .line 230
    const/4 v1, 0x2

    iget-object v2, p0, Liye;->b:Lmhm;

    .line 231
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 233
    :cond_1
    iget-object v1, p0, Liye;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 234
    const/4 v1, 0x3

    iget-object v2, p0, Liye;->c:Ljava/lang/String;

    .line 235
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 237
    :cond_2
    iget-object v1, p0, Liye;->d:Lmre;

    if-eqz v1, :cond_3

    .line 238
    const/4 v1, 0x4

    iget-object v2, p0, Liye;->d:Lmre;

    .line 239
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 241
    :cond_3
    iget-object v1, p0, Liye;->e:Litb;

    if-eqz v1, :cond_4

    .line 242
    const/4 v1, 0x5

    iget-object v2, p0, Liye;->e:Litb;

    .line 243
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 245
    :cond_4
    iget-object v1, p0, Liye;->f:Lite;

    if-eqz v1, :cond_5

    .line 246
    const/4 v1, 0x6

    iget-object v2, p0, Liye;->f:Lite;

    .line 247
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 249
    :cond_5
    return v0
.end method
