.class public abstract Lhpi;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lhpk;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 17
    return-void
.end method


# virtual methods
.method public abstract a(ILandroid/view/View;)Ljava/lang/Object;
.end method

.method public abstract a(ILjava/lang/Object;)V
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lhpi;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpk;

    .line 22
    if-nez p2, :cond_0

    .line 23
    invoke-virtual {p0}, Lhpi;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 24
    invoke-interface {v0}, Lhpk;->b()I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 25
    invoke-virtual {p0, p1, p2}, Lhpi;->a(ILandroid/view/View;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 27
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lhpi;->a(ILjava/lang/Object;)V

    .line 29
    return-object p2
.end method

.method public isEnabled(I)Z
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lhpi;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpk;

    invoke-interface {v0}, Lhpk;->a()Z

    move-result v0

    return v0
.end method
