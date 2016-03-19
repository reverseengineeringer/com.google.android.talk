.class final Lsj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lua;


# instance fields
.field final synthetic a:Lsh;

.field private b:Z


# direct methods
.method constructor <init>(Lsh;)V
    .locals 0

    .prologue
    .line 586
    iput-object p1, p0, Lsj;->a:Lsh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ltl;Z)V
    .locals 2

    .prologue
    .line 600
    iget-boolean v0, p0, Lsj;->b:Z

    if-eqz v0, :cond_0

    .line 610
    :goto_0
    return-void

    .line 604
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsj;->b:Z

    .line 605
    iget-object v0, p0, Lsj;->a:Lsh;

    .line 3051
    iget-object v0, v0, Lsh;->a:Lvf;

    .line 605
    invoke-virtual {v0}, Lvf;->k()V

    .line 606
    iget-object v0, p0, Lsj;->a:Lsh;

    .line 4051
    iget-object v0, v0, Lsh;->c:Landroid/view/Window$Callback;

    .line 606
    if-eqz v0, :cond_1

    .line 607
    iget-object v0, p0, Lsj;->a:Lsh;

    .line 5051
    iget-object v0, v0, Lsh;->c:Landroid/view/Window$Callback;

    .line 607
    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 609
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsj;->b:Z

    goto :goto_0
.end method

.method public a(Ltl;)Z
    .locals 2

    .prologue
    .line 591
    iget-object v0, p0, Lsj;->a:Lsh;

    .line 1051
    iget-object v0, v0, Lsh;->c:Landroid/view/Window$Callback;

    .line 591
    if-eqz v0, :cond_0

    .line 592
    iget-object v0, p0, Lsj;->a:Lsh;

    .line 2051
    iget-object v0, v0, Lsh;->c:Landroid/view/Window$Callback;

    .line 592
    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 593
    const/4 v0, 0x1

    .line 595
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
