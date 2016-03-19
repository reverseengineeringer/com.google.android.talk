.class final Llbg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Llbf;


# direct methods
.method constructor <init>(Llbf;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 999
    iput-object p1, p0, Llbg;->b:Llbf;

    iput-object p2, p0, Llbg;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1002
    iget-object v0, p0, Llbg;->b:Llbf;

    const/4 v1, 0x0

    iput-boolean v1, v0, Llbf;->a:Z

    .line 1003
    iget-object v0, p0, Llbg;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1004
    return-void
.end method
