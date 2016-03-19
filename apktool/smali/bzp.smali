.class public Lbzp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Z

.field b:Z

.field c:Landroid/widget/BaseAdapter;

.field final synthetic d:Lbzn;


# direct methods
.method public constructor <init>(Lbzn;ZLandroid/widget/BaseAdapter;)V
    .locals 1

    .prologue
    .line 22
    iput-object p1, p0, Lbzp;->d:Lbzn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbzp;->a:Z

    .line 24
    iput-boolean p2, p0, Lbzp;->b:Z

    .line 25
    iput-object p3, p0, Lbzp;->c:Landroid/widget/BaseAdapter;

    .line 26
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return-object v0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lbzp;->a:Z

    return v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lbzp;->b:Z

    return v0
.end method

.method public c()I
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lbzp;->c:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    .line 41
    iget-boolean v1, p0, Lbzp;->b:Z

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    iget-boolean v1, p0, Lbzp;->a:Z

    if-eqz v1, :cond_1

    .line 42
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 44
    :cond_1
    return v0
.end method

.method public d()Landroid/widget/BaseAdapter;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lbzp;->c:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method public e()V
    .locals 0

    .prologue
    .line 57
    return-void
.end method
