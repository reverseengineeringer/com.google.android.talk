.class final Lp;
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
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1589
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 1589
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/View;

    .line 4145
    sget-object v0, Lks;->a:Llc;

    invoke-virtual {v0, p1}, Llc;->E(Landroid/view/View;)F

    move-result v0

    .line 5145
    sget-object v1, Lks;->a:Llc;

    invoke-virtual {v1, p2}, Llc;->E(Landroid/view/View;)F

    move-result v1

    .line 3594
    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    .line 3595
    const/4 v0, -0x1

    .line 3597
    :goto_0
    return v0

    .line 3596
    :cond_0
    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 3597
    const/4 v0, 0x1

    goto :goto_0

    .line 3599
    :cond_1
    const/4 v0, 0x0

    .line 1589
    goto :goto_0
.end method
