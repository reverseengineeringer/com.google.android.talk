.class public final Lsq;
.super Lwb;
.source "SourceFile"

# interfaces
.implements Ltm;


# instance fields
.field final synthetic a:Lsn;

.field private final b:Landroid/content/Context;

.field private final c:Ltl;

.field private d:Lwc;

.field private e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lsn;Landroid/content/Context;Lwc;)V
    .locals 1

    .prologue
    .line 940
    iput-object p1, p0, Lsq;->a:Lsn;

    invoke-direct {p0}, Lwb;-><init>()V

    .line 941
    iput-object p2, p0, Lsq;->b:Landroid/content/Context;

    .line 942
    iput-object p3, p0, Lsq;->d:Lwc;

    .line 943
    new-instance v0, Ltl;

    invoke-direct {v0, p2}, Ltl;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Ltl;->a()Ltl;

    move-result-object v0

    iput-object v0, p0, Lsq;->c:Ltl;

    .line 945
    iget-object v0, p0, Lsq;->c:Ltl;

    invoke-virtual {v0, p0}, Ltl;->a(Ltm;)V

    .line 946
    return-void
.end method


# virtual methods
.method public a()Landroid/view/MenuInflater;
    .locals 2

    .prologue
    .line 950
    new-instance v0, Lsx;

    iget-object v1, p0, Lsq;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lsx;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 1033
    iget-object v0, p0, Lsq;->a:Lsn;

    .line 11074
    iget-object v0, v0, Lsn;->a:Landroid/content/Context;

    .line 1033
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lsq;->b(Ljava/lang/CharSequence;)V

    .line 1034
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 1017
    iget-object v0, p0, Lsq;->a:Lsn;

    .line 8074
    iget-object v0, v0, Lsn;->e:Landroid/support/v7/internal/widget/ActionBarContextView;

    .line 1017
    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarContextView;->a(Landroid/view/View;)V

    .line 1018
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lsq;->e:Ljava/lang/ref/WeakReference;

    .line 1019
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 1023
    iget-object v0, p0, Lsq;->a:Lsn;

    .line 9074
    iget-object v0, v0, Lsn;->e:Landroid/support/v7/internal/widget/ActionBarContextView;

    .line 1023
    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarContextView;->b(Ljava/lang/CharSequence;)V

    .line 1024
    return-void
.end method

.method public a(Ltl;)V
    .locals 1

    .prologue
    .line 1095
    iget-object v0, p0, Lsq;->d:Lwc;

    if-nez v0, :cond_0

    .line 1100
    :goto_0
    return-void

    .line 1098
    :cond_0
    invoke-virtual {p0}, Lsq;->d()V

    .line 1099
    iget-object v0, p0, Lsq;->a:Lsn;

    .line 17074
    iget-object v0, v0, Lsn;->e:Landroid/support/v7/internal/widget/ActionBarContextView;

    .line 1099
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->a()Z

    goto :goto_0
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 1053
    invoke-super {p0, p1}, Lwb;->a(Z)V

    .line 1054
    iget-object v0, p0, Lsq;->a:Lsn;

    .line 15074
    iget-object v0, v0, Lsn;->e:Landroid/support/v7/internal/widget/ActionBarContextView;

    .line 1054
    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarContextView;->a(Z)V

    .line 1055
    return-void
.end method

