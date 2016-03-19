.class final Lbor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lboq;


# direct methods
.method constructor <init>(Lboq;)V
    .locals 0

    .prologue
    .line 6311
    iput-object p1, p0, Lbor;->a:Lboq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 6315
    iget-object v0, p0, Lbor;->a:Lboq;

    iget-object v0, v0, Lboq;->a:Lbng;

    invoke-virtual {v0}, Lbng;->ap()V

    .line 6316
    const/4 v0, 0x0

    return v0
.end method
