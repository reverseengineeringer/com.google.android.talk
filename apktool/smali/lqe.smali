.class public final Llqe;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llqe;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 560
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1565
    const/4 v0, 0x0

    iput-object v0, p0, Llqe;->eD:Llyd;

    .line 1566
    const/4 v0, -0x1

    iput v0, p0, Llqe;->eE:I

    .line 562
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 1575
    :cond_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1576
    packed-switch v0, :pswitch_data_0

    .line 1580
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1581
    :pswitch_0
    return-object p0

    .line 1576
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
