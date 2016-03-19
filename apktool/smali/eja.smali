.class final Leja;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lejc;

.field final synthetic b:Leit;


# direct methods
.method constructor <init>(Leit;Lejc;)V
    .locals 0

    .prologue
    .line 654
    iput-object p1, p0, Leja;->b:Leit;

    iput-object p2, p0, Leja;->a:Lejc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 657
    iget-object v0, p0, Leja;->b:Leit;

    iget-object v1, p0, Leja;->a:Lejc;

    invoke-virtual {v0, v1}, Leit;->a(Lejc;)V

    .line 658
    return-void
.end method
