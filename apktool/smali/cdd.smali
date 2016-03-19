.class final Lcdd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic a:Lcdb;

.field private b:I

.field private c:Z

.field private d:Z


# direct methods
.method constructor <init>(Lcdb;)V
    .locals 1

    .prologue
    .line 84
    iput-object p1, p0, Lcdd;->a:Lcdb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcdd;->d:Z

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 91
    iget-object v0, p0, Lcdd;->a:Lcdb;

    iget-object v0, v0, Lcdb;->f:Landroid/view/View;

    sget v1, Laen;->ev:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1198
    const-string v1, "Expected non-null"

    invoke-static {v1, v0}, Lhbs;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-boolean v0, p0, Lcdd;->c:Z

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcdd;->a:Lcdb;

    iget-object v0, v0, Lcdb;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcdd;->b:I

    .line 97
    iput-boolean v3, p0, Lcdd;->c:Z

    .line 100
    :cond_0
    iget-object v0, p0, Lcdd;->a:Lcdb;

    invoke-virtual {v0}, Lcdb;->b()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lcdd;->b:I

    if-le v0, v1, :cond_2

    .line 101
    iget-boolean v0, p0, Lcdd;->d:Z

    if-nez v0, :cond_1

    .line 102
    iput-boolean v3, p0, Lcdd;->d:Z

    .line 103
    iget-object v0, p0, Lcdd;->a:Lcdb;

    iget-object v0, v0, Lcdb;->f:Landroid/view/View;

    sget v1, Laen;->ev:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 111
    :cond_1
    :goto_0
    return-void

    .line 106
    :cond_2
    iget-boolean v0, p0, Lcdd;->d:Z

    if-eqz v0, :cond_1

    .line 107
    iput-boolean v2, p0, Lcdd;->d:Z

    .line 108
    iget-object v0, p0, Lcdd;->a:Lcdb;

    iget-object v0, v0, Lcdb;->f:Landroid/view/View;

    sget v1, Laen;->ev:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
