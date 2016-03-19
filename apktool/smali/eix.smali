.class final Leix;
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
    .line 440
    iput-object p1, p0, Leix;->b:Leit;

    iput-object p2, p0, Leix;->a:Lejc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Leix;->a:Lejc;

    invoke-virtual {v0}, Lejc;->h()V

    .line 444
    return-void
.end method
