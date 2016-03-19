.class final Lbnq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbjb;

.field final synthetic b:Lbng;


# direct methods
.method constructor <init>(Lbng;Lbjb;)V
    .locals 0

    .prologue
    .line 2678
    iput-object p1, p0, Lbnq;->b:Lbng;

    iput-object p2, p0, Lbnq;->a:Lbjb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2681
    iget-object v0, p0, Lbnq;->b:Lbng;

    .line 3285
    iget-object v0, v0, Lbng;->bm:Lbzy;

    .line 2681
    invoke-interface {v0}, Lbzy;->a()V

    .line 2682
    return-void
.end method
