.class final Lxn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic a:Lxl;


# direct methods
.method constructor <init>(Lxl;)V
    .locals 0

    .prologue
    .line 783
    iput-object p1, p0, Lxn;->a:Lxl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .prologue
    .line 786
    iget-object v0, p0, Lxn;->a:Lxl;

    iget-object v1, p0, Lxn;->a:Lxl;

    iget-object v1, v1, Lxl;->c:Lxi;

    .line 4206
    sget-object v2, Lks;->a:Llc;

    invoke-virtual {v2, v1}, Llc;->A(Landroid/view/View;)Z

    move-result v2

    .line 3814
    if-eqz v2, :cond_0

    iget-object v0, v0, Lxl;->b:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 786
    :goto_0
    if-nez v0, :cond_1

    .line 787
    iget-object v0, p0, Lxn;->a:Lxl;

    invoke-virtual {v0}, Lxl;->k()V

    .line 795
    :goto_1
    return-void

    .line 3814
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 789
    :cond_1
    iget-object v0, p0, Lxn;->a:Lxl;

    invoke-virtual {v0}, Lxl;->b()V

    .line 793
    iget-object v0, p0, Lxn;->a:Lxl;

    invoke-static {v0}, Lxl;->a(Lxl;)V

    goto :goto_1
.end method
