.class public final Llpk;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llpk;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 156
    invoke-direct {p0}, Llyb;-><init>()V

    .line 157
    iput-object v1, p0, Llpk;->a:Ljava/lang/String;

    .line 158
    const/high16 v0, -0x80000000

    iput v0, p0, Llpk;->b:I

    .line 159
    iput-object v1, p0, Llpk;->c:Ljava/lang/String;

    .line 160
    iput-object v1, p0, Llpk;->eD:Llyd;

    .line 161
    const/4 v0, -0x1

    iput v0, p0, Llpk;->eE:I

    .line 162
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

    iput-object v0, p0, Llpk;->a:Ljava/lang/String;

    goto :goto_0

    .line 1217
    :sswitch_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1218
    sparse-switch v0, :sswitch_data_1

    goto :goto_0

    .line 1222
    :sswitch_3
    iput v0, p0, Llpk;->b:I

    goto :goto_0

    .line 1228
    :sswitch_4
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llpk;->c:Ljava/lang/String;

    goto :goto_0

    .line 1203
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_4
    .end sparse-switch

    .line 1218
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_3
        0x6 -> :sswitch_3
        0xa -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Llpk;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 168
    const/4 v0, 0x1

    iget-object v1, p0, Llpk;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 170
    :cond_0
    iget v0, p0, Llpk;->b:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    .line 171
    const/4 v0, 0x2

    iget v1, p0, Llpk;->b:I

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 173
    :cond_1
    iget-object v0, p0, Llpk;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 174
    const/4 v0, 0x3

    iget-object v1, p0, Llpk;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 176
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 177
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 181
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 182
    iget-object v1, p0, Llpk;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 183
    const/4 v1, 0x1

    iget-object v2, p0, Llpk;->a:Ljava/lang/String;

    .line 184
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 186
    :cond_0
    iget v1, p0, Llpk;->b:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1

    .line 187
    const/4 v1, 0x2

    iget v2, p0, Llpk;->b:I

    .line 188
    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 190
    :cond_1
    iget-object v1, p0, Llpk;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 191
    const/4 v1, 0x3

    iget-object v2, p0, Llpk;->c:Ljava/lang/String;

    .line 192
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 194
    :cond_2
    return v0
.end method
