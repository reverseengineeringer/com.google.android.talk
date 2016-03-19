.class public final Llgo;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llgo;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Llpi;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 161
    invoke-direct {p0}, Llyb;-><init>()V

    .line 162
    iput-object v0, p0, Llgo;->a:Llpi;

    .line 163
    iput-object v0, p0, Llgo;->eD:Llyd;

    .line 164
    const/4 v0, -0x1

    iput v0, p0, Llgo;->eE:I

    .line 165
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
    iget-object v0, p0, Llgo;->a:Llpi;

    if-nez v0, :cond_1

    .line 1203
    new-instance v0, Llpi;

    invoke-direct {v0}, Llpi;-><init>()V

    iput-object v0, p0, Llgo;->a:Llpi;

    .line 1205
    :cond_1
    iget-object v0, p0, Llgo;->a:Llpi;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1192
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Llgo;->a:Llpi;

    if-eqz v0, :cond_0

    .line 171
    const/4 v0, 0x1

    iget-object v1, p0, Llgo;->a:Llpi;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 173
    :cond_0
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 174
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 178
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 179
    iget-object v1, p0, Llgo;->a:Llpi;

    if-eqz v1, :cond_0

    .line 180
    const/4 v1, 0x1

    iget-object v2, p0, Llgo;->a:Llpi;

    .line 181
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 183
    :cond_0
    return v0
.end method
