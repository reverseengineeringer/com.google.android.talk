.class final Lerw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Leqs;

.field final synthetic b:Leru;


# direct methods
.method constructor <init>(Leru;Leqs;)V
    .locals 0

    .prologue
    .line 410
    iput-object p1, p0, Lerw;->b:Leru;

    iput-object p2, p0, Lerw;->a:Leqs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 413
    iget-object v0, p0, Lerw;->a:Leqs;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Leqs;->a(Z)V

    .line 414
    iget-object v0, p0, Lerw;->a:Leqs;

    invoke-interface {v0}, Leqs;->a()Lerg;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lerw;->a:Leqs;

    invoke-interface {v0}, Leqs;->b()V

    .line 417
    :cond_0
    return-void
.end method
