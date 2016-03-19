.class final Lcdk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcdi;


# direct methods
.method constructor <init>(Lcdi;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcdk;->a:Lcdi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 148
    iget-object v0, p0, Lcdk;->a:Lcdi;

    .line 1029
    iget-object v0, v0, Lcdi;->i:Lcdl;

    .line 148
    invoke-interface {v0}, Lcdl;->f()V

    .line 149
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 150
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 152
    :cond_0
    return v1
.end method
