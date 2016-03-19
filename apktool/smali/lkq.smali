.class public final Llkq;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llkq;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 260
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1265
    iput-object v0, p0, Llkq;->a:Ljava/lang/Boolean;

    .line 1266
    iput-object v0, p0, Llkq;->eD:Llyd;

    .line 1267
    const/4 v0, -0x1

    iput v0, p0, Llkq;->eE:I

    .line 262
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 2295
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2296
    sparse-switch v0, :sswitch_data_0

    .line 2300
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2301
    :sswitch_0
    return-object p0

    .line 2306
    :sswitch_1
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Llkq;->a:Ljava/lang/Boolean;

    goto :goto_0

    .line 2296
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Llkq;->a:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 275
    const/4 v0, 0x1

    iget-object v1, p0, Llkq;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 277
    :cond_0
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 278
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 282
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 283
    iget-object v1, p0, Llkq;->a:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 284
    const/4 v1, 0x1

    iget-object v2, p0, Llkq;->a:Ljava/lang/Boolean;

    .line 285
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 285
    add-int/2addr v0, v1

    .line 287
    :cond_0
    return v0
.end method
