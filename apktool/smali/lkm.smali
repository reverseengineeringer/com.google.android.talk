.class public final Llkm;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llkm;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Llkl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1118
    invoke-direct {p0}, Llyb;-><init>()V

    .line 2123
    iput-object v0, p0, Llkm;->a:Llkl;

    .line 2124
    iput-object v0, p0, Llkm;->eD:Llyd;

    .line 2125
    const/4 v0, -0x1

    iput v0, p0, Llkm;->eE:I

    .line 1120
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 2153
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2154
    sparse-switch v0, :sswitch_data_0

    .line 2158
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2159
    :sswitch_0
    return-object p0

    .line 2164
    :sswitch_1
    iget-object v0, p0, Llkm;->a:Llkl;

    if-nez v0, :cond_1

    .line 2165
    new-instance v0, Llkl;

    invoke-direct {v0}, Llkl;-><init>()V

    iput-object v0, p0, Llkm;->a:Llkl;

    .line 2167
    :cond_1
    iget-object v0, p0, Llkm;->a:Llkl;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2154
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
    .line 1132
    iget-object v0, p0, Llkm;->a:Llkl;

    if-eqz v0, :cond_0

    .line 1133
    const/4 v0, 0x1

    iget-object v1, p0, Llkm;->a:Llkl;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1135
    :cond_0
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1136
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 1140
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 1141
    iget-object v1, p0, Llkm;->a:Llkl;

    if-eqz v1, :cond_0

    .line 1142
    const/4 v1, 0x1

    iget-object v2, p0, Llkm;->a:Llkl;

    .line 1143
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1145
    :cond_0
    return v0
.end method
