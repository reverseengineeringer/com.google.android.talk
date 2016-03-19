.class public abstract Lach;
.super Lkh;
.source "SourceFile"


# instance fields
.field private final a:Lbg;

.field private b:Lav;

.field private c:Lhv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhv",
            "<",
            "Ljava/lang/String;",
            "Lav;",
            ">;"
        }
    .end annotation
.end field

.field f:Lbz;


# direct methods
.method public constructor <init>(Lbg;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Lkh;-><init>()V

    .line 52
    iput-object v0, p0, Lach;->f:Lbz;

    .line 53
    iput-object v0, p0, Lach;->b:Lav;

    .line 55
    new-instance v0, Laci;

    invoke-direct {v0, p0}, Laci;-><init>(Lach;)V

    iput-object v0, p0, Lach;->c:Lhv;

    .line 58
    iput-object p1, p0, Lach;->a:Lbg;

    .line 59
    return-void
.end method


# virtual methods
.method public abstract a(I)Lav;
.end method

.method public a(Landroid/view/View;I)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 72
    iget-object v0, p0, Lach;->f:Lbz;

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lach;->a:Lbg;

    invoke-virtual {v0}, Lbg;->a()Lbz;

    move-result-object v0

    iput-object v0, p0, Lach;->f:Lbz;

    .line 77
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lach;->a(II)Ljava/lang/String;

    move-result-object v0

    .line 80
    iget-object v1, p0, Lach;->c:Lhv;

    invoke-virtual {v1, v0}, Lhv;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v1, p0, Lach;->a:Lbg;

    invoke-virtual {v1, v0}, Lbg;->a(Ljava/lang/String;)Lav;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_2

    .line 85
    iget-object v1, p0, Lach;->f:Lbz;

    invoke-virtual {v1, v0}, Lbz;->e(Lav;)Lbz;

    .line 96
    :goto_0
    iget-object v1, p0, Lach;->b:Lav;

    if-eq v0, v1, :cond_1

    .line 97
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lav;->setMenuVisibility(Z)V

    .line 100
    :cond_1
    :goto_1
    return-object v0

    .line 87
    :cond_2
    invoke-virtual {p0, p2}, Lach;->a(I)Lav;

    move-result-object v0

    .line 88
    if-nez v0, :cond_3

    .line 90
    const/4 v0, 0x0

    goto :goto_1

    .line 93
    :cond_3
    iget-object v1, p0, Lach;->f:Lbz;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    .line 94
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {p0, v3, p2}, Lach;->a(II)Ljava/lang/String;

    move-result-object v3

    .line 93
    invoke-virtual {v1, v2, v0, v3}, Lbz;->a(ILav;Ljava/lang/String;)Lbz;

    goto :goto_0
.end method

.method protected a(II)Ljava/lang/String;
    .locals 2

    .prologue
    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "android:switcher:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/View;ILjava/lang/Object;)V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lach;->f:Lbz;

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lach;->a:Lbg;

    invoke-virtual {v0}, Lbg;->a()Lbz;

    move-result-object v0

    iput-object v0, p0, Lach;->f:Lbz;

    .line 111
    :cond_0
    check-cast p3, Lav;

    .line 112
    invoke-virtual {p3}, Lav;->getTag()Ljava/lang/String;

    move-result-object v0

    .line 113
    if-nez v0, :cond_1

    .line 117
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lach;->a(II)Ljava/lang/String;

    move-result-object v0

    .line 120
    :cond_1
    iget-object v1, p0, Lach;->c:Lhv;

    invoke-virtual {v1, v0, p3}, Lhv;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object v0, p0, Lach;->f:Lbz;

    invoke-virtual {v0, p3}, Lbz;->d(Lav;)Lbz;

    .line 122
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 151
    check-cast p2, Lav;

    invoke-virtual {p2}, Lav;->getView()Landroid/view/View;

    move-result-object v1

    move-object v0, p1

    .line 152
    :goto_0
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_1

    .line 153
    if-ne v0, v1, :cond_0

    .line 154
    const/4 v0, 0x1

    .line 157
    :goto_1
    return v0

    .line 152
    :cond_0
    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 157
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public b(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 126
    check-cast p1, Lav;

    .line 127
    iget-object v0, p0, Lach;->b:Lav;

    if-eq p1, v0, :cond_2

    .line 128
    iget-object v0, p0, Lach;->b:Lav;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lach;->b:Lav;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lav;->setMenuVisibility(Z)V

    .line 131
    :cond_0
    if-eqz p1, :cond_1

    .line 132
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lav;->setMenuVisibility(Z)V

    .line 134
    :cond_1
    iput-object p1, p0, Lach;->b:Lav;

    .line 137
    :cond_2
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lach;->f:Lbz;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lach;->a:Lbg;

    invoke-virtual {v0}, Lbg;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    iget-object v0, p0, Lach;->f:Lbz;

    invoke-virtual {v0}, Lbz;->c()I

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lach;->f:Lbz;

    .line 144
    iget-object v0, p0, Lach;->a:Lbg;

    invoke-virtual {v0}, Lbg;->b()Z

    .line 146
    :cond_0
    return-void
.end method
