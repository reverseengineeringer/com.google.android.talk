.class public final Llsz;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llsz;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Llta;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 128
    invoke-direct {p0}, Llyb;-><init>()V

    .line 129
    iput-object v0, p0, Llsz;->a:Llta;

    .line 130
    iput-object v0, p0, Llsz;->eD:Llyd;

    .line 131
    const/4 v0, -0x1

    iput v0, p0, Llsz;->eE:I

    .line 132
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 1158
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1159
    sparse-switch v0, :sswitch_data_0

    .line 1163
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1164
    :sswitch_0
    return-object p0

    .line 1169
    :sswitch_1
    iget-object v0, p0, Llsz;->a:Llta;

    if-nez v0, :cond_1

    .line 1170
    new-instance v0, Llta;

    invoke-direct {v0}, Llta;-><init>()V

    iput-object v0, p0, Llsz;->a:Llta;

    .line 1172
    :cond_1
    iget-object v0, p0, Llsz;->a:Llta;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1159
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x12 -> :sswitch_1
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Llsz;->a:Llta;

    if-eqz v0, :cond_0

    .line 138
    const/4 v0, 0x2

    iget-object v1, p0, Llsz;->a:Llta;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 140
    :cond_0
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 141
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 145
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 146
    iget-object v1, p0, Llsz;->a:Llta;

    if-eqz v1, :cond_0

    .line 147
    const/4 v1, 0x2

    iget-object v2, p0, Llsz;->a:Llta;

    .line 148
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 150
    :cond_0
    return v0
.end method
