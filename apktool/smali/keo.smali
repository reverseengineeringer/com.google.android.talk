.class public final Lkeo;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkeo;",
        ">;"
    }
.end annotation


# instance fields
.field public responseHeader:Lkdp;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 20041
    invoke-direct {p0}, Llyb;-><init>()V

    .line 21046
    iput-object v0, p0, Lkeo;->responseHeader:Lkdp;

    .line 21047
    iput-object v0, p0, Lkeo;->eD:Llyd;

    .line 21048
    const/4 v0, -0x1

    iput v0, p0, Lkeo;->eE:I

    .line 20043
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 21076
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 21077
    sparse-switch v0, :sswitch_data_0

    .line 21081
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 21082
    :sswitch_0
    return-object p0

    .line 21087
    :sswitch_1
    iget-object v0, p0, Lkeo;->responseHeader:Lkdp;

    if-nez v0, :cond_1

    .line 21088
    new-instance v0, Lkdp;

    invoke-direct {v0}, Lkdp;-><init>()V

    iput-object v0, p0, Lkeo;->responseHeader:Lkdp;

    .line 21090
    :cond_1
    iget-object v0, p0, Lkeo;->responseHeader:Lkdp;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 21077
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
    .line 20055
    iget-object v0, p0, Lkeo;->responseHeader:Lkdp;

    if-eqz v0, :cond_0

    .line 20056
    const/4 v0, 0x1

    iget-object v1, p0, Lkeo;->responseHeader:Lkdp;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 20058
    :cond_0
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 20059
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 20063
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 20064
    iget-object v1, p0, Lkeo;->responseHeader:Lkdp;

    if-eqz v1, :cond_0

    .line 20065
    const/4 v1, 0x1

    iget-object v2, p0, Lkeo;->responseHeader:Lkdp;

    .line 20066
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 20068
    :cond_0
    return v0
.end method
