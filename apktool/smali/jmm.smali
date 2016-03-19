.class public final Ljmm;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljmm;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljmn;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 146
    invoke-direct {p0}, Llyb;-><init>()V

    .line 147
    iput-object v0, p0, Ljmm;->a:Ljava/lang/String;

    .line 148
    iput-object v0, p0, Ljmm;->b:Ljmn;

    .line 149
    iput-object v0, p0, Ljmm;->eD:Llyd;

    .line 150
    const/4 v0, -0x1

    iput v0, p0, Ljmm;->eE:I

    .line 151
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 1184
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1185
    sparse-switch v0, :sswitch_data_0

    .line 1189
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1190
    :sswitch_0
    return-object p0

    .line 1195
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljmm;->a:Ljava/lang/String;

    goto :goto_0

    .line 1199
    :sswitch_2
    iget-object v0, p0, Ljmm;->b:Ljmn;

    if-nez v0, :cond_1

    .line 1200
    new-instance v0, Ljmn;

    invoke-direct {v0}, Ljmn;-><init>()V

    iput-object v0, p0, Ljmm;->b:Ljmn;

    .line 1202
    :cond_1
    iget-object v0, p0, Ljmm;->b:Ljmn;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1185
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
    .line 156
    iget-object v0, p0, Ljmm;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 157
    const/4 v0, 0x1

    iget-object v1, p0, Ljmm;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 159
    :cond_0
    iget-object v0, p0, Ljmm;->b:Ljmn;

    if-eqz v0, :cond_1

    .line 160
    const/4 v0, 0x2

    iget-object v1, p0, Ljmm;->b:Ljmn;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 162
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 163
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 167
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 168
    iget-object v1, p0, Ljmm;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 169
    const/4 v1, 0x1

    iget-object v2, p0, Ljmm;->a:Ljava/lang/String;

    .line 170
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 172
    :cond_0
    iget-object v1, p0, Ljmm;->b:Ljmn;

    if-eqz v1, :cond_1

    .line 173
    const/4 v1, 0x2

    iget-object v2, p0, Ljmm;->b:Ljmn;

    .line 174
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 176
    :cond_1
    return v0
.end method
