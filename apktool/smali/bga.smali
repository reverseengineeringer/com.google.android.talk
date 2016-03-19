.class final Lbga;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbfz;


# direct methods
.method constructor <init>(Lbfz;)V
    .locals 0

    .prologue
    .line 10616
    iput-object p1, p0, Lbga;->a:Lbfz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 10619
    iget-object v0, p0, Lbga;->a:Lbfz;

    .line 11118
    iget-object v0, v0, Lbfz;->a:Landroid/content/Context;

    .line 10620
    sget v1, Lcom/google/android/apps/hangouts/hangout/StressMode;->aM:I

    const/4 v2, 0x0

    .line 10619
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 10621
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 10622
    return-void
.end method