.method public a(Ltl;Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 1068
    iget-object v0, p0, Lsq;->d:Lwc;

    if-eqz v0, :cond_0

    .line 1069
    iget-object v0, p0, Lsq;->d:Lwc;

    invoke-interface {v0, p0, p2}, Lwc;->a(Lwb;Landroid/view/MenuItem;)Z

    move-result v0

    .line 1071
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 955
    iget-object v0, p0, Lsq;->c:Ltl;

    return-object v0
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 1038
    iget-object v0, p0, Lsq;->a:Lsn;

    .line 12074
    iget-object v0, v0, Lsn;->a:Landroid/content/Context;

    .line 1038
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lsq;->a(Ljava/lang/CharSequence;)V

    .line 1039
    return-void
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 1028
    iget-object v0, p0, Lsq;->a:Lsn;

    .line 10074
    iget-object v0, v0, Lsn;->e:Landroid/support/v7/internal/widget/ActionBarContextView;

    .line 1028
    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarContextView;->a(Ljava/lang/CharSequence;)V

    .line 1029
    return-void
.end method

.method public c()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 960
    iget-object v0, p0, Lsq;->a:Lsn;

    iget-object v0, v0, Lsn;->g:Lsq;

    if-eq v0, p0, :cond_0

    .line 987
    :goto_0
    return-void

    .line 969
    :cond_0
    iget-object v0, p0, Lsq;->a:Lsn;

    .line 2074
    iget-boolean v0, v0, Lsn;->k:Z

    .line 969
    iget-object v1, p0, Lsq;->a:Lsn;

    .line 3074
    iget-boolean v1, v1, Lsn;->l:Z

    .line 4074
    invoke-static {v0, v1, v2}, Lsn;->a(ZZZ)Z

    move-result v0

    .line 969
    if-nez v0, :cond_1

    .line 972
    iget-object v0, p0, Lsq;->a:Lsn;

    iput-object p0, v0, Lsn;->h:Lwb;

    .line 973
    iget-object v0, p0, Lsq;->a:Lsn;

    iget-object v1, p0, Lsq;->d:Lwc;

    iput-object v1, v0, Lsn;->i:Lwc;

    .line 977
    :goto_1
    iput-object v3, p0, Lsq;->d:Lwc;

    .line 978
    iget-object v0, p0, Lsq;->a:Lsn;

    invoke-virtual {v0, v2}, Lsn;->f(Z)V

    .line 981
    iget-object v0, p0, Lsq;->a:Lsn;

    .line 5074
    iget-object v0, v0, Lsn;->e:Landroid/support/v7/internal/widget/ActionBarContextView;

    .line 981
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->d()V

    .line 982
    iget-object v0, p0, Lsq;->a:Lsn;

    .line 6074
    iget-object v0, v0, Lsn;->d:Lvf;

    .line 982
    invoke-virtual {v0}, Lvf;->a()Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    .line 984
    iget-object v0, p0, Lsq;->a:Lsn;

    .line 7074
    iget-object v0, v0, Lsn;->b:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    .line 984
    iget-object v1, p0, Lsq;->a:Lsn;

    iget-boolean v1, v1, Lsn;->n:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->b(Z)V

    .line 986
    iget-object v0, p0, Lsq;->a:Lsn;

    iput-object v3, v0, Lsn;->g:Lsq;

    goto :goto_0

    .line 975
    :cond_1
    iget-object v0, p0, Lsq;->d:Lwc;

    invoke-interface {v0, p0}, Lwc;->a(Lwb;)V

    goto :goto_1
.end method

.method public d()V
    .locals 2

    .prologue
    .line 991
    iget-object v0, p0, Lsq;->a:Lsn;

    iget-object v0, v0, Lsn;->g:Lsq;

    if-eq v0, p0, :cond_0

    .line 1003
    :goto_0
    return-void

    .line 998
    :cond_0
    iget-object v0, p0, Lsq;->c:Ltl;

    invoke-virtual {v0}, Ltl;->g()V

    .line 1000
    :try_start_0
    iget-object v0, p0, Lsq;->d:Lwc;

    iget-object v1, p0, Lsq;->c:Ltl;

    invoke-interface {v0, p0, v1}, Lwc;->b(Lwb;Landroid/view/Menu;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1002
    iget-object v0, p0, Lsq;->c:Ltl;

    invoke-virtual {v0}, Ltl;->h()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lsq;->c:Ltl;

    invoke-virtual {v1}, Ltl;->h()V

    throw v0
.end method

.method public e()Z
    .locals 2

    .prologue
    .line 1007
    iget-object v0, p0, Lsq;->c:Ltl;

    invoke-virtual {v0}, Ltl;->g()V

    .line 1009
    :try_start_0
    iget-object v0, p0, Lsq;->d:Lwc;

    iget-object v1, p0, Lsq;->c:Ltl;

    invoke-interface {v0, p0, v1}, Lwc;->a(Lwb;Landroid/view/Menu;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1011
    iget-object v1, p0, Lsq;->c:Ltl;

    invoke-virtual {v1}, Ltl;->h()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lsq;->c:Ltl;

    invoke-virtual {v1}, Ltl;->h()V

    throw v0
.end method

.method public f()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1043
    iget-object v0, p0, Lsq;->a:Lsn;

    .line 13074
    iget-object v0, v0, Lsn;->e:Landroid/support/v7/internal/widget/ActionBarContextView;

    .line 1043
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->b()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1048
    iget-object v0, p0, Lsq;->a:Lsn;

    .line 14074
    iget-object v0, v0, Lsn;->e:Landroid/support/v7/internal/widget/ActionBarContextView;

    .line 1048
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->c()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 1059
    iget-object v0, p0, Lsq;->a:Lsn;

    .line 16074
    iget-object v0, v0, Lsn;->e:Landroid/support/v7/internal/widget/ActionBarContextView;

    .line 1059
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->f()Z

    move-result v0

    return v0
.end method

.method public i()Landroid/view/View;
    .locals 1

    .prologue
    .line 1064
    iget-object v0, p0, Lsq;->e:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsq;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
