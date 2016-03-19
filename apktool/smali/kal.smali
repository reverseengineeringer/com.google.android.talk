.class public final Lkal;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkal;",
        ">;"
    }
.end annotation


# instance fields
.field public requestHeader:Lkdo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 29730
    invoke-direct {p0}, Llyb;-><init>()V

    .line 30735
    iput-object v0, p0, Lkal;->requestHeader:Lkdo;

    .line 30736
    iput-object v0, p0, Lkal;->eD:Llyd;

    .line 30737
    const/4 v0, -0x1

    iput v0, p0, Lkal;->eE:I

    .line 29732
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 30765
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 30766
    sparse-switch v0, :sswitch_data_0

    .line 30770
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 30771
    :sswitch_0
    return-object p0

    .line 30776
    :sswitch_1
    iget-object v0, p0, Lkal;->requestHeader:Lkdo;

    if-nez v0, :cond_1

    .line 30777
    new-instance v0, Lkdo;

    invoke-direct {v0}, Lkdo;-><init>()V

    iput-object v0, p0, Lkal;->requestHeader:Lkdo;

    .line 30779
    :cond_1
    iget-object v0, p0, Lkal;->requestHeader:Lkdo;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 30766
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
    .line 29744
    iget-object v0, p0, Lkal;->requestHeader:Lkdo;

    if-eqz v0, :cond_0

    .line 29745
    const/4 v0, 0x1

    iget-object v1, p0, Lkal;->requestHeader:Lkdo;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 29747
    :cond_0
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 29748
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 29752
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 29753
    iget-object v1, p0, Lkal;->requestHeader:Lkdo;

    if-eqz v1, :cond_0

    .line 29754
    const/4 v1, 0x1

    iget-object v2, p0, Lkal;->requestHeader:Lkdo;

    .line 29755
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 29757
    :cond_0
    return v0
.end method
