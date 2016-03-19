.class public Ldhp;
.super Log;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 2

    .prologue
    .line 20
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Log;-><init>(Landroid/content/Context;Landroid/database/Cursor;B)V

    .line 21
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Landroid/view/View;Landroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 57
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 40
    return-void
.end method

.method public d()V
    .locals 0

    .prologue
    .line 45
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .prologue
    .line 30
    invoke-virtual {p0}, Ldhp;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 31
    if-nez p2, :cond_0

    iget-object v0, p0, Ldhp;->d:Landroid/content/Context;

    invoke-virtual {p0}, Ldhp;->a()Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p3}, Ldhp;->a(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 34
    :cond_0
    :goto_0
    return-object p2

    :cond_1
    invoke-super {p0, p1, p2, p3}, Log;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Ldhp;->a()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    .line 50
    const/4 v0, 0x1

    .line 52
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Log;->isEmpty()Z

    move-result v0

    goto :goto_0
.end method
