.class final Lchw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lchu;


# direct methods
.method constructor <init>(Lchu;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lchw;->a:Lchu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 148
    iget-object v0, p0, Lchw;->a:Lchu;

    invoke-virtual {v0}, Lchu;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lchw;->a:Lchu;

    .line 1051
    iget-object v0, v0, Lchu;->b:Lcfc;

    .line 149
    invoke-virtual {v0}, Lcfc;->k()Lhjk;

    move-result-object v0

    .line 150
    if-eqz v0, :cond_0

    .line 151
    const-string v1, "Babel_calls"

    const-string v2, "Disabling camera because the earpiece is on."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    invoke-virtual {v0, v4}, Lhjk;->a(Z)V

    .line 155
    :cond_0
    return-void
.end method
