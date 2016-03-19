.class public final Llrt;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llrt;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Llrs;

.field public b:Llrw;

.field public c:Llry;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Llyb;-><init>()V

    .line 35
    iput-object v0, p0, Llrt;->a:Llrs;

    .line 36
    iput-object v0, p0, Llrt;->b:Llrw;

    .line 37
    iput-object v0, p0, Llrt;->c:Llry;

    .line 38
    iput-object v0, p0, Llrt;->eD:Llyd;

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Llrt;->eE:I

    .line 40
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 1080
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1081
    sparse-switch v0, :sswitch_data_0

    .line 1085
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1086
    :sswitch_0
    return-object p0

    .line 1091
    :sswitch_1
    iget-object v0, p0, Llrt;->a:Llrs;

    if-nez v0, :cond_1

    .line 1092
    new-instance v0, Llrs;

    invoke-direct {v0}, Llrs;-><init>()V

    iput-object v0, p0, Llrt;->a:Llrs;

    .line 1094
    :cond_1
    iget-object v0, p0, Llrt;->a:Llrs;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1098
    :sswitch_2
    iget-object v0, p0, Llrt;->b:Llrw;

    if-nez v0, :cond_2

    .line 1099
    new-instance v0, Llrw;

    invoke-direct {v0}, Llrw;-><init>()V

    iput-object v0, p0, Llrt;->b:Llrw;

    .line 1101
    :cond_2
    iget-object v0, p0, Llrt;->b:Llrw;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1105
    :sswitch_3
    iget-object v0, p0, Llrt;->c:Llry;

    if-nez v0, :cond_3

    .line 1106
    new-instance v0, Llry;

    invoke-direct {v0}, Llry;-><init>()V

    iput-object v0, p0, Llrt;->c:Llry;

    .line 1108
    :cond_3
    iget-object v0, p0, Llrt;->c:Llry;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1081
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Llrt;->a:Llrs;

    if-eqz v0, :cond_0

    .line 46
    const/4 v0, 0x1

    iget-object v1, p0, Llrt;->a:Llrs;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 48
    :cond_0
    iget-object v0, p0, Llrt;->b:Llrw;

    if-eqz v0, :cond_1

    .line 49
    const/4 v0, 0x2

    iget-object v1, p0, Llrt;->b:Llrw;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 51
    :cond_1
    iget-object v0, p0, Llrt;->c:Llry;

    if-eqz v0, :cond_2

    .line 52
    const/4 v0, 0x3

    iget-object v1, p0, Llrt;->c:Llry;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 54
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 55
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 59
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 60
    iget-object v1, p0, Llrt;->a:Llrs;

    if-eqz v1, :cond_0

    .line 61
    const/4 v1, 0x1

    iget-object v2, p0, Llrt;->a:Llrs;

    .line 62
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 64
    :cond_0
    iget-object v1, p0, Llrt;->b:Llrw;

    if-eqz v1, :cond_1

    .line 65
    const/4 v1, 0x2

    iget-object v2, p0, Llrt;->b:Llrw;

    .line 66
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 68
    :cond_1
    iget-object v1, p0, Llrt;->c:Llry;

    if-eqz v1, :cond_2

    .line 69
    const/4 v1, 0x3

    iget-object v2, p0, Llrt;->c:Llry;

    .line 70
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 72
    :cond_2
    return v0
.end method
