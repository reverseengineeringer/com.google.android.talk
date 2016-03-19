.class final Lhwm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lhwl;


# direct methods
.method constructor <init>(Lhwl;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lhwm;->a:Lhwl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lhwm;->a:Lhwl;

    .line 1106
    iget-object v0, v0, Lhwl;->a:Ljava/lang/Runnable;

    .line 123
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 124
    iget-object v0, p0, Lhwm;->a:Lhwl;

    iget-object v0, v0, Lhwl;->b:Lhwj;

    iget-object v1, p0, Lhwm;->a:Lhwl;

    .line 2027
    invoke-virtual {v0, v1}, Lhwj;->a(Lhwl;)V

    .line 125
    return-void
.end method
