.class public final Llwb;
.super Llwa;
.source "SourceFile"

# interfaces
.implements Llwr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Llwc",
        "<TMessageType;TBuilderType;>;BuilderType:",
        "Llwb",
        "<TMessageType;TBuilderType;>;>",
        "Llwa",
        "<TMessageType;TBuilderType;>;",
        "Llwr;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2009
    sget-object v0, Lmdr;->e:Lmdr;

    .line 1136
    invoke-direct {p0, v0}, Llwb;-><init>(Llwc;)V

    .line 1137
    return-void
.end method

.method private constructor <init>(Llwc;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    .prologue
    .line 673
    invoke-direct {p0, p1}, Llwa;-><init>(Llvy;)V

    .line 679
    iget-object v0, p0, Llwb;->a:Llvy;

    check-cast v0, Llwc;

    iget-object v1, p0, Llwb;->a:Llvy;

    check-cast v1, Llwc;

    iget-object v1, v1, Llwc;->d:Llvv;

    invoke-virtual {v1}, Llvv;->c()Llvv;

    move-result-object v1

    iput-object v1, v0, Llwc;->d:Llvv;

    .line 680
    return-void
.end method

.method private m()Llwb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    .prologue
    .line 755
    invoke-super {p0}, Llwa;->c()Llwa;

    move-result-object v0

    check-cast v0, Llwb;

    return-object v0
.end method


# virtual methods
.method public synthetic a()Llvg;
    .locals 1

    .prologue
    .line 666
    invoke-direct {p0}, Llwb;->m()Llwb;

    move-result-object v0

    return-object v0
.end method

.method protected b()V
    .locals 2

    .prologue
    .line 690
    iget-boolean v0, p0, Llwb;->b:Z

    if-nez v0, :cond_0

    .line 696
    :goto_0
    return-void

    .line 694
    :cond_0
    invoke-super {p0}, Llwa;->b()V

    .line 695
    iget-object v0, p0, Llwb;->a:Llvy;

    check-cast v0, Llwc;

    iget-object v1, p0, Llwb;->a:Llvy;

    check-cast v1, Llwc;

    iget-object v1, v1, Llwc;->d:Llvv;

    invoke-virtual {v1}, Llvv;->c()Llvv;

    move-result-object v1

    iput-object v1, v0, Llwc;->d:Llvv;

    goto :goto_0
.end method

.method public synthetic c()Llwa;
    .locals 1

    .prologue
    .line 666
    invoke-direct {p0}, Llwb;->m()Llwb;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 666
    invoke-direct {p0}, Llwb;->m()Llwb;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d()Llvy;
    .locals 1

    .prologue
    .line 666
    invoke-virtual {p0}, Llwb;->l()Llwc;

    move-result-object v0

    return-object v0
.end method

.method public synthetic h()Llwp;
    .locals 1

    .prologue
    .line 666
    invoke-virtual {p0}, Llwb;->l()Llwc;

    move-result-object v0

    return-object v0
.end method

.method public final l()Llwc;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .prologue
    .line 700
    iget-boolean v0, p0, Llwb;->b:Z

    if-eqz v0, :cond_0

    .line 701
    iget-object v0, p0, Llwb;->a:Llvy;

    check-cast v0, Llwc;

    .line 705
    :goto_0
    return-object v0

    .line 704
    :cond_0
    iget-object v0, p0, Llwb;->a:Llvy;

    check-cast v0, Llwc;

    iget-object v0, v0, Llwc;->d:Llvv;

    invoke-virtual {v0}, Llvv;->a()V

    .line 705
    invoke-super {p0}, Llwa;->d()Llvy;

    move-result-object v0

    check-cast v0, Llwc;

    goto :goto_0
.end method
