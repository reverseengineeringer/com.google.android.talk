.class public final Llz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2970
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 2970
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/View;

    .line 3973
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Llr;

    .line 3974
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Llr;

    .line 3975
    iget-boolean v2, v0, Llr;->a:Z

    iget-boolean v3, v1, Llr;->a:Z

    if-eq v2, v3, :cond_1

    .line 3976
    iget-boolean v0, v0, Llr;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 3978
    :cond_1
    iget v0, v0, Llr;->e:I

    iget v1, v1, Llr;->e:I

    sub-int/2addr v0, v1

    .line 2970
    goto :goto_0
.end method
