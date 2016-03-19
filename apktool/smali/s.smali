.class public final Ls;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Laen;


# direct methods
.method public constructor <init>(Laen;)V
    .locals 0

    .prologue
    .line 482
    iput-object p1, p0, Ls;->a:Laen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Ls;->a:Laen;

    iget-object v0, v0, Laen;->kt:Landroid/support/design/widget/Snackbar;

    .line 1067
    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->c()V

    .line 486
    return-void
.end method
