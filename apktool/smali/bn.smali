.class final Lbn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbl;


# direct methods
.method constructor <init>(Lbl;)V
    .locals 0

    .prologue
    .line 460
    iput-object p1, p0, Lbn;->a:Lbl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 463
    iget-object v0, p0, Lbn;->a:Lbl;

    .line 1417
    iget-object v0, v0, Lbl;->c:Landroid/view/View;

    .line 463
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lks;->d(Landroid/view/View;I)V

    .line 464
    return-void
.end method
