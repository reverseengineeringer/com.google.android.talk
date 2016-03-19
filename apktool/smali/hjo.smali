.class final Lhjo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lhjk;


# direct methods
.method constructor <init>(Lhjk;)V
    .locals 0

    .prologue
    .line 516
    iput-object p1, p0, Lhjo;->a:Lhjk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lhjo;->a:Lhjk;

    .line 1035
    invoke-virtual {v0}, Lhjk;->l()V

    .line 520
    return-void
.end method
