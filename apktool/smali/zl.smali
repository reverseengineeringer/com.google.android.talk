.class final Lzl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lza;


# direct methods
.method constructor <init>(Lza;)V
    .locals 0

    .prologue
    .line 1790
    iput-object p1, p0, Lzl;->a:Lza;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1792
    iget-object v0, p0, Lzl;->a:Lza;

    .line 4067
    iget-object v0, v0, Lza;->e:Lzd;

    .line 1792
    if-eqz v0, :cond_0

    iget-object v0, p0, Lzl;->a:Lza;

    .line 5067
    iget-object v0, v0, Lza;->e:Lzd;

    .line 5206
    sget-object v1, Lks;->a:Llc;

    invoke-virtual {v1, v0}, Llc;->A(Landroid/view/View;)Z

    move-result v0

    .line 1792
    if-eqz v0, :cond_0

    iget-object v0, p0, Lzl;->a:Lza;

    .line 6067
    iget-object v0, v0, Lza;->e:Lzd;

    .line 1792
    invoke-virtual {v0}, Lzd;->getCount()I

    move-result v0

    iget-object v1, p0, Lzl;->a:Lza;

    .line 7067
    iget-object v1, v1, Lza;->e:Lzd;

    .line 1792
    invoke-virtual {v1}, Lzd;->getChildCount()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lzl;->a:Lza;

    .line 8067
    iget-object v0, v0, Lza;->e:Lzd;

    .line 1792
    invoke-virtual {v0}, Lzd;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lzl;->a:Lza;

    iget v1, v1, Lza;->f:I

    if-gt v0, v1, :cond_0

    .line 1795
    iget-object v0, p0, Lzl;->a:Lza;

    .line 9067
    iget-object v0, v0, Lza;->d:Landroid/widget/PopupWindow;

    .line 1795
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 1796
    iget-object v0, p0, Lzl;->a:Lza;

    invoke-virtual {v0}, Lza;->c()V

    .line 1798
    :cond_0
    return-void
.end method
