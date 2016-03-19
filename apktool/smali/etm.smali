.class final Letm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lesr;


# instance fields
.field final synthetic a:Letk;


# direct methods
.method constructor <init>(Letk;)V
    .locals 0

    .prologue
    .line 585
    iput-object p1, p0, Letm;->a:Letk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Less;)V
    .locals 2

    .prologue
    .line 588
    iget-object v0, p0, Letm;->a:Letk;

    .line 1083
    iget-boolean v0, v0, Letk;->g:Z

    .line 588
    if-nez v0, :cond_0

    .line 590
    iget-object v0, p0, Letm;->a:Letk;

    .line 2083
    iget-object v0, v0, Letk;->b:Lerg;

    .line 590
    invoke-virtual {v0}, Lerg;->f()Lesw;

    move-result-object v0

    iget-object v1, p1, Less;->c:Lest;

    invoke-virtual {v0, v1}, Lesw;->a(Lest;)V

    .line 591
    iget-object v0, p0, Letm;->a:Letk;

    invoke-virtual {v0, p1}, Letk;->a(Less;)V

    .line 593
    :cond_0
    return-void
.end method
