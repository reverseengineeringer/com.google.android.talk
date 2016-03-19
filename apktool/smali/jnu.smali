.class public final Ljnu;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljnu;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljnv;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 155
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1160
    iput-object v0, p0, Ljnu;->a:Ljava/lang/String;

    .line 1161
    iput-object v0, p0, Ljnu;->b:Ljnv;

    .line 1162
    iput-object v0, p0, Ljnu;->eD:Llyd;

    .line 1163
    const/4 v0, -0x1

    iput v0, p0, Ljnu;->eE:I

    .line 157
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 1198
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1199
    sparse-switch v0, :sswitch_data_0

    .line 1203
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1204
    :sswitch_0
    return-object p0

    .line 1209
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljnu;->a:Ljava/lang/String;

    goto :goto_0

    .line 1213
    :sswitch_2
    iget-object v0, p0, Ljnu;->b:Ljnv;

    if-nez v0, :cond_1

    .line 1214
    new-instance v0, Ljnv;

    invoke-direct {v0}, Ljnv;-><init>()V

    iput-object v0, p0, Ljnu;->b:Ljnv;

    .line 1216
    :cond_1
    iget-object v0, p0, Ljnu;->b:Ljnv;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1199
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Ljnu;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 171
    const/4 v0, 0x1

    iget-object v1, p0, Ljnu;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 173
    :cond_0
    iget-object v0, p0, Ljnu;->b:Ljnv;

    if-eqz v0, :cond_1

    .line 174
    const/4 v0, 0x2

    iget-object v1, p0, Ljnu;->b:Ljnv;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 176
    :cond_1
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
    iget-object v1, p0, Ljnu;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 183
    const/4 v1, 0x1

    iget-object v2, p0, Ljnu;->a:Ljava/lang/String;

    .line 184
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 186
    :cond_0
    iget-object v1, p0, Ljnu;->b:Ljnv;

    if-eqz v1, :cond_1

    .line 187
    const/4 v1, 0x2

    iget-object v2, p0, Ljnu;->b:Ljnv;

    .line 188
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 190
    :cond_1
    return v0
.end method
