.class public final Lkcu;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkcu;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32048
    invoke-direct {p0}, Llyb;-><init>()V

    .line 33053
    const/4 v0, 0x0

    iput-object v0, p0, Lkcu;->eD:Llyd;

    .line 33054
    const/4 v0, -0x1

    iput v0, p0, Lkcu;->eE:I

    .line 32050
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 33063
    :cond_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 33064
    packed-switch v0, :pswitch_data_0

    .line 33068
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 33069
    :pswitch_0
    return-object p0

    .line 33064
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
