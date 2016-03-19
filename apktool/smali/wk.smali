.class final Lwk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lua;


# instance fields
.field final synthetic a:Lwe;


# direct methods
.method constructor <init>(Lwe;)V
    .locals 0

    .prologue
    .line 750
    iput-object p1, p0, Lwk;->a:Lwe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ltl;Z)V
    .locals 2

    .prologue
    .line 763
    instance-of v0, p1, Lue;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 764
    check-cast v0, Lue;

    invoke-virtual {v0}, Lue;->r()Ltl;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ltl;->a(Z)V

    .line 766
    :cond_0
    iget-object v0, p0, Lwk;->a:Lwe;

    invoke-virtual {v0}, Lwe;->a()Lua;

    move-result-object v0

    .line 767
    if-eqz v0, :cond_1

    .line 768
    invoke-interface {v0, p1, p2}, Lua;->a(Ltl;Z)V

    .line 770
    :cond_1
    return-void
.end method

.method public a(Ltl;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 754
    if-nez p1, :cond_0

    move v0, v1

    .line 758
    :goto_0
    return v0

    .line 756
    :cond_0
    iget-object v2, p0, Lwk;->a:Lwe;

    move-object v0, p1

    check-cast v0, Lue;

    invoke-virtual {v0}, Lue;->getItem()Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iput v0, v2, Lwe;->l:I

    .line 757
    iget-object v0, p0, Lwk;->a:Lwe;

    invoke-virtual {v0}, Lwe;->a()Lua;

    move-result-object v0

    .line 758
    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lua;->a(Ltl;)Z

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method
