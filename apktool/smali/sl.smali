.class final Lsl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lua;


# instance fields
.field final synthetic a:Lsh;


# direct methods
.method constructor <init>(Lsh;)V
    .locals 0

    .prologue
    .line 613
    iput-object p1, p0, Lsl;->a:Lsh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ltl;Z)V
    .locals 2

    .prologue
    .line 616
    iget-object v0, p0, Lsl;->a:Lsh;

    .line 1051
    iget-object v0, v0, Lsh;->c:Landroid/view/Window$Callback;

    .line 616
    if-eqz v0, :cond_0

    .line 617
    iget-object v0, p0, Lsl;->a:Lsh;

    .line 2051
    iget-object v0, v0, Lsh;->c:Landroid/view/Window$Callback;

    .line 617
    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 619
    :cond_0
    return-void
.end method

.method public a(Ltl;)Z
    .locals 2

    .prologue
    .line 623
    if-nez p1, :cond_0

    iget-object v0, p0, Lsl;->a:Lsh;

    .line 3051
    iget-object v0, v0, Lsh;->c:Landroid/view/Window$Callback;

    .line 623
    if-eqz v0, :cond_0

    .line 624
    iget-object v0, p0, Lsl;->a:Lsh;

    .line 4051
    iget-object v0, v0, Lsh;->c:Landroid/view/Window$Callback;

    .line 624
    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 626
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
