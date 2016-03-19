.class final Lru;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lua;


# instance fields
.field final synthetic a:Lri;


# direct methods
.method constructor <init>(Lri;)V
    .locals 0

    .prologue
    .line 1770
    iput-object p1, p0, Lru;->a:Lri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ltl;Z)V
    .locals 1

    .prologue
    .line 1782
    iget-object v0, p0, Lru;->a:Lri;

    .line 3092
    invoke-virtual {v0, p1}, Lri;->b(Ltl;)V

    .line 1783
    return-void
.end method

.method public a(Ltl;)Z
    .locals 2

    .prologue
    .line 1773
    iget-object v0, p0, Lru;->a:Lri;

    .line 2199
    iget-object v0, v0, Lri;->b:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1774
    if-eqz v0, :cond_0

    .line 1775
    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 1777
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
