.class public final Llhf;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llhf;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lmes;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Llyb;-><init>()V

    .line 29
    iput-object v0, p0, Llhf;->a:Lmes;

    .line 30
    iput-object v0, p0, Llhf;->eD:Llyd;

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Llhf;->eE:I

    .line 32
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 1058
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1059
    sparse-switch v0, :sswitch_data_0

    .line 1063
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1064
    :sswitch_0
    return-object p0

    .line 1069
    :sswitch_1
    iget-object v0, p0, Llhf;->a:Lmes;

    if-nez v0, :cond_1

    .line 1070
    new-instance v0, Lmes;

    invoke-direct {v0}, Lmes;-><init>()V

    iput-object v0, p0, Llhf;->a:Lmes;

    .line 1072
    :cond_1
    iget-object v0, p0, Llhf;->a:Lmes;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1059
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
    .line 37
    iget-object v0, p0, Llhf;->a:Lmes;

    if-eqz v0, :cond_0

    .line 38
    const/4 v0, 0x1

    iget-object v1, p0, Llhf;->a:Lmes;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 40
    :cond_0
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 41
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 45
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 46
    iget-object v1, p0, Llhf;->a:Lmes;

    if-eqz v1, :cond_0

    .line 47
    const/4 v1, 0x1

    iget-object v2, p0, Llhf;->a:Lmes;

    .line 48
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 50
    :cond_0
    return v0
.end method
