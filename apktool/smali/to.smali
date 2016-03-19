.class public final Lto;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnKeyListener;
.implements Lua;


# instance fields
.field a:Ltj;

.field private b:Ltl;

.field private c:Lrd;

.field private d:Lua;


# direct methods
.method public constructor <init>(Ltl;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lto;->b:Ltl;

    .line 45
    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 54
    iget-object v0, p0, Lto;->b:Ltl;

    .line 57
    new-instance v1, Lre;

    invoke-virtual {v0}, Ltl;->e()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lre;-><init>(Landroid/content/Context;)V

    .line 59
    new-instance v2, Ltj;

    invoke-virtual {v1}, Lre;->a()Landroid/content/Context;

    move-result-object v3

    sget v4, Laal;->bk:I

    invoke-direct {v2, v3, v4}, Ltj;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lto;->a:Ltj;

    .line 62
    iget-object v2, p0, Lto;->a:Ltj;

    invoke-virtual {v2, p0}, Ltj;->a(Lua;)V

    .line 63
    iget-object v2, p0, Lto;->b:Ltl;

    iget-object v3, p0, Lto;->a:Ltj;

    invoke-virtual {v2, v3}, Ltl;->a(Ltz;)V

    .line 64
    iget-object v2, p0, Lto;->a:Ltj;

    invoke-virtual {v2}, Ltj;->a()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Lre;->a(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lre;

    .line 67
    invoke-virtual {v0}, Ltl;->q()Landroid/view/View;

    move-result-object v2

    .line 68
    if-eqz v2, :cond_0

    .line 70
    invoke-virtual {v1, v2}, Lre;->a(Landroid/view/View;)Lre;

    .line 77
    :goto_0
    invoke-virtual {v1, p0}, Lre;->a(Landroid/content/DialogInterface$OnKeyListener;)Lre;

    .line 80
    invoke-virtual {v1}, Lre;->b()Lrd;

    move-result-object v0

    iput-object v0, p0, Lto;->c:Lrd;

    .line 81
    iget-object v0, p0, Lto;->c:Lrd;

    invoke-virtual {v0, p0}, Lrd;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 83
    iget-object v0, p0, Lto;->c:Lrd;

    invoke-virtual {v0}, Lrd;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 84
    const/16 v1, 0x3eb

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 88
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 90
    iget-object v0, p0, Lto;->c:Lrd;

    invoke-virtual {v0}, Lrd;->show()V

    .line 91
    return-void

    .line 73
    :cond_0
    invoke-virtual {v0}, Ltl;->p()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lre;->a(Landroid/graphics/drawable/Drawable;)Lre;

    move-result-object v2

    invoke-virtual {v0}, Ltl;->o()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Lre;->a(Ljava/lang/CharSequence;)Lre;

    goto :goto_0
.end method

.method public a(Ltl;Z)V
    .locals 1

    .prologue
    .line 151
    if-nez p2, :cond_0

    iget-object v0, p0, Lto;->b:Ltl;

    if-ne p1, v0, :cond_1

    .line 1139
    :cond_0
    iget-object v0, p0, Lto;->c:Lrd;

    if-eqz v0, :cond_1

    .line 1140
    iget-object v0, p0, Lto;->c:Lrd;

    invoke-virtual {v0}, Lrd;->dismiss()V

    .line 154
    :cond_1
    iget-object v0, p0, Lto;->d:Lua;

    if-eqz v0, :cond_2

    .line 155
    iget-object v0, p0, Lto;->d:Lua;

    invoke-interface {v0, p1, p2}, Lua;->a(Ltl;Z)V

    .line 157
    :cond_2
    return-void
.end method

.method public a(Ltl;)Z
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lto;->d:Lua;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lto;->d:Lua;

    invoke-interface {v0, p1}, Lua;->a(Ltl;)Z

    move-result v0

    .line 164
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 168
    iget-object v1, p0, Lto;->b:Ltl;

    iget-object v0, p0, Lto;->a:Ltj;

    invoke-virtual {v0}, Ltj;->a()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltp;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ltl;->a(Landroid/view/MenuItem;I)Z

    .line 169
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    .prologue
    .line 146
    iget-object v0, p0, Lto;->a:Ltj;

    iget-object v1, p0, Lto;->b:Ltl;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ltj;->a(Ltl;Z)V

    .line 147
    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 94
    const/16 v1, 0x52

    if-eq p2, v1, :cond_0

    const/4 v1, 0x4

    if-ne p2, v1, :cond_2

    .line 95
    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 97
    iget-object v1, p0, Lto;->c:Lrd;

    invoke-virtual {v1}, Lrd;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 98
    if-eqz v1, :cond_2

    .line 99
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 100
    if-eqz v1, :cond_2

    .line 101
    invoke-virtual {v1}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 102
    if-eqz v1, :cond_2

    .line 103
    invoke-virtual {v1, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 125
    :goto_0
    return v0

    .line 108
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 109
    iget-object v1, p0, Lto;->c:Lrd;

    invoke-virtual {v1}, Lrd;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 110
    if-eqz v1, :cond_2

    .line 111
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 112
    if-eqz v1, :cond_2

    .line 113
    invoke-virtual {v1}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 114
    if-eqz v1, :cond_2

    invoke-virtual {v1, p3}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 115
    iget-object v1, p0, Lto;->b:Ltl;

    invoke-virtual {v1, v0}, Ltl;->a(Z)V

    .line 116
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 125
    :cond_2
    iget-object v0, p0, Lto;->b:Ltl;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, v1}, Ltl;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v0

    goto :goto_0
.end method
