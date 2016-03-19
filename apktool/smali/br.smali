.class public abstract Lbr;
.super Lkh;
.source "SourceFile"


# instance fields
.field private final a:Lbg;

.field private b:Lbz;

.field private c:Lav;


# direct methods
.method public constructor <init>(Lbg;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-direct {p0}, Lkh;-><init>()V

    .line 66
    iput-object v0, p0, Lbr;->b:Lbz;

    .line 67
    iput-object v0, p0, Lbr;->c:Lav;

    .line 70
    iput-object p1, p0, Lbr;->a:Lbg;

    .line 71
    return-void
.end method

.method private static a(IJ)Ljava/lang/String;
    .locals 3

    .prologue
    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "android:switcher:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract a(I)Lav;
.end method

.method public a(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 84
    iget-object v0, p0, Lbr;->b:Lbz;

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lbr;->a:Lbg;

    invoke-virtual {v0}, Lbg;->a()Lbz;

    move-result-object v0

    iput-object v0, p0, Lbr;->b:Lbz;

    .line 88
    :cond_0
    invoke-virtual {p0, p2}, Lbr;->b(I)J

    move-result-wide v2

    .line 91
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    invoke-static {v0, v2, v3}, Lbr;->a(IJ)Ljava/lang/String;

    move-result-object v0

    .line 92
    iget-object v1, p0, Lbr;->a:Lbg;

    invoke-virtual {v1, v0}, Lbg;->a(Ljava/lang/String;)Lav;

    move-result-object v0

    .line 93
    if-eqz v0, :cond_2

    .line 95
    iget-object v1, p0, Lbr;->b:Lbz;

    invoke-virtual {v1, v0}, Lbz;->e(Lav;)Lbz;

    .line 102
    :goto_0
    iget-object v1, p0, Lbr;->c:Lav;

    if-eq v0, v1, :cond_1

    .line 103
    invoke-virtual {v0, v6}, Lav;->setMenuVisibility(Z)V

    .line 104
    invoke-virtual {v0, v6}, Lav;->setUserVisibleHint(Z)V

    .line 107
    :cond_1
    return-object v0

    .line 97
    :cond_2
    invoke-virtual {p0, p2}, Lbr;->a(I)Lav;

    move-result-object v0

    .line 99
    iget-object v1, p0, Lbr;->b:Lbz;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v5

    invoke-static {v5, v2, v3}, Lbr;->a(IJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v0, v2}, Lbz;->a(ILav;Ljava/lang/String;)Lbz;

    goto :goto_0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lbr;->b:Lbz;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lbr;->b:Lbz;

    invoke-virtual {v0}, Lbz;->c()I

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lbr;->b:Lbz;

    .line 141
    iget-object v0, p0, Lbr;->a:Lbg;

    invoke-virtual {v0}, Lbg;->b()Z

    .line 143
    :cond_0
    return-void
.end method

.method public a(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lbr;->b:Lbz;

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Lbr;->a:Lbg;

    invoke-virtual {v0}, Lbg;->a()Lbz;

    move-result-object v0

    iput-object v0, p0, Lbr;->b:Lbz;

    .line 117
    :cond_0
    iget-object v0, p0, Lbr;->b:Lbz;

    check-cast p3, Lav;

    invoke-virtual {v0, p3}, Lbz;->d(Lav;)Lbz;

    .line 118
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 122
    check-cast p1, Lav;

    .line 123
    iget-object v0, p0, Lbr;->c:Lav;

    if-eq p1, v0, :cond_2

    .line 124
    iget-object v0, p0, Lbr;->c:Lav;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lbr;->c:Lav;

    invoke-virtual {v0, v1}, Lav;->setMenuVisibility(Z)V

    .line 126
    iget-object v0, p0, Lbr;->c:Lav;

    invoke-virtual {v0, v1}, Lav;->setUserVisibleHint(Z)V

    .line 128
    :cond_0
    if-eqz p1, :cond_1

    .line 129
    invoke-virtual {p1, v2}, Lav;->setMenuVisibility(Z)V

    .line 130
    invoke-virtual {p1, v2}, Lav;->setUserVisibleHint(Z)V

    .line 132
    :cond_1
    iput-object p1, p0, Lbr;->c:Lav;

    .line 134
    :cond_2
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 147
    check-cast p2, Lav;

    invoke-virtual {p2}, Lav;->getView()Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(I)J
    .locals 2

    .prologue
    .line 169
    int-to-long v0, p1

    return-wide v0
.end method
