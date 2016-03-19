.class public final Lmsn;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmsn;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1034
    const/4 v0, 0x0

    iput-object v0, p0, Lmsn;->eD:Llyd;

    .line 1035
    const/4 v0, -0x1

    iput v0, p0, Lmsn;->eE:I

    .line 31
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 1044
    :cond_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1045
    packed-switch v0, :pswitch_data_0

    .line 1049
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1050
    :pswitch_0
    return-object p0

    .line 1045
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
