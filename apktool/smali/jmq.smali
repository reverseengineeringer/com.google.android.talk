.class public final Ljmq;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljmq;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Llyb;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Ljmq;->eD:Llyd;

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Ljmq;->eE:I

    .line 28
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 1035
    :cond_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1036
    packed-switch v0, :pswitch_data_0

    .line 1040
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1041
    :pswitch_0
    return-object p0

    .line 1036
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
