.class Lrn;
.super Lrk;
.source "SourceFile"


# instance fields
.field final synthetic b:Lrm;


# direct methods
.method constructor <init>(Lrm;Landroid/view/Window$Callback;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lrn;->b:Lrm;

    .line 51
    invoke-direct {p0, p1, p2}, Lrk;-><init>(Lri;Landroid/view/Window$Callback;)V

    .line 52
    return-void
.end method


# virtual methods
.method final a(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 2

    .prologue
    .line 70
    new-instance v0, Lsw;

    iget-object v1, p0, Lrn;->b:Lrm;

    iget-object v1, v1, Lrm;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lsw;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V

    .line 74
    iget-object v1, p0, Lrn;->b:Lrm;

    invoke-virtual {v1, v0}, Lri;->b(Lwc;)Lwb;

    move-result-object v1

    .line 77
    if-eqz v1, :cond_0

    .line 79
    invoke-virtual {v0, v1}, Lsw;->b(Lwb;)Landroid/view/ActionMode;

    move-result-object v0

    .line 81
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lrn;->b:Lrm;

    invoke-virtual {v0}, Lrm;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p0, p1}, Lrn;->a(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    .line 61
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lrk;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    goto :goto_0
.end method
