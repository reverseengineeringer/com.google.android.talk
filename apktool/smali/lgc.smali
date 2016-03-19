.class public final Llgc;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llgc;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Llgd;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 110
    invoke-direct {p0}, Llyb;-><init>()V

    .line 111
    iput-object v0, p0, Llgc;->a:Llgd;

    .line 112
    iput-object v0, p0, Llgc;->eD:Llyd;

    .line 113
    const/4 v0, -0x1

    iput v0, p0, Llgc;->eE:I

    .line 114
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 1140
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1141
    sparse-switch v0, :sswitch_data_0

    .line 1145
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1146
    :sswitch_0
    return-object p0

    .line 1151
    :sswitch_1
    iget-object v0, p0, Llgc;->a:Llgd;

    if-nez v0, :cond_1

    .line 1152
    new-instance v0, Llgd;

    invoke-direct {v0}, Llgd;-><init>()V

    iput-object v0, p0, Llgc;->a:Llgd;

    .line 1154
    :cond_1
    iget-object v0, p0, Llgc;->a:Llgd;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1141
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
    .line 119
    iget-object v0, p0, Llgc;->a:Llgd;

    if-eqz v0, :cond_0

    .line 120
    const/4 v0, 0x1

    iget-object v1, p0, Llgc;->a:Llgd;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 122
    :cond_0
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 123
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 127
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 128
    iget-object v1, p0, Llgc;->a:Llgd;

    if-eqz v1, :cond_0

    .line 129
    const/4 v1, 0x1

    iget-object v2, p0, Llgc;->a:Llgd;

    .line 130
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 132
    :cond_0
    return v0
.end method
