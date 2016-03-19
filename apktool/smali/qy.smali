.class final Lqy;
.super Landroid/widget/CursorAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/widget/ListView;

.field final synthetic b:Lqr;

.field final synthetic c:Lqw;

.field private final d:I

.field private final e:I


# direct methods
.method constructor <init>(Lqw;Landroid/content/Context;Landroid/database/Cursor;Landroid/widget/ListView;Lqr;)V
    .locals 2

    .prologue
    .line 897
    iput-object p1, p0, Lqy;->c:Lqw;

    iput-object p4, p0, Lqy;->a:Landroid/widget/ListView;

    iput-object p5, p0, Lqy;->b:Lqr;

    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 902
    invoke-virtual {p0}, Lqy;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 903
    iget-object v1, p0, Lqy;->c:Lqw;

    iget-object v1, v1, Lqw;->I:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lqy;->d:I

    .line 904
    iget-object v1, p0, Lqy;->c:Lqw;

    iget-object v1, v1, Lqw;->J:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lqy;->e:I

    .line 905
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 909
    const v0, 0x1020014

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    .line 911
    iget v2, p0, Lqy;->d:I

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 912
    iget-object v2, p0, Lqy;->a:Landroid/widget/ListView;

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    iget v0, p0, Lqy;->e:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2, v3, v0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 914
    return-void

    .line 912
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 918
    iget-object v0, p0, Lqy;->c:Lqw;

    iget-object v0, v0, Lqw;->b:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lqy;->b:Lqr;

    .line 1061
    iget v1, v1, Lqr;->m:I

    .line 918
    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
