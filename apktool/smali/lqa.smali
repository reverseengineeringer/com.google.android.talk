.class public final Llqa;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llqa;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lljz;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 140
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1145
    iput-object v0, p0, Llqa;->a:Lljz;

    .line 1146
    iput-object v0, p0, Llqa;->eD:Llyd;

    .line 1147
    const/4 v0, -0x1

    iput v0, p0, Llqa;->eE:I

    .line 142
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 1175
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1176
    sparse-switch v0, :sswitch_data_0

    .line 1180
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1181
    :sswitch_0
    return-object p0

    .line 1186
    :sswitch_1
    iget-object v0, p0, Llqa;->a:Lljz;

    if-nez v0, :cond_1

    .line 1187
    new-instance v0, Lljz;

    invoke-direct {v0}, Lljz;-><init>()V

    iput-object v0, p0, Llqa;->a:Lljz;

    .line 1189
    :cond_1
    iget-object v0, p0, Llqa;->a:Lljz;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1176
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
    .line 154
    iget-object v0, p0, Llqa;->a:Lljz;

    if-eqz v0, :cond_0

    .line 155
    const/4 v0, 0x1

    iget-object v1, p0, Llqa;->a:Lljz;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 157
    :cond_0
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 158
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 162
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 163
    iget-object v1, p0, Llqa;->a:Lljz;

    if-eqz v1, :cond_0

    .line 164
    const/4 v1, 0x1

    iget-object v2, p0, Llqa;->a:Lljz;

    .line 165
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 167
    :cond_0
    return v0
.end method
