.class final Lijl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lijj;


# direct methods
.method constructor <init>(Lijj;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lijl;->a:Lijj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lijl;->a:Lijj;

    .line 1100
    iget-object v0, v0, Lijj;->e:Landroid/widget/ListView;

    .line 130
    iget-object v1, p0, Lijl;->a:Lijj;

    .line 2100
    iget-object v1, v1, Lijj;->e:Landroid/widget/ListView;

    .line 130
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->focusableViewAvailable(Landroid/view/View;)V

    .line 131
    return-void
.end method
