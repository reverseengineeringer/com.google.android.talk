.class final Lccy;
.super Lbzp;
.source "SourceFile"


# instance fields
.field final synthetic e:Lbzn;


# direct methods
.method public constructor <init>(Lbzn;Landroid/widget/BaseAdapter;)V
    .locals 1

    .prologue
    .line 38
    iput-object p1, p0, Lccy;->e:Lbzn;

    .line 39
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lbzp;-><init>(Lbzn;ZLandroid/widget/BaseAdapter;)V

    .line 40
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 45
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Laen;->bk:I

    if-ne v0, v1, :cond_0

    .line 51
    :goto_0
    sget v0, Laen;->dj:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 52
    sget v1, Lcom/google/android/apps/hangouts/hangout/StressMode;->hm:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 53
    return-object p1

    .line 48
    :cond_0
    iget-object v0, p0, Lccy;->e:Lbzn;

    invoke-virtual {v0}, Lbzn;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Laal;->fo:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0
.end method

.method public e()V
    .locals 2

    .prologue
    .line 58
    invoke-virtual {p0}, Lccy;->d()Landroid/widget/BaseAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p0}, Lccy;->d()Landroid/widget/BaseAdapter;

    move-result-object v0

    check-cast v0, Log;

    .line 60
    invoke-virtual {v0}, Log;->a()Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 61
    invoke-virtual {v0}, Log;->a()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 64
    :cond_0
    return-void
.end method
